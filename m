Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 345C865C1A9
	for <lists+devicetree@lfdr.de>; Tue,  3 Jan 2023 15:16:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233452AbjACOPb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Jan 2023 09:15:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60076 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237947AbjACOOa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Jan 2023 09:14:30 -0500
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1092211A23
        for <devicetree@vger.kernel.org>; Tue,  3 Jan 2023 06:14:20 -0800 (PST)
Received: by mail-pj1-x1036.google.com with SMTP id v13-20020a17090a6b0d00b00219c3be9830so31191452pjj.4
        for <devicetree@vger.kernel.org>; Tue, 03 Jan 2023 06:14:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GW12ngOo/jzgFd3I2MoMFB0W6lAUEorhU5h+d0gT4yc=;
        b=VzQCrF+x0ppecP623HHrXxGlQkstU/Xb+MJBqDfOOOpIg1A+wKk3buBMT0eydqlWOz
         Rchbm8sZ1F6ukc88ax+BrFfleDZmVSEdLOL/3ved/kdyF3y3gKjlQSISRnUTPVfiMJLo
         cKxam11CFHqd85ntWtijAHSYu3S3x0OULXbuWkNKcjUgRMSPjuK8/ZH/Rq6B/b282pc2
         UQE3DKsYuCcizXSYCT4OQ4vNOYm0aFYbvPByUaXtQB8AyeYfp2X2gfa0+NK6umjDu6OX
         iarrr7vl/eJNPq00D/UxI5tyeVUFgz6eWX0/bwOJJlKTgX5wc31kVa58Syafbpu5pLU2
         myRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GW12ngOo/jzgFd3I2MoMFB0W6lAUEorhU5h+d0gT4yc=;
        b=ALYig2P/fZeqkmgnOcvUOfAIHatPck5fnzKdrPkKlONo3U4a6Wepmp8xfUNGHPd2Mm
         QnHQ4d0Lne9Mt8lOnPVT5lfIDyYh8ByLFI5vn8e9ISpZhu4mLZihgXr2m8c6H2s24K2y
         Ytx0sXUnFXeghizGZBNUMTJSlbZ7pUpkIMZzdnhz/zHZUpoSLbdjQhW0IGrXzvBoZTse
         uBWfUfRRNXge4WQTZIqJL1getE0azq29P8hbZr38zaNpK7+KH4m7hYRVbMM9EVN/I+6y
         kA8/bS6Ng6ukJah39pc+9OdsRx6NNlU24SEfSiJBDHFZXqRRWVzpuLDsBp9XH8jc0x14
         005g==
X-Gm-Message-State: AFqh2koMvG5CglRzI00n8XWoBILi8Z04IT6ioZ4PsfwUV/IJ9xaGLX5I
        R8/u3u0ch3R1UMjvhzwPZGgQ6Q==
X-Google-Smtp-Source: AMrXdXvxCG0tSIyhPAqijzEbUT1jIZbCSmA9AM+oOvQS7OyeMNbnHHbaORBdhzixL9xgv/u4nhMpGQ==
X-Received: by 2002:a05:6a20:1455:b0:b2:636a:7bda with SMTP id a21-20020a056a20145500b000b2636a7bdamr64930890pzi.7.1672755259306;
        Tue, 03 Jan 2023 06:14:19 -0800 (PST)
Received: from anup-ubuntu-vm.localdomain ([171.76.85.241])
        by smtp.gmail.com with ESMTPSA id h1-20020a628301000000b0056be4dbd4besm5936035pfe.111.2023.01.03.06.14.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jan 2023 06:14:18 -0800 (PST)
From:   Anup Patel <apatel@ventanamicro.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Atish Patra <atishp@atishpatra.org>,
        Alistair Francis <Alistair.Francis@wdc.com>,
        Anup Patel <anup@brainfault.org>,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v2 0/9] Linux RISC-V AIA Support
