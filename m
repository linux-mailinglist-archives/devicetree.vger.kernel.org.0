Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DBFC145D6CB
	for <lists+devicetree@lfdr.de>; Thu, 25 Nov 2021 10:04:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348863AbhKYJH0 convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Thu, 25 Nov 2021 04:07:26 -0500
Received: from aposti.net ([89.234.176.197]:43762 "EHLO aposti.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1346500AbhKYJFZ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 25 Nov 2021 04:05:25 -0500
Date:   Thu, 25 Nov 2021 09:02:00 +0000
From:   Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH v8 6/8] MIPS: DTS: CI20: Add DT nodes for HDMI setup
To:     Geert Uytterhoeven <geert@linux-m68k.org>
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
Message-Id: <CFE43R.SM1CDEX6QKEB3@crapouillou.net>
In-Reply-To: <CAMuHMdV5sjVg6BEm3zgvvsJDHJwKP1A8rh-sama8suCG5SYQyA@mail.gmail.com>
References: <cover.1637691240.git.hns@goldelico.com>
        <d62023e0872e9b393db736f4a0ecf04b3fc1c91b.1637691240.git.hns@goldelico.com>
        <O0K13R.TIL3JBQ5L8TO1@crapouillou.net>
        <04F0ED7C-3D18-4CCF-8F10-E0A36B0E4F4B@goldelico.com>
        <CAMuHMdWO3yosf5eyTPpydVuT3pwvuw9Q=2BUxq+rxPjE3iSnrw@mail.gmail.com>
        <B622D2B5-D631-43F3-9D50-2B41681C78AB@goldelico.com>
        <CAMuHMdV5sjVg6BEm3zgvvsJDHJwKP1A8rh-sama8suCG5SYQyA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Transfer-Encoding: 8BIT
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Geert,

Le jeu., nov. 25 2021 at 08:58:13 +0100, Geert Uytterhoeven 
<geert@linux-m68k.org> a écrit :
> Hi Nikolaus,
> 
> On Wed, Nov 24, 2021 at 5:31 PM H. Nikolaus Schaller 
> <hns@goldelico.com> wrote:
>>  > Am 24.11.2021 um 17:21 schrieb Geert Uytterhoeven 
>> <geert@linux-m68k.org>:
>>  > On Wed, Nov 24, 2021 at 5:19 PM H. Nikolaus Schaller 
>> <hns@goldelico.com> wrote:
>>  >>> Am 23.11.2021 um 21:10 schrieb Paul Cercueil 
>> <paul@crapouillou.net>:
>>  >>> Le mar., nov. 23 2021 at 19:13:59 +0100, H. Nikolaus Schaller 
>> <hns@goldelico.com> a écrit :
>>  >>>> +    assigned-clock-rates = <48000000>, <0>, <54000000>, <0>, 
>> <27000000>;
>>  >>>> };
>>  >>>> &tcu {
>>  >>>> @@ -509,6 +534,19 @@ pins_i2c4: i2c4 {
>>  >>>>             bias-disable;
>>  >>>>     };
>>  >>>> +    pins_hdmi_ddc: hdmi_ddc {
>>  >>>> +            function = "hdmi-ddc";
>>  >>>> +            groups = "hdmi-ddc";
>>  >>>> +            bias-disable;
>>  >>>> +    };
>>  >>>> +
>>  >>>> +    /* switch to PF25 as gpio driving DDC_SDA low */
>>  >>>> +    pins_hdmi_ddc_unwedge: hdmi_ddc {
>>  >>>> +            function = "hdmi-ddc";
>>  >>>> +            groups = "hdmi-ddc";
>>  >>>> +            bias-disable;
>>  >>>> +    };
>>  >>>
>>  >>> Your pins_hdmi_ddc and pins_hdmi_ddc_unwedge are the exact 
>> same? You could just use the former and pass it to both pinctrl-0 
>> and pinctrl-1.
>>  >>
>>  >> This was forgotten to remove. We do not make use of the unwedge 
>> feature because I could not find out how to use pinctrl to switch 
>> this to gpio25 and drive it low.
>>  >
>>  > Using gpio-hog?
>> 
>>  well, AFAIR it activates the gpio permanently and is a propery of 
>> the gpio controller and not of pinmux.
> 
> Yes, hogs are permanently (ignoring DT overlay tricks).
> 
>>  The driver assumes it can use pinmux state switching to drive the 
>> DDC_SDA line low on demand.
> 
> Add an optional wedge-gpios property for switching?

I think you can use a pinctrl state as well, specifying the pin and the 
'output-low' property.

-Paul


