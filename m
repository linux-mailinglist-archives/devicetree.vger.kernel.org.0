Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 55502712DEB
	for <lists+devicetree@lfdr.de>; Fri, 26 May 2023 21:51:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242667AbjEZTvk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 May 2023 15:51:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242622AbjEZTvk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 May 2023 15:51:40 -0400
Received: from mail-il1-x131.google.com (mail-il1-x131.google.com [IPv6:2607:f8b0:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 72AE3BD
        for <devicetree@vger.kernel.org>; Fri, 26 May 2023 12:51:38 -0700 (PDT)
Received: by mail-il1-x131.google.com with SMTP id e9e14a558f8ab-338816ea761so2563985ab.2
        for <devicetree@vger.kernel.org>; Fri, 26 May 2023 12:51:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1685130697; x=1687722697;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dtYzXAXeeNKykjIC6M7yJXXgCuPRoWwM64ZY3vwKseo=;
        b=krrqjwzG0OD+yq/+F1IXnoT3w/i5wc3gnTF+joEnO72SMkKoReQHp+SZAyx0MVRFf/
         QBLWlyR8PUAVM5TAEZ0oE7MM/3O3lxX/JgNOnwaBU22kKS+skkUD3ZWkEcly9esiMLTI
         tCcupEPW+JUN+2aME/0mjDR5QqBxWso9OF/jQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685130697; x=1687722697;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dtYzXAXeeNKykjIC6M7yJXXgCuPRoWwM64ZY3vwKseo=;
        b=XdjWez20Nog/BmIZxO8qox3RT8nW3qu62lS3dFjt765ee7j6uVL1YAxSZhjWDNDV5d
         El9RqSWDm4DG4ugNRiE3E3U0WHYjhrxgrXrygZRq+lPHx2Npc2miiNuQhydM/Gs17lwO
         6FO70J7Y5whiIU26h1qquo9haLM0GnAa8xABDEyqgQWOGjC3ZWI8InioN2A+rSrVZzW4
         Av72Jaf7L3dKifnd2B2cjm5HPGft93w07xdqgAhSdk2zW5ImGCpbrErAZ1OXrnHiKuLK
         1hEtxeWvRnXqmWnpLV8GonQQ9yeud00ELvJ2z5lQQRSB5hymrS6J+B99z3M4MOXU0/Zg
         lCjA==
X-Gm-Message-State: AC+VfDzMLrb8AMu4slI4D8tyd/wUfNsIsDCQ8rDI3hc8KxnQf0zSChB3
        xnShZsAFEnumYWmJJZPsxr/uHdEb0zxETNTaSfM=
X-Google-Smtp-Source: ACHHUZ5DJjJxnHxYxvqz7OzE35zJZga/6M7d33IkuS0G5X0me5qFK6N88IAKyderLAqy1ndvofip1g==
X-Received: by 2002:a92:d809:0:b0:33b:f86:d2ac with SMTP id y9-20020a92d809000000b0033b0f86d2acmr374984ilm.1.1685130696876;
        Fri, 26 May 2023 12:51:36 -0700 (PDT)
Received: from mail-il1-f177.google.com (mail-il1-f177.google.com. [209.85.166.177])
        by smtp.gmail.com with ESMTPSA id m11-20020a92cacb000000b003358f4eb209sm146971ilq.60.2023.05.26.12.51.35
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 May 2023 12:51:36 -0700 (PDT)
Received: by mail-il1-f177.google.com with SMTP id e9e14a558f8ab-33b0848c04aso4325ab.1
        for <devicetree@vger.kernel.org>; Fri, 26 May 2023 12:51:35 -0700 (PDT)
X-Received: by 2002:a92:ca0a:0:b0:331:2623:c5f4 with SMTP id
 j10-20020a92ca0a000000b003312623c5f4mr30715ils.1.1685130695437; Fri, 26 May
 2023 12:51:35 -0700 (PDT)
MIME-Version: 1.0
References: <20230526100801.16310-1-uwu@icenowy.me> <CAD=FV=UxrFVZXn+dtgamttTVopWMSVbxYsHCGG_tS+3OTXbHiw@mail.gmail.com>
 <0803e9037a8a2ce96fdad6ec209991dcda2a30ca.camel@icenowy.me>
In-Reply-To: <0803e9037a8a2ce96fdad6ec209991dcda2a30ca.camel@icenowy.me>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 26 May 2023 12:51:22 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WS5i4RYknEaOi+4448UASh9kNncU4mwnawqKPr7yGXRg@mail.gmail.com>
Message-ID: <CAD=FV=WS5i4RYknEaOi+4448UASh9kNncU4mwnawqKPr7yGXRg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: mediatek: mt8173-elm: remove panel model
 number in DT
To:     Icenowy Zheng <uwu@icenowy.me>
Cc:     Pin-yen Lin <treapking@chromium.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org
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

Hi,

On Fri, May 26, 2023 at 8:33=E2=80=AFAM Icenowy Zheng <uwu@icenowy.me> wrot=
e:
>
> =E5=9C=A8 2023-05-26=E6=98=9F=E6=9C=9F=E4=BA=94=E7=9A=84 07:24 -0700=EF=
=BC=8CDoug Anderson=E5=86=99=E9=81=93=EF=BC=9A
> > Hi,
> >
> > On Fri, May 26, 2023 at 3:09=E2=80=AFAM Icenowy Zheng <uwu@icenowy.me> =
wrote:
> > >
> > > Currently a specific panel number is used in the Elm DTSI, which is
> > > corresponded to a 12" panel. However, according to the official
> > > Chrome
> > > OS devices document, Elm refers to Acer Chromebook R13, which, as
> > > the
> > > name specifies, uses a 13.3" panel, which comes with EDID
> > > information.
> > >
> > > As the kernel currently prioritizes the hardcoded timing parameters
> > > matched with the panel number compatible, a wrong timing will be
> > > applied
> > > to the 13.3" panel on Acer Chromebook R13, which leads to blank
> > > display.
> > >
> > > Because the Elm DTSI is shared with Hana board, and Hana
> > > corresponds to
> > > multiple devices from 11" to 14", a certain panel model number
> > > shouldn't
> > > be present, and driving the panel according to its EDID information
> > > is
> > > necessary.
> > >
> > > Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> > > ---
> > >  arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > We went through a bunch of back-and-forth here but in the end in the
> > ChromeOS tree we have "edp-panel" as the "compatible" here in the
> > ChromeOS 5.15 tree and this makes sense.
>
> I only have Elm, so I am curious that do all Hana's only rely on panel
> EDID to use different displays?
>
> BTW The Chrome OS document say that Elm and Hana are both board based
> on Oak baseboard, should the DTSI be renamed mt8173-oak.dtsi, and still
> let mt8173-elm.dts include it and then set model information?

I wasn't deeply involved in mt8173, so I'll let treapking@ comment. I
think he's done some research here recently.


> > Reviewed-by: Douglas Anderson <dianders@chromium.org>
> >
> > ...in theory one would wish for a "Fixes" tag, but I think in
> > previous
> > discussions it was decided that it was too complicated. Hardcoding
> > the
> > other compatible string has always been technically wrong, but I
> > guess
> > it worked at some point in time. The more correct way (as you're
> > doing
> > here) needs the DP AUX bus support and the generic eDP panels, both
> > of
> > which are significantly newer than the elm dts. So I guess leaving no
> > "Fixes" tag is OK, or perhaps you could do the somewhat weak:
>
> Well I remembered when I was developing the support for Pine64
> Pinebook, which is also an ARM64 laptop with an eDP panel (via a DPI-
> eDP bridge, ANX6345). At first I didn't use any panel node in the DT,
> and the kernel maintainers argued to the bridge that seems to be
> connected to nothing (because DP is a discoverable port), and
> fortunately 2 Pinebook SKUs (11.6" and 14") is finally reduced to one,
> and it's then possible to hardcode a panel model in the Pinebook DT.
> According to my memory, the need to specify the panel is to properly
> handle eDP panel power up timing, because it's not a very standard
> thing. (Well, in my memory, when I was testing that code, on a
> (engineering sample) 14" Pinebook, the EDID timing overrided the
> hardcoded 11.6" timing and it properly works, the 14" panel is 1366x768
> but the 11.6" panel is 1920x1080.)
>
> (BTW when I checked the DT of Olimex TERES-I, which uses the same DPI-
> eDP bridge, it is still in the status of a dangling bridge, and of
> course it works ;-) )

Before the generic eDP panel support, several devices worked according
to the "little white lie" theory. They would pick some arbitrary panel
to put in the DT because they had to, but then that panel would just
be used for the power up / power down timing and everything else would
be overridden. This was obviously not a great situation to be in, and
so we had many discussions on the mailing list about how to do better.
The end result was the generic edp-panel support.

With eDP panel support, you still need to add the timings for your
specific panel, but it was realized that in _most_ cases we could
power up the panel enough to read the "panel ID" and then we could use
that to lookup the timings. In the few cases where we needed a little
extra help (if HPD is broken or not connected), the DP folks agreed to
allow a few properties to specify it. :-) Hopefully today all new code
uses the general panel-edp.

-Doug
