Return-Path: <devicetree+bounces-3-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C753279F342
	for <lists+devicetree@lfdr.de>; Wed, 13 Sep 2023 22:51:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BA4941C20CCE
	for <lists+devicetree@lfdr.de>; Wed, 13 Sep 2023 20:51:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3887A200D8;
	Wed, 13 Sep 2023 20:48:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272E5200D4
	for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 20:48:50 +0000 (UTC)
Received: from mail-qt1-x82c.google.com (mail-qt1-x82c.google.com [IPv6:2607:f8b0:4864:20::82c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 648CE1BCC
	for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 13:48:49 -0700 (PDT)
Received: by mail-qt1-x82c.google.com with SMTP id d75a77b69052e-414ba610766so93161cf.0
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 13:48:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1694638128; x=1695242928; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NcJlXTKC5xRoadtZAEon6CTFFsDGGrKsYv81Cvxlk0I=;
        b=HbOtkv78djlgQ54jjnPro0kzZUtVYY5PK1WIpfi7ja5GYuS4dFMc8u9kwNhviJA19A
         kd9hphcYv829ilxMW6EnU7asl29yePkam+GPUYR1jav7xniA/xeoLeOCYR8idae2HcQI
         G7zNkzkHriRqNz2D8XP5XJlhGCmRnRuP/0uheu2yMZMRNw3nYoWuPKro5Gzyb+popFlP
         dCDVuwUBpXcxefXrLqj0WbABhrs8OTUx2DVr5UQQtGlFE6EFpKaJuhMkGd/Ty0Pf/GgJ
         ui3GCoUKqs/xW3jv+5B7AWsdPV4ZDzhBEclSgPdcTQpYrda0bx7rixLhJMR8+gmBHYeB
         CwCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694638128; x=1695242928;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NcJlXTKC5xRoadtZAEon6CTFFsDGGrKsYv81Cvxlk0I=;
        b=Aa9Pn4dbkQ90WlsOqBXpSa/EibwJtjK9JuK55M+egl3LY3mZ7H2eujjEl8q7ZDTTOl
         Dr9iAkjYZfWtD7QdgAXglv856HJo4f93K/tZYy7HUIBID7G2lxOuDrGaSc3cFlginWRH
         wz7OpfYU5NRddkSBoMOLm2plkeMqxRyZwX2Y/YHjIIhohxVhUwoER/wgV8w6xz6axsPN
         Z3TT1CERFwI0RJ8sbUsaFOu4ZmU+pg8g5kSB37cTQeKNIJq9lApo6Iob9tUUTwSHfAjs
         e8s0uIs4ARaRMO9sdnWbm8J3b9Yesy3eSEZ5nRmMlXN+Z+u92BUgOz7RGDJ+zg8b3tJ9
         MCTA==
X-Gm-Message-State: AOJu0YzPGJinFTwgIBSsJ5aM8P1T+hFXK33BfyP6szkO9rCO0NkaW2BL
	jeJtZ9EUaJtZ/ZhHADBEI406/lSIthm1c0AImeQl+w==
X-Google-Smtp-Source: AGHT+IHdxM3qDxSFcobWc9e/bvG3ZPvXwmfQ7UAt/NPVUh4yMwsb6+IvDj8bLAr1t8EZEfJbmhIvmyna9oRSeT6JHV8=
X-Received: by 2002:a05:622a:51:b0:3ef:5f97:258f with SMTP id
 y17-20020a05622a005100b003ef5f97258fmr434466qtw.16.1694638128380; Wed, 13 Sep
 2023 13:48:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230904115816.1237684-1-s.hauer@pengutronix.de>
 <20230904115816.1237684-2-s.hauer@pengutronix.de> <CACRpkdYxRdToUM3JcEeNK_K87D5WDzzSLvVEbtqqdQEhz3k_Ow@mail.gmail.com>
 <CAGb2v65G-8EECNjqnpKCxqAD5nATAb0S7AA_WMiGXYOR1avrvg@mail.gmail.com> <20230913065843.GF637806@pengutronix.de>
In-Reply-To: <20230913065843.GF637806@pengutronix.de>
From: Saravana Kannan <saravanak@google.com>
Date: Wed, 13 Sep 2023 13:48:12 -0700
Message-ID: <CAGETcx8rO=aykjb6=5k0wpOyscqokNwSL6w-AHnodY7pNXyzGQ@mail.gmail.com>
Subject: Re: [PATCH 1/3] pinctrl: rockchip: add support for io-domain dependency
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Chen-Yu Tsai <wens@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
	linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, kernel@pengutronix.de, 
	Quentin Schulz <quentin.schulz@theobroma-systems.com>, 
	Michael Riesch <michael.riesch@wolfvision.net>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 12, 2023 at 11:58=E2=80=AFPM Sascha Hauer <s.hauer@pengutronix.=
de> wrote:
>
> On Wed, Sep 13, 2023 at 12:37:54PM +0800, Chen-Yu Tsai wrote:
> > On Tue, Sep 12, 2023 at 4:07=E2=80=AFPM Linus Walleij <linus.walleij@li=
naro.org> wrote:
> > >
> > > Top posting to bring Saravana Kannan into this discussion.
> > >
> > > This looks like a big hack to me, Saravana has been working
> > > tirelessly to make the device tree probe order "sort itself out"
> > > and I am pretty sure this issue needs to be fixed at the DT
> > > core level and not in a driver.
> >
> > We could merge all the IO domain stuff into the pinctrl node/driver,
> > like is done for Allwinner? Maybe that would simplify things a bit?
>
> I thought about this as well. On Rockchip the pinctrl driver and the IO
> domain driver even work on the same register space, so putting these
> into a single node/driver would even feel more natural than what we have
> now.

Then we should try to do this and fix any issues blocking us.

> However, with that the pinctrl node would get the supplies that the IO
> domain node now has and we would never get into the probe of the pinctrl
> driver due to the circular dependencies.

From a fw_devlink perspective, the circular dependency shouldn't be a
problem. It's smart enough to recognize all cycle possibilities (since
6.3) and not enforce ordering between nodes in a cycle.

So, this is really only a matter of pinctrl not trying to do
regulator_get() in its probe function. You need to do the
regulator_get() when the pins that depend on the io-domain are
requested. And if the regulator isn't ready yet, return -EPROBE_DEFER?

Is there something that prevents us from doing that?

> >
> > IIRC on Allwinner SoCs the PMIC pins don't have a separate power rail,
> > or if they do they almost certainly use the default I/O rail that is
> > always on, and so we omit it to work around the dependency cycle.
>
> I looked into sun50i as an example. This one has two pinctrl nodes, pio
> and r_pio. Only the former has supplies whereas the latter, where the
> PMIC is connected to, has (found in sun50i-a64-pinephone.dtsi):
>
> &r_pio {
>         /*
>          * FIXME: We can't add that supply for now since it would
>          * create a circular dependency between pinctrl, the regulator
>          * and the RSB Bus.
>          *
>          * vcc-pl-supply =3D <&reg_aldo2>;
>          */
> };
>
> At least it show me that I am not the first one who has this problem ;)
>
> We could add the supplies to the pingroup subnodes of the pinctrl driver
> to avoid that, but as Saravana already menioned, that would feel like
> overkill.

So my comment yesterday was that it'd be an overkill to make every
struct pin_desc into a device. But if you can split that rockchip
pinctrl into two devices, that should be okay and definitely not an
overkill.

Maybe something like:

pinctrl {
    compatible =3D "rockchip,rk3568-pinctrl";
    i2c0 {
                /omit-if-no-ref/
                i2c0_xfer: i2c0-xfer {
                        rockchip,pins =3D
                                /* i2c0_scl */
                                <0 RK_PB1 1 &pcfg_pull_none_smt>,
                                /* i2c0_sda */
                                <0 RK_PB2 1 &pcfg_pull_none_smt>;
                };
    }
    ...
    ...
    pinctrl-io {
        compatible =3D "rockchip,rk3568-pinctrl-io";
        pmuio1-supply =3D <&vcc3v3_pmu>;
        cam {
            ....
        }
        ....
        ....
}

So pinctrl will probe successfully and add it's child device
pinctrl-io. i2c0 will probe once pinctrl is available. Then eventually
the regulator will probe. And after all that, pinctrl-io would probe.

This has no cycles and IMHO represents the hardware accurately. You
have a pinctrl block and there's a sub component of it (pinctrl-io)
that works differently and has additional dependencies.

Any thoughts on this?

-Saravana

