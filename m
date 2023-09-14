Return-Path: <devicetree+bounces-156-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EEB9679FEF2
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 10:48:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EF1C81C20D0F
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 08:48:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DBA910A19;
	Thu, 14 Sep 2023 08:48:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D1710A0E
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 08:48:35 +0000 (UTC)
Received: from mail-yw1-x112a.google.com (mail-yw1-x112a.google.com [IPv6:2607:f8b0:4864:20::112a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 745B8106
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 01:48:35 -0700 (PDT)
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-59be8a2099bso7758797b3.0
        for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 01:48:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694681314; x=1695286114; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GgpTo8R8cmbn0NQ4Vlj56EaTvnRjrAgeOGC10HJRtqo=;
        b=Hpnb+hzCSPUIOqPD4GZnNXO4j/huzhreLOqE3+VvJtlU3+u+wzM+3y7+NQ4skzhusL
         EYcEZWrEewd7OMmdei5lTA8u60e0lalUqu1J7RH4jiwtmfPDfdLRlK2nXe6e6nNusMfE
         c2/cdGQdIRn++9ofjsiCVm6mhSUebkxCu6iI5UEJvc+icbTSW5Ud8jR5GuwG+iUJDFna
         8a7g82bpE0KR8pI5Cqnwu76bfxY5Dcay29OqhmLJIwJyPYfWfeEMD+eC/Dety52VmCXR
         Y8UJqDc7njr2UMzE+4v7c1AElL9U7QCMuXTaGZP2ooWxKrpCAH3D351AB4WHRrGVHNZi
         ca2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694681314; x=1695286114;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GgpTo8R8cmbn0NQ4Vlj56EaTvnRjrAgeOGC10HJRtqo=;
        b=PLeKdoY2fc8i1/aWTwLnKt2nuFbb0qzVYY6Y0Ugt19j+xaFo3juxtObSznpboD/IoE
         /Vts5IOimGoLJZ7pIhYADAsk1TfUyq1X+MjSKQtQ+kuCqr4V2Q8+xbo2zYEbLnOZr9D/
         65JWuT8UBrmz0Ie3u4/JqbowHbnhW2F6r7LS6xXrrecrJYEki4wlQyR5APDW55cKM46s
         YFgn4L4dBldsIyIKhCg1gZbzklyl4+ZFKuRX22t1ZMw8sY9+96e6ckl3vWT6tcncsff6
         tnNyLxZIlTdYAklOBw0htmvsPALERrhWbXmrdHs4yn7YoM2fNBIMBYfVn8VsYRLNQflT
         z0dQ==
X-Gm-Message-State: AOJu0Yw/uiS5U5khBOaAT72inmgo90SrkJtIh2gbZLcd4ElkYSuvMm14
	BkpLdvUA85nVn3xVrFvp7ueFlbs7uQIQIDiv9gaJwQ==
X-Google-Smtp-Source: AGHT+IH0/RvG4XKSLv54lS1VtzFk3qWRB3eh8qCYQISlXOFNm4f+ZAr6PIOVb5l8XmXpGSFRjTp8xmu5+NtuZdyDXF4=
X-Received: by 2002:a0d:f604:0:b0:589:e4aa:7b67 with SMTP id
 g4-20020a0df604000000b00589e4aa7b67mr4381748ywf.41.1694681314700; Thu, 14 Sep
 2023 01:48:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230914-vf610-gpio-v1-0-3ed418182a6a@nxp.com>
 <20230914-vf610-gpio-v1-3-3ed418182a6a@nxp.com> <b97ff9b6-97df-2c62-1946-06cd4ac79c95@linaro.org>
In-Reply-To: <b97ff9b6-97df-2c62-1946-06cd4ac79c95@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 14 Sep 2023 10:48:23 +0200
Message-ID: <CACRpkdYJFp72o=c1OxN9Kcd7-Ee-id8+O2m0ag-rrT-nfq1Srg@mail.gmail.com>
Subject: Re: [PATCH 3/5] gpio: vf610: add i.MX8ULP of_device_id entry
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Stefan Agner <stefan@agner.ch>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Peng Fan <peng.fan@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 14, 2023 at 7:48=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
> On 14/09/2023 04:20, Peng Fan (OSS) wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > i.MX8ULP supports two interrupts, while i.MX7ULP supports one interrupt=
.
> > So from hardware perspective, they are not compatible.
> >
> > So add entry for i.MX8ULP.
> >
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> >  drivers/gpio/gpio-vf610.c | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/gpio/gpio-vf610.c b/drivers/gpio/gpio-vf610.c
> > index dbc7ba0ee72c..88f7215cdf4b 100644
> > --- a/drivers/gpio/gpio-vf610.c
> > +++ b/drivers/gpio/gpio-vf610.c
> > @@ -67,6 +67,7 @@ static const struct fsl_gpio_soc_data imx_data =3D {
> >  static const struct of_device_id vf610_gpio_dt_ids[] =3D {
> >       { .compatible =3D "fsl,vf610-gpio",       .data =3D NULL, },
> >       { .compatible =3D "fsl,imx7ulp-gpio",     .data =3D &imx_data, },
> > +     { .compatible =3D "fsl,imx8ulp-gpio",     .data =3D &imx_data, },
>
> Why? It is the same as imx7. No need.

Because compatible =3D "fsl,imx7ulp-gpio" is not what is going to be in the
device tree, but compatible =3D "fsl,imx8ulp-gpio"?

What am I missing here? Maybe the commit message is weird.

Yours,
Linus Walleij

