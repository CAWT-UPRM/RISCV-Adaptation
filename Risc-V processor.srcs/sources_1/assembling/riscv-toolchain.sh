#!/usr/bin/env bash
set -euo pipefail

COE_DIR="new"
ASS_DIR="assembling"

# Args (can be overwritten)
SRC=${1:-CODE_HERE.S}
LD=${2:-linker.ld}

# Dont overwrite these, theyre used for names cause I lazy
I_COE=${3:-instructions.coe}
D_COE=${4:-data_init.coe}

# Derive names
BASE=$(basename "${SRC%.*}")
OBJ="${BASE}.o"
ELF="${BASE}.elf"

# RISC-V toolchain settings
ARCH=rv32im
ABI=ilp32

echo "→ Assembling ${SRC} → ${OBJ}"
riscv64-unknown-elf-gcc \
  -march=${ARCH} -mabi=${ABI} \
  -nostdlib -T "${LD}" \
  -c "${SRC}" -o "${OBJ}"

echo "→ Linking ${OBJ} → ${ELF}"
riscv64-unknown-elf-gcc \
  -march=${ARCH} -mabi=${ABI} \
  -nostdlib -T "${LD}" \
  "${OBJ}" -o "${ELF}"

echo "→ Converting ${ELF} to COE files ${I_COE}, ${D_COE}"
riscv64-unknown-elf-objcopy -O binary --only-section .text "${ELF}" text.bin

cd ..

# produce COE
{
  echo "memory_initialization_radix=16;"
  echo "memory_initialization_vector="
  xxd -p -c4 "${ASS_DIR}/text.bin" \
    | sed -E 's/^([0-9A-Fa-f]{2})([0-9A-Fa-f]{2})([0-9A-Fa-f]{2})([0-9A-Fa-f]{2})$/\4\3\2\1/' \
    | sed 's/$/,/'             \
    | sed '$ s/,$/;/' 
} > "${COE_DIR}/instructions.coe"

truncate -s -1 "${COE_DIR}/instructions.coe"

riscv64-unknown-elf-objcopy -O binary --only-section .data "${ASS_DIR}/${ELF}" data.bin

{
  echo "memory_initialization_radix=16;"
  echo "memory_initialization_vector="
  xxd -p -c4 "${ASS_DIR}/data.bin" \
    | sed -E 's/^([0-9A-Fa-f]{2})([0-9A-Fa-f]{2})([0-9A-Fa-f]{2})([0-9A-Fa-f]{2})$/\4\3\2\1/' \
    | sed 's/$/,/'             \
    | sed '$ s/,$/;/' 
} > "${COE_DIR}/data_init.coe"

truncate -s -1 "${COE_DIR}/data_init.coe"

echo "→ ${I_COE} and ${D_COE} files generated on ${COE_DIR}"
echo "WARNING: Remember to regenerate the ip core in Vivado to reflect the changes." >&2