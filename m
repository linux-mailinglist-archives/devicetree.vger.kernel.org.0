Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 88F81624D19
	for <lists+devicetree@lfdr.de>; Thu, 10 Nov 2022 22:36:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232365AbiKJVgT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Nov 2022 16:36:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232351AbiKJVgS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Nov 2022 16:36:18 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 506871902A
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 13:36:18 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id C9B8661E43
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 21:36:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 98ABFC433D6;
        Thu, 10 Nov 2022 21:36:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1668116177;
        bh=FlOYPoOq6odOEjov8ah/a4Kw3+KSVXlv9br0h1BIjW0=;
        h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
        b=UWitsBdukrJZZFVm7PRVSJ34QdvnyVSIyWRuMr4xH7gO7CevFnj48WPgsOJ+kSaOz
         jIEgWnZWvM97AexFBg7NvIdHjBAJLpLCLK7gmeBJ12ytvow/jtM1SYsV3beBJsNYvJ
         aR+FG4r038tZNI0htK/vgJ+0Wr59RWKqt77e5pajgCkTEuOUd5vx/wUt1sgWWDXB/b
         bdEtrjLU5F1uadV86XS9h+FkVODrLxXmTHSIH5r0q2yLMuu6LFODSNAW81u3ZssMIr
         zz4GvZ1gRYDJ2Qpy4xWYxXY4oqrAomQOLTo9mpCBm6CL9nN4BALQtyyVXTGWnZvwE2
         HKARagaS+x/ew==
From:   Mark Brown <broonie@kernel.org>
To:     Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org
Cc:     Nicolin Chen <nicoleotsuka@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Fabio Estevam <festevam@gmail.com>,
        Takashi Iwai <tiwai@suse.com>, alsa-devel@alsa-project.org,
        Shengjiu Wang <shengjiu.wang@gmail.com>,
        Xiubo Li <Xiubo.Lee@gmail.com>,
        Jaroslav Kysela <perex@perex.cz>,
        Rob Herring <robh+dt@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>
In-Reply-To: <20221104160315.213836-1-marex@denx.de>
References: <20221104160315.213836-1-marex@denx.de>
Subject: Re: [PATCH 1/3] ASoC: dt-bindings: fsl-sai: Fix mx6ul and mx7d compatible strings
Message-Id: <166811617433.1093199.4726126273479929969.b4-ty@kernel.org>
Date:   Thu, 10 Nov 2022 21:36:14 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.10.0-dev-fc921
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 4 Nov 2022 17:03:13 +0100, Marek Vasut wrote:
> Describe existing used combinations of compatible strings on MX6UL
> and MX7D, which are backward compatible with MX6SX. Add the missing
> imx7d-sai compatible string which is used on i.MX7 .
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/3] ASoC: dt-bindings: fsl-sai: Fix mx6ul and mx7d compatible strings
      commit: 81b6c043e7ba41e5a585f0d33213a32308d484ca
[2/3] ASoC: dt-bindings: fsl-sai: Use minItems 5 for i.MX8MN clock and similar
      commit: ef55595548e13a5d61695bdf92e03df88c45994f
[3/3] ASoC: dt-bindings: fsl-sai: Sort main section properties
      commit: 3e4f964ddd1a9ab962cb524cbea750030de6acd0

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
