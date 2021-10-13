Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8285E42CA8C
	for <lists+devicetree@lfdr.de>; Wed, 13 Oct 2021 22:00:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239127AbhJMUCc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Oct 2021 16:02:32 -0400
Received: from mail.kernel.org ([198.145.29.99]:41144 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S239212AbhJMUCa (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 13 Oct 2021 16:02:30 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id AA93E611CA;
        Wed, 13 Oct 2021 20:00:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1634155226;
        bh=4N3yvgen75fiUMMp1UQ7bl6qpKiJf1k2V3H+eS/i6oA=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=FGPOsxMVdZpNwrDFMRRm3Tq/gevH/3BTBM7lTJv0PHHFl2l6pIQq+O6mp3LPO7B6H
         XElxQsRr9Gggdst2UnDfY+SvCsBxh+It6KWthsUFkTWxq/yownRRKr9djlNgKq1rCY
         rSCEURcOtaTPYSJR3/X+oMmmSLEX1TNEE3SnxS9y8VG3WDxNEN4AYe5qIv+QRp03pm
         FVvJbOCt1i7unVbx1kIquDSJslOYV0Oq3Pw2g9iAf4U3J1OpFJE12B7OMLnnbOo6qj
         1JRW2nfq3iYx/mzncRtScyYeQZuThCncrhsvH7ndrT7aSNrKgWpo1zQHUcSFWWRwZH
         /e0aOwTnONBrQ==
From:   Mark Brown <broonie@kernel.org>
To:     Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>
Cc:     Mark Brown <broonie@kernel.org>,
        linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] ASoC: dt-bindings: rockchip: i2s-tdm: Fix rockchip,i2s-[rt]x-route
Date:   Wed, 13 Oct 2021 20:59:54 +0100
Message-Id: <163415517074.1358186.8845455508599261985.b4-ty@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <606809e10db02f92b1e7f90c491cc72dd8e16f79.1634132907.git.geert+renesas@glider.be>
References: <606809e10db02f92b1e7f90c491cc72dd8e16f79.1634132907.git.geert+renesas@glider.be>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 13 Oct 2021 15:49:42 +0200, Geert Uytterhoeven wrote:
> make dt_binding_check:
> 
>     Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml: properties:rockchip,i2s-rx-route: {'required': ['maxItems']} is not allowed for {'$ref': '/schemas/types.yaml#/definitions/uint32-array', 'description': 'Defines the mapping of I2S RX sdis to I2S data bus lines. By default, they are mapped one-to-one. rockchip,i2s-rx-route = <3> would mean sdi3 is receiving from data0.', 'maxItems': 4, 'items': [{'enum': [0, 1, 2, 3]}]}
> 	    hint: "maxItems" is not needed with an "items" list
> 	    from schema $id: http://devicetree.org/meta-schemas/items.yaml#
>     Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml: properties:rockchip,i2s-tx-route: {'required': ['maxItems']} is not allowed for {'$ref': '/schemas/types.yaml#/definitions/uint32-array', 'description': 'Defines the mapping of I2S TX sdos to I2S data bus lines. By default, they are mapped one-to-one. rockchip,i2s-tx-route = <3> would mean sdo3 is sending to data0.', 'maxItems': 4, 'items': [{'enum': [0, 1, 2, 3]}]}
> 	    hint: "maxItems" is not needed with an "items" list
> 	    from schema $id: http://devicetree.org/meta-schemas/items.yaml#
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: dt-bindings: rockchip: i2s-tdm: Fix rockchip,i2s-[rt]x-route
      commit: 51a67d6e28c6e1f10c8ef95b4f5fbf204ebbeb24

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
