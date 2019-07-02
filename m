Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 984E95CCA0
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2019 11:26:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727132AbfGBJ0W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Jul 2019 05:26:22 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:35855 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725851AbfGBJ0V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Jul 2019 05:26:21 -0400
Received: by mail-wr1-f67.google.com with SMTP id n4so16953225wrs.3
        for <devicetree@vger.kernel.org>; Tue, 02 Jul 2019 02:26:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=c72Fyv8WA8NkxR1IFEkFaoMZKlvVd6q4wEbx/w5xWrw=;
        b=IHga+PwEW1L/a8rXy5sV9kxGuNjBMF9qHUniE/0/a5Ur1zZOuT3qyyCANMHs/WorcQ
         MAWj+SGBsPt+ea9HIBwPKgENbjs5HPjxOQ+hgnDi1631qry2pfvB3sZecY/4G6O9cXtV
         A6v0dMOC83IYdDFod6EqCakDBarEXgrW517jfovbIzk4zNATVqZ2eFggysL4Rfd4YFMe
         r/JKKjmupcjqIFelICv020IHg9+2wCtCWhsRh+BwpHtuHJAME0jA7k9JzH0e6HQJLBJQ
         YuA/8WTuhb5A0/3sYnJX1PDee8aRG6lpmcR16uf0wJ1yu2XD4wmaHWEIk8sjMHez7vnl
         S+QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=c72Fyv8WA8NkxR1IFEkFaoMZKlvVd6q4wEbx/w5xWrw=;
        b=ZkYkk5GCxSUSU03uazx22A/LvJRL+mCoBA/t2PzKQ/nWoYyufA6HyUuJupqqZAMDIi
         WPl7badDMYpJKhbJcn+6rwW6oDgMHVlNN1eGyzBd62am6UncKb1H/Id6OPakH++V7V+n
         yDI+sY4mwFUpZLy1tj8y3Gya4+sCGR+lasaCoWXcUaIQnXv9OVXSt0Uvs5HKxmZHteBw
         s5C5zH/PVZri0LtWd9gfqdsgDkGOZG/jKfkXYsnuQg/nXj9hEKFOJYc605+sBzA2lNtk
         NS4ulXMzLOYK9OMUOhRCaf4QA6JsKFV7J7G+PyuZz2u8tT1TqGuRR7gRs9Sj1+n7cQLe
         HjPA==
X-Gm-Message-State: APjAAAWQniQVDcZxFV5DhzC9A7rsJsfIuKgnGdV38MCwcwoCrsVK/5Em
        WrEmAmpmHdC5RnXwCIDE/QkUGg==
X-Google-Smtp-Source: APXvYqzC2jCeeAT8m43F20d75Nsx3gx2QADkoiM7D01OfOhKZnJP2dgErCaWhDrM44y+I23WtSeY3A==
X-Received: by 2002:adf:de8b:: with SMTP id w11mr23223214wrl.134.1562059579253;
        Tue, 02 Jul 2019 02:26:19 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net. [86.9.19.6])
        by smtp.gmail.com with ESMTPSA id g10sm11371415wrw.60.2019.07.02.02.26.18
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 02 Jul 2019 02:26:18 -0700 (PDT)
Date:   Tue, 2 Jul 2019 10:26:17 +0100
From:   Daniel Thompson <daniel.thompson@linaro.org>
To:     Brian Dodge <bdodge09@gmail.com>
Cc:     pavel@ucw.cz, lee.jones@linaro.org, jingoohan1@gmail.com,
        jacek.anaszewski@gmail.com, robh+dt@kernel.org,
        dri-devel@lists.freedesktop.org, linux-leds@vger.kernel.org,
        devicetree@vger.kernel.org, pbacon@psemi.com
Subject: Re: [PATCH 1/2] dt-bindings: backlight: fix vendor prefix for
 ArcticSand arcxcnn driver bindings
Message-ID: <20190702092617.c4wn3dmg5orrquyj@holly.lan>
References: <1561940895-15837-1-git-send-email-bdodge09@gmail.com>
 <1561940895-15837-2-git-send-email-bdodge09@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1561940895-15837-2-git-send-email-bdodge09@gmail.com>
User-Agent: NeoMutt/20180716
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> [PATCH 1/2] dt-bindings: backlight: fix vendor prefix for
> ArcticSand arcxcnn driver bindings

