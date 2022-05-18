Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B704152AF6E
	for <lists+devicetree@lfdr.de>; Wed, 18 May 2022 02:55:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232955AbiERAzj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 May 2022 20:55:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232502AbiERAzi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 May 2022 20:55:38 -0400
Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com [209.85.161.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B1F053E25
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 17:55:38 -0700 (PDT)
Received: by mail-oo1-f53.google.com with SMTP id q7-20020a4adc47000000b0035f4d798376so137067oov.6
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 17:55:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=VYditCrlpDU+v6UE6ybgoJgoFoF//YCll44qfhtcswA=;
        b=fW01kcFHff88ei9loFocMFuQ0GPcHmmmOsdOWhKXDGU7WWO+KRtpNImduURt3FPv3B
         NWiB+P2qt7ar8Sp57ZiVQYzJlJdRZlFk6mnrQ6dMt36GutkVlYzIkKiw+ylkInD3836F
         ddOOq2iv2yoDI4wzSx4N2iPWCJw3AqZT5ZZ4QCEu7KVNh25GIUaYsBNkGiSpyo/ZtKg4
         3p1CzQp+/aiO9ma/M+3PB+qaDqHL3CRuykcOnxbL2wZv5UdWayR+Zu0TBj+qGkrfEYd3
         74r3v+/9iGFt6YiRpNJJzIpG3mj/e5f6xgmEqE12wehdQia8Avmw1YkT8eG7AB+d2L2K
         okVg==
X-Gm-Message-State: AOAM530EdVZDmPc1bLcVC+cUbOJ7JjlHvE8KT9e0Sw9maFYc6/mC3Cms
        nghovnQQ+IZkGjY5mr9GbQ==
X-Google-Smtp-Source: ABdhPJyGOZ4hC/KJGPmAFWSGz1xrAGsSF3hn02Kn1x21JXuyhaawZ6MxDmVkgVhO5BpaquXTknWxOg==
X-Received: by 2002:a4a:430b:0:b0:35e:a582:5ba1 with SMTP id k11-20020a4a430b000000b0035ea5825ba1mr9128107ooj.75.1652835337382;
        Tue, 17 May 2022 17:55:37 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id o2-20020a4a4402000000b0035eb4e5a6b6sm408264ooa.12.2022.05.17.17.55.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 May 2022 17:55:36 -0700 (PDT)
Received: (nullmailer pid 1978708 invoked by uid 1000);
        Wed, 18 May 2022 00:55:35 -0000
Date:   Tue, 17 May 2022 19:55:35 -0500
From:   Rob Herring <robh@kernel.org>
To:     Stefan Wahren <stefan.wahren@i2se.com>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Lee Jones <lee.jones@linaro.org>,
        Peter Robinson <pbrobinson@gmail.com>,
        Melissa Wen <melissa.srw@gmail.com>,
        Phil Elwell <phil@raspberrypi.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 03/11] dt-bindings: soc: bcm: bcm2835-pm: Add support for
 bcm2711
Message-ID: <20220518005535.GA1974187-robh@kernel.org>
References: <20220515202032.3046-1-stefan.wahren@i2se.com>
 <20220515202032.3046-4-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220515202032.3046-4-stefan.wahren@i2se.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, May 15, 2022 at 10:20:24PM +0200, Stefan Wahren wrote:
> Add a new compatible string for BCM2711 and the option to provide a
> third reg property for the board's new RPiVid ASB.
> 
> In BCM2711 the new RPiVid ASB took over V3D, which is our only consumer
> of this driver so far. The old ASB is still be present with ISP and H264
> bits but no V3D.
> 
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> ---
>  .../bindings/soc/bcm/brcm,bcm2835-pm.yaml     | 19 +++++++++++++------
>  1 file changed, 13 insertions(+), 6 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml b/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml
> index 883ab7cb96e9..e13ce98d1753 100644
> --- a/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml
> +++ b/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml
> @@ -19,17 +19,24 @@ allOf:
>  properties:
>    compatible:
>      items:
> -      - const: brcm,bcm2835-pm
> +      - enum:
> +          - brcm,bcm2835-pm
> +          - brcm,bcm2711-pm
>        - const: brcm,bcm2835-pm-wdt
>  
>    reg:
> -    minItems: 2
> -    maxItems: 2
> +    minItems: 1
> +    maxItems: 3
>  
>    reg-names:
> -    items:
> -      - const: pm
> -      - const: asb
> +    oneOf:
> +      - items:
> +          - const: pm
> +          - const: asb
> +      - items:
> +          - const: pm
> +          - const: asb
> +          - const: rpivid_asb

This can be simplified to:

minItems: 2
items:
  - const: pm
  - const: asb
  - const: rpivid_asb

>  
>    "#power-domain-cells":
>      const: 1
> -- 
> 2.25.1
> 
> 
