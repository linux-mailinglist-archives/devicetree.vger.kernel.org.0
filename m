Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A7CB447F12B
	for <lists+devicetree@lfdr.de>; Fri, 24 Dec 2021 22:16:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344397AbhLXVQs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Dec 2021 16:16:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55040 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344392AbhLXVQr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Dec 2021 16:16:47 -0500
Received: from mail-qk1-x732.google.com (mail-qk1-x732.google.com [IPv6:2607:f8b0:4864:20::732])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 55774C061401
        for <devicetree@vger.kernel.org>; Fri, 24 Dec 2021 13:16:47 -0800 (PST)
Received: by mail-qk1-x732.google.com with SMTP id i130so8169958qke.3
        for <devicetree@vger.kernel.org>; Fri, 24 Dec 2021 13:16:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atishpatra.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=AhdazWj7E7mP5lpQoH/Hlj6un/O7qxYC1hCrM4oG9J4=;
        b=mT9uij2tqEoq8C1DWMJWrz6FiHUEhP4vS4/RipfbDrcoEtaNu1JmX2fGlpJ91b6YMc
         1UDUDgVJl3VsW95/VIGAcjp+GVv182dDzIAGuBh+PmK2OIl0fH//dX9uKSAYzoz6RxPv
         UrOTdvCxGgmg6mEQXYwCeNVdlpSiKrnsm7bWA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=AhdazWj7E7mP5lpQoH/Hlj6un/O7qxYC1hCrM4oG9J4=;
        b=G+5h/1e3mcHQCXKJYNu9eVI3P7TZKfSB7n3oVhIJcJ2nRuamC9G4tKDDTL/mo5J4GM
         IEzXn4O5tbXNCIR489b+9iIfvpOwsuMFC8xP3tbZiO0/7Gu2FbPb0RivJ6aFD0tgSHHe
         ZElV3mHs3QdeMep5tMgUd7rpRC4DEoPCJMfH4T4Ej3OmyvGwtUBGK1uqPcZ/0e6iPrDK
         zI9gSlamlSGdvI1AF8RDqUNv5WKqtDUTh7QO5mbzn8T4V5JPmjmZmgBlUlJuI0Te1ZVh
         /pypUk4TDrjJdXACU5RJ3dShtyyV2lzIcivwxZp88xDsctrvpZMXIOBTedfJzF7gHrIP
         o22Q==
X-Gm-Message-State: AOAM530vnPeRYWiXZSNLAEDj3MOtIb5GHX8OipvqzNo6MFQJV2kRsu3B
        ihbmZnyjtf2XLV4G/IZUUR3W
X-Google-Smtp-Source: ABdhPJz65i5I0vRRJZRYggvczL1rK5geWBE650taAK2VtqLZTwr+BIm+WLoqvaWXZvHF8ett7iAUCA==
X-Received: by 2002:a05:620a:318d:: with SMTP id bi13mr5833578qkb.279.1640380605615;
        Fri, 24 Dec 2021 13:16:45 -0800 (PST)
Received: from fedora.. (adsl-70-228-75-190.dsl.akrnoh.ameritech.net. [70.228.75.190])
        by smtp.gmail.com with ESMTPSA id m15sm7661069qkp.76.2021.12.24.13.16.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Dec 2021 13:16:45 -0800 (PST)
From:   Atish Patra <atishp@atishpatra.org>
X-Google-Original-From: Atish Patra <atishp@rivosinc.com>
To:     linux-kernel@vger.kernel.org
Cc:     Atish Patra <atishp@rivosinc.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Atish Patra <atishp@atishpatra.org>,
        Anup Patel <anup@brainfault.org>,
        Damien Le Moal <damien.lemoal@wdc.com>,
        devicetree@vger.kernel.org, Jisheng Zhang <jszhang@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-riscv@lists.infradead.org,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v1 0/2] Provide a fraemework for RISC-V ISA extensions 
Date:   Fri, 24 Dec 2021 13:16:30 -0800
Message-Id: <20211224211632.1698523-1-atishp@rivosinc.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series implements a generic framework to parse multi-letter ISA
extensions. It introduces a new DT node that can be under /cpus or
individual cpu depends on the platforms with homogeneous or heterogeneous 
harts. This version of the series only allows adds support for homogeneous
harts as there are no platforms with heterogeneous harts yet. However,
the DT binding allows both. 

The patch also indicates the user space about the available ISA extensions
via /proc/cpuinfo. 

Here is the example output of /proc/cpuinfo:
(with debug patches in Qemu and Linux kernel)

/ # cat /proc/cpuinfo 
processor	: 0
hart		: 0
isa		: rv64imafdcsu
isa-ext		: sstc,sscofpmf
mmu		: sv48

processor	: 1
hart		: 1
isa		: rv64imafdcsu
isa-ext		: sstc,sscofpmf
mmu		: sv48

processor	: 2
hart		: 2
isa		: rv64imafdcsu
isa-ext		: sstc,sscofpmf
mmu		: sv48

processor	: 3
hart		: 3
isa		: rv64imafdcsu
isa-ext		: sstc,sscofpmf
mmu		: sv48

Anybody adding support for any new multi-letter extensions should add an
entry to the riscv_isa_ext_id and the isa extension array. 
E.g. The patch[1] adds the support for sscofpmf extension.

[1] https://github.com/atishp04/linux/commit/a23157264118d6fd905fd08d8717c7df03078bb1

Atish Patra (2):
RISC-V: Provide a framework for parsing multi-letter ISA extensions
dt-bindings: riscv: Add DT binding for RISC-V ISA extensions

.../devicetree/bindings/riscv/cpus.yaml       |  9 +++
arch/riscv/include/asm/hwcap.h                | 31 ++++++++++
arch/riscv/kernel/cpu.c                       | 16 +++++
arch/riscv/kernel/cpufeature.c                | 58 ++++++++++++++++++-
4 files changed, 113 insertions(+), 1 deletion(-)

--
2.33.1

