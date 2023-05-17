Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BBA53706B74
	for <lists+devicetree@lfdr.de>; Wed, 17 May 2023 16:44:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231555AbjEQOn7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 May 2023 10:43:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37882 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232008AbjEQOn4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 May 2023 10:43:56 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 175F383C3
        for <devicetree@vger.kernel.org>; Wed, 17 May 2023 07:43:46 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id A097563F0E
        for <devicetree@vger.kernel.org>; Wed, 17 May 2023 14:43:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0C1F0C433EF;
        Wed, 17 May 2023 14:43:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684334625;
        bh=Gd1J584vmP39A3tV/FU9gv4hQNH+NXQWlWPp70Q5c6Q=;
        h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
        b=hUleB3LMN5tBgPX4QC2951kHh3lUULWGPNxw4Ye5eItYgJSgYKC6zbbsR3Ygqf2io
         lU/NYubNY2ifDfKEsQAZhaBnMCKM0jSrgT79wRCBsWYHnPoOSaM4fb07+umBQv2r59
         5waep6MZFzaJkXe6rz2SXPgKjGuh+98qX3ZFM0xrmsE+4FLVC069eyhnDtFOsrrrPq
         DYkgeeIrawIM/7uYNnAoWePkOxvLjyGaIgLTeruVnNKdvCDIR1ntVqcWKuf9wDkOtC
         yebb5ZpBmfkJIOJ4TM+sX/GbYN+CVPrshPpxjdtYxN9rkRNl4CbvRsq/sni5x4mY5F
         yyoeOsrzk0pzw==
From:   Mark Brown <broonie@kernel.org>
To:     devicetree@vger.kernel.org, Marek Vasut <marex@denx.de>
Cc:     Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, alsa-devel@alsa-project.org
In-Reply-To: <20230514225243.777504-1-marex@denx.de>
References: <20230514225243.777504-1-marex@denx.de>
Subject: Re: [PATCH] ASoC: dt-bindings: ssm2518: Convert to dtschema
Message-Id: <168433462278.451534.14591729096601815671.b4-ty@kernel.org>
Date:   Wed, 17 May 2023 23:43:42 +0900
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-bfdf5
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 15 May 2023 00:52:43 +0200, Marek Vasut wrote:
> Convert the ADI SSM2518 audio CODEC bindings to DT schema.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: dt-bindings: ssm2518: Convert to dtschema
      commit: 20ef7f2139ab81c9163addb2da08f2630fdc34db

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

