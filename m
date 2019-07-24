Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3195473B34
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2019 21:59:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2392102AbfGXT5s (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Jul 2019 15:57:48 -0400
Received: from mail-io1-f66.google.com ([209.85.166.66]:41457 "EHLO
        mail-io1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2392090AbfGXT5r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Jul 2019 15:57:47 -0400
Received: by mail-io1-f66.google.com with SMTP id j5so88057036ioj.8
        for <devicetree@vger.kernel.org>; Wed, 24 Jul 2019 12:57:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=BHmSdqrEFW185gQnRJl/upVyaxOjFL+xy9QSU8mTGqM=;
        b=iBMqs3RLDXJ72BdTe3/eiALXe0KZhnQiRbCVgsX6s7X8ORTNarrK2nhVOhjqrLEOS0
         BuG+vciWHSds1imIjeYowNLfA1Ryb+5KB0BCREB67/BQF8oE5G2izPtfm14c20+Hdhay
         GNaCWXVkGKr4TrkPhlGVd55XDjG7A+XDFS4y2tmvvNE4t4RBbB7xVVNoavrn8Edur7u9
         okElTVjyqvefVhPieKQnTCyXQeQK4HQDKAvwfQRZfT3Ry8UJmvNgB2q2rUYnZCRkue00
         iH4vD+R70Wl5JR00saxP3qACEfj60ItSSLr/LyHMbN+FhOqVxf9ubxMEYFg5eDsV+dQa
         PEaA==
X-Gm-Message-State: APjAAAWaDIN0dlHoUKqEkTm68dUpqelOl0rUUH4yiZy6GjaXVNZniWdi
        PeIDjeQ8cMmQgxNJtl8DQA==
X-Google-Smtp-Source: APXvYqxxKh3JY3Fse+qOV5KjQYS12ta3usQvGKJIHRjGwOmsjHJjhwUVADjaDKlM1yPDXQfa7fya9Q==
X-Received: by 2002:a6b:5115:: with SMTP id f21mr29237149iob.173.1563998266070;
        Wed, 24 Jul 2019 12:57:46 -0700 (PDT)
Received: from localhost ([64.188.179.254])
        by smtp.gmail.com with ESMTPSA id b14sm50818025iod.33.2019.07.24.12.57.45
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 24 Jul 2019 12:57:45 -0700 (PDT)
Date:   Wed, 24 Jul 2019 13:57:44 -0600
From:   Rob Herring <robh@kernel.org>
To:     Josef Lusticky <josef@lusticky.cz>
Cc:     sam@ravnborg.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, daniel@ffwll.ch,
        thierry.reding@gmail.com, airlied@linux.ie
Subject: Re: [PATCH v2 1/2] dt-bindings: panel: Add parallel RGB mode for
 Ilitek ILI9341 panels
Message-ID: <20190724195744.GA22947@bogus>
References: <20190304125033.28841-1-josef@lusticky.cz>
 <20190708145618.26031-1-josef@lusticky.cz>
 <20190708145618.26031-2-josef@lusticky.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190708145618.26031-2-josef@lusticky.cz>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 08, 2019 at 04:56:17PM +0200, Josef Lusticky wrote:
> ILI9341 supports both SPI input mode and parallel RGB input mode.
> This commit adds parallel RGB input mode bindings.
> 
> Signed-off-by: Josef Lusticky <josef@lusticky.cz>
> ---
>  .../bindings/display/ilitek,ili9341.txt       | 67 ++++++++++++++++---
>  1 file changed, 56 insertions(+), 11 deletions(-)
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

Why is backlight now required?

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
> +		compatible = "displaytech,dt024ctft", "ilitek,ili9341";
> +		reg = <0>;
> +		spi-max-frequency = <32000000>;
> +		dc-gpios = <&gpio0 9 GPIO_ACTIVE_HIGH>;
> +		reset-gpios = <&gpio0 8 GPIO_ACTIVE_HIGH>;
>  		backlight = <&backlight>;
> +		port {
> +			panel_in: endpoint {
> +				remote-endpoint = <&display_out>;
> +			};
> +		};
>  	};
> -- 
> 2.20.1
> 
