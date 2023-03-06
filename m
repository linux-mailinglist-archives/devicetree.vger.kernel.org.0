Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7AAAE6AC129
	for <lists+devicetree@lfdr.de>; Mon,  6 Mar 2023 14:33:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229771AbjCFNc6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Mar 2023 08:32:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45548 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231344AbjCFNcl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Mar 2023 08:32:41 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9BD4630192
        for <devicetree@vger.kernel.org>; Mon,  6 Mar 2023 05:32:17 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id D4BF560F76
        for <devicetree@vger.kernel.org>; Mon,  6 Mar 2023 13:32:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 010F0C433AA;
        Mon,  6 Mar 2023 13:32:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1678109535;
        bh=XWT1IwidgLr0jSesGV2biIoL9GxsLvYYjcIQL1LYrxE=;
        h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
        b=uB0yv6OHWWrgXsCGkuGZios5vuvjuaFIsuHXPE9Q0EwjwKB5iqPZqdSb3R6IGfvjk
         51S0tyKXMeFP+7oq1NASdxg5LKBGyVIxKHVAkG4FqiPWJi2kmF0SAeGnUxawmOGylq
         AOO7Bopmbcaj48O715gMrNuzApcjR/AjAre8TgmQHejEuQ+Gq7aRZn43PdClV4uVk7
         RVzJUSTmNZWtRzZ55KaWZp637uszer5oeGXvFPPc0ZMcbUHSbwj9hBeaGlAhozVnrh
         HlbR0/dx3RASvcrfLpG0VXaMMjD5DlWxdIj87qab93L4vuoSbpKAH4IDsikJ2FsaRD
         AIsX4VlXnzSNg==
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
Message-Id: <167810953370.75807.4506250468842557501.b4-ty@kernel.org>
Date:   Mon, 06 Mar 2023 13:32:13 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-bd1bf
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

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[2/2] ASoC: dt-bindings: renesas,rsnd.yaml: add R-Car Gen4 support
      commit: 7f8b5b24bbb463614dd6b797e6b2ee92b3e2a6a1

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

