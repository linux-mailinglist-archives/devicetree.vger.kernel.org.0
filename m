Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 842CE726BED
	for <lists+devicetree@lfdr.de>; Wed,  7 Jun 2023 22:29:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233557AbjFGU3T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Jun 2023 16:29:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55734 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233491AbjFGU3P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Jun 2023 16:29:15 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BBD2211C
        for <devicetree@vger.kernel.org>; Wed,  7 Jun 2023 13:28:59 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 31B8E644AE
        for <devicetree@vger.kernel.org>; Wed,  7 Jun 2023 20:28:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6097CC433EF;
        Wed,  7 Jun 2023 20:28:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1686169722;
        bh=waFK5kLMrmxdcf8BoXCLCDoZSqL5SAuwXp+FuPQpoZw=;
        h=From:To:Cc:Subject:Date:From;
        b=krbZ00djH859djBX5rI8lonTQ3WoLNyME7x6A34zwPaNuLHfDPLG1tDQxPsLMkRms
         SLcaAW0BHyYcw2lwPvRVPSCQS6OO9eJCe4MImVkbDHZKENNpmuIAoJhrPQKRySqqSo
         KZ+NDAW3wdB13VYvOQYGwLc4N+9XyQ5kxEfjWEz3M1sK1bMxkBEseUIPp5ruWzYuhb
         OzGa2+ysaA30TS2+jUEfwEFzhe3/oTneMYrpLHb/+uHp0NR2pTLerxnw7kva5gl4Rs
         JSleEzVBpSAL0/CWXK1KsNX5uYcFlG+MNcv3GCSk0vroXRjpRj+MeIwCfaWnIg4Kth
         JhxvxzJpVoSyQ==
From:   Conor Dooley <conor@kernel.org>
To:     palmer@dabbelt.com
Cc:     conor@kernel.org, Conor Dooley <conor.dooley@microchip.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Andrew Jones <ajones@ventanamicro.com>,
        Sunil V L <sunilvl@ventanamicro.com>,
        Yangyu Chen <cyy@cyyself.name>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: [PATCH v3 0/7] ISA string parser cleanups
Date:   Wed,  7 Jun 2023 21:28:24 +0100
Message-Id: <20230607-audacity-overhaul-82bb867a825f@spud>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2999; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=yV+jz68736Xeb27tDH2mS7GBdaZ/fpg7kYJKNVjbQgA=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDCkNLzLu3rg5RWOPFvPB+qPJVadzsmLMHP3P3o1y2d1y4 FZfh/qcjlIWBjEOBlkxRZbE230tUuv/uOxw7nkLM4eVCWQIAxenAEyE7QDDbxZ73hDeRW9ZYjT6 81onH5Zl97lhtK7+n/L+32sPntthcoLhf2ROeVbxcrELhy2iDAqqzrEE1pcu7qtYwn9DiufqmZw ZfAA=
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Conor Dooley <conor.dooley@microchip.com>

With that out of the way, here are some cleanups for our riscv,isa
handling.

Here are some bits that were discussed with Drew on the "should we
allow caps" threads that I have now created patches for:
- splitting of riscv_of_processor_hartid() into two distinct functions,
  one for use purely during early boot, prior to the establishment of
  the possible-cpus mask & another to fit the other current use-cases
- that then allows us to then completely skip some validation of the
  hartid in the parser
- the biggest diff in the series is a rework of the comments in the
  parser, as I have mostly found the existing (sparse) ones to not be
  all that helpful whenever I have to go back and look at it
- from writing the comments, I found a conditional doing a bit of a
  dance that I found counter-intuitive, so I've had a go at making that
  match what I would expect a little better
- `i` implies 4 other extensions, so add them as extensions and set
  them for the craic. Sure why not like...

There's a trivial numbering conflict with Evan's Zb* additions.
The other thing to consider is whether some of the extensions I am
explicitly enabling make sense in the context of ACPI. I've made sure
not to enable them where I am not sure.

Cheers,
Conor.

Changes in v3:
- Rebase on top of ACPI support & drop a patch that landed in that
  series

Changes in v2:
- Pick up tags on most patches
- Drop some dt specifics from a parser comment
- Add Zicntr and Zihpm to the "always report" patch
- Note the Zicntr and Zihpm bits in the binding in a new patch.

CC: Paul Walmsley <paul.walmsley@sifive.com>
CC: Palmer Dabbelt <palmer@dabbelt.com>
CC: Conor Dooley <conor.dooley@microchip.com>
CC: Andrew Jones <ajones@ventanamicro.com>
CC: Sunil V L <sunilvl@ventanamicro.com>
CC: Yangyu Chen <cyy@cyyself.name>
CC: Rob Herring <robh+dt@kernel.org>
CC: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
CC: devicetree@vger.kernel.org
CC: linux-riscv@lists.infradead.org

Conor Dooley (7):
  RISC-V: simplify register width check in ISA string parsing
  RISC-V: split early & late of_node to hartid mapping
  RISC-V: validate riscv,isa at boot, not during ISA string parsing
  RISC-V: rework comments in ISA string parser
  RISC-V: remove decrement/increment dance in ISA string parser
  dt-bindings: riscv: explicitly mention assumption of Zicntr & Zihpm
    support
  RISC-V: always report presence of extensions formerly part of the base
    ISA

 .../devicetree/bindings/riscv/cpus.yaml       |   4 +-
 arch/riscv/include/asm/hwcap.h                |   4 +
 arch/riscv/include/asm/processor.h            |   1 +
 arch/riscv/kernel/cpu.c                       |  34 +++++-
 arch/riscv/kernel/cpufeature.c                | 108 ++++++++++++++----
 arch/riscv/kernel/smpboot.c                   |   2 +-
 6 files changed, 123 insertions(+), 30 deletions(-)


base-commit: 748462b59f901557377b2c33ea9808ff2000e141
-- 
2.39.2

