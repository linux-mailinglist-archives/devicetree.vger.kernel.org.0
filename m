Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D9A1074C3E3
	for <lists+devicetree@lfdr.de>; Sun,  9 Jul 2023 13:56:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230118AbjGIL4E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 9 Jul 2023 07:56:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47322 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230107AbjGIL4D (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 9 Jul 2023 07:56:03 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF38EDB
        for <devicetree@vger.kernel.org>; Sun,  9 Jul 2023 04:56:01 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-3fbca8935bfso35686245e9.3
        for <devicetree@vger.kernel.org>; Sun, 09 Jul 2023 04:56:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20221208.gappssmtp.com; s=20221208; t=1688903760; x=1691495760;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1ClPeT3EYDSTeWck+8VBf7+eniO1xXUIIPF5EwfwLuQ=;
        b=5i9AaQ9oato3/UxUWnfrVKNEXN28gXBBgsEndPj8lFkXiNp7pn4eFUss8XieUktpqy
         jnPYUs/Wt9Vrf4StdEQ6ugsUeHuFEsX+X5uRxJVr0tyiqbOprB0V1AA1D95r53Ebgity
         V3d2HOmJsNEcFrvdKWA5Z2/VwROJmRp+hKAuqE1qaldiaFPdxtyeEp71N68BOMnF232I
         EzA4NRw6o44BXBEIw9D2gr35cUyHZyrIRadIYZrp8kW58H9CcvV5MC1Y907oUwVOeCDb
         xuZ/ShwvXjLUj6hbV6prgrXglCW+neG8ZjMcNXfNZ7ItK5dhYtVETNTOI3mjCFemhKVA
         geFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688903760; x=1691495760;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1ClPeT3EYDSTeWck+8VBf7+eniO1xXUIIPF5EwfwLuQ=;
        b=EBv2lsmbwv0YLCP1p2SXJSMX4cWAD0U/iHJzfuDXPNbf/Gbfd7ePSapnwP/PmvrWhs
         0IFMHKLyCJCiPC6Y3xWohagt6PHhERWLLinSMRPKQFqBJZzoZ89x2DXViTICzvkwzLNk
         YgPzUlrS/MRslW85/FhjSc7mpTAOhr+YAroPucoErnU+D5Iqhr0pddM0VT8Nqn1ECjSD
         gWzv5MU1j0pnpsTNMiuk6/9uAN7zuJKT1sTJ41EuOs6Zu+p5R4spNHagm4XEluhs/Nwy
         qLrME5UqMllvuqIj5aOpK6vc6cOIBxCXIjOIjFw9Mp5T6zohfR6r3fYeoYiUNK8B9ubb
         Bgcw==
X-Gm-Message-State: ABy/qLafTDaCjzRcfiIQvs6vJHFTqR2XWk9lqzDCSi2lDQuD5s9dHMWO
        tUeDcLFMgvxJHbohe7JjylIjVw==
X-Google-Smtp-Source: APBJJlHwqX8wno99Ei1SLO2rybrVSZr3aNNZ0UqEPWijaCDDyP/QUsRHI0gO/gMYZS+xZN2BsNDNxw==
X-Received: by 2002:a1c:6a0c:0:b0:3fb:ab56:a66c with SMTP id f12-20020a1c6a0c000000b003fbab56a66cmr7071774wmc.10.1688903760019;
        Sun, 09 Jul 2023 04:56:00 -0700 (PDT)
Received: from vermeer.tail79c99.ts.net ([2a01:cb1d:81a9:dd00:b570:b34c:ffd4:c805])
        by smtp.gmail.com with ESMTPSA id 2-20020a05600c02c200b003fc007d8a92sm6194101wmn.45.2023.07.09.04.55.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Jul 2023 04:55:59 -0700 (PDT)
From:   Samuel Ortiz <sameo@rivosinc.com>
To:     Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        linux-riscv@lists.infradead.org
Cc:     Samuel Ortiz <sameo@rivosinc.com>, linux@rivosinc.com,
        Conor Dooley <conor.dooley@microchip.com>,
        Andrew Jones <ajones@ventanamicro.com>,
        Heiko Stuebner <heiko.stuebner@vrull.eu>,
        Anup Patel <apatel@ventanamicro.com>,
        linux-kernel@vger.kernel.org,
        "Hongren (Zenithal) Zheng" <i@zenithal.me>,
        Guo Ren <guoren@kernel.org>, Atish Patra <atishp@rivosinc.com>,
        =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn@rivosinc.com>,
        Evan Green <evan@rivosinc.com>, devicetree@vger.kernel.org
Subject: [PATCH v3 0/4] RISC-V: archrandom support
Date:   Sun,  9 Jul 2023 13:55:42 +0200
Message-ID: <20230709115549.2666557-1-sameo@rivosinc.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patchset adds support for the archrandom API to the RISC-V
architecture.

The ratified crypto scalar extensions provide entropy bits via the seed
CSR, as exposed by the Zkr extension.

The first patch of this patchset allows for detecting support of the Zbc
and all scalar crypto extensions. The second patch documents the
corresponding dt-bindings.

The third patch exposes the Zbc and scalar crypto extensions through
the hwprobe syscall.

The last patch relies on the first ones to check for the Zkr support,
and implements get_random_seed_longs by looping through a seed CSR
read-write to return one long worth of entropy.

---

v3:

- Increase the CSR SEED retry loop max iterations to 100
- Document the added extensions in the related dt-bindings file

v2:

- Fixed the ISA map setting for zkbx
- Alphanumerically sort the ISA map setting
- Added my SOB on Hongren's patch
- Fixed patch #1 commit message
- Remove printk prefix from the archrandom implementation
- Fix needed_seeds computation (and make it const)
- Replace riscv_isa_extension_available() with
  riscv_has_extension_likely()
- Make the get_random_seed_longs implementation more readable

---

Hongren (Zenithal) Zheng (1):
  RISC-V: Add Bitmanip/Scalar Crypto parsing from DT

Samuel Ortiz (3):
  dt-bindings: riscv: Document the 1.0 scalar cryptography extensions
  RISC-V: hwprobe: Expose Zbc and the scalar crypto extensions
  RISC-V: Implement archrandom when Zkr is available

 .../devicetree/bindings/riscv/extensions.yaml | 82 +++++++++++++++++++
 Documentation/riscv/hwprobe.rst               | 33 ++++++++
 arch/riscv/include/asm/archrandom.h           | 70 ++++++++++++++++
 arch/riscv/include/asm/csr.h                  |  9 ++
 arch/riscv/include/asm/hwcap.h                | 11 +++
 arch/riscv/include/uapi/asm/hwprobe.h         | 11 +++
 arch/riscv/kernel/cpu.c                       | 11 +++
 arch/riscv/kernel/cpufeature.c                | 30 +++++++
 arch/riscv/kernel/sys_riscv.c                 | 36 ++++----
 9 files changed, 279 insertions(+), 14 deletions(-)
 create mode 100644 arch/riscv/include/asm/archrandom.h


base-commit: e8605e8fdf42642048b7e59141deaf8e4cf06d71
-- 
2.41.0

