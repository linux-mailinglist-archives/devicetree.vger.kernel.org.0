Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ED54741F61B
	for <lists+devicetree@lfdr.de>; Fri,  1 Oct 2021 22:01:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229626AbhJAUDM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Oct 2021 16:03:12 -0400
Received: from sibelius.xs4all.nl ([83.163.83.176]:58348 "EHLO
        sibelius.xs4all.nl" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229568AbhJAUDM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Oct 2021 16:03:12 -0400
Received: from localhost (bloch.sibelius.xs4all.nl [local])
        by bloch.sibelius.xs4all.nl (OpenSMTPD) with ESMTPA id ffc3ff1d;
        Fri, 1 Oct 2021 22:01:23 +0200 (CEST)
Date:   Fri, 1 Oct 2021 22:01:23 +0200 (CEST)
From:   Mark Kettenis <mark.kettenis@xs4all.nl>
To:     Joey Gouly <joey.gouly@arm.com>
Cc:     linux-gpio@vger.kernel.org, linus.walleij@linaro.org,
        marcan@marcan.st, maz@kernel.org, alyssa.rosenzweig@collabora.com,
        sven@svenpeter.dev, devicetree@vger.kernel.org, robh+dt@kernel.org,
        kettenis@openbsd.org, nd@arm.com, joey.gouly@arm.com
In-Reply-To: <20211001191209.29988-3-joey.gouly@arm.com> (message from Joey
        Gouly on Fri, 1 Oct 2021 20:12:08 +0100)
Subject: Re: [PATCH v2 2/3] dt-bindings: pinctrl: Add apple,npins property to apple,pinctrl
References: <20211001191209.29988-1-joey.gouly@arm.com> <20211001191209.29988-3-joey.gouly@arm.com>
Message-ID: <d3ca2fefcce5e048@bloch.sibelius.xs4all.nl>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> From: Joey Gouly <joey.gouly@arm.com>
> Date: Fri, 1 Oct 2021 20:12:08 +0100
> 
> This property is used to describe the total number of pins on this
> particular pinctrl hardware block.
> 
> Signed-off-by: Joey Gouly <joey.gouly@arm.com>
> ---
>  Documentation/devicetree/bindings/pinctrl/apple,pinctrl.yaml | 4 ++++
>  1 file changed, 4 insertions(+)

Adding does property doesn't break the U-Boot driver, so I'm ok with
this.  This should probably be a required property though.

> diff --git a/Documentation/devicetree/bindings/pinctrl/apple,pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/apple,pinctrl.yaml
> index d50571affd1f..cdd8cb454e92 100644
> --- a/Documentation/devicetree/bindings/pinctrl/apple,pinctrl.yaml
> +++ b/Documentation/devicetree/bindings/pinctrl/apple,pinctrl.yaml
> @@ -34,6 +34,9 @@ properties:
>    gpio-ranges:
>      maxItems: 1
>  
> +  apple,npins:
> +    maxItems: 1
> +
>    interrupts:
>      description: One interrupt for each of the (up to 7) interrupt
>        groups supported by the controller sorted by interrupt group
> @@ -86,6 +89,7 @@ examples:
>          gpio-controller;
>          #gpio-cells = <2>;
>          gpio-ranges = <&pinctrl 0 0 212>;
> +        apple,npins = <212>;
>  
>          interrupt-controller;
>          interrupt-parent = <&aic>;
> -- 
> 2.17.1
> 
> 
