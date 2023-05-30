Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 209277169CE
	for <lists+devicetree@lfdr.de>; Tue, 30 May 2023 18:37:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230298AbjE3QhH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 May 2023 12:37:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52258 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232386AbjE3QhG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 May 2023 12:37:06 -0400
Received: from mail-il1-x12e.google.com (mail-il1-x12e.google.com [IPv6:2607:f8b0:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9CD8A1B1
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 09:36:51 -0700 (PDT)
Received: by mail-il1-x12e.google.com with SMTP id e9e14a558f8ab-33b508a371cso15803945ab.1
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 09:36:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1685464609; x=1688056609;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XmljBxLjijPPRFlX5mO8wqHeqzDYN0rcYWjJkP07F34=;
        b=Q3fCEgo6ee8C0yqU75pmQFn1e0meUnO4bOKNQXsgA/naV/EsIoRwh+U086HoV+Ik22
         eP8CBhOZo5mQA2W33iLZIoPmziv2jZfLQb9BIaI38WhF2ZEYpcGTLB9KY1QjwFcyAfUR
         QkVdyX1Eo4PcP/ia6TfEag07rgRjztFllSuC0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685464609; x=1688056609;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XmljBxLjijPPRFlX5mO8wqHeqzDYN0rcYWjJkP07F34=;
        b=a9TnKdojL+ikOYOkm0v7TZSAFSq114Ze3Yf4pQ5HWU7s336lE6tbSWzguM9HjZaKj7
         5k7uI2rmj1MNf61qBIfgYUQuO93AiYwluR215lqlon4mhZK9FJ01fBGnPbfv2OhBy897
         LV6SN6cw4un/fyakie0aqnr0eVwI6K/r3vsh4yRE9I7sYm1NRTpAll9UnJ8cgycG8Bvq
         yEjqzaO+makGjOold6Li/HEmv+hwwYegwOhfVTInDJ/3aCYgzZPkWK50VrtWZC7KDlEA
         1YvP6bSO2wb25SkkaxQahLlq8UJWm3bbJ5T7KUdMUCFb4q9HUFKpTzwJ1ETFfvuky6wR
         XUtg==
X-Gm-Message-State: AC+VfDxwzsi6yz5x7pzHBtt2SCYSW75e2YIbTdNYPyIaZtm8tL+wfHtn
        /jiqKoOhrn9wLfzsxhN+Xza52q6GF9fVSOQ+SRo=
X-Google-Smtp-Source: ACHHUZ7HQLPESeRre1TO8ihKdm3ew1+ynFe6PVvchrT05rsxtOwWRYxugd0ALekbH2zEbu73r/c5jg==
X-Received: by 2002:a92:d949:0:b0:339:f011:77f8 with SMTP id l9-20020a92d949000000b00339f01177f8mr87350ilq.16.1685464608940;
        Tue, 30 May 2023 09:36:48 -0700 (PDT)
Received: from mail-il1-f180.google.com (mail-il1-f180.google.com. [209.85.166.180])
        by smtp.gmail.com with ESMTPSA id h18-20020a92c092000000b00330a9a362c8sm1479931ile.8.2023.05.30.09.36.47
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 May 2023 09:36:47 -0700 (PDT)
Received: by mail-il1-f180.google.com with SMTP id e9e14a558f8ab-33b187adfafso426395ab.1
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 09:36:47 -0700 (PDT)
X-Received: by 2002:a05:6e02:1d1e:b0:33b:4a8c:2147 with SMTP id
 i30-20020a056e021d1e00b0033b4a8c2147mr183809ila.8.1685464606562; Tue, 30 May
 2023 09:36:46 -0700 (PDT)
MIME-Version: 1.0
References: <20230515131353.v2.cover@dianders> <20230515131353.v2.2.I88dc0a0eb1d9d537de61604cd8994ecc55c0cac1@changeid>
 <CAMuHMdWM_t7uQqkesM3fnSK7THrmLszA7U54==A0-98xPH90Bw@mail.gmail.com> <868rd6cfsy.wl-maz@kernel.org>
In-Reply-To: <868rd6cfsy.wl-maz@kernel.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 30 May 2023 09:36:34 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XbD3jPuy=eqnrsTyQpq89PFW12+fy_YufcEirJ9CYt1Q@mail.gmail.com>
Message-ID: <CAD=FV=XbD3jPuy=eqnrsTyQpq89PFW12+fy_YufcEirJ9CYt1Q@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] irqchip/gic-v3: Disable pseudo NMIs on Mediatek
 devices w/ firmware issues
To:     Marc Zyngier <maz@kernel.org>
Cc:     Geert Uytterhoeven <geert@linux-m68k.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Allen-KH Cheng <allen-kh.cheng@mediatek.com>,
        linux-mediatek@lists.infradead.org,
        Eddie Huang <eddie.huang@mediatek.com>,
        Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, wenst@chromium.org,
        yidilin@chromium.org, Tinghan Shen <tinghan.shen@mediatek.com>,
        jwerner@chromium.org, Weiyi Lu <weiyi.lu@mediatek.com>,
        Ben Ho <Ben.Ho@mediatek.com>,
        Seiya Wang <seiya.wang@mediatek.com>,
        linux-kernel@vger.kernel.org,
        Linux-Renesas <linux-renesas-soc@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, May 30, 2023 at 2:46=E2=80=AFAM Marc Zyngier <maz@kernel.org> wrote=
:
>
> On Tue, 30 May 2023 09:29:02 +0100,
> Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> >
> > Hi Douglas,
> >
> > On Mon, May 15, 2023 at 10:16=E2=80=AFPM Douglas Anderson <dianders@chr=
omium.org> wrote:
> > > Some Chromebooks with Mediatek SoCs have a problem where the firmware
> > > doesn't properly save/restore certain GICR registers. Newer
> > > Chromebooks should fix this issue and we may be able to do firmware
> > > updates for old Chromebooks. At the moment, the only known issue with
> > > these Chromebooks is that we can't enable "pseudo NMIs" since the
> > > priority register can be lost. Enabling "pseudo NMIs" on Chromebooks
> > > with the problematic firmware causes crashes and freezes.
> > >
> > > Let's detect devices with this problem and then disable "pseudo NMIs"
> > > on them. We'll detect the problem by looking for the presence of the
> > > "mediatek,broken-save-restore-fw" property in the GIC device tree
> > > node. Any devices with fixed firmware will not have this property.
> > >
> > > Our detection plan works because we never bake a Chromebook's device
> > > tree into firmware. Instead, device trees are always bundled with the
> > > kernel. We'll update the device trees of all affected Chromebooks and
> > > then we'll never enable "pseudo NMI" on a kernel that is bundled with
> > > old device trees. When a firmware update is shipped that fixes this
> > > issue it will know to patch the device tree to remove the property.
> > >
> > > In order to make this work, the quick detection mechanism of the GICv=
3
> > > code is extended to be able to look for properties in addition to
> > > looking at "compatible".
> > >
> > > Reviewed-by: Julius Werner <jwerner@chromium.org>
> > > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > > ---
> > >
> > > Changes in v2:
> > > - mediatek,gicr-save-quirk =3D> mediatek,broken-save-restore-fw
> >
> > Thanks for your patch, which is now commit 44bd78dd2b8897f5
> > ("irqchip/gic-v3: Disable pseudo NMIs on Mediatek devices w/
> > firmware issues") in v6.4-rc4.
> >
> > This causes enabling an unrelated workaround on R-Car V4H:
> >
> >     GIC: enabling workaround for GICv3: Cavium erratum 38539
> >
> > > --- a/drivers/irqchip/irq-gic-common.c
> > > +++ b/drivers/irqchip/irq-gic-common.c
> > > @@ -16,7 +16,11 @@ void gic_enable_of_quirks(const struct device_node=
 *np,
> > >                           const struct gic_quirk *quirks, void *data)
> > >  {
> > >         for (; quirks->desc; quirks++) {
> > > -               if (!of_device_is_compatible(np, quirks->compatible))
> > > +               if (quirks->compatible &&
> > > +                   !of_device_is_compatible(np, quirks->compatible))
> > > +                       continue;
> > > +               if (quirks->property &&
> > > +                   !of_property_read_bool(np, quirks->property))
> > >                         continue;
> >
> > Presumably the loop should continue if none of quirks-compatible
> > or quirks->property is set?
>
> Indeed, thanks for pointing that out. Can you give the following hack
> a go (compile tested only)?
>
> diff --git a/drivers/irqchip/irq-gic-common.c b/drivers/irqchip/irq-gic-c=
ommon.c
> index de47b51cdadb..7b591736ab58 100644
> --- a/drivers/irqchip/irq-gic-common.c
> +++ b/drivers/irqchip/irq-gic-common.c
> @@ -16,6 +16,8 @@ void gic_enable_of_quirks(const struct device_node *np,
>                           const struct gic_quirk *quirks, void *data)
>  {
>         for (; quirks->desc; quirks++) {
> +               if (!quirks->compatible && !quirks->property)
> +                       continue;

Sorry for missing this and thanks for the fix. Looks like this is
already committed, but in case it matters:

Reviewed-by: Douglas Anderson <dianders@chromium.org>
