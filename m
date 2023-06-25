Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DC37D73D542
	for <lists+devicetree@lfdr.de>; Mon, 26 Jun 2023 01:20:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229691AbjFYXU2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 25 Jun 2023 19:20:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36036 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229569AbjFYXU1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 25 Jun 2023 19:20:27 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D42EDE44
        for <devicetree@vger.kernel.org>; Sun, 25 Jun 2023 16:20:24 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 576F760C4F
        for <devicetree@vger.kernel.org>; Sun, 25 Jun 2023 23:20:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5EA9C433CA;
        Sun, 25 Jun 2023 23:20:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1687735223;
        bh=O37DVpRVFprc11pX+z866pQny4gdJe08iStwdJzU6bw=;
        h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
        b=eaEtbOMu4nfKW+FhSRPDP4KCoeV3yqjOYev8iwOd7KS/u7vrORhIJ4U/bNK/ob9Ov
         u30Qc9Zz56xiClFlaRxduKiBwoSah7ZKwpvQMa2SuJhe//h50v3P+3g5T6dx7RRAIL
         6cIgodlg/2/CgZEoyKwxPgN1h4V8aSCHybAnz1Mfrg3f4taKpB7WTYXwHvaKMuzJIX
         IinuSTMetR0WPZuBg5IF18Q71bVGaWVDqyYQsEr5pPGDK6otGw/iS+mS88ya+845kN
         i/XRCNRuzUWiHTM94zaMnM6BZebYS7Zed7+o+ZLJDz5T0iq5rsFrYgd2cSkaX1CY77
         0V609usuYiX2w==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
        by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 99F7FC43143;
        Sun, 25 Jun 2023 23:20:23 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [PATCH v3 0/7] ISA string parser cleanups
From:   patchwork-bot+linux-riscv@kernel.org
Message-Id: <168773522362.24181.16156078607515411409.git-patchwork-notify@kernel.org>
Date:   Sun, 25 Jun 2023 23:20:23 +0000
References: <20230607-audacity-overhaul-82bb867a825f@spud>
In-Reply-To: <20230607-audacity-overhaul-82bb867a825f@spud>
To:     Conor Dooley <conor@kernel.org>
Cc:     linux-riscv@lists.infradead.org, palmer@dabbelt.com,
        devicetree@vger.kernel.org, robh+dt@kernel.org, cyy@cyyself.name,
        conor.dooley@microchip.com, krzysztof.kozlowski+dt@linaro.org,
        paul.walmsley@sifive.com, ajones@ventanamicro.com
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello:

This series was applied to riscv/linux.git (for-next)
by Palmer Dabbelt <palmer@rivosinc.com>:

On Wed,  7 Jun 2023 21:28:24 +0100 you wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> With that out of the way, here are some cleanups for our riscv,isa
> handling.
> 
> Here are some bits that were discussed with Drew on the "should we
> allow caps" threads that I have now created patches for:
> - splitting of riscv_of_processor_hartid() into two distinct functions,
>   one for use purely during early boot, prior to the establishment of
>   the possible-cpus mask & another to fit the other current use-cases
> - that then allows us to then completely skip some validation of the
>   hartid in the parser
> - the biggest diff in the series is a rework of the comments in the
>   parser, as I have mostly found the existing (sparse) ones to not be
>   all that helpful whenever I have to go back and look at it
> - from writing the comments, I found a conditional doing a bit of a
>   dance that I found counter-intuitive, so I've had a go at making that
>   match what I would expect a little better
> - `i` implies 4 other extensions, so add them as extensions and set
>   them for the craic. Sure why not like...
> 
> [...]

Here is the summary with links:
  - [v3,1/7] RISC-V: simplify register width check in ISA string parsing
    https://git.kernel.org/riscv/c/fed14be476f0
  - [v3,2/7] RISC-V: split early & late of_node to hartid mapping
    https://git.kernel.org/riscv/c/2ac874343749
  - [v3,3/7] RISC-V: validate riscv,isa at boot, not during ISA string parsing
    https://git.kernel.org/riscv/c/069b0d517077
  - [v3,4/7] RISC-V: rework comments in ISA string parser
    https://git.kernel.org/riscv/c/6b913e3da87d
  - [v3,5/7] RISC-V: remove decrement/increment dance in ISA string parser
    https://git.kernel.org/riscv/c/7816ebc1ddd1
  - [v3,6/7] dt-bindings: riscv: explicitly mention assumption of Zicntr & Zihpm support
    https://git.kernel.org/riscv/c/1e5cae98e46d
  - [v3,7/7] RISC-V: always report presence of extensions formerly part of the base ISA
    https://git.kernel.org/riscv/c/07edc32779e3

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


