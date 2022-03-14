Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C50AE4D8E4C
	for <lists+devicetree@lfdr.de>; Mon, 14 Mar 2022 21:39:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241335AbiCNUkK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Mar 2022 16:40:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240136AbiCNUkJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Mar 2022 16:40:09 -0400
Received: from mail-qt1-x836.google.com (mail-qt1-x836.google.com [IPv6:2607:f8b0:4864:20::836])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42E9433E97
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 13:38:59 -0700 (PDT)
Received: by mail-qt1-x836.google.com with SMTP id 10so11756006qtz.11
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 13:38:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=6w3smz0Oju2eB1A2qrt4ZKtokvH1F+OKqqamdL7L7P4=;
        b=pdMnUTk+FxlOr0gcR6zu3Q3yrpEn5lHgpsJ7lD6tENqImWy+nWDQ07qXGibnvAZczi
         W6tj7yTDQv1Ba/F7OQUNHNehdhKHCuw3xUJxj4SIaMvSARglSlK7TFbieFmzMdMMIE63
         vivff60xvi2SY4dAPo8Whzm0S1NtIjb5NwzSuPWk4XhVHGZ2fYCoQE0+GroYxBaR/r+H
         Rg4dQprmKpEKwAGYNlkkTjxqyLZTHR5pWxX4bOtYj07JrjnUlHFsoZMDglcnFGHNrsmn
         fIq42izBdQmHAGMMbHbjyhFaGvKtJ5ibxOsaLaNyJKjP4RglNZMQTCCIYNUJqonJVPUB
         2ETQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=6w3smz0Oju2eB1A2qrt4ZKtokvH1F+OKqqamdL7L7P4=;
        b=wJuflYyTFogRLkNp1gNmMpAIGKVVfYhI1yKviN1Tz/Zbt5Kl+Hqsk+cYXPC6AWvC1D
         cPNCDLO6LEOU32HrEVoRWS30k6tYC4bSq0SOfI7tz8eGw6wYb2as+Cu29QOyNx4GZPy/
         8tkNrp9ErUnJwo4BZupDPW98Wja+QzVhTqMT/xH6Kg93eBUWr6/BkDQ69QZ1YcqPmaFz
         8330MbypX63nuYgsr595k6/gUuiP4MG5/pALy5bhahHxcmH1w4oAbDAP9pO+SDAQw/Na
         fubQUpXF2E/kGqE5nty988VXioAZI2ZyuAGJGFIOYPvk0YbcRrqBsJljPMnT3g1m1pxx
         uIhw==
X-Gm-Message-State: AOAM5316FDp1XEQV/wu6rkFh3QE9cNjZ5K/ZP8XGuOe/eOzKvinA13CP
        Co92OGUdtB4BhmpGU3ZJFHgqjw==
X-Google-Smtp-Source: ABdhPJxyW2l2usP1ZOY52mIonUGrofBK+pSm3Mhgd20xiZA5yLrupJH1m3OokcczYouwyYK0t92Xqw==
X-Received: by 2002:a05:622a:1647:b0:2e0:6f65:c54d with SMTP id y7-20020a05622a164700b002e06f65c54dmr20443570qtj.193.1647290338403;
        Mon, 14 Mar 2022 13:38:58 -0700 (PDT)
Received: from rivos-atish.ba.rivosinc.com (adsl-70-228-75-190.dsl.akrnoh.ameritech.net. [70.228.75.190])
        by smtp.gmail.com with ESMTPSA id j188-20020a3755c5000000b0067d1c76a09fsm8597023qkb.74.2022.03.14.13.38.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Mar 2022 13:38:57 -0700 (PDT)
From:   Atish Patra <atishp@rivosinc.com>
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
Subject: [PATCH v6 0/6] Provide a fraemework for RISC-V ISA extensions 
Date:   Mon, 14 Mar 2022 13:38:39 -0700
Message-Id: <20220314203845.832648-1-atishp@rivosinc.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series implements a generic framework to parse multi-letter ISA
extensions. This series is based on Tsukasa's v3 isa extension improvement
series[1]. I have fixed few bugs and improved comments from that series
(PATCH1-3). I have not used PATCH 4 from that series as we are not using
ISA extension versioning as of now. We can add that later if required.

PATCH 4 allows the probing of multi-letter extensions via a macro.
It continues to use the common isa extensions between all the harts.
Thus hetergenous hart systems will only see the common ISA extensions.

PATCH 6 improves the /proc/cpuinfo interface for the available ISA extensions
via /proc/cpuinfo.

Here is the example output of /proc/cpuinfo:
(with debug patches in Qemu and Linux kernel)

/ # cat /proc/cpuinfo 
processor	: 0
hart		: 0
isa		: rv64imafdch_svpbmt_svnapot_svinval
mmu		: sv48

processor	: 1
hart		: 1
isa		: rv64imafdch_svpbmt_svnapot_svinval
mmu		: sv48

processor	: 2
hart		: 2
isa		: rv64imafdch_svpbmt_svnapot_svinval
mmu		: sv48

processor	: 3
hart		: 3
isa		: rv64imafdch_svpbmt_svnapot_svinval
mmu		: sv48

Anybody adding support for any new multi-letter extensions should add an
entry to the riscv_isa_ext_id and the isa extension array. 
E.g. The patch[2] adds the support for various ISA extensions.

[1] https://lore.kernel.org/all/0f568515-a05e-8204-aae3-035975af3ee8@irq.a4lg.com/T/
[2] https://github.com/atishp04/linux/commit/e9e240c9a854dceb434ceb53bdbe82a657bee5f2 

Changes from v5->v6:
1. Changed the isa extension format from separate row to single row that follows
   RISC-V spec naming standards.

2. Removed the redundant extension detection log.

Changes from v4->v5:
1. Improved the /proc/cpuinfo to include only valid & enabled extensions
2. Improved the multi-letter parsing by skipping the 'su' modes generated in
   Qemu as suggested by Tsukasa.

Changes from v3->v4:
1. Changed temporary variable for current hart isa to a bitmap
2. Added reviewed-by tags.
3. Improved comments

Changes from v2->v3:
1. Updated comments to mark clearly a fix required for Qemu only.
2. Fixed a bug where the 1st multi-letter extension can be present without _
3. Added Tested by tags. 

Changes from v1->v2:
1. Instead of adding a separate DT property use the riscv,isa property.
2. Based on Tsukasa's v3 isa extension improvement series.

Atish Patra (3):
RISC-V: Implement multi-letter ISA extension probing framework
RISC-V: Do no continue isa string parsing without correct XLEN
RISC-V: Improve /proc/cpuinfo output for ISA extensions

Tsukasa OI (3):
RISC-V: Correctly print supported extensions
RISC-V: Minimal parser for "riscv, isa" strings
RISC-V: Extract multi-letter extension names from "riscv, isa"

arch/riscv/include/asm/hwcap.h |  25 +++++++
arch/riscv/kernel/cpu.c        |  65 ++++++++++++++++-
arch/riscv/kernel/cpufeature.c | 128 +++++++++++++++++++++++++++------
3 files changed, 195 insertions(+), 23 deletions(-)

--
2.30.2

