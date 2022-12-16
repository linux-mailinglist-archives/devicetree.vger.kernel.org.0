Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CD0EE64F0B5
	for <lists+devicetree@lfdr.de>; Fri, 16 Dec 2022 19:06:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231390AbiLPSG0 convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Fri, 16 Dec 2022 13:06:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231367AbiLPSGZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Dec 2022 13:06:25 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0341C54358
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 10:06:22 -0800 (PST)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <p.zabel@pengutronix.de>)
        id 1p6F68-00051g-Uf; Fri, 16 Dec 2022 19:06:16 +0100
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
        by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
        (envelope-from <p.zabel@pengutronix.de>)
        id 1p6F67-004yPx-A8; Fri, 16 Dec 2022 19:06:16 +0100
Received: from pza by lupine with local (Exim 4.94.2)
        (envelope-from <p.zabel@pengutronix.de>)
        id 1p6F67-000DBm-2o; Fri, 16 Dec 2022 19:06:15 +0100
Message-ID: <bf1e9ada62efedcf3be57cbd57a9260d35b83fc0.camel@pengutronix.de>
Subject: Re: [PATCH v3 0/2] drm/imx/lcdc: Implement DRM driver for imx21
From:   Philipp Zabel <p.zabel@pengutronix.de>
To:     Uwe =?ISO-8859-1?Q?Kleine-K=F6nig?= 
        <u.kleine-koenig@pengutronix.de>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        linux-arm-kernel@lists.infradead.org
Date:   Fri, 16 Dec 2022 19:06:14 +0100
In-Reply-To: <20221216175006.456831-1-u.kleine-koenig@pengutronix.de>
References: <20221216175006.456831-1-u.kleine-koenig@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8BIT
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fr, 2022-12-16 at 18:50 +0100, Uwe Kleine-König wrote:
> Hello,
> 
> Changes since v2:
> 
>  - added allOf as Krzysztof requested
>  - reworked driver based on Philipp's comments
>    (improved error handling, different selects, moved driver to a subdirectory,
>    header sorting, drm_err instead of DRM_ERROR, inlined
>    imx_lcdc_check_mode_change, make use of dev_err_probe())
>  
> 
> 
> 
> Krzysztof also pointed out that we're now having two compatibles for a
> single hardware. Admittedly this is unusual, but this is the chance that
> the (bad) compatible identifier imx21-fb gets deprecated. The hardware
> is called LCDC and only the linux (framebuffer) driver is called imxfb.
> 
> The two prerequisite commits on top of v6.1 are:
> 
>  - 93266da2409b ("dt-bindings: display: Convert fsl,imx-fb.txt to
>    dt-schema") which is currently in next via branch 'for-next' of
>    git://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git .
> 
>  - "drm/imx: move IPUv3 driver into separate subdirectory"
>    from https://lore.kernel.org/r/20221125112519.3849636-1-l.stach@pengutronix.de

This is on drm-misc-next now, so patch 2 applies there.

regards
Philipp
