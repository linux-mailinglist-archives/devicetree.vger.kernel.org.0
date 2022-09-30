Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 961845F0FA3
	for <lists+devicetree@lfdr.de>; Fri, 30 Sep 2022 18:12:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231797AbiI3QMe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Sep 2022 12:12:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231953AbiI3QMd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Sep 2022 12:12:33 -0400
Received: from sin.source.kernel.org (sin.source.kernel.org [IPv6:2604:1380:40e1:4800::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0163F1C5CAF
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 09:12:28 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by sin.source.kernel.org (Postfix) with ESMTPS id DB69ECE260A
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 16:12:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97458C433C1;
        Fri, 30 Sep 2022 16:12:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1664554345;
        bh=QEzJU0VS5kHZoLyV5Mc+p7c1jZc4wJxU/synCGYTbtg=;
        h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
        b=bhwMItzH/LRgiLHZnJkpbEt20PHg13JMCiwnXQ62ROrEMTcsTN4HW+B+YGpSdsGil
         5sShuZXm24UTWROjR+yisDWSa2WgKYfpe5kMUJ4j24k8bOichYgbOmoc/m+xF/6ccP
         hyEJsdVIDPFAH7/4Scd9bKqZQdEeRLccD0UxmFQVrxRH6AeDWTn7O40m/uD43spAei
         NP6jGC1Z6IRw7NGKD+JsXDNwlfYmwtdxN8vW568aV1evlW0CXMJUCD+3M33xgW6tBn
         GnRZEnIXigV2MgA/cS3Zv9CA1ESwM4EeWn6NwHeTug7nrAsDabHS+iuqIB/rhPubQ3
         BYY052k9UZ7Qg==
From:   Mark Brown <broonie@kernel.org>
To:     linux-arm-kernel@lists.infradead.org, Marek Vasut <marex@denx.de>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        alsa-devel@alsa-project.org, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org
In-Reply-To: <20220927185359.294322-1-marex@denx.de>
References: <20220927185359.294322-1-marex@denx.de>
Subject: Re: [PATCH v2] ASoC: dt-bindings: Document audio OF graph dai-tdm-slot-num dai-tdm-slot-width props
Message-Id: <166455434333.614892.7791049768510643889.b4-ty@kernel.org>
Date:   Fri, 30 Sep 2022 17:12:23 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.10.0-dev-fc921
X-Spam-Status: No, score=-7.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 27 Sep 2022 20:53:59 +0200, Marek Vasut wrote:
> Document dai-tdm-slot-num and dai-tdm-slot-width props as those are
> parsed by simple graph card and may therefore appear in audio OF graph
> node.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: dt-bindings: Document audio OF graph dai-tdm-slot-num dai-tdm-slot-width props
      commit: 853110992cfefec433ca58cf7d69df4f639abe18

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
