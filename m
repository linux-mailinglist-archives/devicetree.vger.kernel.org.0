Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A3A8D595DA6
	for <lists+devicetree@lfdr.de>; Tue, 16 Aug 2022 15:48:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234461AbiHPNs0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Aug 2022 09:48:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42734 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235699AbiHPNsY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Aug 2022 09:48:24 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80EB76053E
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 06:48:21 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 3FDE9B81A5E
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 13:48:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F844C433C1;
        Tue, 16 Aug 2022 13:48:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1660657699;
        bh=5sSGecXcfo48rI4UDIaF+TdPD0JsW9D4hj58Gsf8jDI=;
        h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
        b=cIihfttfpepouUC7BcD/HfS46EXxWy8tNmGsexfxPpNTBxSlhcSLJN+IJ1pyAsDl/
         f5hTbRoYLpxQrp7uvV5maCJBIcn3gqBTg5HNMP2Z9yk6cylrtEjyz78nkmjcZrNFCG
         DkM0HjS079APnZe1p9WhC48rt/mqzQKq5BQXAAK2Ypgorv3YSqWeztn0eZGFLuP+ZD
         t27LBDIsGk+c7rVqTDadZmOSSKiBJL6cyLwYzmqhrK/oo7J/Vgnzf+9AKONjG1Wg1Q
         S9E/DvMyMIlwVwvfB+F7neCMkYgcdbJcpFBJEATGvSfZmsSBA0r60DmRqjxdoOD13g
         2cLipjFW0FPzQ==
From:   Mark Brown <broonie@kernel.org>
To:     Zhu Ning <zhuning0077@gmail.com>, alsa-devel@alsa-project.org
Cc:     Zhu Ning <zhuning@everest-semi.com>, robh@kernel.org,
        devicetree@vger.kernel.org, amadeusz.slawinski@tieto.com,
        tiwai@suse.com, David Yang <yangxiaohua@everest-semi.com>,
        pierre-louis.bossart@linux.intel.com
In-Reply-To: <20220816024456.4475-1-zhuning0077@gmail.com>
References: <20220816024456.4475-1-zhuning0077@gmail.com>
Subject: Re: [PATCH v6 1/2] ASoC: dt-bindings: Add Everest ES8326 audio CODEC
Message-Id: <166065769698.1387305.15870348834200450311.b4-ty@kernel.org>
Date:   Tue, 16 Aug 2022 14:48:16 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.10.0-dev-fe10a
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 16 Aug 2022 10:44:55 +0800, Zhu Ning wrote:
> Add device tree binding documentation for Everest ES8326
> 
> ----
> v5 tested by dtschema
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/2] ASoC: dt-bindings: Add Everest ES8326 audio CODEC
      commit: 8c6789f4e2d4ee7d6c8c60daa88ea7a4c4cf6779
[2/2] ASoC: codecs: add support for ES8326
      commit: 5c439937775d77a334696a98fb2a25dee72ffa2d

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
