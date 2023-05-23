Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A299170E072
	for <lists+devicetree@lfdr.de>; Tue, 23 May 2023 17:30:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231548AbjEWPaZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 May 2023 11:30:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37400 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229764AbjEWPaZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 May 2023 11:30:25 -0400
Received: from mail-il1-x131.google.com (mail-il1-x131.google.com [IPv6:2607:f8b0:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10E8C11A
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 08:30:24 -0700 (PDT)
Received: by mail-il1-x131.google.com with SMTP id e9e14a558f8ab-3313fe59a61so2609495ab.0
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 08:30:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1684855823; x=1687447823;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OUYNFtz0mGQomMgw5XCo7PvlT82ouwpXZ1L41VjIQog=;
        b=hsrUOoFnainyEr5AiwTS9JHM7zqYn1H0BmPkY3InzvHalMWie3xZ9Tpb0A04z98/E/
         t5lv4G77T2uHZYpMfMPM0gpeZb5DPNqj6GZJ3gjjMfQobiIlC0Jnb23JH66xH/A0Oghi
         Bo+9JQO5OwlmmmeD6lEX8SNW5OtZZfybOP27U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684855823; x=1687447823;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OUYNFtz0mGQomMgw5XCo7PvlT82ouwpXZ1L41VjIQog=;
        b=D56tiT1ZKBg8s4jRqXsNV4kE3trs1c743xC5ZoW2YBufKmikRZtgslXsObx4Z6rupU
         E3vt90sH23qFq4OHZKS8zSfh4gBmEgU1k2JB2zIpxfdNDC8d9a5rKczCQTubEPcGIoWP
         3YX9zAwyBDvxgfACcAjjoBo06uGpat7vB8zvDBIBExKsjQ/bVaAyCT37UPrN3wVYBgaN
         x3ByEcYZ4GQbXFjsT/DKOZBOm8VqUSaSn7Ub/vhMqq9LGNsZnEaqcPNgZc169wdOB+0y
         nvKNy1SQ3FENXJznQvDSS4OZenP6YCb1Zf4HdjG64xXvuOjGPSYIxDOVm3RkX1OswQyz
         f2Iw==
X-Gm-Message-State: AC+VfDy7E9E7OUGRlQAkOAp9v283mdu2OelaqnKgNcTH02Rga8x6TeaU
        GkOTpZs2AxmLpMOrC6zzyKQEgEq6SXGOBIwjM/0=
X-Google-Smtp-Source: ACHHUZ7bDFVZol5+LdasveV/NumhJYRnk0E8kgQll48bF2RZz0nviTVZhwj6QfAZ+fliHThFf9DhTA==
X-Received: by 2002:a92:d301:0:b0:335:3568:dc67 with SMTP id x1-20020a92d301000000b003353568dc67mr8981459ila.15.1684855823229;
        Tue, 23 May 2023 08:30:23 -0700 (PDT)
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com. [209.85.166.53])
        by smtp.gmail.com with ESMTPSA id o4-20020a92c684000000b0033842c3f6b4sm2473806ilg.83.2023.05.23.08.30.22
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 May 2023 08:30:22 -0700 (PDT)
Received: by mail-io1-f53.google.com with SMTP id ca18e2360f4ac-77487baabbbso12078439f.3
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 08:30:22 -0700 (PDT)
X-Received: by 2002:a5e:dd4c:0:b0:76c:79f9:9b29 with SMTP id
 u12-20020a5edd4c000000b0076c79f99b29mr8611250iop.3.1684855821998; Tue, 23 May
 2023 08:30:21 -0700 (PDT)
MIME-Version: 1.0
References: <20230427035656.1962698-1-fshao@chromium.org> <CAD=FV=XVubT-ozs7JssBPz+9UcsZb+q0My8Aq6HNs-nFiJnogg@mail.gmail.com>
 <nycvar.YFH.7.76.2305231510270.29760@cbobk.fhfr.pm> <CAD=FV=UyEw5xViGreQb6+cLNLrMcT27ts5P87aR=FEYWNOBM_w@mail.gmail.com>
In-Reply-To: <CAD=FV=UyEw5xViGreQb6+cLNLrMcT27ts5P87aR=FEYWNOBM_w@mail.gmail.com>
From:   Fei Shao <fshao@chromium.org>
Date:   Tue, 23 May 2023 23:29:45 +0800
X-Gmail-Original-Message-ID: <CAC=S1nisSCtsz5spDG3s6Xj70ianY+vgiYy0PaS_jnN7KOe=4w@mail.gmail.com>
Message-ID: <CAC=S1nisSCtsz5spDG3s6Xj70ianY+vgiYy0PaS_jnN7KOe=4w@mail.gmail.com>
Subject: Re: [PATCH v4 0/2] Fix Goodix touchscreen power leakage for MT8186 boards
To:     Doug Anderson <dianders@chromium.org>
Cc:     Jiri Kosina <jikos@kernel.org>, Jeff LaBundy <jeff@labundy.com>,
        Benjamin Tissoires <benjamin.tissoires@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-mediatek <linux-mediatek@lists.infradead.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Stephen Kitt <steve@sk2.org>, devicetree@vger.kernel.org,
        linux-input@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 23, 2023 at 9:32=E2=80=AFPM Doug Anderson <dianders@chromium.or=
g> wrote:
>
> Hi,
>
> On Tue, May 23, 2023 at 6:11=E2=80=AFAM Jiri Kosina <jikos@kernel.org> wr=
ote:
> >
> > On Fri, 19 May 2023, Doug Anderson wrote:
> >
> > > > These changes are based on the series in [1], which modified the
> > > > i2c-hid-of-goodix driver and removed the workaround for a power lea=
kage
> > > > issue, so the issue revisits on Mediatek MT8186 boards (Steelix).
> > > >
> > > > The root cause is that the touchscreen can be powered in different =
ways
> > > > depending on the hardware designs, and it's not as easy to come up =
with
> > > > a solution that is both simple and elegant for all the known design=
s.
> > > >
> > > > To address the issue, I ended up adding a new boolean property for =
the
> > > > driver so that we can control the power up/down sequence depending =
on
> > > > that.
> > > >
> > > > Adding a new property might not be the cleanest approach for this, =
but
> > > > at least the intention would be easy enough to understand, and it
> > > > introduces relatively small change to the code and fully preserves =
the
> > > > original control flow.
> > > > I hope this is something acceptable, and I'm open to any better
> > > > approaches.
> > > >
> > > > [1] https://lore.kernel.org/all/20230207024816.525938-1-dianders@ch=
romium.org/
> > > >
> > > > Changes in v4:
> > > > - Minor coding style improvement
> > > >
> > > > Changes in v3:
> > > > - In power-down, only skip the GPIO but not the regulator calls if =
the
> > > >   flag is set
> > > >
> > > > Changes in v2:
> > > > - Use a more accurate property name and with "goodix," prefix.
> > > > - Do not change the regulator_enable logic during power-up.
> > > >
> > > > Fei Shao (2):
> > > >   dt-bindings: input: goodix: Add "goodix,no-reset-during-suspend"
> > > >     property
> > > >   HID: i2c-hid: goodix: Add support for "goodix,no-reset-during-sus=
pend"
> > > >     property
> > > >
> > > >  .../bindings/input/goodix,gt7375p.yaml           |  9 +++++++++
> > > >  drivers/hid/i2c-hid/i2c-hid-of-goodix.c          | 16 ++++++++++++=
+++-
> > > >  2 files changed, 24 insertions(+), 1 deletion(-)
> > >
> > > Just double-checking if there is any work needed on this series. I
> > > think it's ready to land but I wanted to double-check.
> >
> > I don't think I've been CCed on the dt-binding part (patch 1/2 I guess)=
.
> > Has it been Acked? If so, I will happily take it through hid.git, but
> > please send it my way.
>
> Yeah, Rob Acked it:
>
> https://lore.kernel.org/r/168261692866.3205353.5077242811275926416.robh@k=
ernel.org/
>
> Fei: can you repost the series with collected tags and make sure to CC Ji=
ri?

Sure, I'll do that tomorrow  :)

Regards,
Fei

>
> Thanks!
>
> -Doug
