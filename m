Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BB5D8188DE4
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2020 20:23:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726388AbgCQTXJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Mar 2020 15:23:09 -0400
Received: from perceval.ideasonboard.com ([213.167.242.64]:55734 "EHLO
        perceval.ideasonboard.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726294AbgCQTXJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Mar 2020 15:23:09 -0400
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi [81.175.216.236])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 6AAD2F9;
        Tue, 17 Mar 2020 20:23:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1584472987;
        bh=4QVsOH0BrfLWNHQyxRY81dJlyNjXtQZ1wSJ6kExT9LQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=U4tyxYDTJXiFqyrlObdum3ESFQGxgDxZEd1VQodV9KIP8GQFaaC9nvxRjO5A8eeuL
         aQwKWG396mgP/wtj5GNbM8EGW2cZWXQUD7YuvKFAFlsqVRkj4Ie5CM5CaBjErLjlsN
         3A1x7btyI526gF3lh6bgiqVEj9e6Bd/DRNwkVJ2w=
Date:   Tue, 17 Mar 2020 21:23:02 +0200
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Sam Ravnborg <sam@ravnborg.org>
Cc:     Rob Herring <robh@kernel.org>, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org,
        Thierry Reding <thierry.reding@gmail.com>,
        Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH v1 1/3] dt-bindings: display: drop data-mapping from
 panel-dpi
Message-ID: <20200317192302.GB2527@pendragon.ideasonboard.com>
References: <20200314153047.2486-1-sam@ravnborg.org>
 <20200314153047.2486-2-sam@ravnborg.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20200314153047.2486-2-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Sam,

Thank you for the patch.

On Sat, Mar 14, 2020 at 04:30:45PM +0100, Sam Ravnborg wrote:
> data-mapping may not be the best way to describe the
> data format used between panels and display interface.
> 
> Drop it from the panel-dpi binding so we do not start to rely on it.
> We can then work out how to best describe this mapping and when
> we know it, we can add it to this binding.

I certainly welcome that, as we need to define how to express this
information in a more detailed way, taking into account all use cases.

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

I think this qualifies as a v5.7 fix.

> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Rob Herring <robh@kernel.org>
> ---
>  .../devicetree/bindings/display/panel/panel-dpi.yaml   | 10 ----------
>  1 file changed, 10 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/panel-dpi.yaml b/Documentation/devicetree/bindings/display/panel/panel-dpi.yaml
> index f63870384c00..0cd74c8dab42 100644
> --- a/Documentation/devicetree/bindings/display/panel/panel-dpi.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/panel-dpi.yaml
> @@ -21,15 +21,6 @@ properties:
>        - {}
>        - const: panel-dpi
>  
> -  data-mapping:
> -    enum:
> -      - rgb24
> -      - rgb565
> -      - bgr666
> -    description: |
> -      Describes the media format, how the display panel is connected
> -      to the display interface.
> -
>    backlight: true
>    enable-gpios: true
>    height-mm: true
> @@ -52,7 +43,6 @@ examples:
>          compatible = "osddisplays,osd057T0559-34ts", "panel-dpi";
>          label = "osddisplay";
>          power-supply = <&vcc_supply>;
> -        data-mapping = "rgb565";
>          backlight = <&backlight>;
>  
>          port {

-- 
Regards,

Laurent Pinchart
