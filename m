Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D9D241E8B33
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2020 00:21:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725913AbgE2WVG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 May 2020 18:21:06 -0400
Received: from mail-io1-f67.google.com ([209.85.166.67]:41174 "EHLO
        mail-io1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725808AbgE2WVF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 May 2020 18:21:05 -0400
Received: by mail-io1-f67.google.com with SMTP id o5so994512iow.8
        for <devicetree@vger.kernel.org>; Fri, 29 May 2020 15:21:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=EmDTON6AQ2i8MRYfDTHNbj+AcDtbUpQQQwspW9k3zWI=;
        b=srL7n5/eM/u3A5uU4x9Yz0/1ZIusM3Sd4hrp/InFxi9jl8tBvktlCwH/8+I4S8DOM0
         GTc4piqGOdNt66IL8vf/DYBGnksVUWK884aOFOqoO53T+c8gj5WqkU2zqZm7B3DiVagh
         K9uLjIhggTbbuYjloN7QYj3wjbEIdveKtTPhyTdc357IuTDRzaKrqQ1dvZu+M+EptSKd
         ap0v6LN8NvUB5vIS2Ld6DP6GKHcE0zQdJZV16TN5uOfeNFCNFo9qnpDcWUxYTRzEDGkB
         sAEuZF6AXOd2VD66xqKVVQEUqO4iJIoR9RNnr+HIltD1Wly+MUzNy3WvViYFBBu4gDO3
         /ykg==
X-Gm-Message-State: AOAM530FGc7ExowOs5yclab0nHlHFcbmRiMHnlGOq942hDRj/BSHCXo+
        Lg0ukq/nixpRhoGdm5LsmA==
X-Google-Smtp-Source: ABdhPJzbrH0WZ6IiAmNJ+kmxBIzSREc7hfngjeQSiTKhre/7z6U9I4bpx931rvICTL8zJgcvYPD1cQ==
X-Received: by 2002:a02:6543:: with SMTP id u64mr9653378jab.26.1590790864601;
        Fri, 29 May 2020 15:21:04 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
        by smtp.gmail.com with ESMTPSA id v13sm5593815ili.15.2020.05.29.15.21.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 May 2020 15:21:03 -0700 (PDT)
Received: (nullmailer pid 3092973 invoked by uid 1000);
        Fri, 29 May 2020 22:21:02 -0000
Date:   Fri, 29 May 2020 16:21:02 -0600
From:   Rob Herring <robh@kernel.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <Tudor.Ambarus@microchip.com>,
        linux-mtd@lists.infradead.org, Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org,
        Boris Brezillon <boris.brezillon@collabora.com>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Paul Cercueil <paul@crapouillou.net>,
        Chuanhong Guo <gch981213@gmail.com>,
        Weijie Gao <weijie.gao@mediatek.com>,
        linux-arm-kernel@lists.infradead.org,
        Mason Yang <masonccyang@mxic.com.tw>,
        Julien Su <juliensu@mxic.com.tw>
Subject: Re: [PATCH v7 01/20] dt-bindings: mtd: Document nand-ecc-placement
Message-ID: <20200529222102.GA3089633@bogus>
References: <20200529002517.3546-1-miquel.raynal@bootlin.com>
 <20200529002517.3546-2-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200529002517.3546-2-miquel.raynal@bootlin.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 29, 2020 at 02:24:58AM +0200, Miquel Raynal wrote:
> This optional property defines where the ECC bytes are expected to be
> stored. No value defaults to an unknown location, while these
> locations can be explicitly set to OOB or interleaved depending if
> the ECC bytes are entirely stored in the OOB area or mixed with
> regular data in the main area (also sometimes referred as
> "syndrome").
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
> ---
>  .../devicetree/bindings/mtd/nand-controller.yaml       | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mtd/nand-controller.yaml b/Documentation/devicetree/bindings/mtd/nand-controller.yaml
> index d261b7096c69..4a0798247d2d 100644
> --- a/Documentation/devicetree/bindings/mtd/nand-controller.yaml
> +++ b/Documentation/devicetree/bindings/mtd/nand-controller.yaml
> @@ -56,6 +56,16 @@ patternProperties:
>            (Linux will handle the calculations). soft_bch is deprecated
>            and should be replaced by soft and nand-ecc-algo.
>  
> +      nand-ecc-placement:
> +        allOf:

You can drop using allOf now, but it still works as is.

Acked-by: Rob Herring <robh@kernel.org>

> +          - $ref: /schemas/types.yaml#/definitions/string
> +          - enum: [ oob, interleaved ]
> +        description:
> +          Location of the ECC bytes. This location is unknown by default
> +          but can be explicitly set to "oob", if all ECC bytes are
> +          known to be stored in the OOB area, or "interleaved" if ECC
> +          bytes will be interleaved with regular data in the main area.
> +
>        nand-ecc-algo:
>          allOf:
>            - $ref: /schemas/types.yaml#/definitions/string
> -- 
> 2.20.1
> 
