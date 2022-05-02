Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 78EFC517544
	for <lists+devicetree@lfdr.de>; Mon,  2 May 2022 19:01:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1377303AbiEBREl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 May 2022 13:04:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1386498AbiEBREa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 May 2022 13:04:30 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 682FD218F
        for <devicetree@vger.kernel.org>; Mon,  2 May 2022 10:01:00 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id y3so28835384ejo.12
        for <devicetree@vger.kernel.org>; Mon, 02 May 2022 10:01:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=pw2/oXmpaIHCVTryeNN1ZqUEyp67KQCQZki+AHhMtg4=;
        b=WFLlqSaRxtRM1eXCMOy3bfOnfmy/O0CNxC/Kvxvq/ZIAe6jSq6QKKTxR2533G2Ma+M
         cJ7mlkEywoFDQhZG7+kRn8mhBuqtd3heRlnY0oV+pOFJG3vEXsS/ZpfmMuuJ838fRTyq
         Xk6I4ysRfS7pCyUZj4MDQtXlPkIN333kbsYkE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pw2/oXmpaIHCVTryeNN1ZqUEyp67KQCQZki+AHhMtg4=;
        b=D1STDnh+fy9JTY79nExwZhUNo3ZTA4X9ap4gcNFBUKjh7Oas+X8CbqrhOJrofT6A4C
         Mrb3+y94DOCy1uyqXDY2kZbNgprmjeeoVv0ypgeq4TFWo26acBD457OYMh3fpIiiooRP
         n/cY0GbIdkbDexaB1kY58DoTQNK1GEXPkV628L8xdacloQlT+2o4UH+FjV4uclm82wsQ
         qiyfk8SElC/1/3RhfNcRu78Sn+Nq5jeQu2a0pjXeFTpGtCRDvEjTLVSsUTS5K03RO6YN
         bWU2csSFfnynn/VEh1icVA1naDUlbnFv+RgNl59nDpY4H6CGKV66HOcouyKAZhwXIH7C
         stmQ==
X-Gm-Message-State: AOAM532knAsIGeKsdlHEfK0KdYM62rEUhKe7bEg9QEmEHCz7ZjoRZxjJ
        xsa8+uqQJrKdo7p1CymGkO2jn4UcMBm3pQvy
X-Google-Smtp-Source: ABdhPJwBxKa3tNwE4oIsu+BYRF3IERyyAlnEUTFQHkj/ubVarmOAj7X9Wo4V+LvcxqeFe/uHQzcDfg==
X-Received: by 2002:a17:907:6297:b0:6da:6388:dc58 with SMTP id nd23-20020a170907629700b006da6388dc58mr12209369ejc.472.1651510858509;
        Mon, 02 May 2022 10:00:58 -0700 (PDT)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com. [209.85.128.43])
        by smtp.gmail.com with ESMTPSA id qs24-20020a170906459800b006f3ef214e19sm3757847ejc.127.2022.05.02.10.00.56
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 May 2022 10:00:56 -0700 (PDT)
Received: by mail-wm1-f43.google.com with SMTP id o12-20020a1c4d0c000000b00393fbe2973dso10201563wmh.2
        for <devicetree@vger.kernel.org>; Mon, 02 May 2022 10:00:56 -0700 (PDT)
X-Received: by 2002:a05:600c:4e44:b0:394:46b4:7b0e with SMTP id
 e4-20020a05600c4e4400b0039446b47b0emr57531wmq.29.1651510855777; Mon, 02 May
 2022 10:00:55 -0700 (PDT)
MIME-Version: 1.0
References: <20220429233112.2851665-1-swboyd@chromium.org> <20220429233112.2851665-2-swboyd@chromium.org>
In-Reply-To: <20220429233112.2851665-2-swboyd@chromium.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 2 May 2022 10:00:44 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VX8EEgkeLgKwyKvjztcjbA8UhKOUpTr-sS1_Ec=QcWbA@mail.gmail.com>
Message-ID: <CAD=FV=VX8EEgkeLgKwyKvjztcjbA8UhKOUpTr-sS1_Ec=QcWbA@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: google,cros-ec-keyb: Introduce
 switches only compatible
