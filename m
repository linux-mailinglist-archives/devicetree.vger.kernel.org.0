Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E192B690CE0
	for <lists+devicetree@lfdr.de>; Thu,  9 Feb 2023 16:26:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229761AbjBIP0e (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Feb 2023 10:26:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35620 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229586AbjBIP0d (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Feb 2023 10:26:33 -0500
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C8654C31
        for <devicetree@vger.kernel.org>; Thu,  9 Feb 2023 07:26:31 -0800 (PST)
Received: by mail-ej1-x62e.google.com with SMTP id jg8so7424670ejc.6
        for <devicetree@vger.kernel.org>; Thu, 09 Feb 2023 07:26:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MjCFSk4WAA8Ljs9klJBi/zNOvYCpTeU7cZLgpPDCtHY=;
        b=mHatL0K0OlmvOi/Dsna6gemWFLkn/gXc6i/Hxh0uv8yWhvw6VxVLMQC7ksCRwY9qL7
         J9/3DL1h9d+yiG6o6/hUJ6xmKaYxyTK9aygCV5PxR+cCJavvpwhiV+K6baatD+oKgzZI
         JNq+aMI1pht9yxhTSqgruCwhrrxgVDVxsNzqyu8R4KHQRx78Oym3ajfB1+WBPzA6I0J0
         eahngtH7VuSmCZ1//agFOCa2pk2UbqoJODLy6GAcWK3YW45LdnTcK4JwurPP8Eil3LYI
         IiVlmUiTJd8k96XGe6+3QcORVmSe5NFH6WeLOJQDMDQFpw7Eo3MvvCBziIA1LmEV8ncZ
         uNZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MjCFSk4WAA8Ljs9klJBi/zNOvYCpTeU7cZLgpPDCtHY=;
        b=Cr3kaGCP56AUAkwtXKlWT/84K5cX/MVxfLYUkz08ACdmjbnnwtyeeLl95MpzsE3Mh1
         j6EUrcxnVF1z8Mwaz1bfTzlwGXBeBITXx1RRYdTMy1LGT1QNYGOaspCa3SU5WcNgP1ku
         AJk7KEQXyNJ3TOMD3hrjGyuQvjj/3A8i0WUslcPUG/cmutm1GEs4K6hn3hVjOGmNXwYS
         z5BBST32YqtFVIF7xY04ogUpBWZso4PiyCa2YEpN9KMjSSx802IZI9Ur/5Gay3tCE9mP
         7+RXnh/qpOiUFWOJm9mdqQQAeYb1RSrtAxnnvjy+jfyyfQgGnx3cxqfvkTO/W3h3sGou
         RhOA==
X-Gm-Message-State: AO0yUKVa+FYrueI4vacCC7ZfdY1mmKM+Y0kdrpDwG2BRfCjrPa+fSYKP
        LZQisvYKzwriYHIrcmvjdAJ2IF7QsjfEXhHV
X-Google-Smtp-Source: AK7set929OJJb82VxrPGtyC9qRXC5KXbucIopdXttwcGhYbnhonZDv6ahTvsM1iS4YICbWHS0P8tIA==
X-Received: by 2002:a17:906:1e8c:b0:88d:f759:15b0 with SMTP id e12-20020a1709061e8c00b0088df75915b0mr12626077ejj.45.1675956390223;
        Thu, 09 Feb 2023 07:26:30 -0800 (PST)
Received: from localhost (cst2-173-16.cust.vodafone.cz. [31.30.173.16])
        by smtp.gmail.com with ESMTPSA id gl11-20020a170906e0cb00b0084d381d0528sm984769ejb.180.2023.02.09.07.26.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Feb 2023 07:26:29 -0800 (PST)
From:   Andrew Jones <ajones@ventanamicro.com>
To:     linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org,
        devicetree@vger.kernel.org
Cc:     'Anup Patel ' <apatel@ventanamicro.com>,
        'Palmer Dabbelt ' <palmer@dabbelt.com>,
        'Paul Walmsley ' <paul.walmsley@sifive.com>,
        'Krzysztof Kozlowski ' <krzysztof.kozlowski+dt@linaro.org>,
        'Atish Patra ' <atishp@rivosinc.com>,
        'Heiko Stuebner ' <heiko@sntech.de>,
        'Jisheng Zhang ' <jszhang@kernel.org>,
        'Rob Herring ' <robh@kernel.org>,
        'Albert Ou ' <aou@eecs.berkeley.edu>,
        'Conor Dooley ' <conor.dooley@microchip.com>
Subject: [PATCH v4 0/8] RISC-V: Apply Zicboz to clear_page
Date:   Thu,  9 Feb 2023 16:26:20 +0100
Message-Id: <20230209152628.129914-1-ajones@ventanamicro.com>
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
(see patch4's commit message for more details).

For those of you who reviewed v1[2], you may be looking for the memset()
patches. As pointed out in v1, and a couple follow-up emails, it's not
clear that patching memset() is a win yet. When I get a chance to test
on real hardware with a comprehensive benchmark collection then I can
post the memset() patches separately (assuming the benchmarks show it's
worthwhile).

Based on riscv-linux/for-next plus the dependencies listed below.

Dependencies:
https://lore.kernel.org/all/20230108163356.3063839-1-conor@kernel.org/
https://lore.kernel.org/all/20230105192610.1940841-1-heiko@sntech.de/

The patches are also available here
https://github.com/jones-drew/linux/commits/riscv/zicboz-v4

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
  RISC-V: cpufeature: Put vendor_id to work
  RISC-V: Use Zicboz in clear_page when available
  RISC-V: KVM: Provide UAPI for Zicboz block size
  RISC-V: KVM: Expose Zicboz to the guest

 .../devicetree/bindings/riscv/cpus.yaml       |  5 ++
 arch/riscv/Kconfig                            | 13 ++++
 arch/riscv/include/asm/alternative-macros.h   |  6 +-
 arch/riscv/include/asm/cacheflush.h           |  3 +-
 arch/riscv/include/asm/hwcap.h                |  1 +
 arch/riscv/include/asm/insn-def.h             |  4 ++
 arch/riscv/include/asm/page.h                 |  6 +-
 arch/riscv/include/uapi/asm/kvm.h             |  2 +
 arch/riscv/kernel/cpu.c                       |  1 +
 arch/riscv/kernel/cpufeature.c                | 31 +++++++-
 arch/riscv/kernel/setup.c                     |  2 +-
 arch/riscv/kvm/vcpu.c                         | 11 +++
 arch/riscv/lib/Makefile                       |  1 +
 arch/riscv/lib/clear_page.S                   | 71 +++++++++++++++++++
 arch/riscv/mm/cacheflush.c                    | 64 ++++++++++-------
 15 files changed, 187 insertions(+), 34 deletions(-)
 create mode 100644 arch/riscv/lib/clear_page.S

-- 
2.39.1

