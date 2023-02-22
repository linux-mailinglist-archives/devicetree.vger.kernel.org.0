Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B931969FA35
	for <lists+devicetree@lfdr.de>; Wed, 22 Feb 2023 18:30:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232323AbjBVRaV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Feb 2023 12:30:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229515AbjBVRaU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Feb 2023 12:30:20 -0500
Received: from mailrelay5-1.pub.mailoutpod2-cph3.one.com (mailrelay5-1.pub.mailoutpod2-cph3.one.com [46.30.211.180])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DDE113430C
        for <devicetree@vger.kernel.org>; Wed, 22 Feb 2023 09:30:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ravnborg.org; s=rsa2;
        h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
         from:date:from;
        bh=RNmnqtVCqYGaOUN1jb1UshkoE8aYBEA0ZPlow5YU0CE=;
        b=PExM6vYSOCqpAqxfUx9jQgMQKrYdqudmlneha8pOrCWJH2qAWOkV2WYwmhb7DNdDyVsQBIJvlaZN1
         HEUATxULQoX+6glsIP2+Zau1sT6wxi5BrJOmK740WX3k3bEo1XiQYExoGPtATVIkRm3c2llZ4w4cjQ
         ro5B6ULgmEBifOkrss1LlUVB7zd2+wS//8jk4XF2HNoM/ULCT/qilMrK/OQkmHLdC7FRjppSycdBae
         KOAfs/txLkazAJ3rhaXeS+d+Ld9vUC4d8BXPmBOVzcZI5RY0eHQwzUE+qF1/mgNh2ff0MAVOJLkmVW
         IenrK7elp5cX4nplRgEJYrP0VOGn5LQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
        d=ravnborg.org; s=ed2;
        h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
         from:date:from;
        bh=RNmnqtVCqYGaOUN1jb1UshkoE8aYBEA0ZPlow5YU0CE=;
        b=Xa5nQiPbcWwm1Ue8g3Vc9g3JvcbAFoqNoJ5CwYd+3W/Q2BcdlTlm8fasEg+aMNqtaOZgFdxsFJbgD
         jueZ/8zBw==
X-HalOne-ID: 6bd646bd-b2d6-11ed-8e82-7703b0afff57
Received: from ravnborg.org (2-105-2-98-cable.dk.customer.tdc.net [2.105.2.98])
        by mailrelay5 (Halon) with ESMTPSA
        id 6bd646bd-b2d6-11ed-8e82-7703b0afff57;
        Wed, 22 Feb 2023 17:29:13 +0000 (UTC)
Date:   Wed, 22 Feb 2023 18:29:12 +0100
From:   Sam Ravnborg <sam@ravnborg.org>
To:     Marek Vasut <marex@denx.de>
Cc:     dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: display: Start the info graphics with HS/VS
 change
Message-ID: <Y/ZQ6D8+Yu76Xgy4@ravnborg.org>
References: <20230221200407.16531-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230221200407.16531-1-marex@denx.de>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_NONE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek.

On Tue, Feb 21, 2023 at 09:04:07PM +0100, Marek Vasut wrote:
> The VS signal change is synchronized to HS signal change, start the
> info graphics with that event, instead of having that event occur in
> the middle of it.
> 
> Scope trace of DPI bus with HS/VS active HIGH looks as follows:
>          ________________...__
> VS...___/__         __        \______...
> HS...___/  \_______/  \__...__/  \___...
>         ^                        ^
> 	|                        |
>         |    Used to start here -'
> 	|
> 	'--- Start info graphics here
> 
> Signed-off-by: Marek Vasut <marex@denx.de>

I recall being annoyed about this before.
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>

> ---
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: David Airlie <airlied@gmail.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: devicetree@vger.kernel.org
> Cc: dri-devel@lists.freedesktop.org
> ---
>  .../bindings/display/panel/panel-timing.yaml  | 46 +++++++++----------
>  1 file changed, 23 insertions(+), 23 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/panel-timing.yaml b/Documentation/devicetree/bindings/display/panel/panel-timing.yaml
> index 0d317e61edd8f..aea69b84ca5d8 100644
> --- a/Documentation/devicetree/bindings/display/panel/panel-timing.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/panel-timing.yaml
> @@ -17,29 +17,29 @@ description: |
>  
>    The parameters are defined as seen in the following illustration.
>  
> -  +----------+-------------------------------------+----------+-------+
> -  |          |        ^                            |          |       |
> -  |          |        |vback_porch                 |          |       |
> -  |          |        v                            |          |       |
> -  +----------#######################################----------+-------+
> -  |          #        ^                            #          |       |
> -  |          #        |                            #          |       |
> -  |  hback   #        |                            #  hfront  | hsync |
> -  |   porch  #        |       hactive              #  porch   |  len  |
> -  |<-------->#<-------+--------------------------->#<-------->|<----->|
> -  |          #        |                            #          |       |
> -  |          #        |vactive                     #          |       |
> -  |          #        |                            #          |       |
> -  |          #        v                            #          |       |
> -  +----------#######################################----------+-------+
> -  |          |        ^                            |          |       |
> -  |          |        |vfront_porch                |          |       |
> -  |          |        v                            |          |       |
> -  +----------+-------------------------------------+----------+-------+
> -  |          |        ^                            |          |       |
> -  |          |        |vsync_len                   |          |       |
> -  |          |        v                            |          |       |
> -  +----------+-------------------------------------+----------+-------+
> +  +-------+----------+-------------------------------------+----------+
> +  |       |          |        ^                            |          |
> +  |       |          |        |vsync_len                   |          |
> +  |       |          |        v                            |          |
> +  +-------+----------+-------------------------------------+----------+
> +  |       |          |        ^                            |          |
> +  |       |          |        |vback_porch                 |          |
> +  |       |          |        v                            |          |
> +  +-------+----------#######################################----------+
> +  |       |          #        ^                            #          |
> +  |       |          #        |                            #          |
> +  | hsync |  hback   #        |                            #  hfront  |
> +  |  len  |   porch  #        |       hactive              #  porch   |
> +  |<----->|<-------->#<-------+--------------------------->#<-------->|
> +  |       |          #        |                            #          |
> +  |       |          #        |vactive                     #          |
> +  |       |          #        |                            #          |
> +  |       |          #        v                            #          |
> +  +-------+----------#######################################----------+
> +  |       |          |        ^                            |          |
> +  |       |          |        |vfront_porch                |          |
> +  |       |          |        v                            |          |
> +  +-------+----------+-------------------------------------+----------+
>  
>  
>    The following is the panel timings shown with time on the x-axis.
> -- 
> 2.39.1