To:     Stephen Boyd <swboyd@chromium.org>
Cc:     Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        LKML <linux-kernel@vger.kernel.org>, patches@lists.linux.dev,
        chrome-platform@lists.linux.dev,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        "Joseph S. Barrera III" <joebar@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Apr 29, 2022 at 4:31 PM Stephen Boyd <swboyd@chromium.org> wrote:
>
> If the device is a detachable, this device won't have a matrix keyboard
> but it may have some button switches, e.g. volume buttons and power
> buttons. Let's add a more specific compatible for this type of device
> that indicates to the OS that there are only switches and no matrix
> keyboard present. If only the switches compatible is present, then the
> matrix keyboard properties are denied. This lets us gracefully migrate
> devices that only have switches over to the new compatible string.

I know the history here so I know the reasons for the 3 choices, but
I'm not sure I'd fully understand it just from the description above.
Maybe a summary in the CL desc would help?

Summary:

1. If you have a matrix keyboard and maybe also some buttons/switches
then use the compatible: google,cros-ec-keyb

2. If you only have buttons/switches but you want to be compatible
with the old driver in Linux that looked for the compatible
"google,cros-ec-keyb" and required the matrix properties, use the
compatible: "google,cros-ec-keyb-switches", "google,cros-ec-keyb"

3. If you have only buttons/switches and don't need compatibility with
old Linux drivers, use the compatible: "google,cros-ec-keyb-switches"


> Similarly, start enforcing that the keypad rows/cols and keymap
> properties exist if the google,cros-ec-keyb compatible is present. This
> more clearly describes what the driver is expecting, i.e. that the
> kernel driver will fail to probe if the row or column or keymap
> properties are missing and only the google,cros-ec-keyb compatible is
> present.
>
> Cc: Krzysztof Kozlowski <krzk@kernel.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: <devicetree@vger.kernel.org>
> Cc: Benson Leung <bleung@chromium.org>
> Cc: Guenter Roeck <groeck@chromium.org>
> Cc: Douglas Anderson <dianders@chromium.org>
> Cc: Hsin-Yi Wang <hsinyi@chromium.org>
> Cc: "Joseph S. Barrera III" <joebar@chromium.org>
> Signed-off-by: Stephen Boyd <swboyd@chromium.org>
> ---
>  .../bindings/input/google,cros-ec-keyb.yaml   | 95 +++++++++++++++++--
>  1 file changed, 89 insertions(+), 6 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml b/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
> index e8f137abb03c..c1b079449cf3 100644
> --- a/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
> +++ b/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
> @@ -15,14 +15,19 @@ description: |
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
> +    oneOf:
> +      - items:
> +          - const: google,cros-ec-keyb-switches
> +      - items:
> +          - const: google,cros-ec-keyb-switches
> +          - const: google,cros-ec-keyb
> +      - items:
> +          - const: google,cros-ec-keyb
>
>    google,needs-ghost-filter:
>      description:
> @@ -41,15 +46,40 @@ properties:
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
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: google,cros-ec-keyb
> +    then:
> +      allOf:
> +        - $ref: "/schemas/input/matrix-keymap.yaml#"
> +  - if:
> +      not:
> +        properties:
> +          compatible:
> +            contains:
> +              const: google,cros-ec-keyb-switches
> +    then:
> +      required:
> +        - keypad,num-rows
> +        - keypad,num-columns
> +        - linux,keymap

I think that:

1. If you only have buttons/switches and care about backward
compatibility, you use the "two compatibles" version.

2. If you care about backward compatibility then you _must_ include
the matrix properties.

Thus I would be tempted to say that we should just have one "if" test
that says that if matrix properties are allowed then they're also
required.

That goes against the recently landed commit 4352e23a7ff2 ("Input:
cros-ec-keyb - only register keyboard if rows/columns exist") but
perhaps we should just _undo_ that that since it landed pretty
recently and say that the truly supported way to specify that you only
have keyboards/switches is with the compatible.

What do you think?

-Doug
