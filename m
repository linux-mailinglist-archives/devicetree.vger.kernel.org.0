Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E2177656E65
	for <lists+devicetree@lfdr.de>; Tue, 27 Dec 2022 20:37:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230178AbiL0ThW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Dec 2022 14:37:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229764AbiL0ThV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Dec 2022 14:37:21 -0500
Received: from mail-yw1-x1131.google.com (mail-yw1-x1131.google.com [IPv6:2607:f8b0:4864:20::1131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9EF6D116
        for <devicetree@vger.kernel.org>; Tue, 27 Dec 2022 11:37:20 -0800 (PST)
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-381662c78a9so195555197b3.7
        for <devicetree@vger.kernel.org>; Tue, 27 Dec 2022 11:37:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=TDuSRMT7LeuW6RQ7N+xypX5CPMcCsvqhVlnHymvmVtI=;
        b=rEZX25ycDQZ1thQanMnm+pHbQa936C7pegvTyeEJbbP0xHMpnpylJ/PxzJHrDDGqCm
         uh9TvIADFBvJpo0yFkZgHkBkdDfpmVSAU+FKksylfr1HrbmquN5Wff0v1DclOXJ3uGpM
         LZddDRee3hQpJtoqDzbXQ2IXnexVIDhN9FgN0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TDuSRMT7LeuW6RQ7N+xypX5CPMcCsvqhVlnHymvmVtI=;
        b=B03JPOmdqfZUjgUMq3D/nwhlspoRKVIoYNx0zOLz020W+LyXIJA2fvzGjwZD/x/XeL
         bw0ITkcmZtCh03HIRclksanOIV9IL16l3teq7TuyDBvoiQEgwQptNm6+YvjhUKSPzgY1
         lGEc8jcMN81QxnogQDiIcZJ3NKH2yr4DLTTrmw++jyGVz8A2M7WvxG+ucFuzj1tuebTR
         GTioHJfjS7mzhOTGtcaUvjedob/R7nDTW0zc6WPKTzeh6JfceBGXl7iloiYuVNLkqnw+
         y7EVu7eBg2mqe525ZO9XQ8jRlNnR0NYbWYCvG/x1GF1MrLkQ5KqtYmpPla4sh6YHQhNi
         poWQ==
X-Gm-Message-State: AFqh2krGR71IBIGKSDlyiJU+hdnP071ggBIs806IAWU+OWwTbxR8GmXk
        Jq38Q65qNhgLUbDqGzIB83d4nBWd5TzGqbMRi2nDwQ==
X-Google-Smtp-Source: AMrXdXtk1VEXi6sU/cPZRwXTFvEyMW0TOBsoND8twqKnIwU8PKZUmc1bpUOjkUgxf0ckeok/mCZ824hGpaMayafFoCw=
X-Received: by 2002:a0d:ff86:0:b0:47a:a05b:7d0d with SMTP id
 p128-20020a0dff86000000b0047aa05b7d0dmr859893ywf.230.1672169839892; Tue, 27
 Dec 2022 11:37:19 -0800 (PST)
MIME-Version: 1.0
References: <20221227110335.2923359-1-javierm@redhat.com> <20221227110335.2923359-2-javierm@redhat.com>
 <CAMty3ZAaHKJ21D8mE=HU3D3KOGAiZ7vfmW_Hgc-E5JO5S+tMNA@mail.gmail.com> <CABxcv=kwtk21UbOwaV4tq=BpPsrYmnTrzuhybjbknipqk5R-fA@mail.gmail.com>
In-Reply-To: <CABxcv=kwtk21UbOwaV4tq=BpPsrYmnTrzuhybjbknipqk5R-fA@mail.gmail.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Wed, 28 Dec 2022 01:07:08 +0530
Message-ID: <CAMty3ZDESyJoWMO_BgHzUJN=hLV0dH6y=3B9ogOsSUvaTMqarQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] dt-bindings: display: Add Himax HX8394 panel controller
To:     Javier Martinez Canillas <javier@dowhile0.org>
Cc:     Javier Martinez Canillas <javierm@redhat.com>,
        devicetree@vger.kernel.org, Robert Mader <robert.mader@posteo.de>,
        Onuralp Sezer <thunderbirdtr@fedoraproject.org>,
        Neal Gompa <ngompa13@gmail.com>, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org,
        Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
        Martijn Braam <martijn@brixit.nl>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, Ondrej Jirman <megi@xff.cz>,
        Peter Robinson <pbrobinson@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        =?UTF-8?Q?Kamil_Trzci=C5=84ski?= <ayufan@ayufan.eu>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Maya Matuszczyk <maccraft123mc@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 28, 2022 at 12:58 AM Javier Martinez Canillas
<javier@dowhile0.org> wrote:
>
> Hello Jagan,
>
> On Tue, Dec 27, 2022 at 7:16 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> [...]
>
> > > +allOf:
> > > +  - $ref: panel-common.yaml#
> > > +
> > > +properties:
> > > +  compatible:
> > > +    enum:
> > > +      # HannStar HSD060BHW4 5.99" 720x1440 TFT LCD panel
> > > +      - hannstar,hsd060bhw4
> >
> > Parent controller can have a compatible where the associated panels
> > will be enum list.
> >
>
> I'm not sure to follow what you meant. Could you please elaborate?

compatible:
    items:
      - enum:
          - hannstar,hsd060bhw4
      - const: himax,hx8394

himax,hx8394 is the actual controller and is denoted as fallback compatible.

Jagan.
