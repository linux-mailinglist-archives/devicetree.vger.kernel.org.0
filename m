Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E7FDB706B95
	for <lists+devicetree@lfdr.de>; Wed, 17 May 2023 16:50:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229683AbjEQOuz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 May 2023 10:50:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42938 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232037AbjEQOuy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 May 2023 10:50:54 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4B4A421E
        for <devicetree@vger.kernel.org>; Wed, 17 May 2023 07:50:49 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 70A6864817
        for <devicetree@vger.kernel.org>; Wed, 17 May 2023 14:50:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6ABAC4339C;
        Wed, 17 May 2023 14:50:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684335048;
        bh=Olfg9mZnTWLqAx9RmY3HRQw50RoYRgYNWDShY4kMfSo=;
        h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
        b=c6bRaEkvwJEEKkgkZtUueJG/jIJU2n8UYA6tHXaXSbLK2mR38uPCLL/DpP0ShYnba
         73DghKlY/OzDuSmcrzAXc3a/p0LpfhkWfU7z5EOJYoKLZn/vZAdiCRBstLMrkd+bw2
         5PrLbw3+9EPzEGuxbRXWnMYj14lSuQabaP9TAcWaLNem3zblnmeIHBGiLvTgNetQ5o
         9lN8yxRqRPpA9EtMmyKQVHGcZvt24fpO2iFMEFm/L6byP8xY/+qW2OsJ6sXMPiYVLk
         /sHIJSJNF/dlc3KUMCfunlnI4V9CRYfLVc74n+r3cYbbydnh66ETMYPUYqIfhd34vC
         YVs/x0DUa8Amg==
From:   Mark Brown <broonie@kernel.org>
To:     David Lin <CTLIN0@nuvoton.com>
Cc:     lgirdwood@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, YHCHuang@nuvoton.com,
        KCHSU0@nuvoton.com, WTLI@nuvoton.com, SJLIN0@nuvoton.com,
        ctlin0.linux@gmail.com
In-Reply-To: <20230516054944.1081808-1-CTLIN0@nuvoton.com>
References: <20230516054944.1081808-1-CTLIN0@nuvoton.com>
Subject: Re: [PATCH] ASoC: dt-bindings: nau8315: Convert to dtschema
Message-Id: <168433504550.453649.7898584089373655080.b4-ty@kernel.org>
Date:   Wed, 17 May 2023 23:50:45 +0900
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

On Tue, 16 May 2023 13:49:45 +0800, David Lin wrote:
> Convert the NAU8315 audio CODEC bindings to DT schema.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: dt-bindings: nau8315: Convert to dtschema
      commit: 268777caf0dd8d3c852cccb949ae73b7ea7b2f5e

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

