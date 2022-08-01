Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 458F7586E26
	for <lists+devicetree@lfdr.de>; Mon,  1 Aug 2022 17:58:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231548AbiHAP6I (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Aug 2022 11:58:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57046 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231325AbiHAP6H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Aug 2022 11:58:07 -0400
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com [209.85.166.171])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E53C3337F
        for <devicetree@vger.kernel.org>; Mon,  1 Aug 2022 08:58:06 -0700 (PDT)
Received: by mail-il1-f171.google.com with SMTP id j20so4284149ila.6
        for <devicetree@vger.kernel.org>; Mon, 01 Aug 2022 08:58:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=hz7nXHEq1F85KPRnekV1M2XaUBYmmbucYnVIbXgpzws=;
        b=bzWBZKXUjlCVotWT8MhR5LREwpnL+QjHln7Cl7AzKawmxBLe6tWcQ0dkF6Ri1m5ORQ
         mXuPLlZNuYlOhUpvc6SbRZ3pwGOnl0BpON0DerY6lyFRhtK0I/o+BYL1uxedW+9r4EEC
         U1/Fnp0w/uzAyYzGqJk3Qyjuw1JtPv4SAdvkdhiNlczAJh2vc+fTWAWM77mZzO4WQIlX
         qXIiapveZhiRllpl8QrFollliMg6UkJB+yhvHKp73zWjrLS7wxg5/pd+2H81klzK9gfZ
         oJvG49xoHUfYeYvfqOldT3KVsB0GHm2ZoHzLHuQNHQudsJAtWN3u1MT88xtmFzCynqBs
         g4Uw==
X-Gm-Message-State: AJIora+7dxSwTKoSaGoSDLFjGpW3aXmQQ49EMs8FY7Iqy7kiOhqc/ajx
        kHsv3XVSkwaxeUZRwYO0DK37LTmwqA==
X-Google-Smtp-Source: AGRyM1tj25NZhfphWqwROi3f80JZ6aZpzFI1C0At4lGs4DKytgAiBXKMF13d8KsBa/cQmcDnU9zAlw==
X-Received: by 2002:a05:6e02:1aab:b0:2dd:1c2e:c495 with SMTP id l11-20020a056e021aab00b002dd1c2ec495mr6566304ilv.166.1659369485607;
        Mon, 01 Aug 2022 08:58:05 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id r15-20020a92d44f000000b002de8a37ceccsm1833683ilm.70.2022.08.01.08.58.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Aug 2022 08:58:05 -0700 (PDT)
Received: (nullmailer pid 1091762 invoked by uid 1000);
        Mon, 01 Aug 2022 15:58:03 -0000
Date:   Mon, 1 Aug 2022 09:58:03 -0600
From:   Rob Herring <robh@kernel.org>
To:     Raphael-Xu <13691752556@139.com>
Cc:     alsa-devel@alsa-project.org, raphael-xu@ti.com,
        shenghao-ding@ti.com, broonie@kernel.org,
        devicetree@vger.kernel.org, kevin-lu@ti.com
Subject: Re: [PATCH v1] ASoc: dt-bindings: tas27xx: update maximum I2C
 address and revise the format
Message-ID: <20220801155803.GA1090009-robh@kernel.org>
References: <20220728035610.158-1-13691752556@139.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220728035610.158-1-13691752556@139.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 28, 2022 at 11:56:10AM +0800, Raphael-Xu wrote:
> 1.use correct maximum I2C address 2.revise the format

Same comments from v8 apply.

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
> +       I2C address of the device can be between 0x38 to 0x3f.
> +    minimum: 0x38
> +    maximum: 0x3f
>  
>    reset-gpios:
> -    maxItems: 1
>      description: GPIO used to reset the device.
> +    maxItems: 1
>  
>    shutdown-gpios:
> +    description: |
> +       GPIO used to control the state of the device.Only for TAS2764.
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
