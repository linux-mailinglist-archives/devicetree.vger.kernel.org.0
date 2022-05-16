Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 52A68528D6E
	for <lists+devicetree@lfdr.de>; Mon, 16 May 2022 20:50:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234954AbiEPSum (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 May 2022 14:50:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41318 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345099AbiEPSum (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 May 2022 14:50:42 -0400
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com [IPv6:2607:f8b0:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CCA236E3E
        for <devicetree@vger.kernel.org>; Mon, 16 May 2022 11:50:40 -0700 (PDT)
Received: by mail-oi1-x22b.google.com with SMTP id r1so19724676oie.4
        for <devicetree@vger.kernel.org>; Mon, 16 May 2022 11:50:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=z434hv62mhp8lQvS5HCjRqXyQJvXAeM5SVF10IyqdzA=;
        b=ZMNQEqEvlfGjA3VqetKin487YfdnVKZTT+Xflf7L7ulsAamASHG/ICGwAt+hTwfdId
         6nfs1LZYHBeesiwNGqzglcZ/UQSFkTyR9nCGsmAC//4AZ8TjB6S5Z16ZprO2wrbK5MwK
         zsJBWPa37RQLLzyBt/sTFcbD9zMbQSsxAJ39M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=z434hv62mhp8lQvS5HCjRqXyQJvXAeM5SVF10IyqdzA=;
        b=JzSeoW02BOqYtidHRSak2dLWx68+c2JRfRzht8BVES6AZldBKLWCrmRM1rYtDy96y4
         DJZyNGYY7KbqMFgM/j6e/I5wF/vtPLrJlbUucPiRhrVwpH8/q2CD+/wvY1UEC1cfwXiq
         /b4JnfNUnR/IM/c3/1A7I0uYTN0zvYoJGLZJF3Mjj/YXbAPP5528rGhJv1TfrPDr92Pk
         UrzISIGbPrXEt7zBVK5B5JqBvHssHv/Vtnbcuc88hDTNhFK7oopUF9uIlzQZ1N7t0kGg
         soiG1Zr7dlhTsVwxAj1iCWw6T8JtfBNc1pJdVh5+Hjzb5nB9LrlCGkQxAS5bEnFhaGni
         r2+A==
X-Gm-Message-State: AOAM532Qr//UBSBJ6D9TsPOSOGUNYpTpTlGwHSNtyFqLl1AJstyiEb3g
        WGgrPUKbcEb8aA2G935nJ87yL0728kifLEU5T7BzwQ==
X-Google-Smtp-Source: ABdhPJyLcEcT/qii9ZWiqgSyrm9nshyiCYaWnRPLiITkkReUt6Wh8gIjEmZrDiaK3D7BsbqzJGQNXIutud4Pml/DalE=
X-Received: by 2002:a05:6808:23c3:b0:326:bd8d:7993 with SMTP id
 bq3-20020a05680823c300b00326bd8d7993mr8595142oib.63.1652727039596; Mon, 16
 May 2022 11:50:39 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 16 May 2022 11:50:39 -0700
MIME-Version: 1.0
In-Reply-To: <20220516183452.942008-2-swboyd@chromium.org>
References: <20220516183452.942008-1-swboyd@chromium.org> <20220516183452.942008-2-swboyd@chromium.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Mon, 16 May 2022 11:50:38 -0700
Message-ID: <CAE-0n50L-P_MPt6NJgO-HJc8+-GuyQPCfCMpV=3mMCoBOL5f8w@mail.gmail.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: google,cros-ec-keyb: Introduce
 switches only compatible
To:     Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc:     linux-kernel@vger.kernel.org, patches@lists.linux.dev,
        chrome-platform@lists.linux.dev,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        "Joseph S. Barrera III" <joebar@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Stephen Boyd (2022-05-16 11:34:51)
> diff --git a/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml b/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
> index e8f137abb03c..e1fb68ca00fc 100644
> --- a/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
> +++ b/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
> @@ -15,14 +15,23 @@ description: |
>    Google's ChromeOS EC Keyboard is a simple matrix keyboard
>    implemented on a separate EC (Embedded Controller) device. It provides
>    a message for reading key scans from the EC. These are then converted
> -  into keycodes for processing by the kernel.
> -
> -allOf:
> -  - $ref: "/schemas/input/matrix-keymap.yaml#"
> +  into keycodes for processing by the kernel. This device also supports
> +  switches/buttons like power and volume buttons.
>
>  properties:
>    compatible:
> -    const: google,cros-ec-keyb
> +    anyOf:
> +      - description: ChromeOS EC with only buttons/switches
> +      - items:
> +          - const: google,cros-ec-keyb-switches
> +      - description: |
> +          (Deprecated) ChromeOS EC with only buttons/switches; optional matrix properties

s/optional/required/

> +      - items:
> +          - const: google,cros-ec-keyb-switches
> +          - const: google,cros-ec-keyb
> +      - description: ChromeOS EC with keyboard and possibly buttons/switches
> +      - items:
> +          - const: google,cros-ec-keyb
>
>    google,needs-ghost-filter:
>      description:
> @@ -41,15 +50,32 @@ properties:
>        where the lower 16 bits are reserved. This property is specified only
>        when the keyboard has a custom design for the top row keys.
>
> +dependencies:
> +  function-row-phsymap: [ 'linux,keymap' ]
> +  google,needs-ghost-filter: [ 'linux,keymap' ]
> +
>  required:
>    - compatible
>
> +if:
> +  properties:
> +    compatible:
> +      contains:
> +        const: google,cros-ec-keyb
> +then:
> +  allOf:
> +    - $ref: "/schemas/input/matrix-keymap.yaml#"
> +  required:
> +    - keypad,num-rows
> +    - keypad,num-columns
> +    - linux,keymap
> +
>  unevaluatedProperties: false
>
>  examples:
>    - |
>      #include <dt-bindings/input/input.h>
> -    cros-ec-keyb {
> +    keyboard-controller {
>          compatible = "google,cros-ec-keyb";
>          keypad,num-rows = <8>;
>          keypad,num-columns = <13>;
> @@ -113,3 +139,56 @@ examples:
>              /* UP      LEFT    */
>              0x070b0067 0x070c0069>;
>      };
> +
> +  - |
> +    keyboard-controller {
> +        compatible = "google,cros-ec-keyb-switches", "google,cros-ec-keyb";
> +        /* Matrix keymap properties are optional but ignored */

Ooops I got the wrong line here from v4 :(

s/optional/required/

> +        keypad,num-rows = <8>;
> +        keypad,num-columns = <13>;
> +        linux,keymap = <
> +            /* CAPSLCK F1         B          F10     */
> +            0x0001003a 0x0002003b 0x00030030 0x00040044
> +            /* N       =          R_ALT      ESC     */
> +            0x00060031 0x0008000d 0x000a0064 0x01010001
> +            /* F4      G          F7         H       */
