Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9DA67662DC4
	for <lists+devicetree@lfdr.de>; Mon,  9 Jan 2023 18:56:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235414AbjAIR4d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Jan 2023 12:56:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237560AbjAIR4C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Jan 2023 12:56:02 -0500
Received: from smtp-out-12.comm2000.it (smtp-out-12.comm2000.it [212.97.32.82])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37A01676FB
        for <devicetree@vger.kernel.org>; Mon,  9 Jan 2023 09:51:31 -0800 (PST)
Received: from francesco-nb.int.toradex.com (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: francesco@dolcini.it)
        by smtp-out-12.comm2000.it (Postfix) with ESMTPSA id 1F18ABA1A04;
        Mon,  9 Jan 2023 18:51:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailserver.it;
        s=mailsrv; t=1673286672;
        bh=dD5zyjUpcSjxdfSOoDi4tqRdQQDOfqTckte6LWUUgDU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To;
        b=AJd02d6qIQWKVr+AaeOFCUH3CDag0YRBSBasK6LL2vdHSuUazn2HxP8TeZCaDQHpp
         Xy6W09wsYxZxlIgnMGMP3eGUBUskfNS3FjqxRXBcTayqMmwBJ2YCSVqM9iOKnZES6h
         ekopLOE4ABIpqbglEch72tlNQkkJfTFrMUAPKV8AN3IK5iUvjeHdxMmKsHAAKcn5rB
         zQWNQMWmJaOd7p7XLYy72EKcraPrk1fpYH/iZQwQi8keegNTd2XLx7ZTifHFxswyxl
         kPL9fLnx0VkTosvvcUyy/ynuY8m+jlfEH07cd+8pjGuF6GwALfaT3L637n6UNlEz1b
         ZcFQBAn874VOA==
Date:   Mon, 9 Jan 2023 18:50:58 +0100
From:   Francesco Dolcini <francesco@dolcini.it>
To:     Mark Brown <broonie@kernel.org>
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        Francesco Dolcini <francesco@dolcini.it>,
        Francesco Dolcini <francesco.dolcini@toradex.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Benjamin Marty <info@benjaminmarty.ch>, kchsu0@nuvoton.com,
        wtli@nuvoton.com
Subject: Re: [PATCH v2 0/3] ASoC: nau8822: add speaker Bridge Tied Output
Message-ID: <Y7xUAgJKOlIz8QeF@francesco-nb.int.toradex.com>
References: <20230104140412.35575-1-francesco@dolcini.it>
 <167328294504.323147.3197941344180988086.b4-ty@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <167328294504.323147.3197941344180988086.b4-ty@kernel.org>
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jan 09, 2023 at 04:49:05PM +0000, Mark Brown wrote:
> On Wed, 04 Jan 2023 15:04:09 +0100, Francesco Dolcini wrote:
> > Add support for BTL (Bridge Tied Load) configuration to NAU8822 audio codec,
> > since this requires adding a new property to the binding convert it from
> > txt to yaml first.
> > 
> > v2:
> >  - added Krzysztof reviewed-by and acked-by
> >  - removed non-relevant information about SPI not being supported from binding document
> > 
> > [...]
> 
> Applied to
> 
>    https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Hello Mark,
patch 2/3 was not applied, can you check? Let me know if this is because
of some mistake on my side.

$ git log --grep=nau8822 --author=toradex --oneline  kernel.org/broonie-sound/for-next
968b42069fe5 ASoC: nau8822: add speaker Bridge Tied Output configuration
76fa6279eff9 ASoC: dt-bindings: nau8822: convert to the dtschema

Francesco

> 
> Thanks!
> 
> [1/3] ASoC: dt-bindings: nau8822: convert to the dtschema
>       commit: 76fa6279eff931b43482f0bef5d65cdcf325de87
> [3/3] ASoC: nau8822: add speaker Bridge Tied Output configuration
>       commit: 968b42069fe5dab362b623c6b8a1565709a12f5b
