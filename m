Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CFC7A221D2B
	for <lists+devicetree@lfdr.de>; Thu, 16 Jul 2020 09:19:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726141AbgGPHTc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Jul 2020 03:19:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37546 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726069AbgGPHTc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Jul 2020 03:19:32 -0400
Received: from mail-il1-x143.google.com (mail-il1-x143.google.com [IPv6:2607:f8b0:4864:20::143])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE9A0C061755
        for <devicetree@vger.kernel.org>; Thu, 16 Jul 2020 00:19:31 -0700 (PDT)
Received: by mail-il1-x143.google.com with SMTP id x9so4222771ila.3
        for <devicetree@vger.kernel.org>; Thu, 16 Jul 2020 00:19:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=cPaT6yZEAJv5zgMr+GGSz/mVbWAnh4CvCC7E3BFSNuo=;
        b=kFZLCLyh9bKYLfSTlRxO8mJLZZ58nkjBlTwxdrnh39p/xgaSL9wcj0VvzPOKr0LBgx
         btzVmMrpX81ZxyqoYDGXtiDb4nxpVGSSSmRo5JN/7voTi0wS1XFlPoA8LccnY6ylDkRk
         UdPVNbtQYAYjN+W2FvdC7RfG3G87fqmhY7Gk7OQfT0+NL1Wuvr+fflbaY8HgPyHetIAL
         CsVGrrBoLZI1gs+vBlLOgGzr/2LQaI9LtcfARWvI7zNgPwvkS8GsrJy1O/pk91ykntO1
         xgYvvaD4kyhhrbMpanMNDt9Itz5/EQ//1POtC2mY9W/s9BfyIyW65e0pNGaNrGe5joN7
         RgIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=cPaT6yZEAJv5zgMr+GGSz/mVbWAnh4CvCC7E3BFSNuo=;
        b=F+DdOzRCV5d49+es7mdSnv82GVubu/v87gtRuqgeE5NZ/Sp5JkBpsV3jsNNngYfgqu
         6ec1cQg6NN/5D5MdavnDU3+buwcJxqXxqzpto9nbccEH2tjB3UlplY+fu8KgP45nLHeN
         lUz3l9ISdhicmDaraTthLBlHYJtIQmWl+JlAREau10HYvDEc68fVU0PMjsxvHdDyFRh/
         T53UqAQtvHGYEuyZ89sRzPRvdw7ZSxgRkQ/M7zR2zPJk7E67tOJJSgpO6yJ+yuFAbQc8
         vnPP/EuvbHKgXrAPJuOoZfuQopYcJs7QEYI38qAKzj421AW3w8y60Cun7sCFRleNoGHb
         akqA==
X-Gm-Message-State: AOAM5323Er7us+ypN0mVjIgL4ew9rtoIy9SSeodO1qwEjpnhboKGv18g
        iBo+CeN3OkssmI87THUKN1vvt1u+KuvGx1DSSks=
X-Google-Smtp-Source: ABdhPJzmif/eCN5WZYiPDkZWSKHSviO6v4kNHP9sNOOTth0eb4+QpR2hcyzrdXQgwRVNiaiFr9IimTHeR7Nf697yfZQ=
X-Received: by 2002:a92:98c2:: with SMTP id a63mr3233353ill.246.1594883971232;
 Thu, 16 Jul 2020 00:19:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200715160209.652-1-linux.amoon@gmail.com> <20200715160209.652-3-linux.amoon@gmail.com>
 <630df1a7-8809-1af2-e424-8190a503a9d6@baylibre.com>
In-Reply-To: <630df1a7-8809-1af2-e424-8190a503a9d6@baylibre.com>
From:   Anand Moon <linux.amoon@gmail.com>
Date:   Thu, 16 Jul 2020 12:49:20 +0530
Message-ID: <CANAwSgTkFd0P0zJ48AVRWB4roQHsLainzypokYOD+L4v6gbGxw@mail.gmail.com>
Subject: Re: [PATCHv1 2/3] arm64: dts: meson-g12b-odroid-n2: Disable virtual
 wake RTC
To:     Neil Armstrong <narmstrong@baylibre.com>
Cc:     devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-amlogic@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Neil,

Thanks for your review comments.

On Thu, 16 Jul 2020 at 12:35, Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Hi,
>
> On 15/07/2020 18:02, Anand Moon wrote:
> > Disable virtual wake RTC node on Odroid N2.
> >
> > [    7.171149] meson-vrtc ff8000a8.rtc: registered as rtc0
> > [    7.182875] meson-vrtc ff8000a8.rtc: setting system clock to 1970-01-01T00:00:07 UTC (7)
> >
> > Cc: Neil Armstrong <narmstrong@baylibre.com>
> > Cc: Kevin Hilman <khilman@baylibre.com>
> > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> > ---
> > ---
> >  arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
> > index a447cba4dd53..c8c1262a7bfc 100644
> > --- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
> > +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
> > @@ -517,3 +517,7 @@ &usb2_phy1 {
> >       /* Enable the hub which is connected to this port */
> >       phy-supply = <&hub_5v>;
> >  };
> > +
> > +&vrtc {
> > +     status = "disabled";
> > +};
> >
>
> Please don't, the vrtc is here to wake up the device.
>
> Neil

Ok, I thought that there would be conflicts with the RTC module,
that's why I disable this node. I will drop this patch.

-Anand
