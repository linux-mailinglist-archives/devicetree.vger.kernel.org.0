Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 38E4451394E
	for <lists+devicetree@lfdr.de>; Thu, 28 Apr 2022 18:01:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239286AbiD1QEV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Apr 2022 12:04:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34032 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233925AbiD1QEU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Apr 2022 12:04:20 -0400
Received: from mail-oa1-x2f.google.com (mail-oa1-x2f.google.com [IPv6:2001:4860:4864:20::2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26A735B3EF
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 09:01:05 -0700 (PDT)
Received: by mail-oa1-x2f.google.com with SMTP id 586e51a60fabf-deb9295679so5577059fac.6
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 09:01:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=tOYccIv/dT6lmvXGvSUCI6aiul062Sk35pOpE7VAjd0=;
        b=Ex6/5YgKwQwxJsHj/38OfN7VSZ9xWcLyNJp10OPA38dwexhh4dcxsgFm+gKmIQrHT2
         heh+TkkcCjKabzzpa1XHSCH0xJcaXx6BPHOTeQN/CgXhRQMW5IIcIYHBBSISK6LxBiL3
         EeHbhgLa2oEI+/KrsNHKR84JcasSP1EXgv5SQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=tOYccIv/dT6lmvXGvSUCI6aiul062Sk35pOpE7VAjd0=;
        b=Lf5WBBWHmUVT8JF0shzyKjnCpAlJZvYOCvmEM7f5ixS9RB9aQCD+WlnMxMMsT/vhc3
         z6gWUIJlsoMgpw/mY/xTAAD5ybAHZunX6+BXMnCSEsSxdXcFD6BVNvdrPaK6CkT4dp9n
         MQreBuvCzH0fvT/ZTSiyAwQ6MYhpivhHNR+E7ha3yPjdldAfju6OZluQAhCEnuqFH0Aq
         juv9Xs2pqsqfW/pU8Hy7NNGGaUvAmaREO9U1kOCG9dKQAMZ2560xszQAXbC4Nch6XayV
         SyWjisicYITyZwo3Z6BHJrVxmIOMD/oOT7f9DdoClRlYB5ob/8z8t3YCy1pbmJqSzVAV
         VjPQ==
X-Gm-Message-State: AOAM531r4eaAA+W490hX7xnpIpCZL2zTGp7DgqVFEhZG0LlnhegwSP3e
        yTlGVVooKeFvN5E0cEU4AuY91CL9aV9VnXSbObeJ8w==
X-Google-Smtp-Source: ABdhPJwz7phB9NwKRasAF0gUvyiUVCir6b2Zp6/7BWPtZe+hBjgdurJmcapC5XhcW8uNYD8Ad2BBWtxaRynOJC4aapY=
X-Received: by 2002:a05:6870:558e:b0:e1:db7c:26aa with SMTP id
 n14-20020a056870558e00b000e1db7c26aamr14473277oao.63.1651161664179; Thu, 28
 Apr 2022 09:01:04 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 28 Apr 2022 09:01:03 -0700
MIME-Version: 1.0
In-Reply-To: <29cc62aa-2995-ea96-0e7e-242f9ddaa87e@linaro.org>
References: <20220427203026.828183-1-swboyd@chromium.org> <20220427203026.828183-2-swboyd@chromium.org>
 <9248da4f-ca04-82f0-2840-a20797c25d2a@linaro.org> <CAE-0n52Y=3EEZ6qguNx=hM44BahbH3cuq7x6Bbe5HELKkkvrUw@mail.gmail.com>
 <29cc62aa-2995-ea96-0e7e-242f9ddaa87e@linaro.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Thu, 28 Apr 2022 09:01:03 -0700
Message-ID: <CAE-0n50ORzU52KpSPUNeEke-16uWo+Vn8WVhcdtdCc6WJiji6A@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: google,cros-ec-keyb: Introduce switches
 only compatible
To:     Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     linux-kernel@vger.kernel.org, patches@lists.linux.dev,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        "Joseph S. Barrera III" <joebar@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Krzysztof Kozlowski (2022-04-28 00:27:52)
> On 28/04/2022 08:24, Stephen Boyd wrote:
> > Quoting Krzysztof Kozlowski (2022-04-27 23:12:47)
> >> On 27/04/2022 22:30, Stephen Boyd wrote:
> >>> If the device is a detachable, this device won't have a matrix keyboard
> >>> but it may have some button switches, e.g. volume buttons and power
> >>> buttons. Let's add a more specific compatible for this type of device
> >>> that indicates to the OS that there are only switches and no matrix
> >>> keyboard present.
> >>>
> >>> Cc: Krzysztof Kozlowski <krzk@kernel.org>
> >>> Cc: Rob Herring <robh+dt@kernel.org>
> >>> Cc: <devicetree@vger.kernel.org>
> >>> Cc: Benson Leung <bleung@chromium.org>
> >>> Cc: Guenter Roeck <groeck@chromium.org>
> >>> Cc: Douglas Anderson <dianders@chromium.org>
> >>> Cc: Hsin-Yi Wang <hsinyi@chromium.org>
> >>> Cc: "Joseph S. Barrera III" <joebar@chromium.org>
> >>> Signed-off-by: Stephen Boyd <swboyd@chromium.org>
> >>> ---
> >>>  .../bindings/input/google,cros-ec-keyb.yaml          | 12 +++++++++---
> >>>  1 file changed, 9 insertions(+), 3 deletions(-)
> >>>
> >>> diff --git a/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml b/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
> >>> index e8f137abb03c..edc1194d558d 100644
> >>> --- a/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
> >>> +++ b/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
> >>> @@ -15,14 +15,20 @@ description: |
> >>>    Google's ChromeOS EC Keyboard is a simple matrix keyboard
> >>>    implemented on a separate EC (Embedded Controller) device. It provides
> >>>    a message for reading key scans from the EC. These are then converted
> >>> -  into keycodes for processing by the kernel.
> >>> +  into keycodes for processing by the kernel. This device also supports
> >>> +  switches/buttons like power and volume buttons.
> >>>
> >>>  allOf:
> >>>    - $ref: "/schemas/input/matrix-keymap.yaml#"
> >>>
> >>>  properties:
> >>>    compatible:
> >>> -    const: google,cros-ec-keyb
> >>> +    oneOf:
> >>> +      - items:
> >>> +          - const: google,cros-ec-keyb-switches
> >>> +          - const: google,cros-ec-keyb
> >>> +      - items:
> >>> +          - const: google,cros-ec-keyb
> >>>
> >>
> >> In such case matrix-keymap properties are not valid, right? The
> >> matrix-keymap should not be referenced, IOW, you need to move allOf
> >> below "required" and add:
> >> if:not:...then: $ref: "/schemas/input/matrix-keymap.yaml
> >>
> >
> > Eventually that sounds doable, but for the time being I want to merely
> > add this new compatible in front of the original compatible so that
> > updated DTBs still work with older kernels, i.e. the switches still get
> > registered because the driver works with the original
> > google,cros-ec-keyb compatible.
>
> The bindings here do not invalidate (break) existing DTBs. Old DTBs can
> work in old way, we talk only about binding.

Ok, got it.

>
> > Given that none of the properties are
> > required for google,cros-ec-keyb it didn't seem necessary to make having
> > the google,cros-ec-keyb-switches compatible deny the existence of the
> > matrix-keymap properties.
>
> Maybe I misunderstood the commit msg. Are the
> "google,cros-ec-keyb-switches" devices coming with matrix keyboard or
> not? I mean physically.
>

The answer is "sometimes, physically". Sometimes there are switches like
volume buttons and power buttons and also a matrix keyboard (convertible
and clamshells). Other times there are volume buttons and power buttons
and no matrix keyboard (detachable). This device node represents both
the keyboard and the switches.

Unfortunately the EC firmware on older Chromebooks that don't have a
matrix keyboard still report that they have some number of columns and
rows. I was hoping to make this fully dynamic by querying the EC but
that isn't possible.
