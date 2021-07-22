Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 91FF63D1BC3
	for <lists+devicetree@lfdr.de>; Thu, 22 Jul 2021 04:29:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229932AbhGVBtP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 21:49:15 -0400
Received: from mail-io1-f50.google.com ([209.85.166.50]:35821 "EHLO
        mail-io1-f50.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229916AbhGVBtP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jul 2021 21:49:15 -0400
Received: by mail-io1-f50.google.com with SMTP id d9so4670056ioo.2
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 19:29:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Vbm9yduWjMJY5Qu5YDirMHSu1+ek7W9mcXgmGCm0CPU=;
        b=rEuA3tJnHU5f0FsI2tnMVRmFKtDmlpSJDnk7L5xuoZ2Kw6Oby6Een15Nn5+yNgtfn/
         99CxJj8nwvGlZmghUvMfLjQ1Dchn64obVWyzmba0kweVC/Pr9gGgEg13MxkHrDTuJsTh
         QyhCHDQi5sq1YbO9P4EWwWtSpHnpcU3rhO7gph+w4medIhxZZ8mglx430X3YXAN53e3n
         WffsoLTJddR7VY4O6kaHSqQ+RUxBjuD6aeIGIc4eH2QR35k1EtsSutmsmIK7OJjoVPqs
         SWqHjtjIKBYtcoYuvckZFFXsxysPGGCr0K12KZ8dQLcqWLV7bFZ3ux/aDO3t77Riv42r
         k7sA==
X-Gm-Message-State: AOAM530tyE/WBfvKUu1a8sOEbODtTAz+t1uu0RU2lQQLthkG5u6KTr9F
        tyO5BDkYTWas+/VV9w5DFA==
X-Google-Smtp-Source: ABdhPJzKaG8Ei8yk6jblQllxcE3R6XvpisIpEnt3aFcCAx4LPObvRjHA51fMIi6L9FSCHTmaPWwQUA==
X-Received: by 2002:a02:aa15:: with SMTP id r21mr10880858jam.37.1626920990785;
        Wed, 21 Jul 2021 19:29:50 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id b8sm13978039ilh.74.2021.07.21.19.29.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jul 2021 19:29:50 -0700 (PDT)
Received: (nullmailer pid 3172014 invoked by uid 1000);
        Thu, 22 Jul 2021 02:29:47 -0000
Date:   Wed, 21 Jul 2021 20:29:47 -0600
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, Frank Rowand <frowand.list@gmail.com>,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        dri-devel@lists.freedesktop.org,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH 10/54] dt-bindings: display: panel-lvds: Document panel
 compatibles
Message-ID: <20210722022947.GA3168293@robh.at.kernel.org>
References: <20210721140424.725744-1-maxime@cerno.tech>
 <20210721140424.725744-11-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210721140424.725744-11-maxime@cerno.tech>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 21, 2021 at 04:03:40PM +0200, Maxime Ripard wrote:
> The binding mentions that all the drivers using that driver must use a
> vendor-specific compatible but never enforces it, nor documents the
> vendor-specific compatibles.
> 
> Let's make we document all of them, and that the binding will create an
> error if we add one that isn't.
> 
> Cc: dri-devel@lists.freedesktop.org
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../bindings/display/panel/lvds.yaml           | 18 ++++++++++++------
>  1 file changed, 12 insertions(+), 6 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/lvds.yaml b/Documentation/devicetree/bindings/display/panel/lvds.yaml
> index 49460c9dceea..d1513111eb48 100644
> --- a/Documentation/devicetree/bindings/display/panel/lvds.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/lvds.yaml
> @@ -31,12 +31,18 @@ allOf:
>  
>  properties:
>    compatible:
> -    contains:
> -      const: panel-lvds
> -    description:
> -      Shall contain "panel-lvds" in addition to a mandatory panel-specific
> -      compatible string defined in individual panel bindings. The "panel-lvds"
> -      value shall never be used on its own.
> +    items:
> +      - enum:
> +          - advantech,idk-1110wr

At least this one is documented elsewhere. You can add 'minItems: 2' if 
you want to just enforce having 2 compatibles. Or do:

items:
  - {}
  - const: panel-lvds

Which also enforces the order.

> +          - advantech,idk-2121wr
> +          - auo,b101ew05
> +          - innolux,ee101ia-01d
> +          - mitsubishi,aa104xd12
> +          - mitsubishi,aa121td01
> +          - sgd,gktw70sdae4se
> +          - sharp,lq150x1lg11
> +          - tbs,a711-panel
> +      - const: panel-lvds
>  
>    data-mapping:
>      enum:
> -- 
> 2.31.1
> 
> 
