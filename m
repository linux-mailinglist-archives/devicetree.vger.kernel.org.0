Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B3DDA580F9E
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 11:12:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232243AbiGZJMj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 05:12:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229527AbiGZJMj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 05:12:39 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73A082CE19
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 02:12:38 -0700 (PDT)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1oGGcB-00049r-Fr; Tue, 26 Jul 2022 11:12:31 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1oGGc8-00058M-9p; Tue, 26 Jul 2022 11:12:28 +0200
Date:   Tue, 26 Jul 2022 11:12:28 +0200
From:   Marco Felsch <m.felsch@pengutronix.de>
To:     robert.foss@linaro.org, laurent.pinchart@ideasonboard.com,
        jernej.skrabec@gmail.com, jonas@kwiboo.se, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, sam@ravnborg.org,
        maxime@cerno.tech
Cc:     devicetree@vger.kernel.org, kernel@pengutronix.de,
        dri-devel@lists.freedesktop.org
Subject: Re: [PATCH 0/6] TI SN65DSI83 Features
Message-ID: <20220726091228.nvvyzab7wyzrnfrr@pengutronix.de>
References: <20220530150548.1236307-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220530150548.1236307-1-m.felsch@pengutronix.de>
User-Agent: NeoMutt/20180716
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi all,

gentle ping on this series since I didn't received much feedback for the
code.

Regards,
  Marco

On 22-05-30, Marco Felsch wrote:
> Hi,
> 
> the purpose of this small series is to enable the support for the reverse
> lane feature and to add support for reset controllers which can drive
> the enable pin.
> 
> Regards,
>   Marco
> 
> Marco Felsch (6):
>   drm/bridge: ti-sn65dsi83: make lvds lane register setup more readable
>   dt-bindings: drm/bridge: ti-sn65dsi83: add documentation for reverse
>     lvds lanes
>   drm/bridge: ti-sn65dsi83: add support to swap the LVDS data lanes
>   drm/bridge: ti-sn65dsi83: make use of dev_err_probe
>   dt-bindings: drm/bridge: ti-sn65dsi83: Add reset controller
>     documentation
>   drm/bridge: ti-sn65dsi83: add support for a external reset controller
> 
>  .../bindings/display/bridge/ti,sn65dsi83.yaml | 64 ++++++++++++-
>  drivers/gpu/drm/bridge/ti-sn65dsi83.c         | 89 +++++++++++++++++--
>  2 files changed, 145 insertions(+), 8 deletions(-)
> 
> -- 
> 2.30.2
> 
> 
> 
