Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DAEB4690DEF
	for <lists+devicetree@lfdr.de>; Thu,  9 Feb 2023 17:07:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231641AbjBIQHS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Feb 2023 11:07:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52318 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231737AbjBIQG7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Feb 2023 11:06:59 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A88A4663D2
        for <devicetree@vger.kernel.org>; Thu,  9 Feb 2023 08:06:36 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 1BBB2B82195
        for <devicetree@vger.kernel.org>; Thu,  9 Feb 2023 16:06:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44B1EC433D2;
        Thu,  9 Feb 2023 16:06:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1675958793;
        bh=Hd5wMGWSXhYUc7Fz/5I9lG7OSwU+bPyOWklhykUOozs=;
        h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
        b=X38YgFZBgZCyg9wfqfHaDcwVGVtRcVoMsHYGnPAMrSo75YCtPhqUGo+ioqhggWsJh
         1Q793+GsjtSu8uBKspHrHg1tct28JGfPTcui/uC/SyYA0y1eExWYA86OYCWvnpMDXT
         1MQ3iteZyJZRIsJPwnnBvtGj1N6up63ZJUIhRBUdlBdjhP0TiQttFNQla9WtDZtzEY
         gyaUzJqJx2HhZHfGyx4wt+apoNyLKNAuID8SnsuSEZNNrCLUprdz0a+koiWyRbLka6
         ctR/eSEiLVmcBHbr4pBQdBrHf4U7z8CFFfvuhpAR8iShK4URDnbUK+ICKUrtCzg1b2
         csNvh6Y3rWYUA==
From:   Mark Brown <broonie@kernel.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kiseok Jo <kiseok.jo@irondevice.com>
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230209084903.13000-2-kiseok.jo@irondevice.com>
References: <20230209084903.13000-2-kiseok.jo@irondevice.com>
Subject: Re: [PATCH v3] ASoC: SMA1303: Remove the sysclk setting in
 devicetree
Message-Id: <167595879198.443322.14924870138902391536.b4-ty@kernel.org>
Date:   Thu, 09 Feb 2023 16:06:31 +0000
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

On Thu, 09 Feb 2023 08:49:03 +0000, Kiseok Jo wrote:
> In SMA1303, this device does not support MCLK.
> So it need to remove sysclk setting in devicetree.
> v2: Modify the sysclk setting - using devm_clk_get for mclk.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: SMA1303: Remove the sysclk setting in devicetree
      commit: 2512839dd648ffa2c2a752e1403aaeb928cff71a

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

