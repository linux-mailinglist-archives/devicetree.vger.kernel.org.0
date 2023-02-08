Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9F93968F034
	for <lists+devicetree@lfdr.de>; Wed,  8 Feb 2023 14:56:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230498AbjBHN4C (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Feb 2023 08:56:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230421AbjBHN4B (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Feb 2023 08:56:01 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F79D55BD
        for <devicetree@vger.kernel.org>; Wed,  8 Feb 2023 05:56:01 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id ADC47616DA
        for <devicetree@vger.kernel.org>; Wed,  8 Feb 2023 13:56:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D6195C4339B;
        Wed,  8 Feb 2023 13:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1675864560;
        bh=DeQ1r4YPsQy0hvx8QKDPEGZkDrtPXdHip9bsSqdMKQ4=;
        h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
        b=EpTJ3QT4xKcH3+6YdBKvVP7sMeEa7zWbhu5hLFNMWNIozWVM0olIF95S8ih5I34N2
         WbxDTOV1Syf+5CWM+W+b03JwLNvpz2LvEvbpSRMzXS+8XNwDZzsMwWYVs2UvMm5k7l
         XoBsg8D+E2NrJRUlRaFAhSNBmF+KWrDmmcKYj4avVoh5JUhyPsuEUe+MTouH0UTorF
         0NWmHBOsLsdZPbAbmiZJBE9if8NCsVksVubeQiYBwnwIz7cUMZLABAl6ImKO0OgLzC
         9QS8V/VIuunoghV9NeCjfTagpc6FN9LLmVUh3dC4U8PHdRxtpzxgyR2pd+0VhLaW8p
         C5rX3+EshO5Sw==
From:   Mark Brown <broonie@kernel.org>
To:     Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc:     Linux-DT <devicetree@vger.kernel.org>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        Geert Uytterhoeven <geert@linux-m68k.org>
In-Reply-To: <87r0v1t02h.wl-kuninori.morimoto.gx@renesas.com>
References: <87r0v1t02h.wl-kuninori.morimoto.gx@renesas.com>
Subject: Re: (subset) [PATCH 0/2] ASoC: dt-bindings: renesas,rsnd.yaml:
 adjust to R-Car Gen4
Message-Id: <167586455859.136560.17907345236016567230.b4-ty@kernel.org>
Date:   Wed, 08 Feb 2023 13:55:58 +0000
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

On Wed, 08 Feb 2023 01:31:19 +0000, Kuninori Morimoto wrote:
> Cc Geert
> 
> These are R-Car Gen4 support for Renesas sound driver.
> 
> I have posted these patches as [RFC], because the schemas
> doesn't work correctly for me under certain conditions.
> "required: dmas/dma-names" always hits to "if-then" and
> never hits to "else" for some reasons. I'm still not sure why...
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/2] ASoC: dt-bindings: renesas,rsnd.yaml: tidyup reg/reg-name
      commit: 55194032620ae97338ac435505f1296e13fbe821

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

