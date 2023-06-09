Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B041E7298F1
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 14:03:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230323AbjFIMDS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 08:03:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51442 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238763AbjFIMDP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 08:03:15 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44820185
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 05:03:15 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id D352065774
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 12:03:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A1590C433D2;
        Fri,  9 Jun 2023 12:03:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1686312194;
        bh=0GQBW7j6HSXG2QxcUM0TdNRXbL/lSlkl2bRBEArjBJ8=;
        h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
        b=KhtCQHvuFV2JPe9WKJ87HcwKMLoLizq08fFT/79lz55uxi+xXl6qH2vrpRODBb0EV
         7edF8VDB4R/A2Iwnh79YHprxh3DQMceGVQL0B8wsv++Z06ZgpkSsgIRsK/iC+Q+mnn
         /KIFD2mE3v5S0rqg5xAkSJ/GdTy0+E48QJOfCZ7YBv5bv7d2XgpXw0AJE6tagGYtUz
         5Ajtxu8D8bxk5z3KPQg+cOun6gSd4YLvaDRz0uouHchcTFScDME87k5bZhfOs/tbeT
         5SCNYWkJdH/nu6tTZSjjRcPfapvdLG1Km7Ggiu8ldwcy4J3vNxhlvs7JQ3bCSAgUco
         //WxU8hbQXoCQ==
From:   Mark Brown <broonie@kernel.org>
To:     devicetree@vger.kernel.org, Marek Vasut <marex@denx.de>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, alsa-devel@alsa-project.org
In-Reply-To: <20230606175951.215740-1-marex@denx.de>
References: <20230606175951.215740-1-marex@denx.de>
Subject: Re: [PATCH] ASoC: dt-bindings: audio-graph-card: Expand 'widgets'
 documentation
Message-Id: <168631219234.40482.5968107738874823812.b4-ty@kernel.org>
Date:   Fri, 09 Jun 2023 13:03:12 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-bfdf5
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 06 Jun 2023 19:59:51 +0200, Marek Vasut wrote:
> Document the encoding of 'widgets' property to avoid confusion.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: dt-bindings: audio-graph-card: Expand 'widgets' documentation
      commit: 7077b1864ca8f0d616c497b3ee890d72d1da0a26

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

