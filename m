Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 93F9E593327
	for <lists+devicetree@lfdr.de>; Mon, 15 Aug 2022 18:26:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230506AbiHOQ0H (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Aug 2022 12:26:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229459AbiHOQZ1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Aug 2022 12:25:27 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7F6E275CA
        for <devicetree@vger.kernel.org>; Mon, 15 Aug 2022 09:23:21 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 7CCDAB80FEC
        for <devicetree@vger.kernel.org>; Mon, 15 Aug 2022 16:23:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 75D38C43470;
        Mon, 15 Aug 2022 16:23:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1660580599;
        bh=hIIo0z+3KwDSuhaQ0bt33I03p9WztHHhLDAR3Hd8u4o=;
        h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
        b=BZrOxYcUQ87A3EgjfSeVNzAqxg0gsVbP3Y+BGix42qydLdVvWSV6WPjyVzrhU9mYI
         /MbYmdnH2wnKceZeXPNblSGipV+k+idlINwFuIhE0PBlFUo6lf573+lgF218RcT8ry
         aivBBRUJL7dck1H65+S5Yp/48sr6kJ57x0+u06EGXe5oQLAGud15Ovc1Y7AS/lJ1wK
         6QZRHN9Vk4aMUuCnMkMiCFP1OlEhcFtO0XrdX/W04vajGlbQ8wxt78rthYOzpT6d4l
         XC6xosDZHHiZIIFFDU7NmE5r+NkZlLaDdT/JWNZeh40Oj+gim84v1rbdW+qBLgQvez
         cNfadXxFtN2Wg==
From:   Mark Brown <broonie@kernel.org>
To:     devicetree@vger.kernel.org, Matt Flax <flatmax@flatmax.com>
Cc:     alsa-devel@alsa-project.org
In-Reply-To: <20220810221232.1596488-1-flatmax@flatmax.com>
References: <20220810221232.1596488-1-flatmax@flatmax.com>
Subject: Re: [PATCH v2] ASoC: codecs: dt bind. doc for the new TI SRC4392 codec
Message-Id: <166058059820.769843.6109173047576888362.b4-ty@kernel.org>
Date:   Mon, 15 Aug 2022 17:23:18 +0100
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

On Thu, 11 Aug 2022 08:12:32 +1000, Matt Flax wrote:
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
