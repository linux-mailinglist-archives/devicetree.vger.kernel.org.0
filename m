Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 23CFC5807D1
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 00:52:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237580AbiGYWwl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jul 2022 18:52:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231220AbiGYWwl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jul 2022 18:52:41 -0400
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 679081EC69
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 15:52:40 -0700 (PDT)
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-10e3852b463so26249fac.3
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 15:52:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=5xP7lcvC698mR+A0NLXF7lWnUopE6m0G7jU4pCDJyEM=;
        b=pEUH5Ck251978tQw6ZMNABEEYh8p0hCvsRTp3L62EANbAPQQizy9oBSuOdCzbYm33E
         WK9IeHghUMdRJYylcetKicysS/shyflQDRayTlw2P0VzCrwc5teDHTdqf1tyZXEokLIb
         JLCulw0C1UD8nuQzhzYlwD61M+1COzFIAMe0r0tGsIPocmRQGGtSDkWJOeiSTycEJ63v
         OYLwOzn/nB3qHqylCrkgKwHNKaRpe4vuza1kvQ2fcwwL73F/Xg70TCFfBdoDkETs9iEe
         4V263KCChOCmrxuuCxV5IPpGx4yBqarWYuUU+nsxCpopELvqlvNlobN/4hgJSkHjj1rU
         XL9Q==
X-Gm-Message-State: AJIora/T2gASlVywZQtd7cTI7ue0bLI9BDZy6hubslM1n0Q3u6sz4+Og
        PIH+tSg5sDJEBOeN5CZaWw==
X-Google-Smtp-Source: AGRyM1s0NatVRNWiGNqKWhU9xiPExQLSZ+92xOwECHLDDRynEsSes9A+JiW9Xk3glYiiY3SqQ6fJww==
X-Received: by 2002:a05:6870:b40c:b0:10b:8a3c:b13d with SMTP id x12-20020a056870b40c00b0010b8a3cb13dmr7965560oap.108.1658789559675;
        Mon, 25 Jul 2022 15:52:39 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id u19-20020a9d4d93000000b0061c9ccb051bsm5494405otk.37.2022.07.25.15.52.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Jul 2022 15:52:39 -0700 (PDT)
Received: (nullmailer pid 2898062 invoked by uid 1000);
        Mon, 25 Jul 2022 22:52:37 -0000
Date:   Mon, 25 Jul 2022 16:52:37 -0600
From:   Rob Herring <robh@kernel.org>
To:     Raphael-Xu <13691752556@139.com>
Cc:     alsa-devel@alsa-project.org, raphael-xu@ti.com,
        shenghao-ding@ti.com, broonie@kernel.org,
        devicetree@vger.kernel.org, kevin-lu@ti.com
Subject: Re: [PATCH v8] ASoc: dt-bindings: tas27xx: revise tas27xx format
Message-ID: <20220725225237.GA2893298-robh@kernel.org>
References: <20220722105512.191-1-13691752556@139.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220722105512.191-1-13691752556@139.com>
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jul 22, 2022 at 06:55:12PM +0800, Raphael-Xu wrote:
> revise the format

Complete sentences.

And this is not v8. Each new change is v1.

> 
> Signed-off-by: Raphael-Xu <13691752556@139.com>
> ---
>  .../devicetree/bindings/sound/tas27xx.yaml       | 16 +++++++++++-----
>  1 file changed, 11 insertions(+), 5 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/sound/tas27xx.yaml b/Documentation/devicetree/bindings/sound/tas27xx.yaml
> index 66a0df8850ea..573652577462 100644
> --- a/Documentation/devicetree/bindings/sound/tas27xx.yaml
> +++ b/Documentation/devicetree/bindings/sound/tas27xx.yaml
> @@ -8,7 +8,7 @@ $schema: "http://devicetree.org/meta-schemas/core.yaml#"
>  title: Texas Instruments TAS2764/TAS2780 Smart PA
>  
>  maintainers:
> -  - Shenghao Ding <shenghao-ding@ti.com>
> +  - Raphael Xu <raphael-xu@ti.com>
>  
>  description: |
>    The TAS2764/TAS2780 is a mono, digital input Class-D audio amplifier
> @@ -23,17 +23,19 @@ properties:
>        - ti,tas2780
>  
>    reg:
> -    maxItems: 1
>      description: |
> -       I2C address of the device can be between 0x38 to 0x45.

0x40-0x45 is no longer valid?

> +       I2C address of the device can be between 0x38 to 0x3f.
> +    minimum: 0x38
> +    maximum: 0x3f
>  

>    reset-gpios:
> -    maxItems: 1
>      description: GPIO used to reset the device.
> +    maxItems: 1

Unnecessary change.

>  
>    shutdown-gpios:
> +    description: |

Don't need '|' if no formatting.

> +       GPIO used to control the state of the device.Only for TAS2764.

Space needed after period.

>      maxItems: 1
> -    description: GPIO used to control the state of the device.
>  
>    interrupts:
>      maxItems: 1
> @@ -41,10 +43,14 @@ properties:
>    ti,imon-slot-no:
>      $ref: /schemas/types.yaml#/definitions/uint32
>      description: TDM TX current sense time slot.
> +    minimum: 0
> +    maximum: 3
>  
>    ti,vmon-slot-no:
>      $ref: /schemas/types.yaml#/definitions/uint32
>      description: TDM TX voltage sense time slot.
> +    minimum: 0
> +    maximum: 3
>  
>    '#sound-dai-cells':
>      const: 1
> -- 
> 2.35.1
> 
> 
> 
