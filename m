Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6835C6BA644
	for <lists+devicetree@lfdr.de>; Wed, 15 Mar 2023 05:35:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230455AbjCOEfO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Mar 2023 00:35:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33746 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229705AbjCOEfN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Mar 2023 00:35:13 -0400
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED3A05550E
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 21:35:10 -0700 (PDT)
Received: by mail-pj1-x1033.google.com with SMTP id fy10-20020a17090b020a00b0023b4bcf0727so653509pjb.0
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 21:35:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20210112.gappssmtp.com; s=20210112; t=1678854910;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dPQDtkL7p5amwR2MSC3ONKSSLFAaWG1ch5k/FMNN80U=;
        b=kImpnHj7TzuZl14E9YW4wM1bFKkaabWIXZY5bur0Imc7d7dEKuJ3Ayrh1J30zmjXE0
         1VZZOvA8efmMtZM+KbAHhTMR+U2bupbWtczW1vmIPdHDH8qnPUuLVCG/Onh9kJeoWF2x
         fEwqqyt/k8Uc+NCnDPr+2V47PlTPd4AOTCMsgPqwBV2caQarv+rHkgTPTWUVNjF0MmKi
         7DW2bI1KRs/JUKxbm32RsixMPVGN1lJTwZJwZrcV3UncDXaM83SuNuIMuQB2/gNvAxKV
         SBypuWtRWGDBACeBkwhBSfgxczpF3Um1iPpemttL5/yF2k43b68tbZ8rEpnWFzMRsm/N
         j4sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678854910;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dPQDtkL7p5amwR2MSC3ONKSSLFAaWG1ch5k/FMNN80U=;
        b=KzPngaD+2WKNgYRU4wPjFw4Xg2vdTlAlx5zdAvbOnu828mk5z62lYeDdlCpcuQiPjR
         awdSr//HK3K4u9imcZXGAImGh1/g3tRCzbOCMcuw0qOSj7DBjuTWMS9Rtz8mMkKzD2WX
         epzPaojdYu7jAgS5s7fANCZ0kIW2kSb63M8FvPNbgKFouX1FHBDM7Tdn/yfxzcQDrDRp
         1oK9qca4FLBn39Zq/rdhAAP3YWAZNboH5s3aZHON1QRyhW3H6ryHbjX1Q8PiP9JaYGGN
         qO55h9cQcuivh8xaz3PK/M2NpgREYVAdHyRMcpuG08CIaZF0VWOUdrol+pdQTFMDO7Eh
         DZHA==
X-Gm-Message-State: AO0yUKVMKaSMz+kxzP126KHSx8R/lW2igCoW0CuvjQsyW+gi8m3Kl79v
        c3CFQq1ltxAHC+eWtQMnlRerOg==
X-Google-Smtp-Source: AK7set+Jn0azN6pdanOJYvsTlLG099R9EqR+nAi03DVZLFEMSt3kDNv5bP5IGtxNJtCBsuOFK5rVqw==
X-Received: by 2002:a05:6a21:6da0:b0:d5:c8c8:e2c with SMTP id wl32-20020a056a216da000b000d5c8c80e2cmr2543727pzb.23.1678854909998;
        Tue, 14 Mar 2023 21:35:09 -0700 (PDT)
Received: from localhost ([50.221.140.188])
        by smtp.gmail.com with ESMTPSA id x21-20020aa784d5000000b00592eb6f239fsm2412690pfn.40.2023.03.14.21.35.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Mar 2023 21:35:09 -0700 (PDT)
Date:   Tue, 14 Mar 2023 21:35:09 -0700 (PDT)
X-Google-Original-Date: Tue, 14 Mar 2023 21:34:10 PDT (-0700)
Subject:     Re: [PATCH v6 0/8] RISC-V: Apply Zicboz to clear_page
In-Reply-To: <20230224162631.405473-1-ajones@ventanamicro.com>
CC:     linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org,
        devicetree@vger.kernel.org,
        Conor Dooley <conor.dooley@microchip.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        sudip.mukherjee@codethink.co.uk, ben.dooks@codethink.co.uk,
        Atish Patra <atishp@rivosinc.com>, aou@eecs.berkeley.edu,
        apatel@ventanamicro.com, krzysztof.kozlowski+dt@linaro.org,
        robh@kernel.org, jszhang@kernel.org, heiko@sntech.de
From:   Palmer Dabbelt <palmer@dabbelt.com>
To:     ajones@ventanamicro.com
Message-ID: <mhng-72607fed-a923-4921-896f-7f703434083a@palmer-ri-x1c9a>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 24 Feb 2023 08:26:23 PST (-0800), ajones@ventanamicro.com wrote:
> When the Zicboz extension is available we can more rapidly zero naturally
> aligned Zicboz block sized chunks of memory. As pages are always page

I guess we're sort of in a grey area here: this is just a performance 
thing so in theory some sort of benchmark should be required, but IMO 
it's OK to just hand wave this one away -- if the "zero a cache block" 
instruction doesn't make "zero a page" go faster then something has gone 
so far off the rails it's probably better to just pretend the machine 
doesn't implement Zicboz.

This all LGTM, so unless anyone's opposed or it blows up on testing 
overnight then it'll be on for-next.

Thanks!

