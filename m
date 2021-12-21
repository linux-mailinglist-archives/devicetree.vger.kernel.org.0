Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6B6BA47C450
	for <lists+devicetree@lfdr.de>; Tue, 21 Dec 2021 17:59:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232923AbhLUQ74 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Dec 2021 11:59:56 -0500
Received: from mail-qv1-f51.google.com ([209.85.219.51]:37473 "EHLO
        mail-qv1-f51.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232563AbhLUQ74 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Dec 2021 11:59:56 -0500
Received: by mail-qv1-f51.google.com with SMTP id fo11so13022202qvb.4
        for <devicetree@vger.kernel.org>; Tue, 21 Dec 2021 08:59:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=d1I46WgDGRouKIKrs7F6Yd4w6Er6grT4e9hEG9b/EJM=;
        b=couWJ8WIb/KP95YNXg0EkbN/hBSkBa0M01O+Av5xpqY6KUApbjmzsjfNRiu1qIoBJZ
         Jte1Fwku0D2eZSEogxzgyXlTGcLIUZRqdWVjlpeyhITuC+RxnSut3pK627z048l7Ki1H
         DwAxmpLPAN1/m254fOhuiS3J+lGdArCI1Q4AfWJaPkwu9hDg0fQUMndgPoBby9UoZ7kk
         Ze6H0OQxQe1UKz71SK4/CTShzrQsO1E3JXXQuP+IwCPh84or0hwOm1T1JdJO3Myoxfew
         XwzHV9YcTGz+iz6xxmclrYAoqTqInrnMmD9IK5FGh9gwa5wf42PH6Q9/OIv8cTFXAdps
         ZL4Q==
X-Gm-Message-State: AOAM531XQSf6BNevLVyAPH2nB5yx3ZMDtHgyFuZxI1izPsaigDby437I
        KziHiw+4L90njpoGXaKdPg==
X-Google-Smtp-Source: ABdhPJxPQL3aRuJfE5/il6Ej8ilSZkmkLHHfGLS3HlyAdqwvaTvq/EEN3H9xI4uWNxEjf4k+QKHEXw==
X-Received: by 2002:ad4:5f4c:: with SMTP id p12mr3210178qvg.11.1640105995500;
        Tue, 21 Dec 2021 08:59:55 -0800 (PST)
Received: from robh.at.kernel.org ([24.55.105.145])
        by smtp.gmail.com with ESMTPSA id c1sm17260709qte.79.2021.12.21.08.59.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Dec 2021 08:59:54 -0800 (PST)
Received: (nullmailer pid 1449857 invoked by uid 1000);
        Tue, 21 Dec 2021 16:59:52 -0000
Date:   Tue, 21 Dec 2021 12:59:52 -0400
From:   Rob Herring <robh@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: imx8mq-usb-phy: Add imx8mp
 specific flags
Message-ID: <YcIICIKjbgEn0I+P@robh.at.kernel.org>
References: <20211216160541.544974-1-alexander.stein@ew.tq-group.com>
 <20211216160541.544974-2-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211216160541.544974-2-alexander.stein@ew.tq-group.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Dec 16, 2021 at 05:05:39PM +0100, Alexander Stein wrote:
> This adds bindings for features only available on imx8mp. They allow
> setting polarity of PWR and OC as well as disabling port power control.
> Also permanently atteched can be annotated as well.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
> Adding properties specific to one compatible globally and disabling them on
> other compatibles is the way to go?
> 
> Are there any best practices on the usage of '-' and/or '_' in property names?

Yes, don't use '_'.

> 
>  .../bindings/phy/fsl,imx8mq-usb-phy.yaml      | 52 ++++++++++++++++++-
>  1 file changed, 51 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml b/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
> index 2936f3510a6a..1d28b7d1c413 100644
> --- a/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
> @@ -16,7 +16,8 @@ properties:
>        - fsl,imx8mp-usb-phy
>  
>    reg:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 2
>  
>    "#phy-cells":
>      const: 0
> @@ -32,6 +33,28 @@ properties:
>      description:
>        A phandle to the regulator for USB VBUS.
>  
> +  fsl,permanently-attached:
> +    type: boolean
> +    description:
> +      Indicates if the device atached to a downstream port is
> +      permanently attached.

Wouldn't just describing the downstream device be enough to indicate 
this? Though that is in the host controller rather than the phy.

> +
> +  fsl,disable-port-power-control:
> +    type: boolean
> +    description:
> +      Indicates whether the host controller implementation includes port
> +      power control. Defines Bit 3 in capability register (HCCPARAMS).
> +
> +  fsl,over-current-active-low:
> +    type: boolean
> +    description:
> +      Over current signal polarity is active low.
> +
> +  fsl,power-active-low:
> +    type: boolean
> +    description:
> +      Power pad (PWR) polarity is active low.
> +
>  required:
>    - compatible
>    - reg
> @@ -39,6 +62,33 @@ required:
>    - clocks
>    - clock-names
>  
> +if:
> +  properties:
> +    compatible:
> +      contains:
> +        enum:
> +          - fsl,imx8mp-usb-phy
> +
> +then:
> +  properties:
> +    reg:
> +      minItems: 2
> +      maxItems: 2
> +      items:
> +        - description: PHY register base address
> +        - description: Glue layer base address

Move 'items' to the top level and then here you only need 'minItems: 2'.

> +
> +else:
> +  properties:
> +    reg:
> +      maxItems: 1
> +      items:
> +        - description: PHY register base address

And just 'maxItems' here.

> +    fsl,permanently-attached: false
> +    fsl,disable-port-power-control: false
> +    fsl,over-current-active-low: false
> +    fsl,power-active-low: false
> +
>  additionalProperties: false
>  
>  examples:
> -- 
> 2.25.1
> 
> 
