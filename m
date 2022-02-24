Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0EAD94C38CE
	for <lists+devicetree@lfdr.de>; Thu, 24 Feb 2022 23:31:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232184AbiBXWcQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Feb 2022 17:32:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231328AbiBXWcP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Feb 2022 17:32:15 -0500
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DCF2820F4B
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 14:31:44 -0800 (PST)
Received: by mail-ot1-f53.google.com with SMTP id k9-20020a056830242900b005ad25f8ebfdso2385172ots.7
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 14:31:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=wXlQzhyPFC/AGCJwViirLuviXa5NBx6l96k7Lfve6aw=;
        b=XTKP6iMtyXM1+0EVgsnEowyAWukDg7GjLUDzBV3CsuexXBkzc9D6P/9Imz2obHIPA8
         OU/KVljNQA/t9rokdyS4DcaBBhYbn67+zBzyb3/n7dsY8glSH0rVQDAGN8zdbklesx/n
         /w9IAnfosoiuFR0i3Us1DyNcqMXGNfTbX6YpGZXLA3hsNbFLHLnXlXkvNWK8HrMGHk3L
         ABEwS3cXyuXJ/62wqj8DYzzZr2NZmhhkYrYmL8yiRjc8CbYdpM6+O8I+xF96OXjBAfPD
         JEPPPqGnwkA9+4BAcjsz5YPUCUhojOVTlZpoAAE+8O27wOWqJEU0YdTGzUoZoJc/m8Z1
         At1Q==
X-Gm-Message-State: AOAM530d38IeG+cRhcxizJTg6ip7KfiqvQd7o2f1hAw5c6hkr6hsDjhf
        C3CSP+YYtaNU+7SrDxs8BDTzrm/j4g==
X-Google-Smtp-Source: ABdhPJwjqtbyor+Up0XtlkhJU1p4iVqSjKcHr80cgFwHgoQTxOtO8tJ8d1fKql+p29EtRJCFdDlzBA==
X-Received: by 2002:a05:6830:4095:b0:5af:140b:7797 with SMTP id x21-20020a056830409500b005af140b7797mr1783149ott.17.1645741904153;
        Thu, 24 Feb 2022 14:31:44 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id 16-20020a9d0490000000b005ad3c83e927sm290339otm.60.2022.02.24.14.31.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Feb 2022 14:31:43 -0800 (PST)
Received: (nullmailer pid 3710149 invoked by uid 1000);
        Thu, 24 Feb 2022 22:31:42 -0000
Date:   Thu, 24 Feb 2022 16:31:42 -0600
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     devicetree@vger.kernel.org,
        Jacek Anaszewski <jacek.anaszewski@gmail.com>,
        Pavel Machek <pavel@ucw.cz>
Subject: Re: [PATCH v2] dt-bindings: leds: Document mmc trigger
Message-ID: <YhgHTrlxyn5QGdOM@robh.at.kernel.org>
References: <20220217174357.13427-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220217174357.13427-1-marex@denx.de>
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

On Thu, Feb 17, 2022 at 06:43:57PM +0100, Marek Vasut wrote:
> The mmc subsystem supports triggering leds on card activity, document
> the trigger value here. The value is a pattern in this case.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Jacek Anaszewski <jacek.anaszewski@gmail.com>
> Cc: Pavel Machek <pavel@ucw.cz>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> To: linux-leds@vger.kernel.org
> ---
> V2: Rebase on next-20220217

Why? Nobody can apply patches to linux-next. Is there something in next 
you are dependent on that you didn't tell us about?

> ---
>  .../devicetree/bindings/leds/common.yaml      | 39 ++++++++++---------
>  1 file changed, 21 insertions(+), 18 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/leds/common.yaml b/Documentation/devicetree/bindings/leds/common.yaml
> index 328952d7acbbc..3c14a98430e19 100644
> --- a/Documentation/devicetree/bindings/leds/common.yaml
> +++ b/Documentation/devicetree/bindings/leds/common.yaml
> @@ -79,24 +79,27 @@ properties:
>        the LED.
>      $ref: /schemas/types.yaml#/definitions/string
>  
> -    enum:
> -        # LED will act as a back-light, controlled by the framebuffer system
> -      - backlight
> -        # LED will turn on (but for leds-gpio see "default-state" property in
> -        # Documentation/devicetree/bindings/leds/leds-gpio.yaml)
> -      - default-on
> -        # LED "double" flashes at a load average based rate
> -      - heartbeat
> -        # LED indicates disk activity
> -      - disk-activity
> -        # LED indicates IDE disk activity (deprecated), in new implementations
> -        # use "disk-activity"
> -      - ide-disk
> -        # LED flashes at a fixed, configurable rate
> -      - timer
> -        # LED alters the brightness for the specified duration with one software
> -        # timer (requires "led-pattern" property)
> -      - pattern
> +    oneOf:
> +      - enum:
> +            # LED will act as a back-light, controlled by the framebuffer system
> +          - backlight
> +            # LED will turn on (but for leds-gpio see "default-state" property in
> +            # Documentation/devicetree/bindings/leds/leds-gpio.yaml)
> +          - default-on
> +            # LED "double" flashes at a load average based rate
> +          - heartbeat
> +            # LED indicates disk activity
> +          - disk-activity
> +            # LED indicates IDE disk activity (deprecated), in new implementations
> +            # use "disk-activity"
> +          - ide-disk
> +            # LED flashes at a fixed, configurable rate
> +          - timer
> +            # LED alters the brightness for the specified duration with one software
> +            # timer (requires "led-pattern" property)
> +          - pattern
> +        # LED is triggered by SD/MMC activity
> +      - pattern: "^mmc[0-9]+$"
>  
>    led-pattern:
>      description: |
> -- 
> 2.34.1
> 
> 
