Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B96F9386D3D
	for <lists+devicetree@lfdr.de>; Tue, 18 May 2021 00:52:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235009AbhEQWxi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 May 2021 18:53:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41412 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232416AbhEQWxi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 May 2021 18:53:38 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A031C061573
        for <devicetree@vger.kernel.org>; Mon, 17 May 2021 15:52:19 -0700 (PDT)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 94B183EE;
        Tue, 18 May 2021 00:52:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1621291937;
        bh=GXeWFRZp8wP2V6yFrUBBhlqhlDxTD0g68OGHT2Z8FyA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=TxDo75slydjoovBcwO2C5oy85snZJGrx7h9EmmSAKK0v/1nx37e3IkIyoduwxRRaZ
         +7W3wN0Qjmmg6RZpyK+L6nwxnFCxklPGJM5m5/UbcdRvztCqlEMCFCikT99TLTUC2Q
         VgGiTUgOPIZAi6HprjmLnWrOOp8My7XG/Mp1pRic=
Date:   Tue, 18 May 2021 01:52:16 +0300
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Marek Vasut <marex@denx.de>
Cc:     dri-devel@lists.freedesktop.org, ch@denx.de,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH V2] dt-bindings: display: Fix spacing in lvds.yaml
Message-ID: <YKLzoJB5iagCvU21@pendragon.ideasonboard.com>
References: <20210517224336.409301-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20210517224336.409301-1-marex@denx.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek,

Thank you for the patch.

On Tue, May 18, 2021 at 12:43:36AM +0200, Marek Vasut wrote:
> Add missing spaces to make the diagrams readable, no functional change.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: devicetree@vger.kernel.org
> To: dri-devel@lists.freedesktop.org
> ---
> V2: Replace all the other tabs too

Thanks for taking my comment into account.

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
>  .../bindings/display/panel/lvds.yaml          | 46 +++++++++----------
>  1 file changed, 23 insertions(+), 23 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/lvds.yaml b/Documentation/devicetree/bindings/display/panel/lvds.yaml
> index 31164608ba1d..49460c9dceea 100644
> --- a/Documentation/devicetree/bindings/display/panel/lvds.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/lvds.yaml
> @@ -51,37 +51,37 @@ properties:
>        - "jeida-18" - 18-bit data mapping compatible with the [JEIDA], [LDI] and
>          [VESA] specifications. Data are transferred as follows on 3 LVDS lanes.
>  
> -      Slot	    0       1       2       3       4       5       6
> -            ________________                         _________________
> -      Clock	                \_______________________/
> -              ______  ______  ______  ______  ______  ______  ______
> -      DATA0	><__G0__><__R5__><__R4__><__R3__><__R2__><__R1__><__R0__><
> -      DATA1	><__B1__><__B0__><__G5__><__G4__><__G3__><__G2__><__G1__><
> -      DATA2	><_CTL2_><_CTL1_><_CTL0_><__B5__><__B4__><__B3__><__B2__><
> +      Slot          0       1       2       3       4       5       6
> +                ________________                         _________________
> +      Clock                     \_______________________/
> +                  ______  ______  ______  ______  ______  ______  ______
> +      DATA0     ><__G0__><__R5__><__R4__><__R3__><__R2__><__R1__><__R0__><
> +      DATA1     ><__B1__><__B0__><__G5__><__G4__><__G3__><__G2__><__G1__><
> +      DATA2     ><_CTL2_><_CTL1_><_CTL0_><__B5__><__B4__><__B3__><__B2__><
>  
>        - "jeida-24" - 24-bit data mapping compatible with the [DSIM] and [LDI]
>          specifications. Data are transferred as follows on 4 LVDS lanes.
>  
> -      Slot	    0       1       2       3       4       5       6
> -            ________________                         _________________
> -      Clock	                \_______________________/
> -              ______  ______  ______  ______  ______  ______  ______
> -      DATA0	><__G2__><__R7__><__R6__><__R5__><__R4__><__R3__><__R2__><
> -      DATA1	><__B3__><__B2__><__G7__><__G6__><__G5__><__G4__><__G3__><
> -      DATA2	><_CTL2_><_CTL1_><_CTL0_><__B7__><__B6__><__B5__><__B4__><
> -      DATA3	><_CTL3_><__B1__><__B0__><__G1__><__G0__><__R1__><__R0__><
> +      Slot          0       1       2       3       4       5       6
> +                ________________                         _________________
> +      Clock                     \_______________________/
> +                  ______  ______  ______  ______  ______  ______  ______
> +      DATA0     ><__G2__><__R7__><__R6__><__R5__><__R4__><__R3__><__R2__><
> +      DATA1     ><__B3__><__B2__><__G7__><__G6__><__G5__><__G4__><__G3__><
> +      DATA2     ><_CTL2_><_CTL1_><_CTL0_><__B7__><__B6__><__B5__><__B4__><
> +      DATA3     ><_CTL3_><__B1__><__B0__><__G1__><__G0__><__R1__><__R0__><
>  
>        - "vesa-24" - 24-bit data mapping compatible with the [VESA] specification.
>          Data are transferred as follows on 4 LVDS lanes.
>  
> -      Slot	    0       1       2       3       4       5       6
> -            ________________                         _________________
> -      Clock	                \_______________________/
> -              ______  ______  ______  ______  ______  ______  ______
> -      DATA0	><__G0__><__R5__><__R4__><__R3__><__R2__><__R1__><__R0__><
> -      DATA1	><__B1__><__B0__><__G5__><__G4__><__G3__><__G2__><__G1__><
> -      DATA2	><_CTL2_><_CTL1_><_CTL0_><__B5__><__B4__><__B3__><__B2__><
> -      DATA3	><_CTL3_><__B7__><__B6__><__G7__><__G6__><__R7__><__R6__><
> +      Slot          0       1       2       3       4       5       6
> +                ________________                         _________________
> +      Clock                     \_______________________/
> +                  ______  ______  ______  ______  ______  ______  ______
> +      DATA0     ><__G0__><__R5__><__R4__><__R3__><__R2__><__R1__><__R0__><
> +      DATA1     ><__B1__><__B0__><__G5__><__G4__><__G3__><__G2__><__G1__><
> +      DATA2     ><_CTL2_><_CTL1_><_CTL0_><__B5__><__B4__><__B3__><__B2__><
> +      DATA3     ><_CTL3_><__B7__><__B6__><__G7__><__G6__><__R7__><__R6__><
>  
>        Control signals are mapped as follows.
>  

-- 
Regards,

Laurent Pinchart