The "v2" is normally applied to the whole patchset (if you
prepare the patchset using git format-patch then you can use
the --subject-prefix argument for that).


On Sun, Jun 30, 2019 at 08:28:14PM -0400, Brian Dodge wrote:
> The vendor-prefixes.txt file properly refers to ArcticSand
> as arctic but the driver bindings improperly abbreviated the
> prefix to arc. This was a mistake in the original patch. This
> patch adds "arctic" and retains "arc" (deprecated) bindings
> 
> Signed-off-by: Brian Dodge <bdodge09@gmail.com>
> ---
>  .../bindings/leds/backlight/arcxcnn_bl.txt         | 31 +++++++++++++++-------
>  1 file changed, 21 insertions(+), 10 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/leds/backlight/arcxcnn_bl.txt b/Documentation/devicetree/bindings/leds/backlight/arcxcnn_bl.txt
> index 230abde..4d98394 100644
> --- a/Documentation/devicetree/bindings/leds/backlight/arcxcnn_bl.txt
> +++ b/Documentation/devicetree/bindings/leds/backlight/arcxcnn_bl.txt
> @@ -1,8 +1,13 @@
> -Binding for ArcticSand arc2c0608 LED driver
> +Binding for ArcticSand arc family LED drivers
>  
>  Required properties:
> -- compatible:		should be "arc,arc2c0608"
> -- reg:			slave address
> +- compatible: one of
> +	"arctic,arc1c0608"
> +	"arctic,arc2c0608"
> +	"arctic,arc3c0845"
> +	"arc,arc2c0608" (deprecated)

Nothing wrong with adding compatible strings for arc1 and arc3 but I
would expect it to be mentioned in the description to reassure reviewers
that the right depth of thought has been applied Something like "Also added
compatible strings for other family members, all the existing optional
properties work the same way for the new devices." (if you agree that it
is true) is good to show you were paying proper attention!

However this does perhaps verge a little towards nitpicking so maybe
wait to see what the DT folks say. From my point of view:
Acked-by: Daniel Thompson <daniel.thompson@linaro.org>


Daniel.


> +
> +- reg:		slave address
>  
>  Optional properties:
>  - default-brightness:	brightness value on boot, value from: 0-4095
> @@ -11,19 +16,25 @@ Optional properties:
>  - led-sources:		List of enabled channels from 0 to 5.
>  			See Documentation/devicetree/bindings/leds/common.txt
>  
> -- arc,led-config-0:	setting for register ILED_CONFIG_0
> -- arc,led-config-1:	setting for register ILED_CONFIG_1
> -- arc,dim-freq:		PWM mode frequence setting (bits [3:0] used)
> -- arc,comp-config:	setting for register CONFIG_COMP
> -- arc,filter-config:	setting for register FILTER_CONFIG
> -- arc,trim-config:	setting for register IMAXTUNE
> +- arctic,led-config-0:	setting for register ILED_CONFIG_0
> +- arctic,led-config-1:	setting for register ILED_CONFIG_1
> +- arctic,dim-freq:	PWM mode frequence setting (bits [3:0] used)
> +- arctic,comp-config:	setting for register CONFIG_COMP
> +- arctic,filter-config:	setting for register FILTER_CONFIG
> +- arctic,trim-config:	setting for register IMAXTUNE
> +- arc,led-config-0:	setting for register ILED_CONFIG_0 (deprecated)
> +- arc,led-config-1:	setting for register ILED_CONFIG_1 (deprecated)
> +- arc,dim-freq:		PWM mode frequence setting (bits [3:0] used) (deprecated)
> +- arc,comp-config:	setting for register CONFIG_COMP (deprecated)
> +- arc,filter-config:	setting for register FILTER_CONFIG (deprecated)
> +- arc,trim-config:	setting for register IMAXTUNE (deprecated)
>  
>  Note: Optional properties not specified will default to values in IC EPROM
>  
>  Example:
>  
>  arc2c0608@30 {
> -	compatible = "arc,arc2c0608";
> +	compatible = "arctic,arc2c0608";
>  	reg = <0x30>;
>  	default-brightness = <500>;
>  	label = "lcd-backlight";
> -- 
> 2.7.4
> 
