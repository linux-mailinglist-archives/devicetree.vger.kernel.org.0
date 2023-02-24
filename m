Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2224A6A1F93
	for <lists+devicetree@lfdr.de>; Fri, 24 Feb 2023 17:26:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229690AbjBXQ0m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Feb 2023 11:26:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53684 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229627AbjBXQ0g (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Feb 2023 11:26:36 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8A0C6A7AA
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 08:26:33 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id l2-20020a05600c1d0200b003e1f6dff952so2589992wms.1
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 08:26:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=t9XbWHh7z6xgH5ybAb50Re8BsD/CWjb0q5NB4qWpec8=;
        b=gsHKxSc3W9Zg5Bwa49/u6XCMwFmMozy5gZOPAcKwyNE+3BbQC+e3sFtFbXn864pb4b
         smxfrVzr42Nhl5qOR4ejNJI2UT7Yz9SDQXHZHdXthOKbW/VLttOGPIgaUD97VIKYdSHF
         9tuA/U3Hp+dMFtRcjUqB5vKLUqL19CCg/Y2wsW2d+rYpcMQ61EIUlyT60RXIdCyf3cYK
         PvU9aGHJSsHHRMQOCdzogh/PYH8GdGKZJeXZK1en2aFCOG8ZWL7cPy0fuy7cws5fa+i9
         7Ztx6iYS2rDbj/Nj1rKQl4H2P+iHZ0N9y1Ia+bJH5XDN7EKuP4qHL/5X/4rL7VjRjfXJ
         UF3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=t9XbWHh7z6xgH5ybAb50Re8BsD/CWjb0q5NB4qWpec8=;
        b=xcuiTB3mtaPMQRlNKFJwzX85bVkGMW2wCDQICJ3aaywKiVNhShSXCBff/n+Ib0beEs
         bkYKQzzGcbCbZp68T7kDDjCNmzDbxR8BerTU4jC1bK3H3k82brioLcyBq+SpY7VugAii
         3RY/k1JzQRUviN4bN/NM/YvbY9MHcXoyMJY2OZALyy/vvsHibqhBjtk7XI7xtLFq3OYn
         yQLEBWY1WslrFrxdqElZccOvEQZAoZu+JMpan9LVOS3AOfqiFjptLtCDKbx+OcZP62oM
         fbFrPc2mp5i5KbBnl11YP/wkrxQpsOvgCyABs13652ZkqIGTX7bxn2fW7gwmdpEe5ZrM
         neXQ==
X-Gm-Message-State: AO0yUKW2Mqdq2+MHFj1vLvdThnh4wyqkCDIGGLtnSU0kkTC7PjDLcsyH
        /Net6ILzp7FUPt16uz4bwAuxhw==
X-Google-Smtp-Source: AK7set8ukUPh65qDDxzUQFuvobiA31BDiqMniPH3YEdUSNAmm/HLb2YZzIQ94J5cJRZx13PIJ/67bQ==
X-Received: by 2002:a05:600c:3b85:b0:3ea:e7f7:65e2 with SMTP id n5-20020a05600c3b8500b003eae7f765e2mr3425401wms.26.1677255992156;
        Fri, 24 Feb 2023 08:26:32 -0800 (PST)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id e8-20020a7bc2e8000000b003e6efc0f91csm3336755wmk.42.2023.02.24.08.26.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Feb 2023 08:26:31 -0800 (PST)
From:   Andrew Jones <ajones@ventanamicro.com>
To:     linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org,
        devicetree@vger.kernel.org
Cc:     'Conor Dooley ' <conor.dooley@microchip.com>,
        'Paul Walmsley ' <paul.walmsley@sifive.com>,
        'Palmer Dabbelt ' <palmer@dabbelt.com>,
        'Sudip Mukherjee ' <sudip.mukherjee@codethink.co.uk>,
        'Ben Dooks ' <ben.dooks@codethink.co.uk>,
        'Atish Patra ' <atishp@rivosinc.com>,
        'Albert Ou ' <aou@eecs.berkeley.edu>,
        'Anup Patel ' <apatel@ventanamicro.com>,
        'Krzysztof Kozlowski ' <krzysztof.kozlowski+dt@linaro.org>,
        'Rob Herring ' <robh@kernel.org>,
        'Jisheng Zhang ' <jszhang@kernel.org>,
        'Heiko Stuebner ' <heiko@sntech.de>
Subject: [PATCH v6 0/8] RISC-V: Apply Zicboz to clear_page
Date:   Fri, 24 Feb 2023 17:26:23 +0100
Message-Id: <20230224162631.405473-1-ajones@ventanamicro.com>
X-Mailer: git-send-email 2.39.1
Content-Type: text/plain; charset="utf-8"
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

When the Zicboz extension is available we can more rapidly zero naturally
aligned Zicboz block sized chunks of memory. As pages are always page
aligned and are larger than any Zicboz block size will be, then
clear_page() appears to be a good candidate for the extension. While cycle
count and energy consumption should also be considered, we can be pretty
certain that implementing clear_page() with the Zicboz extension is a win
by comparing the new dynamic instruction count with its current count[1].
Doing so we see that the new count is just over a quarter of the old count
(see patch6's commit message for more details).

For those of you who reviewed v1[2], you may be looking for the memset()
patches. As pointed out in v1, and a couple follow-up emails, it's not
clear that patching memset() is a win yet. When I get a chance to test
on real hardware with a comprehensive benchmark collection then I can
post the memset() patches separately (assuming the benchmarks show it's
worthwhile).

Based on riscv-linux/for-next plus the dependencies listed below.

Dependencies:
https://lore.kernel.org/all/20230224154601.88163-1-ajones@ventanamicro.com/

The patches are also available here
https://github.com/jones-drew/linux/commits/riscv/zicboz-v6

To test over QEMU this branch may be used to enable Zicboz
https://gitlab.com/jones-drew/qemu/-/commits/riscv/zicboz

To test running a KVM guest with Zicboz this kvmtool branch may be used
https://github.com/jones-drew/kvmtool/commits/riscv/zicboz

Thanks,
drew

[1] I ported the functions under test to userspace and linked them with
    a test program. Then, I ran them under gdb with a script[3] which
    counted instructions by single stepping.
[2] https://lore.kernel.org/all/20221027130247.31634-1-ajones@ventanamicro.com/
[3] https://gist.github.com/jones-drew/487791c956ceca8c18adc2847eec9c60

v6:
  - Rebased on latest riscv-linux/for-next
  - Used upper/lower_16_bits() in PATCH_ID_* macros, thanks to Conor
    for pointing out that they can be improved
  - Switched to SYM_FUNC_START/END for clear_page and exported the
    symbol since other building modules which use clear_page was
    busted [Ben Dooks and Sudip Mukherjee]
  - Picked up an R-b from Conor

v5:
  - Rebased on latest for-next which allowed dropping v4's dependencies
  - Added a new dependency on an alternatives/cpufeatures cleanup series
  - Replaced "RISC-V: cpufeature: Put vendor_id to work" with "riscv:
    cpufeatures: Put the upper 16 bits of patch ID to work" since touching
    vendor_id is probably a bad idea [Conor]
  - Picked up an r-b from Conor

v4:
  - Rebased on latest for-next which allowed dropping one dependency
  - Added "RISC-V: alternatives: Support patching multiple insns in assembly"
    since I needed to use more than one instruction in an ALTERNATIVE call
    from assembly. I can post this patch separately as a fix if desired.
  - Improved the dt-binding patch commit message [Conor]
  - Picked up some tags from Conor and Rob (I kept Conor's a-b on the
    clear_page patch, even though there are several changes to it, because
    I interpreted the a-b as "OK by me to implement a Zicboz clear_page")
  - Added "RISC-V: cpufeature: Put vendor_id to work", which was necessary
    for how I wanted to use ALTERNATIVE in clear_page.
  - Fallback to memset when the Zicboz block size is too big for the
    Zicboz implementation of clear_page [Palmer]
  - Use lw without la in clear_page impl [Palmer]
  - Implement a Duff device for clear_page using the new 'vendor_id'
    alternatives support [drew]

v3:
  - CC'ed DT list
  - Improved commit message of DT bindings patch to point out relationship
    with cbom-block-size
  - Picked up an a-b from Conor

v2:
  - s/blksz/block_size/, improved commit message for "RISC-V: Add Zicboz
    detection and block size parsing", isa ext sorting [Conor]
  - Added dt binding patch [Heiko]
  - Picked up r-b's from Conor, Heiko, and Anup
  - Moved config symbol and CBO_zero() introduction to "RISC-V: Use Zicboz
    in clear_page when available" and improved its commit message and
    implementation (unrolled four times) [drew]
  - Dropped memset() patches [drew]
  - Rebased on ae4d39f75308 ("Merge patch "RISC-V: fix incorrect type of
    ARCH_CANAAN_K210_DTB_SOURCE"") plus the dependencies

Andrew Jones (8):
  RISC-V: alternatives: Support patching multiple insns in assembly
  RISC-V: Factor out body of riscv_init_cbom_blocksize loop
  dt-bindings: riscv: Document cboz-block-size
  RISC-V: Add Zicboz detection and block size parsing
  RISC-V: cpufeatures: Put the upper 16 bits of patch ID to work
  RISC-V: Use Zicboz in clear_page when available
  RISC-V: KVM: Provide UAPI for Zicboz block size
  RISC-V: KVM: Expose Zicboz to the guest

 .../devicetree/bindings/riscv/cpus.yaml       |  5 ++
 arch/riscv/Kconfig                            | 13 ++++
 arch/riscv/include/asm/alternative-macros.h   |  6 +-
 arch/riscv/include/asm/alternative.h          |  4 +
 arch/riscv/include/asm/cacheflush.h           |  3 +-
 arch/riscv/include/asm/hwcap.h                |  1 +
 arch/riscv/include/asm/insn-def.h             |  4 +
 arch/riscv/include/asm/page.h                 |  6 +-
 arch/riscv/include/uapi/asm/kvm.h             |  2 +
 arch/riscv/kernel/cpu.c                       |  1 +
 arch/riscv/kernel/cpufeature.c                | 58 ++++++++++++++-
 arch/riscv/kernel/setup.c                     |  2 +-
 arch/riscv/kvm/vcpu.c                         | 11 +++
 arch/riscv/lib/Makefile                       |  1 +
 arch/riscv/lib/clear_page.S                   | 74 +++++++++++++++++++
 arch/riscv/mm/cacheflush.c                    | 64 +++++++++-------
 16 files changed, 219 insertions(+), 36 deletions(-)
 create mode 100644 arch/riscv/lib/clear_page.S

-- 
2.39.1

