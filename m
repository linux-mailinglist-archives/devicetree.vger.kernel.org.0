Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 08C0D6630E1
	for <lists+devicetree@lfdr.de>; Mon,  9 Jan 2023 21:02:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236279AbjAIUCE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Jan 2023 15:02:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59702 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237209AbjAIUCC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Jan 2023 15:02:02 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1462C00
        for <devicetree@vger.kernel.org>; Mon,  9 Jan 2023 12:02:01 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 8E312B80EC3
        for <devicetree@vger.kernel.org>; Mon,  9 Jan 2023 20:02:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E487DC433EF;
        Mon,  9 Jan 2023 20:01:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1673294519;
        bh=YAYz0p0oVOLsolT5f6Kmw9DyIZncLtGliZqae8vjQ0c=;
        h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
        b=gDjxK4yhRWI1GNYTq6ciYMfndn+yP+JCIhNb1Lh0b1cvBA5mWeRVdw4mgH2w0UhCl
         HL3u+iok43AFAm6n4foaEgQF+tUPhNFi6FYHQ47YlDYDn6cZG/Np7jGToyjK6Cg9YO
         SiXbEexND3lcwX5ThDXnOy8/5SnWKT+RFpVuQYIj+Alf37/smjMgijSmpozwOPn1CU
         msVq3yYdGwZ59PEiEHkWlEY9M4u9G+bAd1jaQunTKEuRd1bkEE+y8pP7/D004/lOCh
         fmsndXIM0smtGAVgNTnrwTlQcYG+ocD/lj8aaMSZZ3fw1u1Y0y2ISNi/F0Q0NT5Gq7
         k72KUeYyuQjGA==
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
In-Reply-To: <20230104140412.35575-1-francesco@dolcini.it>
References: <20230104140412.35575-1-francesco@dolcini.it>
Subject: Re: (subset) [PATCH v2 0/3] ASoC: nau8822: add speaker Bridge Tied Output
Message-Id: <167329451666.378391.8486999662961595073.b4-ty@kernel.org>
Date:   Mon, 09 Jan 2023 20:01:56 +0000
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

On Wed, 04 Jan 2023 15:04:09 +0100, Francesco Dolcini wrote:
> Add support for BTL (Bridge Tied Load) configuration to NAU8822 audio codec,
> since this requires adding a new property to the binding convert it from
> txt to yaml first.
> 
> v2:
>  - added Krzysztof reviewed-by and acked-by
>  - removed non-relevant information about SPI not being supported from binding document
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[2/3] ASoC: dt-bindings: nau8822: add nuvoton,spk-btl property to dtschema
      commit: af20f01e4d1d8fdb0ef14dcb95bd76fa8006dfdd

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
