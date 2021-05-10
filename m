Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8464837948F
	for <lists+devicetree@lfdr.de>; Mon, 10 May 2021 18:51:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231789AbhEJQwc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 May 2021 12:52:32 -0400
Received: from mail-oo1-f54.google.com ([209.85.161.54]:39870 "EHLO
        mail-oo1-f54.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229566AbhEJQwc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 May 2021 12:52:32 -0400
Received: by mail-oo1-f54.google.com with SMTP id t17-20020a4a3e110000b02901fab2f46a48so3606740oot.6
        for <devicetree@vger.kernel.org>; Mon, 10 May 2021 09:51:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=P4Gfvc7WvRaDyytGeBudSFp7SANRJPBrI8jAbvrebsY=;
        b=JYdPGKtpPNI/e3Opa0uEUumCWQVot9c77lkG6gs+Sff830lvqNOFSXNDBV1XUMv6PC
         xa8LIJRuP5fv6cGC+6RN0QCamdgOy6DHKHb+jEANzHAFfXK1ajKRVI/bFDBOVBqFTp3Q
         ulFiH1RBwchin5S2RYoMz1nMj4v8J7Y13xjBEFPJUTTFdQIhiZKlfILrBVZjLr+3nrAT
         qxZbpW2w9mWwo2MWDZty1/WqWuqicD3WcBhKEZ0/nbG4oa37qf3UbElW5yGgbX8QQqnO
         HHuCUJToddaeDFfFAqCHuZ1FE/zkixBe7irercV6lb/J3Pxaheru5p+gxOBSF7xVWmwj
         SmHA==
X-Gm-Message-State: AOAM533PVhlOPHuyP5KTWxT3gVxsVq1Lgovu1bvS8xPAa/x2eS8juMtl
        aI2Qp/n8bO2PuUPq4o4tfA==
X-Google-Smtp-Source: ABdhPJxKk/SA1ZPlD9CoXDK1oPSlU/HH61EzZIf0WmYXC+5w+QzKIgk2PqL2gT+rtg6jm9Bvo/+Hqw==
X-Received: by 2002:a4a:d4c7:: with SMTP id r7mr4290878oos.85.1620665487369;
        Mon, 10 May 2021 09:51:27 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id 88sm3208519ott.51.2021.05.10.09.51.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 09:51:26 -0700 (PDT)
Received: (nullmailer pid 268705 invoked by uid 1000);
        Mon, 10 May 2021 16:51:25 -0000
Date:   Mon, 10 May 2021 11:51:25 -0500
From:   Rob Herring <robh@kernel.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     devicetree@vger.kernel.org, Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <Tudor.Ambarus@microchip.com>,
        linux-mtd@lists.infradead.org,
        Naga Sureshkumar Relli <nagasure@xilinx.com>,
        Michal Simek <monstr@monstr.eu>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v2 1/5] dt-binding: mtd: nand: Document gpio-cs property
Message-ID: <20210510165125.GA261277@robh.at.kernel.org>
References: <20210510104051.9701-1-miquel.raynal@bootlin.com>
 <20210510104051.9701-2-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210510104051.9701-2-miquel.raynal@bootlin.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 10, 2021 at 12:40:47PM +0200, Miquel Raynal wrote:
> To reach higher capacities, arrays of chips are now pretty common.
> Unfortunately, most of the controllers have been designed a decade ago
> and did not all anticipate the need for several chip-selects. The new
> cs-gpios property allows to workaround this limitation by adding as many
> GPIO chip-select as needed.

Subject and example have wrong property name.

> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  .../devicetree/bindings/mtd/nand-controller.yaml | 16 +++++++++++++++-
>  1 file changed, 15 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/mtd/nand-controller.yaml b/Documentation/devicetree/bindings/mtd/nand-controller.yaml
> index 678b39952502..70a400e385b2 100644
> --- a/Documentation/devicetree/bindings/mtd/nand-controller.yaml
> +++ b/Documentation/devicetree/bindings/mtd/nand-controller.yaml
> @@ -38,6 +38,15 @@ properties:
>  
>    ranges: true
>  
> +  cs-gpios:
> +    description:
> +      Array of chip-select available to the controller. The first
> +      entries are a 1:1 mapping of the available chip-select on the
> +      NAND controller (even if they are not used). As many additional
> +      chip-select as needed may follow and should be phandles of GPIO
> +      lines. 'reg' entries of the NAND chip subnodes become indexes of
> +      this array when this property is present.

Can we put some 'maxItems' value here. I want to make the meta-schema 
enforce that. I realize there's not really one here, but a 'should be 
enough' value is fine. We can bump it up if needed.

> +
>  patternProperties:
>    "^nand@[a-f0-9]$":
>      type: object
> @@ -164,14 +173,19 @@ examples:
>      nand-controller {
>        #address-cells = <1>;
>        #size-cells = <0>;
> +      gpio-cs = <0>, <&gpioA 1>; /* A single native CS is available */
>  
>        /* controller specific properties */
>  
>        nand@0 {
> -        reg = <0>;
> +        reg = <0>; /* Native CS */
>          nand-use-soft-ecc-engine;
>          nand-ecc-algo = "bch";
>  
>          /* controller specific properties */
>        };
> +
> +      nand@1 {
> +        reg = <1>; /* GPIO CS */
> +      };
>      };
> -- 
> 2.27.0
> 
