Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CCC2D662BA2
	for <lists+devicetree@lfdr.de>; Mon,  9 Jan 2023 17:50:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233336AbjAIQun (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Jan 2023 11:50:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229658AbjAIQuP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Jan 2023 11:50:15 -0500
Received: from sin.source.kernel.org (sin.source.kernel.org [IPv6:2604:1380:40e1:4800::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6DC886468
        for <devicetree@vger.kernel.org>; Mon,  9 Jan 2023 08:49:08 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by sin.source.kernel.org (Postfix) with ESMTPS id B2D5ECE10BC
        for <devicetree@vger.kernel.org>; Mon,  9 Jan 2023 16:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7F45CC433F0;
        Mon,  9 Jan 2023 16:49:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1673282944;
        bh=H0htiAO+IFq+g1kJgzGvOm1YmHXS0hxKh6DEXB3GTTM=;
        h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
        b=QogZDQbPqxlOguyCkSnP7GkZ/qDjqfQl9F/Qu1MXxIzq8xLBZtZNU5mmqbDdepXmg
         uTp/HNQyIBt9mgZldLHjB8Wvh4ISAUlZQmWK79j3iJkkx+5FSpmue9Mm9PTtamZ+a+
         xxAQsOHS2am14ScPKHs+LjGa9jaQr/IhJ4Gr0qMzjwElnyd3Hj5r1jBaVgA1/0QeNy
         YBn0ERVEDm99j5XBkMDonmNN48Pb98f7qIhN4/55VusFCizoOXBJcDWlA/TW8qsAbC
         PEJSRt3VlXsLxAfOk5ArlBDnxgQlDto5yZxeKEuFPfBIf12HRK1Sj6FEe1gTKDzqpp
         jamtcwpDku1yw==
From:   Mark Brown <broonie@kernel.org>
To:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        Francesco Dolcini <francesco@dolcini.it>
Cc:     Francesco Dolcini <francesco.dolcini@toradex.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Benjamin Marty <info@benjaminmarty.ch>, kchsu0@nuvoton.com,
        wtli@nuvoton.com
In-Reply-To: <20221223170404.210603-1-francesco@dolcini.it>
References: <20221223170404.210603-1-francesco@dolcini.it>
Subject: Re: [PATCH v1 0/3] ASoC: nau8822: add speaker Bridge Tied Output
Message-Id: <167328294221.323147.12666098870170781252.b4-ty@kernel.org>
Date:   Mon, 09 Jan 2023 16:49:02 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12-dev-8b3d1
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 23 Dec 2022 18:04:01 +0100, Francesco Dolcini wrote:
> Add support for BTL (Bridge Tied Load) configuration to NAU8822 audio codec,
> since this requires adding a new property to the binding convert it from
> txt to yaml first.
> 
> Emanuele Ghidoli (3):
>   ASoC: dt-bindings: nau8822: convert to the dtschema
>   ASoC: dt-bindings: nau8822: add nuvoton,spk-btl property to dtschema
>   ASoC: nau8822: add speaker Bridge Tied Output configuration
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/3] ASoC: dt-bindings: nau8822: convert to the dtschema
      commit: 76fa6279eff931b43482f0bef5d65cdcf325de87
[2/3] ASoC: dt-bindings: nau8822: add nuvoton,spk-btl property to dtschema
      (no commit info)
[3/3] ASoC: nau8822: add speaker Bridge Tied Output configuration
      commit: 968b42069fe5dab362b623c6b8a1565709a12f5b

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
