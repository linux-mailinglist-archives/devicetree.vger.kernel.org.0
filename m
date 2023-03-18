Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 489556BF722
	for <lists+devicetree@lfdr.de>; Sat, 18 Mar 2023 02:00:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229588AbjCRBA0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Mar 2023 21:00:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60616 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229533AbjCRBAZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Mar 2023 21:00:25 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E9CB22DD9
        for <devicetree@vger.kernel.org>; Fri, 17 Mar 2023 18:00:24 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id D9794B82749
        for <devicetree@vger.kernel.org>; Sat, 18 Mar 2023 01:00:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 742CDC433EF;
        Sat, 18 Mar 2023 01:00:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1679101221;
        bh=n7fbK9Gt9s++eDvMkVmtPnuxDMaNPYXF5f2+1cxv+bY=;
        h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
        b=YzdrVz+2gsN9ZxBz1fYUqr1E7Mjpg6tdnkV+tT1SZ0HKGBC81YxgLciOQz4J1JicM
         Lqnc+3eCKc+l2MHaVKXfEYVbmAUcYnHm+Mf3g0YZV5LnQAle6vhqp3mi8GS56iXeZP
         fXsB+9ZR/U5+CXHK8N9GvmCzKwkyHTWWqltMSVY4eHs1PON5LaJlCEgxzinNa0dvNM
         PClHub6eU2wSjtIkn3Bn2NrJIL+rT0JM+YKxfUkKtZxedLBDW8ontjAxNPA6i9tye2
         bpyEOdQj4pfFY6J2PNugV0W3GojzMhv9+KsdDYOWjUZTzdSsFdf88NVMZ5I2FkUuut
         rkF64ZMTjDeAQ==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
        by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 48858E21EE9;
        Sat, 18 Mar 2023 01:00:21 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [PATCH v6 0/8] RISC-V: Apply Zicboz to clear_page
From:   patchwork-bot+linux-riscv@kernel.org
Message-Id: <167910122129.24496.10588514847374462522.git-patchwork-notify@kernel.org>
Date:   Sat, 18 Mar 2023 01:00:21 +0000
References: <20230224162631.405473-1-ajones@ventanamicro.com>
In-Reply-To: <20230224162631.405473-1-ajones@ventanamicro.com>
To:     Andrew Jones <ajones@ventanamicro.com>
Cc:     linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org,
        devicetree@vger.kernel.org, conor.dooley@microchip.com,
        paul.walmsley@sifive.com, palmer@dabbelt.com,
        sudip.mukherjee@codethink.co.uk, ben.dooks@codethink.co.uk,
        atishp@rivosinc.com, aou@eecs.berkeley.edu,
        apatel@ventanamicro.com, krzysztof.kozlowski+dt@linaro.org,
        robh@kernel.org, jszhang@kernel.org, heiko@sntech.de
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello:

This series was applied to riscv/linux.git (for-next)
by Palmer Dabbelt <palmer@rivosinc.com>:

On Fri, 24 Feb 2023 17:26:23 +0100 you wrote:
> When the Zicboz extension is available we can more rapidly zero naturally
> aligned Zicboz block sized chunks of memory. As pages are always page
> aligned and are larger than any Zicboz block size will be, then
> clear_page() appears to be a good candidate for the extension. While cycle
> count and energy consumption should also be considered, we can be pretty
> certain that implementing clear_page() with the Zicboz extension is a win
> by comparing the new dynamic instruction count with its current count[1].
> Doing so we see that the new count is just over a quarter of the old count
> (see patch6's commit message for more details).
> 
> [...]

Here is the summary with links:
  - [v6,1/8] RISC-V: alternatives: Support patching multiple insns in assembly
    https://git.kernel.org/riscv/c/0b2f658f5370
  - [v6,2/8] RISC-V: Factor out body of riscv_init_cbom_blocksize loop
    https://git.kernel.org/riscv/c/8b05e7d0408a
  - [v6,3/8] dt-bindings: riscv: Document cboz-block-size
    https://git.kernel.org/riscv/c/ea20f117ab99
  - [v6,4/8] RISC-V: Add Zicboz detection and block size parsing
    https://git.kernel.org/riscv/c/7ea5a73617e9
  - [v6,5/8] RISC-V: cpufeatures: Put the upper 16 bits of patch ID to work
    https://git.kernel.org/riscv/c/d25f256332cc
  - [v6,6/8] RISC-V: Use Zicboz in clear_page when available
    https://git.kernel.org/riscv/c/ab0f77465e3e
  - [v6,7/8] RISC-V: KVM: Provide UAPI for Zicboz block size
    https://git.kernel.org/riscv/c/665fd8862413
  - [v6,8/8] RISC-V: KVM: Expose Zicboz to the guest
    https://git.kernel.org/riscv/c/b20f67994f35

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


