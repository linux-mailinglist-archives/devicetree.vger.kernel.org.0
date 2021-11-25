Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3973C45D6EF
	for <lists+devicetree@lfdr.de>; Thu, 25 Nov 2021 10:15:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346480AbhKYJSf convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Thu, 25 Nov 2021 04:18:35 -0500
Received: from mail-pf1-f181.google.com ([209.85.210.181]:38683 "EHLO
        mail-pf1-f181.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349094AbhKYJQf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Nov 2021 04:16:35 -0500
Received: by mail-pf1-f181.google.com with SMTP id g18so5350624pfk.5
        for <devicetree@vger.kernel.org>; Thu, 25 Nov 2021 01:13:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=ZH2XAZ/Eaf3IZAmxIiisXLJTOuzLSNJMBtFo9ayColY=;
        b=V/1b5ggG7J9YCkfK5avT681alGfspl1PSxZmseTveTWjeSbfNS9K8ERp2ycZPiDHKq
         mGjW4jYZzC+Pc0Y47V3rjsnyuseBk4Uwg+4S2Nth2p7I1AgYMkmyl5TreT3AijxX0RPq
         YOKWCLV+i7IRYILAMv0Usr/QU5QVBZkZmhx/mf+OWqBAaNHbfWhv1/vl0f2kGH9RLxXM
         2Vu/RPuDM48kr//ffvJ3p1RhvtxhmXSIHCRuohtgDRlWxPsV+L+XmvMkoJQ+szgQ7qCI
         MFAWLUSS41xj7drDVIV5Ml0qf83NJtm72ZX+EQonJ/HoNVPWrg6j0nW9gO8/5ENDXVpn
         0QJQ==
X-Gm-Message-State: AOAM53101aFotcozxCPbAz9mWyfEEOKuiNr/b84LKkLN35rTu1FoJqTl
        zeVcrdfP7YTs/voYox9l/Xn4xOU6n2GmeQ==
X-Google-Smtp-Source: ABdhPJxFRiIZWfAEgVr510PvecbDx+xVxVu2W2KcojNnLIVAqp/lBo5a/ZtHl1NJAg+JdAhRBp3jYQ==
X-Received: by 2002:a65:554f:: with SMTP id t15mr1184261pgr.573.1637831603920;
        Thu, 25 Nov 2021 01:13:23 -0800 (PST)
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com. [209.85.216.51])
        by smtp.gmail.com with ESMTPSA id hg4sm6906879pjb.1.2021.11.25.01.13.23
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Nov 2021 01:13:23 -0800 (PST)
Received: by mail-pj1-f51.google.com with SMTP id p18-20020a17090ad31200b001a78bb52876so7305562pju.3
        for <devicetree@vger.kernel.org>; Thu, 25 Nov 2021 01:13:23 -0800 (PST)
X-Received: by 2002:a67:c106:: with SMTP id d6mr7188381vsj.77.1637831592754;
 Thu, 25 Nov 2021 01:13:12 -0800 (PST)
MIME-Version: 1.0
References: <cover.1637691240.git.hns@goldelico.com> <d62023e0872e9b393db736f4a0ecf04b3fc1c91b.1637691240.git.hns@goldelico.com>
 <O0K13R.TIL3JBQ5L8TO1@crapouillou.net> <04F0ED7C-3D18-4CCF-8F10-E0A36B0E4F4B@goldelico.com>
 <CAMuHMdWO3yosf5eyTPpydVuT3pwvuw9Q=2BUxq+rxPjE3iSnrw@mail.gmail.com>
 <B622D2B5-D631-43F3-9D50-2B41681C78AB@goldelico.com> <CAMuHMdV5sjVg6BEm3zgvvsJDHJwKP1A8rh-sama8suCG5SYQyA@mail.gmail.com>
 <CFE43R.SM1CDEX6QKEB3@crapouillou.net>
