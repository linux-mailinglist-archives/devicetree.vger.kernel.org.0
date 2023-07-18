Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1B3EF758143
	for <lists+devicetree@lfdr.de>; Tue, 18 Jul 2023 17:48:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233022AbjGRPsB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jul 2023 11:48:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233105AbjGRPru (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Jul 2023 11:47:50 -0400
Received: from mailrelay6-1.pub.mailoutpod2-cph3.one.com (mailrelay6-1.pub.mailoutpod2-cph3.one.com [46.30.211.181])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2E07BB
        for <devicetree@vger.kernel.org>; Tue, 18 Jul 2023 08:47:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ravnborg.org; s=rsa1;
        h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
         from:date:from;
        bh=SPDU5kPWAAgPJ4oaKrt1JSYg4VjyFkkAo26/4HsJa04=;
        b=dLsM4dKkdPGEHfWhE3vOWnFlgqVcbUyXZFIoRiB/sV84rIprOtRr96GG5UiY7rQPW2Ga+rHh+MiZm
         OGndJTN+MK6X0+EncQLeUWmTInpQOJALijDi8u7SecoAqs+Nd5Sx6EhoSt1Xus1NTKsfKw/a6kCQNT
         8dfK+wUCKqBJLVM1AMgGxEIhOZU6HT1HuzvQUlcbBfhTq9aTbimXYpbC4tLA6ZZsY871YPtEgk4pYY
         /advwv9+3ZzFLVjfrKdDKRoRb2pk3cMIwlOD7koEju4ysS7pFM/8q64GJXrGTsazm1+EfEJwccSxUD
         LkEQHA4RNjKEvAf/fNbe47i7J1S0YqA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
        d=ravnborg.org; s=ed1;
        h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
         from:date:from;
        bh=SPDU5kPWAAgPJ4oaKrt1JSYg4VjyFkkAo26/4HsJa04=;
        b=D8EVbIV6H9KKEcuAqA4UX2ud8rTkGapXb7xDfioVd2x2qEvtJTYdzfwETPQFuaCb0ZyBBXolk6RU2
         ejcFqvTAA==
X-HalOne-ID: 4bc5dc98-2582-11ee-b1c1-6f01c1d0a443
Received: from ravnborg.org (2-105-2-98-cable.dk.customer.tdc.net [2.105.2.98])
        by mailrelay6 (Halon) with ESMTPSA
        id 4bc5dc98-2582-11ee-b1c1-6f01c1d0a443;
        Tue, 18 Jul 2023 15:46:45 +0000 (UTC)
Date:   Tue, 18 Jul 2023 17:46:44 +0200
From:   Sam Ravnborg <sam@ravnborg.org>
To:     Ying Liu <victor.liu@nxp.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "neil.armstrong@linaro.org" <neil.armstrong@linaro.org>,
        "conor+dt@kernel.org" <conor+dt@kernel.org>,
        "rfoss@kernel.org" <rfoss@kernel.org>,
        "andrzej.hajda@intel.com" <andrzej.hajda@intel.com>,
        "jonas@kwiboo.se" <jonas@kwiboo.se>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "jernej.skrabec@gmail.com" <jernej.skrabec@gmail.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "Laurent.pinchart@ideasonboard.com" 
        <Laurent.pinchart@ideasonboard.com>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        dl-linux-imx <linux-imx@nxp.com>
Subject: Re: [PATCH 9/9] drm/bridge: imx: Add i.MX93 MIPI DSI support
Message-ID: <20230718154644.GD688726@ravnborg.org>
References: <20230717061831.1826878-1-victor.liu@nxp.com>
 <20230717061831.1826878-10-victor.liu@nxp.com>
 <3174425.5fSG56mABF@steina-w>
 <DB8PR04MB7051324184846E6206E495BF9838A@DB8PR04MB7051.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DB8PR04MB7051324184846E6206E495BF9838A@DB8PR04MB7051.eurprd04.prod.outlook.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_MSPIKE_H4,
        RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_NONE,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Ying Liu,

On Tue, Jul 18, 2023 at 09:00:25AM +0000, Ying Liu wrote:
> > > +   if (IS_ERR(dsi->regmap)) {
> > > +           ret = PTR_ERR(dsi->regmap);
> > > +           DRM_DEV_ERROR(dev, "failed to get block ctrl regmap:
> > %d\n", ret);
> >
> > Could you use dev_err_probe here instead?
> 
> Maybe, it's better to keep using DRM_DEV_ERROR to achieve consistent
> error log format across the driver which is implemented in drm_dev_printk().
> I see other DRM drivers do the same.

All the DRM_* macros are deprecated.
New code shall use drm_*, dev_* or pr_ as appropriate.

The appropriate variant here is dev_err_probe().

	Sam
