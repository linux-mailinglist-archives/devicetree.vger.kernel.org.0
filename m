Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C53DF7050A0
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 16:26:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229895AbjEPO0L (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 10:26:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35868 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233193AbjEPO0K (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 10:26:10 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D98D47ED9
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 07:25:59 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 2AA0B63AC6
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 14:25:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3267BC433A4;
        Tue, 16 May 2023 14:25:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684247158;
        bh=Gd1J584vmP39A3tV/FU9gv4hQNH+NXQWlWPp70Q5c6Q=;
        h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
        b=WAgoEKhgI+kFK9TpvfCF/MtW15iIbx7X38x93AFMQkh1dmfeAQaAzJDBQZxHGyj98
         zxdyKk+rxrDAuQ45wC+If3DpEY38UXAp4MqEqRclWJPIqH9YFyYRHgeQK6dvj3TBP3
         Q6YDBPzhLULS+KUy4xOV3dO9GsoIRxMHxZnkpiBCKMVzoqz56OA5KYYgKCY9b9IL15
         +1XgyvSeqxyIrcWU6dGSi9ryhYwv2YgwJXsKXbx52XNp8tTIfPWRgpnZeWl+X8ePhf
         CdS2SlxmdjEfD+2BoXWBnj6pEOvwW2idox4yiPRDBjtYRADcz2KZREwlD3OIIFYM2A
         nQomTo+lIqGUQ==
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
Message-Id: <168424715490.430742.6586457844648461597.b4-ty@kernel.org>
Date:   Tue, 16 May 2023 23:25:54 +0900
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

