Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C779A768FF4
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 10:21:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231363AbjGaIVp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 04:21:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39492 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231283AbjGaIVT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 04:21:19 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62DAFE78
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 01:20:23 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id EB07660F27
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 08:20:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4A724C433C9;
        Mon, 31 Jul 2023 08:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690791622;
        bh=D94/uDM8VUf/iGPEsn5ahoMjiZ3Iz7JJ22L+8EoN1p0=;
        h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
        b=EyD+FtGw/uK+xmEOJtKgpmCQIXNZyuUxxRcgBtktxBTQDclVs0Rg8FyLWJ/0DiXFy
         JtHY8DQKjWLII3BcXpo/eORdLjNSeAt0QbvlrFNV5vnm3mip+RWO/S9flD6nd89xPe
         2rdiADXYrzuLRmANArdd0FDlhQFtRbs86xUkp4AI92R6NEUfzs9kELkM1dTDFKitxf
         gMvUPiL7+9/FmoZnTepwWnxGuuGfHa7csN3XgBLWpHye5XaiT2Gh+XozyIR65nGr4f
         u4O6hUUGtFT3lHS9z3TqnwpD+VMxoWv4CfsQfpoGGroVTr5E/0Mnj6B0c9y8wKxoE3
         goN4ZQ9U3rqvA==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
        by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 2D755E96AC0;
        Mon, 31 Jul 2023 08:20:22 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [PATCH] dt-bindings: net: mediatek,net: fixup MAC binding
From:   patchwork-bot+netdevbpf@kernel.org
Message-Id: <169079162218.10005.10651716865931454338.git-patchwork-notify@kernel.org>
Date:   Mon, 31 Jul 2023 08:20:22 +0000
References: <20230729111045.1779-1-zajec5@gmail.com>
In-Reply-To: <20230729111045.1779-1-zajec5@gmail.com>
To:     =?utf-8?b?UmFmYcWCIE1pxYJlY2tpIDx6YWplYzVAZ21haWwuY29tPg==?=@ci.codeaurora.org
Cc:     davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
        pabeni@redhat.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com,
        lorenzo@kernel.org, nbd@nbd.name, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, rafal@milecki.pl
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello:

This patch was applied to netdev/net.git (main)
by David S. Miller <davem@davemloft.net>:

On Sat, 29 Jul 2023 13:10:45 +0200 you wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> 1. Use unevaluatedProperties
> It's needed to allow ethernet-controller.yaml properties work correctly.
> 
> 2. Drop unneeded phy-handle/phy-mode
> 
> [...]

Here is the summary with links:
  - dt-bindings: net: mediatek,net: fixup MAC binding
    https://git.kernel.org/netdev/net/c/8469c7f5472f

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


