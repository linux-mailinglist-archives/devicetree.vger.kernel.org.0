Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D607B59333E
	for <lists+devicetree@lfdr.de>; Mon, 15 Aug 2022 18:27:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233019AbiHOQ1f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Aug 2022 12:27:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39870 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236058AbiHOQZe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Aug 2022 12:25:34 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89F74275DA
        for <devicetree@vger.kernel.org>; Mon, 15 Aug 2022 09:23:26 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 2D9FAB80FEE
        for <devicetree@vger.kernel.org>; Mon, 15 Aug 2022 16:23:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0972FC433C1;
        Mon, 15 Aug 2022 16:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1660580603;
        bh=7V+endEttnNu6oxaF3HKatJcXsg7TXNiTQ5xwRdEMlo=;
        h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
        b=o3QlHTQ+RKrNDBzNNBnd+uDpMhEj0MRGvXgSGZe9NjqxNhdn6F6kT26tSBdqnU0nB
         fwx3yLQCO4TmcWVRnTsH/j3XI8I/14HDR1pIrVoOwlIGxJJpF5zwecicLguPy6ZIeO
         7uhcyW/GrhhFYp9pSLZomonOIeh+pHZ6SA1zBm5mIO6kGKpJ0VZ9FrUefiqIEUaoaF
         k9dsBapJ95LJiFRJOlZSgy4cEHae/JLldXS1+R3vylL+071ANZGIkuOTZNFjcotUFP
         /cJFTX6JNIiCjcH8UmjLMON/wJJDkyY/j2Wq+ZmoeSTIemkaGpok1lvR62AQBrKYAY
         0AiJUF8KSs8wA==
From:   Mark Brown <broonie@kernel.org>
To:     devicetree@vger.kernel.org, Matt Flax <flatmax@flatmax.com>
Cc:     robh@kernel.org, alsa-devel@alsa-project.org
In-Reply-To: <20220814222218.119786-1-flatmax@flatmax.com>
References: <20220814222218.119786-1-flatmax@flatmax.com>
Subject: Re: [PATCH v4] ASoC: codecs: dt bind. doc for the new TI SRC4392 codec
Message-Id: <166058060275.769843.4261026899082443606.b4-ty@kernel.org>
Date:   Mon, 15 Aug 2022 17:23:22 +0100
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

On Mon, 15 Aug 2022 08:22:18 +1000, Matt Flax wrote:
> 


Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: codecs: dt bind. doc for the new TI SRC4392 codec
      commit: 020adbfb2edae4dd90d7774d08936261e218c171

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