> aligned and are larger than any Zicboz block size will be, then
> clear_page() appears to be a good candidate for the extension. While cycle
> count and energy consumption should also be considered, we can be pretty
> certain that implementing clear_page() with the Zicboz extension is a win
> by comparing the new dynamic instruction count with its current count[1].
> Doing so we see that the new count is just over a quarter of the old count
> (see patch6's commit message for more details).
>
> For those of you who reviewed v1[2], you may be looking for the memset()
> patches. As pointed out in v1, and a couple follow-up emails, it's not
> clear that patching memset() is a win yet. When I get a chance to test
> on real hardware with a comprehensive benchmark collection then I can
> post the memset() patches separately (assuming the benchmarks show it's
> worthwhile).
>
> Based on riscv-linux/for-next plus the dependencies listed below.
>
> Dependencies:
> https://lore.kernel.org/all/20230224154601.88163-1-ajones@ventanamicro.com/
>
> The patches are also available here
> https://github.com/jones-drew/linux/commits/riscv/zicboz-v6
>
> To test over QEMU this branch may be used to enable Zicboz
> https://gitlab.com/jones-drew/qemu/-/commits/riscv/zicboz
>
> To test running a KVM guest with Zicboz this kvmtool branch may be used
> https://github.com/jones-drew/kvmtool/commits/riscv/zicboz
>
> Thanks,
> drew
>
> [1] I ported the functions under test to userspace and linked them with
>     a test program. Then, I ran them under gdb with a script[3] which
>     counted instructions by single stepping.
> [2] https://lore.kernel.org/all/20221027130247.31634-1-ajones@ventanamicro.com/
> [3] https://gist.github.com/jones-drew/487791c956ceca8c18adc2847eec9c60
>
> v6:
>   - Rebased on latest riscv-linux/for-next
>   - Used upper/lower_16_bits() in PATCH_ID_* macros, thanks to Conor
>     for pointing out that they can be improved
>   - Switched to SYM_FUNC_START/END for clear_page and exported the
>     symbol since other building modules which use clear_page was
>     busted [Ben Dooks and Sudip Mukherjee]
>   - Picked up an R-b from Conor
>
> v5:
>   - Rebased on latest for-next which allowed dropping v4's dependencies
>   - Added a new dependency on an alternatives/cpufeatures cleanup series
>   - Replaced "RISC-V: cpufeature: Put vendor_id to work" with "riscv:
>     cpufeatures: Put the upper 16 bits of patch ID to work" since touching
>     vendor_id is probably a bad idea [Conor]
>   - Picked up an r-b from Conor
>
> v4:
>   - Rebased on latest for-next which allowed dropping one dependency
>   - Added "RISC-V: alternatives: Support patching multiple insns in assembly"
>     since I needed to use more than one instruction in an ALTERNATIVE call
>     from assembly. I can post this patch separately as a fix if desired.
>   - Improved the dt-binding patch commit message [Conor]
>   - Picked up some tags from Conor and Rob (I kept Conor's a-b on the
>     clear_page patch, even though there are several changes to it, because
>     I interpreted the a-b as "OK by me to implement a Zicboz clear_page")
>   - Added "RISC-V: cpufeature: Put vendor_id to work", which was necessary
>     for how I wanted to use ALTERNATIVE in clear_page.
>   - Fallback to memset when the Zicboz block size is too big for the
>     Zicboz implementation of clear_page [Palmer]
>   - Use lw without la in clear_page impl [Palmer]
>   - Implement a Duff device for clear_page using the new 'vendor_id'
>     alternatives support [drew]
>
> v3:
>   - CC'ed DT list
>   - Improved commit message of DT bindings patch to point out relationship
>     with cbom-block-size
>   - Picked up an a-b from Conor
>
> v2:
>   - s/blksz/block_size/, improved commit message for "RISC-V: Add Zicboz
>     detection and block size parsing", isa ext sorting [Conor]
>   - Added dt binding patch [Heiko]
>   - Picked up r-b's from Conor, Heiko, and Anup
>   - Moved config symbol and CBO_zero() introduction to "RISC-V: Use Zicboz
>     in clear_page when available" and improved its commit message and
>     implementation (unrolled four times) [drew]
>   - Dropped memset() patches [drew]
>   - Rebased on ae4d39f75308 ("Merge patch "RISC-V: fix incorrect type of
>     ARCH_CANAAN_K210_DTB_SOURCE"") plus the dependencies
>
> Andrew Jones (8):
>   RISC-V: alternatives: Support patching multiple insns in assembly
>   RISC-V: Factor out body of riscv_init_cbom_blocksize loop
>   dt-bindings: riscv: Document cboz-block-size
>   RISC-V: Add Zicboz detection and block size parsing
>   RISC-V: cpufeatures: Put the upper 16 bits of patch ID to work
>   RISC-V: Use Zicboz in clear_page when available
>   RISC-V: KVM: Provide UAPI for Zicboz block size
>   RISC-V: KVM: Expose Zicboz to the guest
>
>  .../devicetree/bindings/riscv/cpus.yaml       |  5 ++
>  arch/riscv/Kconfig                            | 13 ++++
>  arch/riscv/include/asm/alternative-macros.h   |  6 +-
>  arch/riscv/include/asm/alternative.h          |  4 +
>  arch/riscv/include/asm/cacheflush.h           |  3 +-
>  arch/riscv/include/asm/hwcap.h                |  1 +
>  arch/riscv/include/asm/insn-def.h             |  4 +
>  arch/riscv/include/asm/page.h                 |  6 +-
>  arch/riscv/include/uapi/asm/kvm.h             |  2 +
>  arch/riscv/kernel/cpu.c                       |  1 +
>  arch/riscv/kernel/cpufeature.c                | 58 ++++++++++++++-
>  arch/riscv/kernel/setup.c                     |  2 +-
>  arch/riscv/kvm/vcpu.c                         | 11 +++
>  arch/riscv/lib/Makefile                       |  1 +
>  arch/riscv/lib/clear_page.S                   | 74 +++++++++++++++++++
>  arch/riscv/mm/cacheflush.c                    | 64 +++++++++-------
>  16 files changed, 219 insertions(+), 36 deletions(-)
>  create mode 100644 arch/riscv/lib/clear_page.S
