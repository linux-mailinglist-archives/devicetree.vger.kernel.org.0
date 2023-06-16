Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C816E7335D3
	for <lists+devicetree@lfdr.de>; Fri, 16 Jun 2023 18:19:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345514AbjFPQT0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jun 2023 12:19:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45822 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244763AbjFPQTD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jun 2023 12:19:03 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E8743AA7
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 09:17:21 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id BF05E618B6
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 16:16:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B891CC433C0;
        Fri, 16 Jun 2023 16:16:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1686932219;
        bh=PDwkv60EQCWy5qGksW1AAr9W5S2ssqF6zh+bk2dPy5s=;
        h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
        b=cyt+VaHlKG7ttwFhw9RIRYQORm7mUAFA9cJKHKJpY5xRdI2BYTVn3mCxWvmZ258nX
         mABFXOvINxgHwTdoEpD9NeD1SlajheNfiGOb2KSYfZqfvtFFvDBrwRBWAcjT1NcnWP
         /rylzYKTPMbAVPFvWctqYJSOXlXq0atbbltXVFrZ2W2Cx4ZRyVBA8mZNqhGggJOJvu
         Fwuevf1F7/W8asS7AZTm/snz2oThdWEj7aFIL0d1s1RqXn1GDUptboNdbm9auknkTt
         0hzTzNd9iYhXuN4foH+wRiGdN32bdNFX9V//hGassTYiXhYrGkQCQPipo4mgz0PHXl
         8KOPjz8Xz3DoQ==
From:   Mark Brown <broonie@kernel.org>
To:     Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org
In-Reply-To: <20230608081547.442763-1-alexander.stein@ew.tq-group.com>
References: <20230608081547.442763-1-alexander.stein@ew.tq-group.com>
Subject: Re: [PATCH 1/1] ASoC: dt-bindings: tlv320aic32x4: convert to DT
 schema format
Message-Id: <168693221747.298269.8557688849359189253.b4-ty@kernel.org>
Date:   Fri, 16 Jun 2023 17:16:57 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-c6835
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 08 Jun 2023 10:15:47 +0200, Alexander Stein wrote:
> Convert the binding to DT schema format.
> Since commit 514b044cba667 ("ASoC: tlv320aic32x4: Model PLL in CCF")
> clocks & clock-names = "mclk" is mandatory, it has been added to required
> properties as well. '#sound-dai-cells' is added for reference from
> simple-audio-card.
> 
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: dt-bindings: tlv320aic32x4: convert to DT schema format
      commit: 289650d61c600ac4f631028c761f38042ba599c8

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

