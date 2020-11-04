Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6F07F2A6273
	for <lists+devicetree@lfdr.de>; Wed,  4 Nov 2020 11:47:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728700AbgKDKrm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Nov 2020 05:47:42 -0500
Received: from asavdk4.altibox.net ([109.247.116.15]:46610 "EHLO
        asavdk4.altibox.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727923AbgKDKrm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Nov 2020 05:47:42 -0500
Received: from ravnborg.org (unknown [188.228.123.71])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by asavdk4.altibox.net (Postfix) with ESMTPS id 71B17804D8;
        Wed,  4 Nov 2020 11:47:37 +0100 (CET)
Date:   Wed, 4 Nov 2020 11:47:35 +0100
From:   Sam Ravnborg <sam@ravnborg.org>
To:     Liu Ying <victor.liu@nxp.com>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Thierry Reding <thierry.reding@gmail.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH] dt-bindings: display: panel-simple: Allow optional
 'ports' property
Message-ID: <20201104104735.GA1581328@ravnborg.org>
References: <1604477017-17642-1-git-send-email-victor.liu@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1604477017-17642-1-git-send-email-victor.liu@nxp.com>
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VafZwmh9 c=1 sm=1 tr=0
        a=S6zTFyMACwkrwXSdXUNehg==:117 a=S6zTFyMACwkrwXSdXUNehg==:17
        a=kj9zAlcOel0A:10 a=pGLkceISAAAA:8 a=7gkXJVJtAAAA:8 a=VwQbUJbxAAAA:8
        a=8AirrxEcAAAA:8 a=zLvY34wDOnSOrT-61vkA:9 a=CjuIK1q_8ugA:10
        a=E9Po1WZjFZOl8hwRPBS3:22 a=AjGcO6oz07-iQ99wixmX:22
        a=ST-jHhOKWsTCqRlWije3:22
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Liu Ying

On Wed, Nov 04, 2020 at 04:03:37PM +0800, Liu Ying wrote:
> Some simple panels have dual LVDS interfaces which receive even and odd
> pixels respectively, like 'nlt,nl192108ac18-02d' and 'koe,tx26d202vm0bwa'.
> So, let's allow optional 'ports' property so that pixel order can be got
> via drm_of_lvds_get_dual_link_pixel_order() if it's child nodes 'port@0'
> and 'port@1' contain 'dual-lvds-even-pixels' and 'dual-lvds-odd-pixels'
> properties respectively.

A panel with dual LVDS interfaces is no longer in the "simple" category.
The panel-simple binding shall be limited to the simple pnales only.

This is also why we have for example panel-simple-dsi binding.

Please consider either a binding dedicated for the dual port displays or
a dedicated binding for the specific panel.

I trust that if other readers of this mail disagrees with this
recommendation that they will speak up.

	Sam

> 
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: David Airlie <airlied@linux.ie>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: Rob Herring <robh+dt@kernel.org>
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> ---
>  Documentation/devicetree/bindings/display/panel/panel-simple.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> index f9750b0..5ccb22b 100644
> --- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> @@ -288,6 +288,7 @@ properties:
>    backlight: true
>    enable-gpios: true
>    port: true
> +  ports: true
>    power-supply: true
>  
>  additionalProperties: false
> -- 
> 2.7.4
