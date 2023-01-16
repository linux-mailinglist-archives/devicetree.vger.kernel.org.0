Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4208B66BF83
	for <lists+devicetree@lfdr.de>; Mon, 16 Jan 2023 14:17:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229634AbjAPNRy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Jan 2023 08:17:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39944 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231611AbjAPNRi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Jan 2023 08:17:38 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE95C1F487
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 05:16:03 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 896DEB80D30
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 13:16:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19F72C433EF;
        Mon, 16 Jan 2023 13:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1673874961;
        bh=29QfTPcs9/gEQmgCKCXaRl7jYtU3HRfzrfTR4DlbQv8=;
        h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
        b=Rwwmd6He0NxJjr4f1ILWqhp9FNFKb4tQ4NS8uikEnEMibnZru5eRe99uMM72gNsju
         cGn2Ss2REDrQgwy/ZolLQ8L6nxfmA+c2J8j8SGlO/QJOslphsntYH7XyFGimQFKRiu
         iryooyKcgNgoakq++RWAswZz0ns7CHHtCE9E8Iiz9V17fxVbX31lBClYjlC6yAZkUT
         EPQIjH0zsMA+9TARs5LtI0wnXJ4qbRAtvbXvJw3bqgsb4NhVDZ5u8OqG2fprc5njDg
         Qn/pccU0lxSfZILJey4qi15/zoNIuFVuh9fsrzVhA03TeyN3rkNNeNnbhbR48dhJnI
         66bGbBL9fqxYA==
From:   Mark Brown <broonie@kernel.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Jai Luthra <j-luthra@ti.com>
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org
In-Reply-To: <20221230132644.6398-1-j-luthra@ti.com>
References: <20221230132644.6398-1-j-luthra@ti.com>
Subject: Re: [PATCH v2] dt-bindings: sound: tlv320aic3x: Add optional clock
 and port properties
Message-Id: <167387495862.317762.14606265116095883268.b4-ty@kernel.org>
Date:   Mon, 16 Jan 2023 13:15:58 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12-dev-69c4d
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 30 Dec 2022 18:56:44 +0530, Jai Luthra wrote:
> Describe optional properties for clocks and ports that were missing in
> the original txt binding, to fix warnings like:
> 
> aic33@18: 'assigned-clock-parents', 'assigned-clock-rates',
> 	'assigned-clocks' do not match any of the regexes:
> 	'pinctrl-[0-9]+'
> 	arch/arm/boot/dts/omap2420-n810.dtb
> 
> [...]

Applied to

   broonie/sound.git for-next

Thanks!

[1/1] dt-bindings: sound: tlv320aic3x: Add optional clock and port properties
      commit: b6e98cf4ed3baff0c2f7a1c1babf96fde8e129f3

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
