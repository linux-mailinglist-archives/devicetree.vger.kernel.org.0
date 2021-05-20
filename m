Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6553138B8A4
	for <lists+devicetree@lfdr.de>; Thu, 20 May 2021 22:56:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229686AbhETU5n (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 May 2021 16:57:43 -0400
Received: from mail-oo1-f48.google.com ([209.85.161.48]:39513 "EHLO
        mail-oo1-f48.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229678AbhETU5n (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 May 2021 16:57:43 -0400
Received: by mail-oo1-f48.google.com with SMTP id f22-20020a4aeb160000b029021135f0f404so1042468ooj.6
        for <devicetree@vger.kernel.org>; Thu, 20 May 2021 13:56:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=l4I9W+oQyUB0gGtJVJXQlMSy/Pup9jiF/aG4pznxFn0=;
        b=tc4b0c9DD1FVaW5QxGeFkZfQVCotP4otPIlrA/SQA+HguwKSHGnIcx8BtPwIu3PBdj
         yiwcLycGjlA7S9RbMp2LmAOUrn0FtjIIJivHMDvoSogRy/QmCu7BGkKeAZXnm05D0IK3
         tPqAz2FgIUIIKdyhu/VbcYn5aVOpgOG8O5sX/P/8Cf6RzdRiiOCJ9mCB5oIs2y1sLgFi
         kOUZ9DZ+TpkTqaAfHeD1Bta9/39LKGaDtJ7DEWg/MidkW0CvRMHDPPJ78EUhE53qKAov
         M5qjhRUMfXkot9SoHdpDAsh/z2V8SW5/9j3A2g2atfbn1NlEMUabNuA0zlj4+jfDFv4x
         G/Nw==
X-Gm-Message-State: AOAM531u2aQ6DYWyHNjG8MYQ0E3ucFC1rxIEcqxMHTmdfRXrfO0eUbwT
        9QlpfeQbD3o4kGWCq1gRAg==
X-Google-Smtp-Source: ABdhPJyyMEBBBaasIm9Wg/4whAtyNFr7C3CLW9p5Ga2XlkhiT1kUH75c2bv8f8zbQmLoBfL/v4dEsQ==
X-Received: by 2002:a4a:b301:: with SMTP id m1mr3620456ooo.7.1621544180334;
        Thu, 20 May 2021 13:56:20 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id u13sm763117oop.40.2021.05.20.13.56.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 May 2021 13:56:19 -0700 (PDT)
Received: (nullmailer pid 1949863 invoked by uid 1000);
        Thu, 20 May 2021 20:56:18 -0000
Date:   Thu, 20 May 2021 15:56:18 -0500
From:   Rob Herring <robh@kernel.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Helmut Grohne <helmut.grohne@intenta.de>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <Tudor.Ambarus@microchip.com>,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Naga Sureshkumar Relli <nagasure@xilinx.com>,
        Michal Simek <monstr@monstr.eu>,
        Amit Kumar Mahapatra <akumarma@xilinx.com>,
        Srinivas Goud <sgoud@xilinx.com>,
        Siva Durga Prasad Paladugu <sivadur@xilinx.com>
Subject: Re: [PATCH v20 18/19] dt-bindings: mtd: pl353-nand: Describe this
 hardware controller
Message-ID: <20210520205618.GA1900624@robh.at.kernel.org>
References: <20210519182636.1110080-1-miquel.raynal@bootlin.com>
 <20210519182636.1110080-19-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210519182636.1110080-19-miquel.raynal@bootlin.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 19, 2021 at 08:26:35PM +0200, Miquel Raynal wrote:
> Add a yaml description of this NAND controller which is described as a
> subnode of the SMC bus.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  .../bindings/mtd/arm,pl353-nand-r2p1.yaml     | 45 +++++++++++++++++++
>  1 file changed, 45 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mtd/arm,pl353-nand-r2p1.yaml
> 
> diff --git a/Documentation/devicetree/bindings/mtd/arm,pl353-nand-r2p1.yaml b/Documentation/devicetree/bindings/mtd/arm,pl353-nand-r2p1.yaml
> new file mode 100644
> index 000000000000..609726ed72de
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mtd/arm,pl353-nand-r2p1.yaml
> @@ -0,0 +1,45 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mtd/arm,pl353-nand-r2p1.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: PL353 NAND Controller device tree bindings
> +
> +allOf:
> +  - $ref: "nand-controller.yaml"
> +
> +maintainers:
> +  - Miquel Raynal <miquel.raynal@bootlin.com>
> +  - Naga Sureshkumar Relli <naga.sureshkumar.relli@xilinx.com>
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - arm,pl353-nand-r2p1
> +
> +  reg:
> +    items:
> +      - items:
> +        - description: CS with regard to the parent ranges property
> +        - description: Offset of the memory region requested by the device
> +        - description: Length of the memory region requested by the device
> +
> +  "#address-cells": true
> +  "#size-cells": true
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: true

unevaluatedProperties: false

> +
> +examples:
> +  - |
> +    nand0: nand-controller@0,0 {
> +      compatible = "arm,pl353-nand-r2p1";
> +      reg = <0 0 0x1000000>;
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +    };
> -- 
> 2.27.0
> 
