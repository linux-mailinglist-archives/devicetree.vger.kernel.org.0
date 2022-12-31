Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C07FE65A436
	for <lists+devicetree@lfdr.de>; Sat, 31 Dec 2022 13:54:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231539AbiLaMyD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 31 Dec 2022 07:54:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36110 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229486AbiLaMyD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 31 Dec 2022 07:54:03 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AEB5C6584
        for <devicetree@vger.kernel.org>; Sat, 31 Dec 2022 04:54:01 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 5C730B8072F
        for <devicetree@vger.kernel.org>; Sat, 31 Dec 2022 12:54:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 69272C433D2;
        Sat, 31 Dec 2022 12:53:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1672491239;
        bh=ETtplnlwnY8No57XVTHoevZoVAKca2LHdqXWuebbCQs=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=h03Inyu4rjBw+NPk0SkWO5k8Cp0FxwxKrTY6noOUWy01Pt1brF9+kNIYdERN9IQlV
         u2afIH8+PLGp97Bfi08pL5cblVstrsuzVAdMj7mSB/JNwkfkHCTqj9kLrF86IsxcZg
         lJJEULZ+TyI16cZY/WCt/uKz3PYbPTu0zo9Kesg/54xAr/dTVsrNZMgCSn4VWyyC1t
         aghv8J/9Y3E/hjRCehFGYkjod+Kjhn0b3meNt74udPECGH3Of53iyRhEiWWCaWU+OI
         d1gpC2o/ZIeqZA9RN34lgyqJq6/lF/N3ZJ8UOCqF5lwqq1MIHqM7BG1WHThkfDvW/E
         L7IAJ5vW8aHcw==
Date:   Sat, 31 Dec 2022 20:53:50 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Francesco Dolcini <francesco@dolcini.it>
Cc:     linux-arm-kernel@lists.infradead.org,
        Emanuele Ghidoli <emanuele.ghidoli@toradex.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org,
        Francesco Dolcini <francesco.dolcini@toradex.com>
Subject: Re: [PATCH v1] arm64: dts: verdin-imx8mm: fix dev board audio
 playback
Message-ID: <20221231125350.GY6112@T480>
References: <20221207102749.180485-1-francesco@dolcini.it>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221207102749.180485-1-francesco@dolcini.it>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 07, 2022 at 11:27:49AM +0100, Francesco Dolcini wrote:
> From: Emanuele Ghidoli <emanuele.ghidoli@toradex.com>
> 
> Set optional `simple-audio-card,mclk-fs` parameter to ensure a proper
> clock to the nau8822 audio codec. Without this change with an audio
> stream rate of 44.1 kHz the playback is faster.
> Set the MCLK at the right frequency, codec can properly use it to
> generate 44.1 kHz I2S-FS.
> 
> Fixes: 6a57f224f734 ("arm64: dts: freescale: add initial support for verdin imx8m mini")
> Signed-off-by: Emanuele Ghidoli <emanuele.ghidoli@toradex.com>
> Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>

Applied, thanks!
