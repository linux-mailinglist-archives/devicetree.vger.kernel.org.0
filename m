Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AA8C9517B73
	for <lists+devicetree@lfdr.de>; Tue,  3 May 2022 03:10:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229822AbiECBMu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 May 2022 21:12:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55480 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229769AbiECBMs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 May 2022 21:12:48 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6991659B8E
        for <devicetree@vger.kernel.org>; Mon,  2 May 2022 18:09:11 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id y3so30702204ejo.12
        for <devicetree@vger.kernel.org>; Mon, 02 May 2022 18:09:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+GS/UD7rTSn/SrbnLBVwvNdcnYAN1i32IbtuzZWmvMs=;
        b=GjPF8T0LFSfzHmDfzTyaQdTHc7/c7Au3dfdO9t7Jo7HNtVLIYTlK7boOyvbs8TaHWd
         u9Fc4NyJgxlRHYIObzxW3VHsk8uI5SiIRPIDVCqgNVN2nW1uFL7RyBgX5amGCEBX1Dqa
         wMPbnPQOsxEp8F4lvG7gMmlYdyq2+7Bca8HEw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+GS/UD7rTSn/SrbnLBVwvNdcnYAN1i32IbtuzZWmvMs=;
        b=fOg2oj98bGf2wl5SZlHwxTGA9O5FrSZTKtrOabHGYUa5rx7IT9ccvU7abT7XIUuCBU
         eZpUAvMj82Sj3BWEWFEafAxfrLKf9KP6IM2m6HuaJ8g55wPEn5e7T39Lq5b1jeK7dk/J
         92tM14RTYyZU6fMYvY4WXb1Y4WxUdAfitj6rtD9+qDXZ8prGZQaThh9Cq1TZoS1Ug5N7
         2wiLW6KxzMAZ9J4UK6GjpaBVONZldYN0y+WZupDZ4wecZrcQ3zUdP6YZ/daE8I8WQcaH
         tRf5buzO5IeV9WFgBR5LoMC+16h7V+wZzddMiIK0ZYpdFFGZL1FwRAe6TJSSoE+00sBO
         5X3g==
X-Gm-Message-State: AOAM532N9bPxJ/2djpbo4TZwI0rswuOsZYSLlCw0HKEgnPFJpLyHCeSn
        x/F12h0QqrDOTZh0pKmfD20bCepIY6wZHqYS
X-Google-Smtp-Source: ABdhPJwJmQqxKqr/cm84xOf4Kk7KO+97a5pdm3QjURlawt1smef7G4D4T8YQClXDwbCcRIuit/qoyA==
X-Received: by 2002:a17:907:eab:b0:6dd:e8fe:3dc with SMTP id ho43-20020a1709070eab00b006dde8fe03dcmr13320429ejc.165.1651540013416;
        Mon, 02 May 2022 18:06:53 -0700 (PDT)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com. [209.85.221.47])
        by smtp.gmail.com with ESMTPSA id hw7-20020a170907a0c700b006f3ef214e16sm4112816ejc.124.2022.05.02.18.06.51
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 May 2022 18:06:52 -0700 (PDT)
Received: by mail-wr1-f47.google.com with SMTP id e2so21474690wrh.7
        for <devicetree@vger.kernel.org>; Mon, 02 May 2022 18:06:51 -0700 (PDT)
X-Received: by 2002:a5d:6d09:0:b0:20c:53a9:cc30 with SMTP id
 e9-20020a5d6d09000000b0020c53a9cc30mr10094457wrq.513.1651540011049; Mon, 02
 May 2022 18:06:51 -0700 (PDT)
MIME-Version: 1.0
References: <20220429233112.2851665-1-swboyd@chromium.org> <20220429233112.2851665-3-swboyd@chromium.org>
 <CAD=FV=WAbfe9BC5QPDezz3FSEwHRFdQeZpARJYT4b9V1rNp_nA@mail.gmail.com> <CAE-0n53x77n2ACuMYsFrdGhSkmO_4f8Uocnb+vKhcgoiY4RPQg@mail.gmail.com>
In-Reply-To: <CAE-0n53x77n2ACuMYsFrdGhSkmO_4f8Uocnb+vKhcgoiY4RPQg@mail.gmail.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 2 May 2022 18:06:39 -0700
X-Gmail-Original-Message-ID: <CAD=FV=W5SeUNAiQi_h8LyUn+7EQG1Sf9N6Nq9HtVnQWqr0Ltsw@mail.gmail.com>
Message-ID: <CAD=FV=W5SeUNAiQi_h8LyUn+7EQG1Sf9N6Nq9HtVnQWqr0Ltsw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] Input: cros-ec-keyb - skip keyboard registration
 for switches compatible
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

On Mon, May 2, 2022 at 3:02 PM Stephen Boyd <swboyd@chromium.org> wrote:
>
> Quoting Doug Anderson (2022-05-02 10:02:54)
> > On Fri, Apr 29, 2022 at 4:31 PM Stephen Boyd <swboyd@chromium.org> wrote:
> > >
> > >
> > > diff --git a/drivers/input/keyboard/cros_ec_keyb.c b/drivers/input/keyboard/cros_ec_keyb.c
> > > index eef909e52e23..1bbe2987bf52 100644
> > > --- a/drivers/input/keyboard/cros_ec_keyb.c
> > > +++ b/drivers/input/keyboard/cros_ec_keyb.c
> > > @@ -536,6 +536,12 @@ static int cros_ec_keyb_register_matrix(struct cros_ec_keyb *ckdev)
> > >         u32 *physmap;
> > >         u32 key_pos;
> > >         unsigned int row, col, scancode, n_physmap;
> > > +       bool register_keyboard;
> > > +
> > > +       /* Skip matrix registration if no keyboard */
> > > +       register_keyboard = device_get_match_data(dev);
> > > +       if (!register_keyboard)
> > > +               return 0;
> > >
> > >         /*
> > >          * No rows and columns? There isn't a matrix but maybe there are
> >
> > As per my comments in patch #1, I wonder if it makes sense to delete
> > the "No rows and columns?" logic and settle on the compatible as the
> > one true way to specify this.
> >
>
> Ok. My only concern is that means we have to check for both compatibles
> which is not really how DT compatible strings work. The compatible
> string usually finds the more specific compatible that is first in the
> list of compatibles in DT. You're essentially proposing that the
> switches compatible could be first or last, the order doesn't matter.

It's not quite what I was proposing. I think my summary really sums it up:

1. If you have a matrix keyboard and maybe also some buttons/switches
then use the compatible: google,cros-ec-keyb

2. If you only have buttons/switches but you want to be compatible
with the old driver in Linux that looked for the compatible
"google,cros-ec-keyb" and required the matrix properties, use the
compatible: "google,cros-ec-keyb-switches", "google,cros-ec-keyb"

3. If you have only buttons/switches and don't need compatibility with
old Linux drivers, use the compatible: "google,cros-ec-keyb-switches"

...but just to say it another way:

* If you have the compatible "google,cros-ec-keyb-switches" I mean to
say that you _only_ have switches and buttons. You'd _never_ have this
compatible string if you truly have a matrix keyboard. If you have
this, it will always be first.

* If you only have switches and buttons but you care about backward
compatibility then you can add a fallback compatible second:
"google,cros-ec-keyb"

* In order for the fallback compatible to be at all useful as a
fallback (it's only useful at all if you're on an old driver), if you
specify it you should pretend that you have matrix properties even
though you don't really have them, just like we used to do.

-Doug
