Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E6A9063FD2
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2019 06:12:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726127AbfGJEMR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Jul 2019 00:12:17 -0400
Received: from mail-vs1-f65.google.com ([209.85.217.65]:37824 "EHLO
        mail-vs1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726122AbfGJEMR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Jul 2019 00:12:17 -0400
Received: by mail-vs1-f65.google.com with SMTP id v6so622785vsq.4
        for <devicetree@vger.kernel.org>; Tue, 09 Jul 2019 21:12:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jsT84thXZgrjljKWPHUjY7JeFgImc9+U4hEoxyiTJcc=;
        b=bWsVGu9ZtrSBJl4JbELamsoGGvbUEuoJyLkzEdD/lBLkOe2SuDywqNJvjhLcdkFQIV
         uQzhsHZfClHSSErFS8YngoK5icUK/zOzfk2MyJE77f/EpBtLGiDl5OLXwZaYMg1H4xvi
         8bZw2KyzNEgXQhxeZxd3j43hSpSd9KAK3Vxwk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jsT84thXZgrjljKWPHUjY7JeFgImc9+U4hEoxyiTJcc=;
        b=D11IsTWsjEoskBwV40GN1rT8fxkJt4YfMap0Y66TbaSNW5sWFCi39wIPpTP0meSSXB
         GRsbXHemG1weA5qwULDp0JZHzHAxH5BeKotwuK9ogxeB16KCa7cs+R5UDvgyuWEnrY3/
         pKoQhSibm4wi8TMcNFW9jC66JhKDbRGcwA3HGkd1pbBCgbibQ8sAdz75mbHzpsJjcT6h
         uN7SQTAX3/o0isviH+up8UZotuH6DWB8Dnk9yS/Sf1Mj0ItHhQfi9qfbuj/UGCZu/QQr
         0Xgte09aLqrsD+AIGC/6Sk9rFwFYNqAsSLa7ezp58AVl2kTOORNYhqngmYA3/+fnVrKq
         YlNQ==
X-Gm-Message-State: APjAAAV8tCNYDdR/h+1pT6rEecKb+p1Ss4/mgANow4YJBPngcEmc8k3d
        DAI8VFiAE4MchIOSMJ1ONv3pIO7I7I0zyixn5ou+VQ==
X-Google-Smtp-Source: APXvYqwRDoiekjMfVg1dAkd95CbZGZ3jhAzyHEQ1N/LeXKKIJksHQNLAm0BnKpQtXYeH+ZnDwbVN+JmCCFjQkCNhqMc=
X-Received: by 2002:a67:f7cd:: with SMTP id a13mr14190782vsp.163.1562731935844;
 Tue, 09 Jul 2019 21:12:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190603043251.226549-1-cychiang@chromium.org>
 <20190603043251.226549-6-cychiang@chromium.org> <20190709200121.GA19118@bogus>
In-Reply-To: <20190709200121.GA19118@bogus>
From:   Cheng-yi Chiang <cychiang@chromium.org>
Date:   Wed, 10 Jul 2019 12:11:48 +0800
Message-ID: <CAFv8NwLiKu055S7apzj+gTYh0neQ5rLmPYEYkEj6Zf3hikWWpA@mail.gmail.com>
Subject: Re: [PATCH 5/7] ASoC: rockchip: rockchip-max98090: Add node for HDMI
To:     Rob Herring <robh@kernel.org>
Cc:     linux-kernel <linux-kernel@vger.kernel.org>,
        Hans Verkuil <hverkuil@xs4all.nl>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Takashi Iwai <tiwai@suse.com>,
        Jaroslav Kysela <perex@perex.cz>,
        Russell King <rmk+kernel@armlinux.org.uk>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Heiko Stuebner <heiko@sntech.de>,
        Doug Anderson <dianders@chromium.org>,
        Dylan Reid <dgreid@chromium.org>, tzungbi@chromium.org,
        linux-media@vger.kernel.org,
        "moderated list:SOUND - SOC LAYER / DYNAMIC AUDIO POWER MANAGEM..." 
        <alsa-devel@alsa-project.org>, dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 10, 2019 at 4:01 AM Rob Herring <robh@kernel.org> wrote:
>
> On Mon, Jun 03, 2019 at 12:32:49PM +0800, Cheng-Yi Chiang wrote:
> > Let user specify HDMI node so machine driver can use it to let codec
> > driver register callback on correct hdmi-notifier.
> >
> > Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
> > ---
> >  Documentation/devicetree/bindings/sound/rockchip-max98090.txt | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/sound/rockchip-max98090.txt b/Documentation/devicetree/bindings/sound/rockchip-max98090.txt
> > index a805aa99ad75..dae57c14864e 100644
> > --- a/Documentation/devicetree/bindings/sound/rockchip-max98090.txt
> > +++ b/Documentation/devicetree/bindings/sound/rockchip-max98090.txt
> > @@ -7,6 +7,7 @@ Required properties:
> >    connected to the CODEC
> >  - rockchip,audio-codec: The phandle of the MAX98090 audio codec
> >  - rockchip,headset-codec: The phandle of Ext chip for jack detection
> > +- rockchip,hdmi: The phandle of HDMI node for HDMI jack detection
> >
> >  Example:
> >
> > @@ -16,4 +17,5 @@ sound {
> >       rockchip,i2s-controller = <&i2s>;
> >       rockchip,audio-codec = <&max98090>;
> >       rockchip,headset-codec = <&headsetcodec>;
> > +     rockchip,hdmi= <&hdmi>;
>
> space                ^
>
> With that,
>
> Acked-by: Rob Herring <robh@kernel.org>
>
Hi Rob,
Thank you for the review.
But I have changed the approach in v2 so there is no need for machine
driver to expose this property.
Thanks!
> >  };
> > --
> > 2.22.0.rc1.257.g3120a18244-goog
> >
