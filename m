Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 15862381B3E
	for <lists+devicetree@lfdr.de>; Sat, 15 May 2021 23:48:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235152AbhEOVta (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 15 May 2021 17:49:30 -0400
Received: from perceval.ideasonboard.com ([213.167.242.64]:33902 "EHLO
        perceval.ideasonboard.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235133AbhEOVt3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 15 May 2021 17:49:29 -0400
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id E53CD436;
        Sat, 15 May 2021 23:48:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1621115295;
        bh=3HDfMZnFR3gpMA8k29TFZe4vdG02tiejMNDF+HfebMc=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=O0Tcm91ua7Gr4QLSDXPAVeEqzKH/KAAP0oxM3mnYgAEj9jnwAbW9DcknsHaRDEM50
         NXximMjWZX4VhDRAD1FyMClFGHAz6UfFVk90seQs4f40F7gBcoM5luosQtsPNaWVrm
         QTG9/24e/iSxDx0HKV7OVCiTTckSMRLUAQlizfzk=
Date:   Sun, 16 May 2021 00:48:05 +0300
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Marek Vasut <marex@denx.de>
Cc:     dri-devel@lists.freedesktop.org, ch@denx.de,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: display: bridge: lvds-codec: Fix spacing
Message-ID: <YKBBlWXXK8LUc8ac@pendragon.ideasonboard.com>
References: <20210515203932.366799-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20210515203932.366799-1-marex@denx.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek,

Thank you for the patch.

On Sat, May 15, 2021 at 10:39:32PM +0200, Marek Vasut wrote:
> Add missing spaces to make the diagrams readable, no functional change.

Looks better indeed. The patch view looks bad though, because of the
tabs. Maybe you could replace them with spaces, while at it ?

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: devicetree@vger.kernel.org
> To: dri-devel@lists.freedesktop.org
> ---
>  .../devicetree/bindings/display/panel/lvds.yaml      | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/lvds.yaml b/Documentation/devicetree/bindings/display/panel/lvds.yaml
> index 31164608ba1d..06d7ca692d0d 100644
> --- a/Documentation/devicetree/bindings/display/panel/lvds.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/lvds.yaml
> @@ -52,9 +52,9 @@ properties:
>          [VESA] specifications. Data are transferred as follows on 3 LVDS lanes.
>  
>        Slot	    0       1       2       3       4       5       6
> -            ________________                         _________________
> +                ________________                         _________________
>        Clock	                \_______________________/
> -              ______  ______  ______  ______  ______  ______  ______
> +                  ______  ______  ______  ______  ______  ______  ______
>        DATA0	><__G0__><__R5__><__R4__><__R3__><__R2__><__R1__><__R0__><
>        DATA1	><__B1__><__B0__><__G5__><__G4__><__G3__><__G2__><__G1__><
>        DATA2	><_CTL2_><_CTL1_><_CTL0_><__B5__><__B4__><__B3__><__B2__><
> @@ -63,9 +63,9 @@ properties:
>          specifications. Data are transferred as follows on 4 LVDS lanes.
>  
>        Slot	    0       1       2       3       4       5       6
> -            ________________                         _________________
> +                ________________                         _________________
>        Clock	                \_______________________/
> -              ______  ______  ______  ______  ______  ______  ______
> +                  ______  ______  ______  ______  ______  ______  ______
>        DATA0	><__G2__><__R7__><__R6__><__R5__><__R4__><__R3__><__R2__><
>        DATA1	><__B3__><__B2__><__G7__><__G6__><__G5__><__G4__><__G3__><
>        DATA2	><_CTL2_><_CTL1_><_CTL0_><__B7__><__B6__><__B5__><__B4__><
> @@ -75,9 +75,9 @@ properties:
>          Data are transferred as follows on 4 LVDS lanes.
>  
>        Slot	    0       1       2       3       4       5       6
> -            ________________                         _________________
> +                ________________                         _________________
>        Clock	                \_______________________/
> -              ______  ______  ______  ______  ______  ______  ______
> +                  ______  ______  ______  ______  ______  ______  ______
>        DATA0	><__G0__><__R5__><__R4__><__R3__><__R2__><__R1__><__R0__><
>        DATA1	><__B1__><__B0__><__G5__><__G4__><__G3__><__G2__><__G1__><
>        DATA2	><_CTL2_><_CTL1_><_CTL0_><__B5__><__B4__><__B3__><__B2__><

-- 
Regards,

Laurent Pinchart
