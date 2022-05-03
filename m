Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 435B85188F9
	for <lists+devicetree@lfdr.de>; Tue,  3 May 2022 17:46:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238831AbiECPuK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 May 2022 11:50:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34528 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238590AbiECPuK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 May 2022 11:50:10 -0400
Received: from mail-io1-xd33.google.com (mail-io1-xd33.google.com [IPv6:2607:f8b0:4864:20::d33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1CAF732ED7
        for <devicetree@vger.kernel.org>; Tue,  3 May 2022 08:46:38 -0700 (PDT)
Received: by mail-io1-xd33.google.com with SMTP id i20so17723158ion.0
        for <devicetree@vger.kernel.org>; Tue, 03 May 2022 08:46:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=DmEYqT+9Ka7njk/TwR9G+Gdm+tqkABc7dcTcU/7kYZY=;
        b=IPLzFJvRDQ9r0mh8TcbmuNu1p2ZCdA+ba9sSjOT1tZkhVfsHcEFr2+YTCL1iNWL6fI
         2UmCRjoVIb5YpVcAKV+QVUbX4nNZeBM0yzyPY5NKn8pVRSa1OAvQJTqAPGL6I1tR9/7p
         o7JiIwX99eJ9jk7iN47UV8C2OJuigQEUnteBo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DmEYqT+9Ka7njk/TwR9G+Gdm+tqkABc7dcTcU/7kYZY=;
        b=pNow4ZYr7APFQ5CxPrjrYBS+JQ9kQAhjq2BAAhi4YNImm7nVQpSAa0jJH+eyrDjfNl
         9d3+t/MkM/GocxH2JyQcZYWAaoSbM2aVqISUdC2ApSDYFK6wU8LcTTf8WbLXGFIhIDqK
         fx8bhO9hOPPpOcf1ZMJsrEUM+2xDI7GyFLaLjBG40ufYRMXbYmhmmMFtZytvAWG9H1Ia
         yc3qCwASTjqFOhPLz+sQEmRCWPcJyYwYKyW+4jKqoS5uJXg6TfM9FVniDXJ2M2pdz935
         wMfpbVuA5eE88U1p5BYNIXgec8/vz7ma2P+3SYFGApQo0PbDyVpd452qmE7RI6Oi+pMl
         JnfA==
X-Gm-Message-State: AOAM531TNcLqa7+Ub7Cin46qxHsIKFRlUJb5GDIBeQLxI9bVogab++eu
        9+i6zfrp73biF26Nr1tN88AnfypXxD0JRbR3
X-Google-Smtp-Source: ABdhPJzary/zqUKepXbxoKw3jZMfmnqwqrMHQpwA/P+in/f/4i6U+9ErS7OwrmA8wXQnpbHwFuxrrQ==
X-Received: by 2002:a6b:fb05:0:b0:657:655e:a287 with SMTP id h5-20020a6bfb05000000b00657655ea287mr6716557iog.211.1651592797451;
        Tue, 03 May 2022 08:46:37 -0700 (PDT)
Received: from mail-il1-f173.google.com (mail-il1-f173.google.com. [209.85.166.173])
        by smtp.gmail.com with ESMTPSA id s13-20020a6bd30d000000b0065a47e16f41sm2889980iob.19.2022.05.03.08.46.36
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 May 2022 08:46:36 -0700 (PDT)
Received: by mail-il1-f173.google.com with SMTP id l15so4641395ilh.3
        for <devicetree@vger.kernel.org>; Tue, 03 May 2022 08:46:36 -0700 (PDT)
X-Received: by 2002:a92:c263:0:b0:2cf:c0e:bd81 with SMTP id
 h3-20020a92c263000000b002cf0c0ebd81mr4741427ild.220.1651592796090; Tue, 03
 May 2022 08:46:36 -0700 (PDT)
MIME-Version: 1.0
References: <20220503042242.3597561-1-swboyd@chromium.org> <20220503042242.3597561-2-swboyd@chromium.org>
 <2280875f-fbd8-0dfd-5a0a-1d7fceb856e4@linaro.org>
In-Reply-To: <2280875f-fbd8-0dfd-5a0a-1d7fceb856e4@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 3 May 2022 08:46:21 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UEBi9dctmhaAi1z+c+Sj5gtcRrc3FRW294T55dTiAidQ@mail.gmail.com>
Message-ID: <CAD=FV=UEBi9dctmhaAi1z+c+Sj5gtcRrc3FRW294T55dTiAidQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: google,cros-ec-keyb: Introduce
 switches only compatible
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        LKML <linux-kernel@vger.kernel.org>, patches@lists.linux.dev,
        chrome-platform@lists.linux.dev,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
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

Hi,

On Tue, May 3, 2022 at 8:42 AM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
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

Isn't that implicit because this file has `unevaluatedProperties: false` ?

-Doug