Date:   Tue,  3 Jan 2023 19:44:00 +0530
Message-Id: <20230103141409.772298-1-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The RISC-V AIA specification is now frozen as-per the RISC-V international
process. The latest frozen specifcation can be found at:
https://github.com/riscv/riscv-aia/releases/download/1.0-RC1/riscv-interrupts-1.0-RC1.pdf

At a high-level, the AIA specification adds three things:
1) AIA CSRs
   - Improved local interrupt support
2) Incoming Message Signaled Interrupt Controller (IMSIC)
   - Per-HART MSI controller
   - Support MSI virtualization
   - Support IPI along with virtualization
3) Advanced Platform-Level Interrupt Controller (APLIC)
   - Wired interrupt controller
   - In MSI-mode, converts wired interrupt into MSIs (i.e. MSI generator)
   - In Direct-mode, injects external interrupts directly into HARTs

For an overview of the AIA specification, refer the recent AIA virtualization
talk at KVM Forum 2022:
https://static.sched.com/hosted_files/kvmforum2022/a1/AIA_Virtualization_in_KVM_RISCV_final.pdf
https://www.youtube.com/watch?v=r071dL8Z0yo

This series adds required Linux irqchip drivers for AIA and it depends on
the recent "RISC-V IPI Improvements".
(Refer, https://lore.kernel.org/lkml/20221101143400.690000-1-apatel@ventanamicro.com/t/)

To test this series, use QEMU v7.2 (or higher) and OpenSBI v1.2 (or higher).

These patches can also be found in the riscv_aia_v2 branch at:
https://github.com/avpatel/linux.git

Changes since v1:
 - Rebased on Linux-6.2-rc2
 - Addressed comments on IMSIC DT bindings for PATCH4
 - Use raw_spin_lock_irqsave() on ids_lock for PATCH5
 - Improved MMIO alignment checks in PATCH5 to allow MMIO regions
   with holes.
 - Addressed comments on APLIC DT bindings for PATCH6
 - Fixed warning splat in aplic_msi_write_msg() caused by
   zeroed MSI message in PATCH7
 - Dropped DT property riscv,slow-ipi instead will have module
   parameter in future.

Anup Patel (9):
  RISC-V: Add AIA related CSR defines
  RISC-V: Detect AIA CSRs from ISA string
  irqchip/riscv-intc: Add support for RISC-V AIA
  dt-bindings: interrupt-controller: Add RISC-V incoming MSI controller
  irqchip: Add RISC-V incoming MSI controller driver
  dt-bindings: interrupt-controller: Add RISC-V advanced PLIC
  irqchip: Add RISC-V advanced PLIC driver
  RISC-V: Select APLIC and IMSIC drivers
  MAINTAINERS: Add entry for RISC-V AIA drivers

 .../interrupt-controller/riscv,aplic.yaml     |  159 +++
 .../interrupt-controller/riscv,imsics.yaml    |  168 +++
 MAINTAINERS                                   |   12 +
 arch/riscv/Kconfig                            |    2 +
 arch/riscv/include/asm/csr.h                  |   92 ++
 arch/riscv/include/asm/hwcap.h                |    8 +
 arch/riscv/kernel/cpu.c                       |    2 +
 arch/riscv/kernel/cpufeature.c                |    2 +
 drivers/irqchip/Kconfig                       |   20 +-
 drivers/irqchip/Makefile                      |    2 +
 drivers/irqchip/irq-riscv-aplic.c             |  670 ++++++++++
 drivers/irqchip/irq-riscv-imsic.c             | 1174 +++++++++++++++++
 drivers/irqchip/irq-riscv-intc.c              |   37 +-
 include/linux/irqchip/riscv-aplic.h           |  117 ++
 include/linux/irqchip/riscv-imsic.h           |   92 ++
 15 files changed, 2550 insertions(+), 7 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/riscv,aplic.yaml
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/riscv,imsics.yaml
 create mode 100644 drivers/irqchip/irq-riscv-aplic.c
 create mode 100644 drivers/irqchip/irq-riscv-imsic.c
 create mode 100644 include/linux/irqchip/riscv-aplic.h
 create mode 100644 include/linux/irqchip/riscv-imsic.h

-- 
2.34.1

