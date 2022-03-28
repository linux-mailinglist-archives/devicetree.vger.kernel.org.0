Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 990174EA127
	for <lists+devicetree@lfdr.de>; Mon, 28 Mar 2022 22:11:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343615AbiC1UMv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Mar 2022 16:12:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36346 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235924AbiC1UMu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Mar 2022 16:12:50 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1A8F5133D
        for <devicetree@vger.kernel.org>; Mon, 28 Mar 2022 13:11:05 -0700 (PDT)
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1nYvhf-0002aj-23; Mon, 28 Mar 2022 22:11:03 +0200
Message-ID: <e99b7eed19ec396d3af8834830a33eab0abccccf.camel@pengutronix.de>
Subject: Re: [PATCH V3 01/12] dt-bindings: display: bridge: tc358867:
 Document DPI output support
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Marek Vasut <marex@denx.de>, dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Rob Herring <robh+dt@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Maxime Ripard <maxime@cerno.tech>
Date:   Mon, 28 Mar 2022 22:11:00 +0200
In-Reply-To: <20220224195817.68504-2-marex@denx.de>
References: <20220224195817.68504-1-marex@denx.de>
         <20220224195817.68504-2-marex@denx.de>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Donnerstag, dem 24.02.2022 um 20:58 +0100 schrieb Marek Vasut:
> The TC358767/TC358867/TC9595 are all capable of operating in multiple
> modes, DPI-to-(e)DP, DSI-to-(e)DP, DSI-to-DPI. Document support for the
> DPI output port, which can now be connected both as input and output.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Jonas Karlman <jonas@kwiboo.se>
> Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
> Cc: Maxime Ripard <maxime@cerno.tech>
> Cc: Neil Armstrong <narmstrong@baylibre.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: devicetree@vger.kernel.org
> To: dri-devel@lists.freedesktop.org

Reviewed-by: Lucas Stach <l.stach@pengutronix.de>

> ---
> V2: - Rebase on next-20220217
> V3: - No change
> ---
>  .../devicetree/bindings/display/bridge/toshiba,tc358767.yaml  | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
> index f1541cc052977..5cfda6f2ba69c 100644
> --- a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
> @@ -61,8 +61,8 @@ properties:
>        port@1:
>          $ref: /schemas/graph.yaml#/properties/port
>          description: |
> -            DPI input port. The remote endpoint phandle should be a
> -            reference to a valid DPI output endpoint node
> +            DPI input/output port. The remote endpoint phandle should be a
> +            reference to a valid DPI output or input endpoint node.
>  
>        port@2:
>          $ref: /schemas/graph.yaml#/properties/port


