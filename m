Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F0AFF68F033
	for <lists+devicetree@lfdr.de>; Wed,  8 Feb 2023 14:56:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230480AbjBHN4A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Feb 2023 08:56:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51512 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230421AbjBHN4A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Feb 2023 08:56:00 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61BA055BD
        for <devicetree@vger.kernel.org>; Wed,  8 Feb 2023 05:55:59 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id F049B616CF
        for <devicetree@vger.kernel.org>; Wed,  8 Feb 2023 13:55:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E8F0C433D2;
        Wed,  8 Feb 2023 13:55:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1675864558;
        bh=F98qRLabAYvPIMOUac9Fv02Zwd2Ur3nKKMMVcYlpHMs=;
        h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
        b=o6jbxEbgvHwxp59ajodrlirNC61TayqmgjLW25TcIOayXfNQRAr7Tqn1uM8/zNyOp
         A+TFVb6SmWoD/RkhEwt7AGP3itbQCa2jXlHP40l7+fgt7a4znZtEqOqZVjIPFrTkiT
         LRhVcgxUDXorTbz+Z9UYYN5goLRRsVLkagczR9rb477kHXYLKMKdCogwbd1gcgKDrB
         MbkPABEtFB3qoZ6asxgAXbk+bLim2SM2jScmluKIoJNEioViz546sHeM05b8SOI2Ut
         83g8iNOo1yh4XRJrcfzyyi6CAv5nWR3WptNTXYZIF7EYQucxsQq4czMZn9sa7vIozp
         hJ9S5mtLOYsLA==
From:   Mark Brown <broonie@kernel.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kiseok Jo <kiseok.jo@irondevice.com>
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org
In-Reply-To: <20230208092420.5037-5-kiseok.jo@irondevice.com>
References: <20230208092420.5037-5-kiseok.jo@irondevice.com>
Subject: Re: (subset) [PATCH v2 1/4] ASoC: SMA1303: Remove the I2C Retry
 property in devicetree
Message-Id: <167586455684.136560.5295803600085339125.b4-ty@kernel.org>
Date:   Wed, 08 Feb 2023 13:55:56 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.0
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 08 Feb 2023 09:24:17 +0000, Kiseok Jo wrote:
> It's necessary to set the value for each device, so remove that.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/4] ASoC: SMA1303: Remove the I2C Retry property in devicetree
      commit: 1edc70c3a4c2b07dceac3ab7d564a283549a2534
[2/4] ASoC: SMA1303: Convert the TDM slot properties in devicetree to mixer
      commit: 1f5ffd57c1bcdf02e5a35bf301734476c1bf6612
[4/4] ASoC: dt-bindings: irondevice,sma1303: Rework binding and add missing properties
      commit: 677e3ab71f83c71e1482d9698bd8159c44fed93d

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

