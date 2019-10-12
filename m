Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 767D0D50A0
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2019 17:16:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729146AbfJLPPg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 12 Oct 2019 11:15:36 -0400
Received: from mail-oi1-f193.google.com ([209.85.167.193]:42935 "EHLO
        mail-oi1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727423AbfJLPPg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 12 Oct 2019 11:15:36 -0400
Received: by mail-oi1-f193.google.com with SMTP id i185so10414712oif.9
        for <devicetree@vger.kernel.org>; Sat, 12 Oct 2019 08:15:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9TuWZL8fm8tHubBKGz9o0y6mbP3/Vd2gcfxdZuF+lAc=;
        b=CqWF2eYvWlLpv7EIKbCwalYdS6XRVZD0rFMMYIRCkqkANq2NwTpkAUqOfMHn0IWCx1
         3Z2xC2U42EnINUij8UZl+S1lALDqhByRstgB/wNMIMojBTjznQeD+2ikKMljQaU1JrZ9
         tOzzHAHRG45EV3LDV+RMkFVHoWbhwtVV+5nQDCxeyCGTF8C28+AjNRlWSqiuVSRNquEO
         zY+y/8Q16X88W/cBsWsJbK7AcARaAVuBgxk4jdcNd2UkPlr6x8b3dRAif5z52rSqwt6P
         kNYaiRwz6LpaZF6lBNnMWYoCohklK0x/u+h+wfa5jI/hqCZfahfCy6dsXVjnkq25uvZh
         7GcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9TuWZL8fm8tHubBKGz9o0y6mbP3/Vd2gcfxdZuF+lAc=;
        b=BMtSkT0I4BJHb7jo7KP9mk8yGNSy/CWhzCnSoO2j3336PZWXvrOA7g1NptDRlKLSsV
         zvOvkFUYALGoaPpuo9KA0zJaBN/0qhM3YEPjIdWnqSilHQlsbOVJWj7wa7bBkNyRY50s
         STS90RttNP5Y/V8FyhwVaUBRiGwVaKQCa0mCLcxLMmO4JO1zmAis+cum5lRNn8HFcVjO
         NrJRr5tYQXbg5E9L/wdNpJ6STyTRRb+7II0UtfO1ueIj3JwuKec1zF4FhWwWGehwrp3n
         HZVBw1GvdXkUQWx7I66SxoMWPT8Vgc9GMDAjURQutr3rmK1mQQJJgUlcsBY31vvY/mAw
         C7tg==
X-Gm-Message-State: APjAAAVnRl2fHe9rotikIzNOmv78i1j1EXnDpgIfLK6GxaplT3VxR6Ae
        b25LbTMMqIpXixLkZEtfd3VyeZfZ4tyazIq14G+1wg==
X-Google-Smtp-Source: APXvYqwLyLRZZEIcDIb3bCKrTvubetBOeIB24B4ZwAkkq8gO5Z4Qs11iRGUNSNx8o4VRiLo7+XBfa1Ebo2ZgAANyXe0=
X-Received: by 2002:aca:4382:: with SMTP id q124mr17255559oia.23.1570893333325;
 Sat, 12 Oct 2019 08:15:33 -0700 (PDT)
MIME-Version: 1.0
References: <20191005085509.187179-1-tzungbi@google.com> <20191005164320.09.Iec97a3f137148cdf316056612590b3e0b302f5f3@changeid>
 <20191011152029.GA18877@bogus>
In-Reply-To: <20191011152029.GA18877@bogus>
From:   Tzung-Bi Shih <tzungbi@google.com>
Date:   Sat, 12 Oct 2019 23:15:22 +0800
Message-ID: <CA+Px+wWRSyL4fHg_9VE1xu5ToP7dG+o+ooVKj3ucp8rB9Td_kw@mail.gmail.com>
Subject: Re: [PATCH v2 09/10] ASoC: dt-bindings: mt8183: add ec-codec
To:     Rob Herring <robh@kernel.org>
Cc:     Mark Brown <broonie@kernel.org>,
        ALSA development <alsa-devel@alsa-project.org>,
        devicetree@vger.kernel.org,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Benson Leung <bleung@google.com>,
        Gwendal Grignou <gwendal@google.com>,
        Nicolas Boichat <drinkcat@google.com>,
        Jimmy Cheng-Yi Chiang <cychiang@google.com>,
        Dylan Reid <dgreid@google.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Oct 11, 2019 at 11:20 PM Rob Herring <robh@kernel.org> wrote:
>
> On Sat, Oct 05, 2019 at 04:55:08PM +0800, Tzung-Bi Shih wrote:
> > Add an optional property "ec-codec".  If specified, mt8183 could use the
> > "wake on voice" feature offered by EC codec.
> >
> > Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
> > ---
> >  .../bindings/sound/mt8183-mt6358-ts3a227-max98357.txt          | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/sound/mt8183-mt6358-ts3a227-max98357.txt b/Documentation/devicetree/bindings/sound/mt8183-mt6358-ts3a227-max98357.txt
> > index 17ff3892f439..decaa013a07e 100644
> > --- a/Documentation/devicetree/bindings/sound/mt8183-mt6358-ts3a227-max98357.txt
> > +++ b/Documentation/devicetree/bindings/sound/mt8183-mt6358-ts3a227-max98357.txt
> > @@ -6,12 +6,15 @@ Required properties:
> >
> >  Optional properties:
> >  - mediatek,headset-codec: the phandles of ts3a227 codecs
> > +- mediatek,ec-codec: the phandle of EC codecs.
> > +                     See google,cros-ec-codec.txt for more details.
>
> Not the best designed audio binding here. We really should just have
> links to codecs and then you can look at the codec nodes to determine
> the type.

Did you mean: we should use an "audio-codec" array.  In the machine
driver, we should maintain a table of correspondence of compatible
string and the related context.  And use of_device_is_compatible( ) to
determine their types?  Something similar to
https://elixir.bootlin.com/linux/v5.3.5/source/sound/soc/rockchip/rk3399_gru_sound.c#L436

>
> >
> >  Example:
> >
> >       sound {
> >               compatible = "mediatek,mt8183_mt6358_ts3a227_max98357";
>
> Don't you need to add EC codec to this? Just kidding. Just highlighting
> the weirdness of this binding.

Could you explain some?  I cannot understand the "weird" here.  I
thought add the property "mediatek,ec-codec" could be enough.
Or did you mean: the compatible string should reflect the EC codec presence?

>
> >               mediatek,headset-codec = <&ts3a227>;
> > +             mediatek,ec-codec = <&ec_codec>;
> >               mediatek,platform = <&afe>;
> >       };
> >
> > --
> > 2.23.0.581.g78d2f28ef7-goog
> >
