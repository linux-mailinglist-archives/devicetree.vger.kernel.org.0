Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 16704736EA
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2019 20:49:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726650AbfGXStt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Jul 2019 14:49:49 -0400
Received: from asavdk4.altibox.net ([109.247.116.15]:48336 "EHLO
        asavdk4.altibox.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725883AbfGXStt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Jul 2019 14:49:49 -0400
Received: from ravnborg.org (unknown [158.248.194.18])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by asavdk4.altibox.net (Postfix) with ESMTPS id AA94E80622;
        Wed, 24 Jul 2019 20:49:44 +0200 (CEST)
Date:   Wed, 24 Jul 2019 20:49:43 +0200
From:   Sam Ravnborg <sam@ravnborg.org>
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     dri-devel@lists.freedesktop.org,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        Sean Paul <sean@poorly.run>,
        linux-arm-kernel@lists.infradead.org,
        Pawel Moll <pawel.moll@arm.com>,
        Liviu Dudau <Liviu.Dudau@arm.com>, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] drm/pl111: Deprecate the pads from the DT binding
Message-ID: <20190724184943.GA22640@ravnborg.org>
References: <20190724134959.2365-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190724134959.2365-1-linus.walleij@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VcLZwmh9 c=1 sm=1 tr=0
        a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
        a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=7gkXJVJtAAAA:8
        a=7CQSdrXTAAAA:8 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=ynT33n6li-2ytY4JJ7wA:9
        a=CjuIK1q_8ugA:10 a=E9Po1WZjFZOl8hwRPBS3:22 a=a-qgeE7W1pNrGK8U0ZQC:22
        a=AjGcO6oz07-iQ99wixmX:22 a=cvBusfyB2V15izCimMoJ:22
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Linus.

On Wed, Jul 24, 2019 at 03:49:58PM +0200, Linus Walleij wrote:
> The pads were an earlier workaround for the internal image
> pipeline in the Linux fbdev subsystem. As we move to generic
> definition of display properties and drivers that no longer
> need this to work, deprecate this property.
> 
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Pawel Moll <pawel.moll@arm.com>
> Cc: Liviu Dudau <Liviu.Dudau@arm.com>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>

Acked-by: Sam Ravnborg <sam@ravnborg.org>
> ---
>  Documentation/devicetree/bindings/display/arm,pl11x.txt | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/arm,pl11x.txt b/Documentation/devicetree/bindings/display/arm,pl11x.txt
> index 572fa2773ec4..3f977e72a200 100644
> --- a/Documentation/devicetree/bindings/display/arm,pl11x.txt
> +++ b/Documentation/devicetree/bindings/display/arm,pl11x.txt
> @@ -39,9 +39,11 @@ Required sub-nodes:
>  
>  - port: describes LCD panel signals, following the common binding
>  	for video transmitter interfaces; see
> -	Documentation/devicetree/bindings/media/video-interfaces.txt;
> -	when it is a TFT panel, the port's endpoint must define the
> -	following property:
> +	Documentation/devicetree/bindings/media/video-interfaces.txt
> +
> +Deprecated properties:
> +	The port's endbpoint subnode had this, now deprecated property
> +	in the past. Drivers should be able to survive without it:
>  
>  	- arm,pl11x,tft-r0g0b0-pads: an array of three 32-bit values,
>  		defining the way CLD pads are wired up; first value
> @@ -80,7 +82,6 @@ Example:
>  		port {
>  			clcd_pads: endpoint {
>  				remote-endpoint = <&clcd_panel>;
> -				arm,pl11x,tft-r0g0b0-pads = <0 8 16>;
>  			};
>  		};
>  
> -- 
> 2.21.0
