Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3DFD7518CBD
	for <lists+devicetree@lfdr.de>; Tue,  3 May 2022 21:00:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238146AbiECTEI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 May 2022 15:04:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236032AbiECTEH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 May 2022 15:04:07 -0400
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com [IPv6:2607:f8b0:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A71A01D313
        for <devicetree@vger.kernel.org>; Tue,  3 May 2022 12:00:34 -0700 (PDT)
Received: by mail-oi1-x235.google.com with SMTP id m25so5225417oih.2
        for <devicetree@vger.kernel.org>; Tue, 03 May 2022 12:00:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=sTwtLayt8lSmwFDwuP2xr78Bezhh6psTt6A0s7o6o54=;
        b=ZL64jD3/KfRtxkUsZsMBA2i8ivzG5MZTHTOoiIVfGr4Ec4kMCqf5T5NaRNtr/0JDVI
         TmM+l93APN8yXga262FNK0V1PE1Z9dXb5uWY5SVOcyZAnD+K9ADawpGdHw+9U3cAiT7a
         JD95WlfPU1wAkrstXIwAhfu+Y3QrkiO7kC7kQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=sTwtLayt8lSmwFDwuP2xr78Bezhh6psTt6A0s7o6o54=;
        b=mtL6rUeSIGTUnqoHHu3LbC6p1uv2qw+zbLqfrLXNP+oohGhuYFXG82UoFZAxVY89fj
         kckM9wZmyza2AMlA+ceEV48inJPEe+bzxj+XV9fSKM8Rn3L/qd/DW+vh1jQqaXbQQZxG
         Zt09GiiZLAUVGTHgMrIQ8AkKYzjKErGroY9bUNhHaD/4YTSlwBLyPadtBqQh4T1pA4Xn
         W3IBkkxswjUKYrGOOgdXFHIVR+zOJnXJBjQ1HBqWhL7oSFPWoWvKazZfBnMO4lIoClU7
         ifaTLeJ5bAJbiiXJMiB9Q336EdfItfht2BhPpb+rbhMQ3pEuaXDPifFAIm0peSPGoKIB
         Xc5A==
X-Gm-Message-State: AOAM532XyIHNzvxv4Vrjq/LAXIcOWJL3WSrb4nomo9VJ4HEj6O2uJMQc
        2LAzbBW7YERllQ/ENcbpPtXWHqcIArkpp1YKPbbKyQ==
X-Google-Smtp-Source: ABdhPJyoZVlr00aiP72F5GUeMpviqWaBNJ9GclCz9NF9x+6N/PBIUr0SmkirKve0fuXCbNOFIVsJBrojpRhd5w1GKGs=
X-Received: by 2002:aca:bd41:0:b0:2ec:ff42:814f with SMTP id
 n62-20020acabd41000000b002ecff42814fmr2540169oif.63.1651604434059; Tue, 03
 May 2022 12:00:34 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 3 May 2022 15:00:33 -0400
MIME-Version: 1.0
In-Reply-To: <2280875f-fbd8-0dfd-5a0a-1d7fceb856e4@linaro.org>
References: <20220503042242.3597561-1-swboyd@chromium.org> <20220503042242.3597561-2-swboyd@chromium.org>
 <2280875f-fbd8-0dfd-5a0a-1d7fceb856e4@linaro.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Tue, 3 May 2022 15:00:33 -0400
Message-ID: <CAE-0n50oGX8jBzfNjYFj01nZkuYbk6ZPsqDj89-zqxHhib=vaw@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: google,cros-ec-keyb: Introduce
 switches only compatible
To:     Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     linux-kernel@vger.kernel.org, patches@lists.linux.dev,
        chrome-platform@lists.linux.dev,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        "Joseph S. Barrera III" <joebar@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Krzysztof Kozlowski (2022-05-03 08:42:39)
> On 03/05/2022 06:22, Stephen Boyd wrote:
> > If the ChromeOS board is a detachable, this cros-ec-keyb device won't
> > have a matrix keyboard but it may have some button switches, e.g. volume
> > buttons and power buttons. The driver still registers a keyboard though
> > and that leads to userspace confusion around where the keyboard is.
>
> (...)
>
> >
> > +if:
> > +  properties:
> > +    compatible:
> > +      contains:
> > +        const: google,cros-ec-keyb
> > +then:
> > +  allOf:
> > +    - $ref: "/schemas/input/matrix-keymap.yaml#"
> > +  required:
> > +    - keypad,num-rows
> > +    - keypad,num-columns
> > +    - linux,keymap
>
> else:
>   properties:
>     function-row-phsymap: false
>     google,needs-ghost-filter: false
>
> Because these are not valid for the non-matrix-keyboard case, right?
>

Yes, but they also depend on linux,keymap so they're not possible to
set because the matrix-keymap.yaml schema defines linux,keymap and that
is only included if google,cros-ec-keyb is present.
