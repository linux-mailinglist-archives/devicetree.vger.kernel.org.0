Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B2CD564728
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2019 15:40:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727539AbfGJNkC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Jul 2019 09:40:02 -0400
Received: from asavdk3.altibox.net ([109.247.116.14]:49206 "EHLO
        asavdk3.altibox.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726080AbfGJNkC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Jul 2019 09:40:02 -0400
Received: from ravnborg.org (unknown [158.248.194.18])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by asavdk3.altibox.net (Postfix) with ESMTPS id E66A820079;
        Wed, 10 Jul 2019 15:39:57 +0200 (CEST)
Date:   Wed, 10 Jul 2019 15:39:56 +0200
From:   Sam Ravnborg <sam@ravnborg.org>
To:     Josef Lusticky <josef@lusticky.cz>
Cc:     robh@kernel.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, daniel@ffwll.ch,
        thierry.reding@gmail.com, airlied@linux.ie
Subject: Re: [PATCH v2 1/2] dt-bindings: panel: Add parallel RGB mode for
 Ilitek ILI9341 panels
Message-ID: <20190710133956.GB11791@ravnborg.org>
References: <20190304125033.28841-1-josef@lusticky.cz>
 <20190708145618.26031-1-josef@lusticky.cz>
 <20190708145618.26031-2-josef@lusticky.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190708145618.26031-2-josef@lusticky.cz>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=dqr19Wo4 c=1 sm=1 tr=0
        a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
        a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=7gkXJVJtAAAA:8
        a=znvrqEH1YbIRDl4D6eEA:9 a=CjuIK1q_8ugA:10 a=E9Po1WZjFZOl8hwRPBS3:22
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Josef.

On Mon, Jul 08, 2019 at 04:56:17PM +0200, Josef Lusticky wrote:
> ILI9341 supports both SPI input mode and parallel RGB input mode.
> This commit adds parallel RGB input mode bindings.
> 
> Signed-off-by: Josef Lusticky <josef@lusticky.cz>
> ---
>  .../bindings/display/ilitek,ili9341.txt       | 67 ++++++++++++++++---
>  1 file changed, 56 insertions(+), 11 deletions(-)
With Robs patches landed in drm-misc-next yaml format is from now on
preferred for panel bindings, or at least this is my take on it.

So a yaml conversion would be appreciated, but not mandatory.

> 
> diff --git a/Documentation/devicetree/bindings/display/ilitek,ili9341.txt b/Documentation/devicetree/bindings/display/ilitek,ili9341.txt
> index 169b32e4ee4e..629f38a1d0cd 100644
> --- a/Documentation/devicetree/bindings/display/ilitek,ili9341.txt
> +++ b/Documentation/devicetree/bindings/display/ilitek,ili9341.txt
> @@ -1,27 +1,72 @@
>  Ilitek ILI9341 display panels
>  
> -This binding is for display panels using an Ilitek ILI9341 controller in SPI
> -mode.
> +This binding is for display panels using an Ilitek ILI9341 controller.
> +The display panels are supported in the following graphical input modes:
> +- SPI input mode
> +	MIPI-DBI Type 3 Option 1 or Option 3 is used to transfer
> +	commands and graphical data
> +- parallel RGB input mode
> +	MIPI-DBI Type 3 Option 1 or Option 3 is used for commands
> +	MIPI-DPI 18-bit parallel RGB connection is used to transfer
> +	graphical data
>  
> -Required properties:
> -- compatible:	"adafruit,yx240qv29", "ilitek,ili9341"
> -- dc-gpios:	D/C pin
> -- reset-gpios:	Reset pin
> +
> +SPI input mode:
>  
>  The node for this driver must be a child node of a SPI controller, hence
> -all mandatory properties described in ../spi/spi-bus.txt must be specified.
> +all mandatory properties described in spi/spi-bus.txt must be specified.
> +
> +Required properties in SPI input mode:
> +- compatible:   "adafruit,yx240qv29", "ilitek,ili9341"
> +- backlight:    phandle of the backlight device attached to the panel
> +
> +Optional properties in SPI input mode:
> +- rotation:     panel rotation in degrees counter clockwise (0,90,180,270)
> +- dc-gpios:     GPIO spec for the D/C pin, see gpio/gpio.txt
> +- reset-gpios:  GPIO spec for the reset pin, see gpio/gpio.txt
> +
> +
> +Parallel RGB input mode:
> +
> +The node for this driver must be a child node of a SPI controller, hence
> +all mandatory properties described in spi/spi-bus.txt must be specified.
> +
> +Required properties in parallel RGB input mode:
> +- compatible:   "displaytech,dt024ctft", "ilitek,ili9341"
> +- backlight:    phandle of the backlight device attached to the panel
> +
> +Optional properties in parallel RGB input mode:
> +- dc-gpios:     GPIO spec for the D/C pin, see gpio/gpio.txt
> +- reset-gpios:  GPIO spec for the reset pin, see gpio/gpio.txt
>  
> -Optional properties:
> -- rotation:	panel rotation in degrees counter clockwise (0,90,180,270)
> -- backlight:	phandle of the backlight device attached to the panel
> +In parallel RGB input mode,
> +the device node can contain one 'port' child node with one child
> +'endpoint' node, according to the bindings defined in
> +media/video-interfaces.txt. This node should describe panel's video bus.
>  
> -Example:
> +
> +Example in SPI input mode:
>  	display@0{
>  		compatible = "adafruit,yx240qv29", "ilitek,ili9341";
>  		reg = <0>;
>  		spi-max-frequency = <32000000>;
>  		dc-gpios = <&gpio0 9 GPIO_ACTIVE_HIGH>;
>  		reset-gpios = <&gpio0 8 GPIO_ACTIVE_HIGH>;
> +		backlight = <&backlight>;
>  		rotation = <270>;
> +	};
> +
> +Example in parallel RGB input mode:
> +	panel@{
I think you need a number after "@" here.

With this fixed:
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
