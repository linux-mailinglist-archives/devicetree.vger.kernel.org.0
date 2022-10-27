Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B5F2C6102D9
	for <lists+devicetree@lfdr.de>; Thu, 27 Oct 2022 22:42:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235958AbiJ0UmR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Oct 2022 16:42:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234943AbiJ0UmQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Oct 2022 16:42:16 -0400
Received: from mail-vk1-xa34.google.com (mail-vk1-xa34.google.com [IPv6:2607:f8b0:4864:20::a34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2FB4F62A84
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 13:42:15 -0700 (PDT)
Received: by mail-vk1-xa34.google.com with SMTP id g26so1458649vkm.12
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 13:42:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8g/NvpXF90lFd3MK6y1uk8Tp2PL5UqO5GTNCv7dIPN8=;
        b=mfcsfrDE3cI/GmCb3UBhTkX6gdZNSZz8f0vHfemZ3spIk9sGzim525YmQAu3FndJM/
         DyNGThWRZ+hL0jEqnxsVkKqwq7Qofv7yjYruWxi1JYVVH80AYmwFKsjuOrshqQVUUJXt
         GDyodQj01+3C1NUg31BGShO3HSqO3ziCeznVc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8g/NvpXF90lFd3MK6y1uk8Tp2PL5UqO5GTNCv7dIPN8=;
        b=bIvMTKd1elMhRd2D1WVeYaYGjOjVHSXSQM1OSbYOdgSTesPLc8F39zM5N4CpRMs+9V
         z+kcSjUegBthvXSysqyQ/zNk4GtfyXMlC9J9nG1bCyUHVwkpETmxlDFU2wn8vb8Nwyvx
         XunidBxBkTwYrRzeXtZ98kCKHdoKqFwpPdjkszC3to6KmBsUdrAE20ttBWYLZYbRqU9d
         OKigZCxTh2LPmJzxQ66dWDwLbobbfExC8cQVeg+k95j6s8bPHqHVS05PDCRa/hTih0ov
         4BXgnFzTbuzL9FmWnZPTrcsTByLf0u8oBdWnUTqvc8m5eWg4UWHg5TF++MYSHE/XtZV4
         C5jQ==
X-Gm-Message-State: ACrzQf2jqonzDhIGHdgpctYO1ney6y+axqYhy6CiLmCEyDnkTIOJIOp7
        cSmjO49KlUACK0mcRoO3Gh+FlZJ2P5HSbteCq+VZ0QH53Ik=
X-Google-Smtp-Source: AMsMyM5e8H7JiXPDjiqKLc+IO2hoeZk2b3j2tenM4xk6Apsvq9cUZwBocikHt7yRA3c12RqM2flZsv1TL5jE9g/WLd8=
X-Received: by 2002:a1f:9116:0:b0:3a2:362b:fea9 with SMTP id
 t22-20020a1f9116000000b003a2362bfea9mr27041203vkd.11.1666903334314; Thu, 27
 Oct 2022 13:42:14 -0700 (PDT)
MIME-Version: 1.0
References: <20221024220015.1759428-1-nfraprado@collabora.com>
 <20221024220015.1759428-3-nfraprado@collabora.com> <CAGXv+5HJo5x2ieOegmv5vkfh+rTevdR_fri-7PeK+Gd+GXVjNw@mail.gmail.com>
 <20221027143627.nbbketezqunkclxh@notapiano> <CAGXv+5Hki=VsvZrtANujFYseBp0Lxj4WVf3nzT7cx1kkMmWPFg@mail.gmail.com>
 <CAGXv+5EZO0+Af-Fmz8JW0SiV+b5He8ZSrinJ3TtaCP0vEoW1Mg@mail.gmail.com> <20221027192015.qbmf4bwwok63wytz@notapiano>
In-Reply-To: <20221027192015.qbmf4bwwok63wytz@notapiano>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Thu, 27 Oct 2022 13:42:01 -0700
Message-ID: <CAGXv+5H3B33cTJ7mxd11D3WALHo90fCdTXKXZRfnaK4GATnPMA@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] ASoC: dt-bindings: realtek, rt5682s: Add AVDD and
 MICVDD supplies
To:     =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= 
        <nfraprado@collabora.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org, Liam Girdwood <lgirdwood@gmail.com>,
        linux-kernel@vger.kernel.org, Derek Fang <derek.fang@realtek.com>,
        kernel@collabora.com,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Oct 27, 2022 at 12:20 PM N=C3=ADcolas F. R. A. Prado
<nfraprado@collabora.com> wrote:
>
> On Thu, Oct 27, 2022 at 11:11:08AM -0700, Chen-Yu Tsai wrote:
> > On Thu, Oct 27, 2022 at 10:48 AM Chen-Yu Tsai <wenst@chromium.org> wrot=
e:
> > >
> > > On Thu, Oct 27, 2022 at 7:36 AM N=C3=ADcolas F. R. A. Prado
> > > <nfraprado@collabora.com> wrote:
> > > >
> > > > On Tue, Oct 25, 2022 at 01:12:49PM -0700, Chen-Yu Tsai wrote:
> > > > > On Mon, Oct 24, 2022 at 3:01 PM N=C3=ADcolas F. R. A. Prado
> > > > > <nfraprado@collabora.com> wrote:
> > > > > >
> > > > > > The rt5682s codec can have two supplies: AVDD and MICVDD. They =
are
> > > > >
> > > > > The actual chip also has LDO1_IN (for digital core and charge pum=
p)
> > > > > and DBVDD (for I/O). However in the Chromebook designs these two
> > > > > and AVDD are all provided from the same power rail, through separ=
ate
> > > > > filter banks.
> > > >
> > > > What about rt5682 (no s), does that chip also have these same suppl=
ies?
> >
> > (Missed this question)
> >
> > The RT5682 has the same supplies, plus the VBAT one.
> >
> > ChenYu
> >
> > > > Also, since you already gave the purpose of these other supplies, c=
ould you also
> > > > tell the purpose of AVDD, MICVDD and (for rt5682) VBAT? That way I =
could add
> > > > some description for them in the binding.
> > >
> > > As Mark mentioned in his reply, these are quite standard names.
> > >
> > > AVDD is for the analog bits. MICVDD is for the microphone bias.
> > > VBAT is called battery power in the datasheet. The block diagram
> > > shows it going through an internal controllable LDO whose output
> > > then powers MICVDD. This could be used in designs that don't
> > > include a suitable external supply for MICVDD. If MICVDD is provided,
> > > then one would turn the internal LDO off.
> > >
> > > So either VBAT or MICVDD has to be provided.
>
> So if I get this right we should be making the following supplies require=
d:
> AVDD
> VBAT or MICVDD (on rt5682s there's no VBAT so just MICVDD)

That's right.

> And for LDO1_ON and DBVDD what would be the best way to model? Should we =
make
> them required in the binding as well and add them pointing to the same re=
gulator
> from AVDD in the chromebook DT or just leave them as optional?

They should be required. And we then describe them to match the board.

ChenYu

> Thanks,
> N=C3=ADcolas
>
> > >
> > > ChenYu
> > >
> > > > Thanks,
> > > > N=C3=ADcolas
> > > >
> > > > >
> > > > > Neither does the datasheet specify the ordering of AVDD, DBVDD, a=
nd
> > > > > LDO1_IN for power sequencing, just that three should be toggled t=
ogether.
> > > > >
> > > > > Should we model these? Or wait until some design actually splits =
these?
> > > > [..]
