Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 772C857C3CE
	for <lists+devicetree@lfdr.de>; Thu, 21 Jul 2022 07:41:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229758AbiGUFlt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jul 2022 01:41:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38960 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230461AbiGUFls (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jul 2022 01:41:48 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E6754BD04
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 22:41:47 -0700 (PDT)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id D033A496;
        Thu, 21 Jul 2022 07:41:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1658382105;
        bh=Ve0iRggg/q9Wh+Ur+r1w+1hnS4BcG/iP/efNI4rRoHg=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=AzAI9PrcwXbGbsXw4SOK1hMkH5WHoMH0QUBX2gTQhrEpZ0Y2iCXjzasILT2tZd6CY
         uI0gHDRT1DDhFGUxMAGkkVBwahEvQJvn4gGMG9Vx/TYexihYEf2dX6tHbEAjFFydy6
         kaYEvGJKmKX8dbAsDiW0YEHP2i0LSlDjTK7m9wXo=
Date:   Thu, 21 Jul 2022 08:41:43 +0300
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Marek Vasut <marex@denx.de>
Cc:     devicetree@vger.kernel.org, robert.foss@linaro.org,
        dri-devel@lists.freedesktop.org,
        Guido =?utf-8?Q?G=C3=BCnther?= <agx@sigxcpu.org>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH] dt-bindings: vendor-prefixes: add Densitron
Message-ID: <YtjnFxA66V6bMePa@pendragon.ideasonboard.com>
References: <20220721030327.210950-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220721030327.210950-1-marex@denx.de>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek,

Thank you for the patch.

On Thu, Jul 21, 2022 at 05:03:27AM +0200, Marek Vasut wrote:
> Densitron is a manufacturer of LCD panels.
> https://www.densitron.com
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Guido Günther <agx@sigxcpu.org>
> Cc: Jagan Teki <jagan@amarulasolutions.com>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> index 88859dd4040ee..6277240536b44 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -312,6 +312,8 @@ patternProperties:
>      description: Dell Inc.
>    "^delta,.*":
>      description: Delta Electronics, Inc.
> +  "^densitron,.*":

How about "dsn", to follow the practice of using stock names as vendor
prefixes ?

> +    description: Densitron Technologies Ltd
>    "^denx,.*":
>      description: Denx Software Engineering
>    "^devantech,.*":

-- 
Regards,

Laurent Pinchart