In-Reply-To: <CFE43R.SM1CDEX6QKEB3@crapouillou.net>
From:   Geert Uytterhoeven <geert@linux-m68k.org>
Date:   Thu, 25 Nov 2021 10:13:01 +0100
X-Gmail-Original-Message-ID: <CAMuHMdU8v+pu0faQ8U-=9HAwwOfOh97O8AXv3Rp_VaZ+LiyzxQ@mail.gmail.com>
Message-ID: <CAMuHMdU8v+pu0faQ8U-=9HAwwOfOh97O8AXv3Rp_VaZ+LiyzxQ@mail.gmail.com>
Subject: Re: [PATCH v8 6/8] MIPS: DTS: CI20: Add DT nodes for HDMI setup
To:     Paul Cercueil <paul@crapouillou.net>
Cc:     "H. Nikolaus Schaller" <hns@goldelico.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Kees Cook <keescook@chromium.org>,
        "Eric W. Biederman" <ebiederm@xmission.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Ezequiel Garcia <ezequiel@collabora.com>,
        Harry Wentland <harry.wentland@amd.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Maxime Ripard <maxime@cerno.tech>,
        Hans Verkuil <hverkuil-cisco@xs4all.nl>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Paul Boddie <paul@boddie.org.uk>,
        OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8BIT
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Paul,

On Thu, Nov 25, 2021 at 10:02 AM Paul Cercueil <paul@crapouillou.net> wrote:
> Le jeu., nov. 25 2021 at 08:58:13 +0100, Geert Uytterhoeven
> <geert@linux-m68k.org> a écrit :
> > On Wed, Nov 24, 2021 at 5:31 PM H. Nikolaus Schaller
> > <hns@goldelico.com> wrote:
> >>  > Am 24.11.2021 um 17:21 schrieb Geert Uytterhoeven
> >> <geert@linux-m68k.org>:
> >>  > On Wed, Nov 24, 2021 at 5:19 PM H. Nikolaus Schaller
> >> <hns@goldelico.com> wrote:
> >>  >>> Am 23.11.2021 um 21:10 schrieb Paul Cercueil
> >> <paul@crapouillou.net>:
> >>  >>> Le mar., nov. 23 2021 at 19:13:59 +0100, H. Nikolaus Schaller
> >> <hns@goldelico.com> a écrit :
> >>  >>>> +    assigned-clock-rates = <48000000>, <0>, <54000000>, <0>,
> >> <27000000>;
> >>  >>>> };
> >>  >>>> &tcu {
> >>  >>>> @@ -509,6 +534,19 @@ pins_i2c4: i2c4 {
> >>  >>>>             bias-disable;
> >>  >>>>     };
> >>  >>>> +    pins_hdmi_ddc: hdmi_ddc {
> >>  >>>> +            function = "hdmi-ddc";
> >>  >>>> +            groups = "hdmi-ddc";
> >>  >>>> +            bias-disable;
> >>  >>>> +    };
> >>  >>>> +
> >>  >>>> +    /* switch to PF25 as gpio driving DDC_SDA low */
> >>  >>>> +    pins_hdmi_ddc_unwedge: hdmi_ddc {
> >>  >>>> +            function = "hdmi-ddc";
> >>  >>>> +            groups = "hdmi-ddc";
> >>  >>>> +            bias-disable;
> >>  >>>> +    };
> >>  >>>
> >>  >>> Your pins_hdmi_ddc and pins_hdmi_ddc_unwedge are the exact
> >> same? You could just use the former and pass it to both pinctrl-0
> >> and pinctrl-1.
> >>  >>
> >>  >> This was forgotten to remove. We do not make use of the unwedge
> >> feature because I could not find out how to use pinctrl to switch
> >> this to gpio25 and drive it low.
> >>  >
> >>  > Using gpio-hog?
> >>
> >>  well, AFAIR it activates the gpio permanently and is a propery of
> >> the gpio controller and not of pinmux.
> >
> > Yes, hogs are permanently (ignoring DT overlay tricks).
> >
> >>  The driver assumes it can use pinmux state switching to drive the
> >> DDC_SDA line low on demand.
> >
> > Add an optional wedge-gpios property for switching?
>
> I think you can use a pinctrl state as well, specifying the pin and the
> 'output-low' property.

Yes, if the pin controller supports that.  From Niklaus' emails, I was
under the impression it doesn't.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
