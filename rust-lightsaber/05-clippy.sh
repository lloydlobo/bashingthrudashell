#!/bin/sh
cargo clippy --fix -- \
    -W clippy::pedantic \
    -W clippy::nursery \
    -W clippy::unwrap_used \
    -W clippy::except_used
    
    

