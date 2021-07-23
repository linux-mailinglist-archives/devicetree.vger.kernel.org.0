Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5D84A3D4260
	for <lists+devicetree@lfdr.de>; Fri, 23 Jul 2021 23:42:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231940AbhGWVCH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Jul 2021 17:02:07 -0400
Received: from mail-io1-f47.google.com ([209.85.166.47]:34504 "EHLO
        mail-io1-f47.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231839AbhGWVCH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Jul 2021 17:02:07 -0400
Received: by mail-io1-f47.google.com with SMTP id y200so4286561iof.1
        for <devicetree@vger.kernel.org>; Fri, 23 Jul 2021 14:42:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=idLNdoBL59EdjnP3Cd62t3DHKj1QdbsdtjYWIri+5Aw=;
        b=VjDKET91aB5LRRzFcETnN+WX9SUdnt2lHsqPP8ei2nN4OeYDuTxlAIs/qmWvjaqg5p
         cOHjq81qeyw3RH1D+Dx4nZfaMVQbte9QsHyE1JtzooUbRNrZs5ni74wH5sMxZmX89QEA
         xZtkAZlbpyHyUk2Q/iUjITrjdj6PdTgc51eklzm2b2vP9RnZb9+ImM1HoVw823WSu/9U
         GW3OPFSjK+hJgcPXgyhHSZDAx5IzBJF5Jva4Nf/qW0cjOUnY1U/MhT5+XYuJJHb/FTln
         LEkURcED+s+SCX0c3aruzjZRflhtZb18iGp1Ch+oOw+6zOpgSgLpEPu/a+18A4cLAEU7
         Uxsg==
X-Gm-Message-State: AOAM5304wu2k9kpP9lcr04dlC9qcQ060oBMs+t3jOB8LcVLxAmhkRMR5
        Srm9UAFeCRDVAjx0fdO/Kw==
X-Google-Smtp-Source: ABdhPJwKqYpwz6rAPrp5oaMV/rcP3TdYDw5wk9FiAVxFnFmLhj84GSDykHxSrhpEb4m5A4Km6SgZPw==
X-Received: by 2002:a02:8241:: with SMTP id q1mr5796571jag.134.1627076559178;
        Fri, 23 Jul 2021 14:42:39 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id t11sm8805336ioc.4.2021.07.23.14.42.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jul 2021 14:42:38 -0700 (PDT)
Received: (nullmailer pid 2640950 invoked by uid 1000);
        Fri, 23 Jul 2021 21:42:37 -0000
Date:   Fri, 23 Jul 2021 15:42:37 -0600
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, Frank Rowand <frowand.list@gmail.com>,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        Johan Hovold <johan@kernel.org>
Subject: Re: [PATCH 12/54] dt-bindings: gnss: Convert UBlox Neo-6M binding to
 a schema
Message-ID: <20210723214237.GA2637886@robh.at.kernel.org>
References: <20210721140424.725744-1-maxime@cerno.tech>
 <20210721140424.725744-13-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210721140424.725744-13-maxime@cerno.tech>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 21, 2021 at 04:03:42PM +0200, Maxime Ripard wrote:
> The UBlox Neo 6M is supported by Linux thanks to its device tree
> binding.
> 
> Now that we have the DT validation in place, let's convert the device
> tree bindings for that driver over to a YAML schema.
> 
> Cc: Johan Hovold <johan@kernel.org>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../bindings/gnss/u-blox,neo-6m.yaml          | 62 +++++++++++++++++++
>  .../devicetree/bindings/gnss/u-blox.txt       | 45 --------------
>  2 files changed, 62 insertions(+), 45 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml
>  delete mode 100644 Documentation/devicetree/bindings/gnss/u-blox.txt
> 
> diff --git a/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml b/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml
> new file mode 100644
> index 000000000000..45b886ae0f45
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml
> @@ -0,0 +1,62 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/gnss/u-blox,neo-6m.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: U-blox GNSS Receiver Device Tree Bindings
> +
> +maintainers:
> +  - Johan Hovold <johan@kernel.org>
> +
> +description: >
> +  The U-blox GNSS receivers can use UART, DDC (I2C), SPI and USB interfaces.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - u-blox,neo-6m
> +      - u-blox,neo-8
> +      - u-blox,neo-m8
> +
> +  reg:
> +    description: >
> +      The DDC Slave Address, SPI chip select address, the number of the USB hub
> +      port or the USB host-controller port to wich this device is attached,

s/wich/which/

> +      depending on the bus used. Required for the DDC, SPI or USB busses.
> +
> +  vcc-supply:
> +    description: >
> +      Main voltage regulator
> +
> +  timepulse-gpios:
> +    maxItems: 1
> +    description: >
> +      Time pulse GPIO
> +
> +  u-blox,extint-gpios:
> +    maxItems: 1
> +    description: >
> +      GPIO connected to the "external interrupt" input pin
> +  
> +  v-bckp-supply:
> +    description: >
> +      Backup voltage regulator
> +
> +  current-speed: true
> +
> +required:
> +  - compatible
> +  - vcc-supply
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    uart {

serial {

> +        gnss {
> +            compatible = "u-blox,neo-8";
> +            v-bckp-supply = <&gnss_v_bckp_reg>;
> +            vcc-supply = <&gnss_vcc_reg>;
> +        };
> +    };
> diff --git a/Documentation/devicetree/bindings/gnss/u-blox.txt b/Documentation/devicetree/bindings/gnss/u-blox.txt
> deleted file mode 100644
> index 7cdefd058fe0..000000000000
> --- a/Documentation/devicetree/bindings/gnss/u-blox.txt
> +++ /dev/null
> @@ -1,45 +0,0 @@
> -u-blox GNSS Receiver DT binding
> -
> -The u-blox GNSS receivers can use UART, DDC (I2C), SPI and USB interfaces.
> -
> -Please see Documentation/devicetree/bindings/gnss/gnss.txt for generic
> -properties.
> -
> -Required properties:
> -
> -- compatible	: Must be one of
> -
> -			"u-blox,neo-6m"
> -			"u-blox,neo-8"
> -			"u-blox,neo-m8"
> -
> -- vcc-supply	: Main voltage regulator
> -
> -Required properties (DDC):
> -- reg		: DDC (I2C) slave address
> -
> -Required properties (SPI):
> -- reg		: SPI chip select address
> -
> -Required properties (USB):
> -- reg		: Number of the USB hub port or the USB host-controller port
> -                  to which this device is attached
> -
> -Optional properties:
> -
> -- timepulse-gpios	: Time pulse GPIO
> -- u-blox,extint-gpios	: GPIO connected to the "external interrupt" input pin
> -- v-bckp-supply	: Backup voltage regulator
> -
> -Example:
> -
> -serial@1234 {
> -	compatible = "ns16550a";
> -
> -	gnss {
> -		compatible = "u-blox,neo-8";
> -
> -		v-bckp-supply = <&gnss_v_bckp_reg>;
> -		vcc-supply = <&gnss_vcc_reg>;
> -	};
> -};
> -- 
> 2.31.1
> 
> 
