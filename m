Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F27382A67F2
	for <lists+devicetree@lfdr.de>; Wed,  4 Nov 2020 16:42:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730811AbgKDPmR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Nov 2020 10:42:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57178 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730810AbgKDPmR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Nov 2020 10:42:17 -0500
Received: from mail-vk1-xa42.google.com (mail-vk1-xa42.google.com [IPv6:2607:f8b0:4864:20::a42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C520CC0613D4
        for <devicetree@vger.kernel.org>; Wed,  4 Nov 2020 07:42:16 -0800 (PST)
Received: by mail-vk1-xa42.google.com with SMTP id m184so2239193vkb.9
        for <devicetree@vger.kernel.org>; Wed, 04 Nov 2020 07:42:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=/FtdeSUhs74nhRFArqfFNBt0MhUao+F2IwHVVHi0aS0=;
        b=R2E/Db42MGI+YnyGlaOGsgu2dpWlTR02Cg/FLj+Kp3JW23/91+RSpJo6HIb2Vd2OxD
         UhNWS7AO+DC76rP5D8KfB+CIk1uhYDJJ6pcTAwzO6R7MNOTDwKRNW11SbspmVk4xCsEn
         47OyYvCfBw3qGLbqq+IDebwZRM8ydfmrcxmdE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=/FtdeSUhs74nhRFArqfFNBt0MhUao+F2IwHVVHi0aS0=;
        b=Oyo67ptAq/bTKQfZ7OpQE3mBIHqmVYZf1WDXD4ApDWQ1MoOJdb5UcTNWxnjA0ntz1S
         Kwp/miCxQ7Kh6aRzM6hWDYz3WCPLfroVU8Hf5pftFL5ybIQfS5smxoJRdjzOZEue0qAT
         ObCisjL1XpBmwNsXh5SxI1JL/c9W/dsABFzeg7MLM8oYCBsOYd/Wso6AiTe8eDSm3qu3
         80A/8WxU6uHvGbsLVIo/igVFCnotfL5l9he8kW9/0oAUtrLlgphRBbmVly8Co8NlgRqS
         Qhi4ETICsvABSeEHil4fUubK4hMiCErHja8dcQ5OAP+ADNkCpJmPDCtA4fEXLkF2nzlg
         d0wg==
X-Gm-Message-State: AOAM533kjJ/OvxL/06w/ew6U1Vm8NhwSDTm6QP+xzeGDqky6XOs60aBV
        dJzv8o7/gjl2MUSaRA8eHvcPJnqnTotc3A==
X-Google-Smtp-Source: ABdhPJxvyODqV0XsLCcOqRTikvj8XnLCjHDgG3eT7HiYY8Ol3xcRkn8kiG5XFauNYcJqHUg35qqK2g==
X-Received: by 2002:a1f:9f05:: with SMTP id i5mr20511843vke.12.1604504535193;
        Wed, 04 Nov 2020 07:42:15 -0800 (PST)
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com. [209.85.217.47])
        by smtp.gmail.com with ESMTPSA id g132sm20152vkg.11.2020.11.04.07.42.14
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Nov 2020 07:42:14 -0800 (PST)
Received: by mail-vs1-f47.google.com with SMTP id z123so6989942vsb.0
        for <devicetree@vger.kernel.org>; Wed, 04 Nov 2020 07:42:14 -0800 (PST)
X-Received: by 2002:a67:ef98:: with SMTP id r24mr8004994vsp.37.1604504533670;
 Wed, 04 Nov 2020 07:42:13 -0800 (PST)
MIME-Version: 1.0
References: <20201104094950.2096-1-m.reichl@fivetechno.de> <4984701.vSXMUKeAfh@diego>
In-Reply-To: <4984701.vSXMUKeAfh@diego>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 4 Nov 2020 07:42:01 -0800
X-Gmail-Original-Message-ID: <CAD=FV=V2Vv0bv-exiZ6VrOtfMM5TVpjATO04qaXeGWDRu+6vyw@mail.gmail.com>
Message-ID: <CAD=FV=V2Vv0bv-exiZ6VrOtfMM5TVpjATO04qaXeGWDRu+6vyw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Assign a fixed index to mmc devices
 on rk3399-roc-pc boards.
To:     =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc:     "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Markus Reichl <m.reichl@fivetechno.de>,
        Rob Herring <robh@kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Nov 4, 2020 at 2:51 AM Heiko St=C3=BCbner <heiko@sntech.de> wrote:
>
> Hi Markus,
>
> Am Mittwoch, 4. November 2020, 10:49:45 CET schrieb Markus Reichl:
> > Recently introduced async probe on mmc devices can shuffle block IDs.
> > Pin them to fixed values to ease booting in evironments where UUIDs
> > are not practical. Use newly introduced aliases for mmcblk devices from=
 [1].
> >
> > [1]
> > https://patchwork.kernel.org/patch/11747669/
> >
> > Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi | 5 +++++
> >  1 file changed, 5 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm=
64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> > index e7a459fa4322..bc9482b59428 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> > @@ -13,6 +13,11 @@ / {
> >       model =3D "Firefly ROC-RK3399-PC Board";
> >       compatible =3D "firefly,roc-rk3399-pc", "rockchip,rk3399";
> >
> > +     aliases {
> > +             mmc0 =3D &sdmmc;
> > +             mmc1 =3D &sdhci;
> > +     };
> > +
>
> Any reason for this odering?
>
> I.e. some previous incarnations had it ordered as (emmc, mmc, sdio).
> This is also true for the ChromeOS out-of-tree usage of those, the
> rk3399 dts in the chromeos-4.4 tree also orders this as sdhci, sdmmc, sdi=
o.
>
> And I guess a further question would be when we're doing arbitary orderin=
gs
> anyway, why is this not in rk3399.dtsi ;-) ?

Though I personally like the idea of eMMC, which is typically
built-in, as being the "0" number, I'm personally happy with any
numbering scheme that's consistent.  Ordering them by base address is
OK w/ me and seems less controversial.  That seems like it could go in
rk3399.dtsi and then if a particular board wanted a different order
they could override it in their board file.  The downside of putting
in rk3399 is that boards that don't have all SD/MMC interfaces enabled
would definitely get a new number compared to old kernels, but
hopefully this is the last time?

-Doug
