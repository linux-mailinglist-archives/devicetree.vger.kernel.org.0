Return-Path: <devicetree+bounces-207-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9545F7A039C
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 14:19:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 34D111F23461
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 12:19:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F5F4219EB;
	Thu, 14 Sep 2023 12:19:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EAF6208A8
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 12:19:02 +0000 (UTC)
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 502EE1FC9;
	Thu, 14 Sep 2023 05:19:02 -0700 (PDT)
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-59b4ec8d9c1so10295017b3.0;
        Thu, 14 Sep 2023 05:19:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694693941; x=1695298741;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MY7JVFz1bNlrjVrnjoxD6/0CcvRhM6TdVrF+6BcMksE=;
        b=q5y1sKPpwLX0KM2RNEmFA4MB8YIF3vDdXnCO5DAmkLVtpNhsZVmiD90bsy19l1GnqN
         xpNOJn9PoMNi2dfOKrMMhZOw+yIjR5KeYdpvn8VjwabRVE8+FQIGvbgRaOlmlb6iHyRp
         h4xMp3F/cmphQLK9LT1HuQ1l1YTRS+huAZQYJkGLbW5uKcwEHaYFrYclqPELe7AFFUKG
         he+1tvylE0uXa8i74Bmq9elCpaSZ6aIojRTtjGuq64dlBkED4Dt3O/KKkOEAamOSNGDO
         unGZ+IWgovNveXFT1kRf6VC9WG5w5c8BDgl/RmbrIHBNR9uaLdbCoKoOZZOHTUn89SJE
         G5dg==
X-Gm-Message-State: AOJu0YxQP2t5u+4oHSheHOpS9v5WvH38TGoT01QtIpZ1s73EF+qOFL7U
	KW4bxOF3uB3yHYfWKk88rg1jH7ay+Y+miA==
X-Google-Smtp-Source: AGHT+IHDI3/+al5HUi8dKZXgD8BiFrxrHJDWa02JY2zlc6bSiAMHxJR/bBXKHYSah2mzcXOoyULAYg==
X-Received: by 2002:a81:6c53:0:b0:592:1bab:52bd with SMTP id h80-20020a816c53000000b005921bab52bdmr5423379ywc.39.1694693941331;
        Thu, 14 Sep 2023 05:19:01 -0700 (PDT)
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com. [209.85.219.178])
        by smtp.gmail.com with ESMTPSA id i130-20020a0ddf88000000b0056d51c39c1fsm291307ywe.23.2023.09.14.05.18.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Sep 2023 05:18:59 -0700 (PDT)
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-d801c83325fso936861276.0;
        Thu, 14 Sep 2023 05:18:58 -0700 (PDT)
X-Received: by 2002:a25:7497:0:b0:d78:3a4e:c19e with SMTP id
 p145-20020a257497000000b00d783a4ec19emr5260394ybc.24.1694693938512; Thu, 14
 Sep 2023 05:18:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230912045157.177966-1-claudiu.beznea.uj@bp.renesas.com>
 <20230912045157.177966-9-claudiu.beznea.uj@bp.renesas.com> <8490f909-c0ad-5a6d-7a97-03c80a8b47ba@omp.ru>
In-Reply-To: <8490f909-c0ad-5a6d-7a97-03c80a8b47ba@omp.ru>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 14 Sep 2023 14:18:44 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXjhCth125PHKxrWJENFUhrvXfFJPLhL2ZRY6++azzczA@mail.gmail.com>
Message-ID: <CAMuHMdXjhCth125PHKxrWJENFUhrvXfFJPLhL2ZRY6++azzczA@mail.gmail.com>
Subject: Re: [PATCH 08/37] clk: renesas: rzg2l: trust value returned by hardware
To: Sergey Shtylyov <s.shtylyov@omp.ru>
Cc: Claudiu <claudiu.beznea@tuxon.dev>, mturquette@baylibre.com, sboyd@kernel.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	ulf.hansson@linaro.org, linus.walleij@linaro.org, gregkh@linuxfoundation.org, 
	jirislaby@kernel.org, magnus.damm@gmail.com, catalin.marinas@arm.com, 
	will@kernel.org, prabhakar.mahadev-lad.rj@bp.renesas.com, 
	biju.das.jz@bp.renesas.com, quic_bjorande@quicinc.com, arnd@arndb.de, 
	konrad.dybcio@linaro.org, neil.armstrong@linaro.org, nfraprado@collabora.com, 
	rafal@milecki.pl, wsa+renesas@sang-engineering.com, 
	linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-mmc@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 12, 2023 at 6:43=E2=80=AFPM Sergey Shtylyov <s.shtylyov@omp.ru>=
 wrote:
> On 9/12/23 7:51 AM, Claudiu wrote:
>
> > From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> >
> > Initial value of CPG_PL2SDHI_DSEL bits 0..1 or 4..6 is 01b. Hardware us=
er's
> > manual (r01uh0914ej0130-rzg2l-rzg2lc.pdf) specifies that setting 0 is
> > prohibited. The rzg2l_cpg_sd_clk_mux_get_parent() should just read
> > CPG_PL2SDHI_DSEL, trust the value and return the proper clock parent in=
dex
> > based on the read value. Do this.
> >
> > Fixes: eaff33646f4cb ("clk: renesas: rzg2l: Add SDHI clk mux support")
> > Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

> > --- a/drivers/clk/renesas/rzg2l-cpg.c
> > +++ b/drivers/clk/renesas/rzg2l-cpg.c
> > @@ -239,14 +239,8 @@ static u8 rzg2l_cpg_sd_clk_mux_get_parent(struct c=
lk_hw *hw)
> >
> >       val >>=3D GET_SHIFT(hwdata->conf);
> >       val &=3D GENMASK(GET_WIDTH(hwdata->conf) - 1, 0);
> > -     if (val) {
> > -             val--;
> > -     } else {
> > -             /* Prohibited clk source, change it to 533 MHz(reset valu=
e) */
> > -             rzg2l_cpg_sd_clk_mux_set_parent(hw, 0);
> > -     }
> >
> > -     return val;
> > +     return val ? --val : val;
>
>         return val ? val - 1 : 0;

Definitely, mixing multiple users of the same variable and pre-decrement
is ill-defined.

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

