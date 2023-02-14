Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DB3F06970ED
	for <lists+devicetree@lfdr.de>; Tue, 14 Feb 2023 23:54:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230284AbjBNWyX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Feb 2023 17:54:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57260 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231905AbjBNWyW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Feb 2023 17:54:22 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F7AF29163
        for <devicetree@vger.kernel.org>; Tue, 14 Feb 2023 14:54:13 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 8E6F0B81DB0
        for <devicetree@vger.kernel.org>; Tue, 14 Feb 2023 22:54:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4BB96C433D2;
        Tue, 14 Feb 2023 22:54:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1676415250;
        bh=F1m163MfqlLt4FsZiQ/MfsbF4sF9/xANQE+DKZufALg=;
        h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
        b=AHcgK2/o5YHIAetDjpO3DX40HBqcWBf3GjnF7U/ZcISKr6KuuC1hM6K8phuk+z6lz
         DctcyupKOB8kxebRRH8Khr7zhqfuZZlmuMAOUl/gHUH6WHilykFVVUv0N9+oJcKUJX
         55Viplsp5rug8/5ZI5JT5+7LpWkEeJiFBo6mY57EPrv+7M8X+OuW56Wey7Eywjx/qz
         QfM6jst3+m+m20Wh5GZTlAQNpl3MFaZ4qCblK0YzlG8IQO6LHvQ9iho/at7OzMSyhb
         BwNYrSVEhxT4NC92gOBsCyQv75PWmUeAH3NLYdVTvJnCx2fuByiHXcNk/Pnjo/whSU
         zIE5FBjk0x+Rw==
From:   Mark Brown <broonie@kernel.org>
To:     Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc:     Linux-DT <devicetree@vger.kernel.org>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        Geert Uytterhoeven <geert@linux-m68k.org>
In-Reply-To: <87ttzq8ga4.wl-kuninori.morimoto.gx@renesas.com>
References: <87ttzq8ga4.wl-kuninori.morimoto.gx@renesas.com>
Subject: Re: (subset) [PATCH v3 0/2] ASoC: dt-bindings: renesas,rsnd.yaml:
 add R-Car Gen4 support
Message-Id: <167641524728.3158779.5732216902897782213.b4-ty@kernel.org>
Date:   Tue, 14 Feb 2023 22:54:07 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.0
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 13 Feb 2023 02:12:41 +0000, Kuninori Morimoto wrote:
> These are v3 of R-Car Gen4 support for Renesas sound driver.
> 
> I have posted these patches as [RFC], because the schemas
> doesn't work correctly for me under certain conditions.
> "required: dmas/dma-names" always hits to "if-then" and
> never hits to "else" for some reasons. I'm still not sure why...
> 
> [...]

Applied to

   broonie/sound.git for-next

Thanks!

[1/2] ASoC: dt-bindings: renesas,rsnd.yaml: drop "dmas/dma-names" from "rcar_sound,ssi"
      commit: 0438499a7f098c35e83134fc04899fe2188e4ef2

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

