Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BE806681BFC
	for <lists+devicetree@lfdr.de>; Mon, 30 Jan 2023 22:00:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229871AbjA3VA2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Jan 2023 16:00:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55414 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229611AbjA3VA1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Jan 2023 16:00:27 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB5244741A
        for <devicetree@vger.kernel.org>; Mon, 30 Jan 2023 13:00:20 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 6A7A9B8163F
        for <devicetree@vger.kernel.org>; Mon, 30 Jan 2023 21:00:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C8D4FC433EF;
        Mon, 30 Jan 2023 21:00:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1675112418;
        bh=4kTM7qZTPCTN7vtUc2O1W4p+zcVF/sa0deMNMF+1J5o=;
        h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
        b=PG1ECVPtvhUFMQEyQ9udjXNZeOuPi8QpZSWJSqRjiQIYL8Djne8Gqu2DH+WkwjCaT
         PQBalZJ6ekV4ZreDtCBtwkh5okBTObHB9BmEW7q83pnaEMcLHGVP1pQs6+mp5gSJGU
         yueSg9Ta/IvdJeGYR+DfOwNBBnKDNYXLb/DInGK95rMtI6YgHOJAM1Xr5vygZVQxGk
         QXiq62aVpZLuGfGWKlGdkNPTlzL7c5lVgBKnQZSuqSOkU0b9XWGZSQEEcHpZb+eczA
         ZSE9DF7sVXALaK7n+gy+g7ZZQcWPS8dMLA8+AobyTgmMEF6cKRHjr5SRg4hRmbSgNR
         L2D3fwL0SJHVw==
From:   Mark Brown <broonie@kernel.org>
To:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        Alexandru Ardelean <alex@shruggie.ro>
Cc:     lgirdwood@gmail.com, krzysztof.kozlowski+dt@linaro.org,
        perex@perex.cz, tiwai@suse.com, steffen.aschbacher@stihl.de
In-Reply-To: <20230128082744.41849-1-alex@shruggie.ro>
References: <20230128082744.41849-1-alex@shruggie.ro>
Subject: Re: [PATCH v2 1/4] ASoC: codecs: tas5720: split a
 tas5720_mute_soc_component() function
Message-Id: <167511241532.2141894.5359389287914359338.b4-ty@kernel.org>
Date:   Mon, 30 Jan 2023 21:00:15 +0000
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

On Sat, 28 Jan 2023 10:27:41 +0200, Alexandru Ardelean wrote:
> This is to be re-used in tas5720_mute() (which is part of the dai_ops) and
> also in the tas5720_fault_check_work() hook.
> 
> The benefit here isn't too great (now).
> It's only when we add support for a new device with a slightly different
> regmap that this becomes more useful.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/4] ASoC: codecs: tas5720: split a tas5720_mute_soc_component() function
      commit: 879142be618c05d234db31cbf69f101c53b7892f
[2/4] ASoC: codecs: tas5720: add support for TAS5720A-Q1 (automotive) variant
      commit: c24a62be09d8a0c7ede1c209055a4ac6760a45ee
[3/4] ASoC: tas5720: set bit 7 in ANALOG_CTRL_REG for TAS5720A-Q1 during probe
      commit: 88f748e38b283702a620e635820f1864bf32db0e
[4/4] ASoC: dt-bindings: add entry for TAS5720A-Q1 driver
      commit: 8d076a992eb86b99afb04980ac4b57e3a79f6704

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

