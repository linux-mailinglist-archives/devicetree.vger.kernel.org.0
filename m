Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2C21E6A9CBC
	for <lists+devicetree@lfdr.de>; Fri,  3 Mar 2023 18:07:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230407AbjCCRHJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Mar 2023 12:07:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230381AbjCCRHJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Mar 2023 12:07:09 -0500
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B22C7CA2B
        for <devicetree@vger.kernel.org>; Fri,  3 Mar 2023 09:07:07 -0800 (PST)
Received: from booty (unknown [77.244.183.192])
        (Authenticated sender: luca.ceresoli@bootlin.com)
        by mail.gandi.net (Postfix) with ESMTPSA id 3887AFF807;
        Fri,  3 Mar 2023 17:07:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1677863226;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=UTe5qmwmI4dkolin3VVPDpEbc3GqIs/eFgYcLavf1DA=;
        b=Gqtn1sKlA+OKkK2TeyVoB2QZr3gvoxxTIZv6t+ULpNvR2GDuZPGLQJINmqXuBEdbtkvQkH
        8hge5946OOJ49N6t0Qjtne4vzNWBDLYtmm1Yu/QlVI+HA1NyiL/YA6gzLY85nW3eKHjtx6
        X4djE3XQ5bowHaget78lEFcUEVaFXu/k2O5OT5ZFcMtzeP0Ws0CqLMfjXL9q9WKnU3dYOc
        ik4i+MY0hWBtdRA6mi8WZA8eIMqA50y5ffYhhr2FOWN2jFO7WTyf9u03KU0l6jE8n/GHmH
        iiYYkcZ4aPVzSM10eolUzVtaOGR/cjRxoU0k57CEJ+jY8L+hiX/T9SwEpSWDjg==
Date:   Fri, 3 Mar 2023 18:07:02 +0100
From:   Luca Ceresoli <luca.ceresoli@bootlin.com>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liu Ying <victor.liu@nxp.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Kieran Bingham <kieran.bingham@ideasonboard.com>,
        Marek Vasut <marex@denx.de>, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, patchwork-lst@pengutronix.de,
        kernel@pengutronix.de
Subject: Re: [PATCH 2/4] drm/imx: add bridge wrapper driver for i.MX8MP DWC
 HDMI
Message-ID: <20230303180702.766423d5@booty>
In-Reply-To: <20220826192424.3216734-2-l.stach@pengutronix.de>
References: <20220826192424.3216734-1-l.stach@pengutronix.de>
        <20220826192424.3216734-2-l.stach@pengutronix.de>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 26 Aug 2022 21:24:22 +0200
Lucas Stach <l.stach@pengutronix.de> wrote:

> Add a simple wrapper driver for the DWC HDMI bridge driver that
> implements the few bits that are necessary to abstract the i.MX8MP
> SoC integration.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Tested-by: Marek Vasut <marex@denx.de>

Tested-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
