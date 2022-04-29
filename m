Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3313A5154A5
	for <lists+devicetree@lfdr.de>; Fri, 29 Apr 2022 21:35:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1380355AbiD2TiT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Apr 2022 15:38:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56752 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349536AbiD2TiS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Apr 2022 15:38:18 -0400
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com [IPv6:2607:f8b0:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 307FBD0827
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 12:34:59 -0700 (PDT)
Received: by mail-oi1-x230.google.com with SMTP id r1so9372605oie.4
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 12:34:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=E0Q3EZPBzEkcXpZcFDBM/8hh0PQ3g9tg+K9PcJx+iK8=;
        b=j7Mu2qjwlrTIhzG1/SRWrea/G70nXiVi41rs9h824BDxboFT2bYoOlddcsk05eFR3S
         riShkXFHtHqTtwVtScs1+WWrcvU4L8FTNKZBoRrV4kvxdbTkP877tUBxbeGUJFZFmDGf
         7d2pu/cIMZUBtgibQB7fc9ptmJimpmjFtBhUM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=E0Q3EZPBzEkcXpZcFDBM/8hh0PQ3g9tg+K9PcJx+iK8=;
        b=hu7zsTXWc/O7m8UICeJEvUXEIVuD5Kwl+mdekICO44mZp48TRYFGi65jdHh5X/jpEn
         Zq/BeyEdob5i7YjxnQh8k/x82keWs0qScBvGaOGr0b2tp3fsSUs00A37kDnOfWzLwnU8
         /h2uggtD1RTPUU8/FniwlvC3Vm36tnYq9bjdBLcfvVHKlElfDlsEy7ZcQKkSWtLl5QQn
         HUpZTHMFRAc44O+bOux6CHGyTAJUR1wD+6ghVgcvMuJzsj754fKT6PdSM5E39WdYLLCI
         C4QIHqVc3hNCizDjFLgSJPstEmLokQ9OlMYpgUP96iD4wF9cquMLETSoHwDhTN8LoRgU
         EYPg==
X-Gm-Message-State: AOAM533EzUtKHVqY+dxvHjHwVm6xhVfhMrnHhWd+TYqt3S3w/qcTnEgG
        xu4+UnSXVjY4BhJTkevwohtyRxnMPLA2nnD5Hd3MUw==
X-Google-Smtp-Source: ABdhPJybWFdvd26gPp93ZZnFPwxpgGugVjji5kYbw3wxJ0sB3egmlQ0aK36Ny0i3uauBxbTztZtUxyMYb/Knjvif090=
X-Received: by 2002:a05:6808:1296:b0:325:8fb:68f3 with SMTP id
 a22-20020a056808129600b0032508fb68f3mr437845oiw.193.1651260897935; Fri, 29
 Apr 2022 12:34:57 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Sat, 30 Apr 2022 04:34:57 +0900
MIME-Version: 1.0
In-Reply-To: <eb2dd599-f38a-57b2-694e-d91aaadda2b5@kernel.org>
References: <20220427203026.828183-1-swboyd@chromium.org> <20220427203026.828183-2-swboyd@chromium.org>
 <CAD=FV=Vtnj+8FYdBSvsud9fGEbo7N1HSjXA3rH3f8FMJsuVR1A@mail.gmail.com> <eb2dd599-f38a-57b2-694e-d91aaadda2b5@kernel.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Sat, 30 Apr 2022 04:34:57 +0900
Message-ID: <CAE-0n52M0yfwMnuO9HTCCuv2pU3oWkGuyxOS4x7_gVN5QFFGMw@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: google,cros-ec-keyb: Introduce switches
 only compatible
To:     Doug Anderson <dianders@chromium.org>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc:     Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        LKML <linux-kernel@vger.kernel.org>, patches@lists.linux.dev,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        "Joseph S. Barrera III" <joebar@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Krzysztof Kozlowski (2022-04-29 09:35:58)
> On 29/04/2022 18:31, Doug Anderson wrote:
> >>    - $ref: "/schemas/input/matrix-keymap.yaml#"
> >>
> >>  properties:
> >>    compatible:
> >> -    const: google,cros-ec-keyb
> >> +    oneOf:
> >> +      - items:
> >> +          - const: google,cros-ec-keyb-switches
> >> +          - const: google,cros-ec-keyb
> >> +      - items:
> >> +          - const: google,cros-ec-keyb
> >
> > nit: if I come back and read this binding later I'm not sure it would
> > be obvious which compatible I should pick. Can we give any description
> > here that indicates that the first choice is for devices that _only_
> > have buttons and switches (the google,cros-ec-keyb is just for
> > backward compatibility) and the second choice is for devices that have
> > a physical keyboard and _also_ possibly some buttons/switches?

Sounds fair. I have to figure out how to add a description to the
choices. I guess a comment is the approach?

> >
> > I could also imagine people in the future being confused about whether
> > it's allowed to specify matrix properties even for devices that don't
> > have a matrix keyboard. It might be worth noting that it's allowed (to
> > support old drivers that might still be matching against the
> > google,cros-ec-keyb compatible) but not required.
>
> +1

Sure. I'll work that into the description for the first one with two
compatibles.

>
> >
> >
> >>    google,needs-ghost-filter:
> >>      description:
> >> @@ -50,7 +56,7 @@ examples:
> >>    - |
> >>      #include <dt-bindings/input/input.h>
> >>      cros-ec-keyb {
> >> -        compatible = "google,cros-ec-keyb";
> >> +        compatible = "google,cros-ec-keyb-switches", "google,cros-ec-keyb";
> >
> > Feels like we should create a second example?
>
> +1 as well, because it really would confuse what's the difference
> between them.

Ok.
