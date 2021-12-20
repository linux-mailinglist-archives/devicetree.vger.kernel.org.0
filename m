Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 48A5447A379
	for <lists+devicetree@lfdr.de>; Mon, 20 Dec 2021 03:06:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237147AbhLTCG0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Dec 2021 21:06:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60924 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237125AbhLTCG0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Dec 2021 21:06:26 -0500
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3678C061574
        for <devicetree@vger.kernel.org>; Sun, 19 Dec 2021 18:06:25 -0800 (PST)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 32E89B9C;
        Mon, 20 Dec 2021 03:06:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1639965983;
        bh=doVUZtwd5suRhhpyA1TOQ5UWylcW5PU8HR/k3Gpy9LU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=oGs/Ukpy0P0ijodXgNAMUbGjMn6G1ZYq3bolXsskCIMG5IyhwSlzCYDtevcrXPvcV
         RCJGCyAI70wq84ph/d9qI3T8TDZQwqlpS83Po4iKJtDD5ki9GMJqLU6uGyumHvuK9N
         982lTvEV1qc3ev5sQ27mTRHnGjqW7E9A884v5qM0=
Date:   Mon, 20 Dec 2021 04:06:21 +0200
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Marek Vasut <marex@denx.de>
Cc:     dri-devel@lists.freedesktop.org, Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: display: bridge: lvds-codec: Document TI
 DS90CF364A decoder
Message-ID: <Yb/lHeBIFM1Ih7zo@pendragon.ideasonboard.com>
References: <20211218152309.256183-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20211218152309.256183-1-marex@denx.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek,

Thank you for the patch.

On Sat, Dec 18, 2021 at 04:23:09PM +0100, Marek Vasut wrote:
> Add compatible string for TI DS90CF364A, which is another LVDS to DPI
> decoder similar to DS90CF384A, except it is using smaller package and
> only provides 18bit DPI bus.

We could add a rule to disallow jeida-24 and vesa-24 when the compatible
string contains ti,ds90cf384a, but that may be overkill.

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: devicetree@vger.kernel.org
> To: dri-devel@lists.freedesktop.org
> ---
>  Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
> index 1faae3e323a4..99c13f879916 100644
> --- a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
> @@ -39,6 +39,7 @@ properties:
>            - const: lvds-encoder # Generic LVDS encoder compatible fallback
>        - items:
>            - enum:
> +              - ti,ds90cf364a # For the DS90CF364A FPD-Link LVDS Receiver
>                - ti,ds90cf384a # For the DS90CF384A FPD-Link LVDS Receiver
>            - const: lvds-decoder # Generic LVDS decoders compatible fallback
>        - enum:

-- 
Regards,

Laurent Pinchart
