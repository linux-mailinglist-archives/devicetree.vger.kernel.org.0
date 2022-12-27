Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C4D9E656A2D
	for <lists+devicetree@lfdr.de>; Tue, 27 Dec 2022 12:58:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231771AbiL0L6E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Dec 2022 06:58:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231846AbiL0L5i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Dec 2022 06:57:38 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80F20B867
        for <devicetree@vger.kernel.org>; Tue, 27 Dec 2022 03:57:35 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 1744661057
        for <devicetree@vger.kernel.org>; Tue, 27 Dec 2022 11:57:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40253C433F0;
        Tue, 27 Dec 2022 11:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1672142254;
        bh=+2qKv3WbUaHawZcISN3in0nPAywpWI8Aax5DXjnieW8=;
        h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
        b=uNhz+hSqJ/HgrrHYcBT/H/W/ivBLKU744SapG58u/RdodbnRXfWEj9qqTBcc2Zztl
         94lXbTyd0XxZKtFJS9LImsuCaAunrNQw0/2W+9e2x1MO5n2VeSzzh84Pd0vFRqCjDs
         kwNnwOie0EPXpZPoN3dqubYSvquNjm65PZUh0QCKF63ErzR1Is0WkjqyDPNNSZtqaT
         ZvuPYrG5YjZKPJzLvO7ZDXX2Xhllz4FspcPBmEID/4DhXEFfiYTV25C6oInC36TRu3
         rX5+nuV3WCXOHrQTDTvY5PGfjJ7TwjoGB1/1kecR9imUUCZVw0Z1sBMeIxCn1S2vHm
         w+I4MeCu/t3eQ==
From:   Mark Brown <broonie@kernel.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jai Luthra <j-luthra@ti.com>
Cc:     Liam Girdwood <lgirdwood@gmail.com>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org
In-Reply-To: <20221221145216.11400-1-j-luthra@ti.com>
References: <20221221145216.11400-1-j-luthra@ti.com>
Subject: Re: [PATCH v4] dt-bindings: sound: tlv320aic3x: Convert to dtschema
Message-Id: <167214225297.82924.10955715874674840625.b4-ty@kernel.org>
Date:   Tue, 27 Dec 2022 11:57:32 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12-dev-7ab1d
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 21 Dec 2022 20:22:16 +0530, Jai Luthra wrote:
> Convert bindings for TI's TLV320AIC3x audio codecs to dtschema.
> 
> The following properties are still found in some old dts files, but will
> be ignored by the driver:
> - adc-settle-ms
> - assigned-clock-parents, assigned-clock-rates, assigned-clocks
> - port
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] dt-bindings: sound: tlv320aic3x: Convert to dtschema
      commit: b66cd83547dabc0ba582e2de716c20c810a21124

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
