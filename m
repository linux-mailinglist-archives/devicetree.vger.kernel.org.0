Return-Path: <devicetree+bounces-1003-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 354867A4574
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 11:06:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D26B7281291
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 09:06:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B131314F68;
	Mon, 18 Sep 2023 09:06:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 429C05382
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 09:06:11 +0000 (UTC)
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0064E4;
	Mon, 18 Sep 2023 02:06:10 -0700 (PDT)
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-5925e580f12so44811767b3.3;
        Mon, 18 Sep 2023 02:06:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695027970; x=1695632770;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qs7t8EoP8pSAMvY7e5Wa3knWe5J4fpmFbkl13nOAw0w=;
        b=ASangAAReqz49pGrqOLafaQ+idBC5ru4rG4pgZ4zrZUaLZxpw1HH9XWu9G+6GD8o2M
         CGBjDlGh+HZE3+mjABpREpn3t5H9oUcsGOAXRtmm5bQpWU+ZofmPCXN+tVogt+1ssbR6
         k5Y3pkmOFhi+P86Bt5D0KL2WNilUkG6DFxa7yx0sOIRgD9ekQ0fknjcmUSekXnKJ7e9h
         UYZHEo3XgmQvRTzS82NBVa3gPkuqNrjgKiYBIfClGV4I53WxmofdC+EU3J6P+zN5aGPD
         ouRvU2FfBfqfiOw9vENCa3zVfaW+zTZQcG50Gul5R/DqUfwrKdiigx5xDhkzOoeTMzwL
         U+qg==
X-Gm-Message-State: AOJu0YwIZWW+Ncov1ytfciomsbcN122aNQ8zOQKtMAQalJMZ6EHDNfVF
	1rtXr/ffIFgfqESie4FO5zFzoR0ZE51jWg==
X-Google-Smtp-Source: AGHT+IHxEsyCSZcp0FIYgpyJsnDdOPWWLqZL/uowIeYryzrawSO/p1JRaqP1PdmNwfX05tOnKgO/AA==
X-Received: by 2002:a81:6256:0:b0:58c:6121:48e8 with SMTP id w83-20020a816256000000b0058c612148e8mr9483173ywb.33.1695027969928;
        Mon, 18 Sep 2023 02:06:09 -0700 (PDT)
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com. [209.85.128.171])
        by smtp.gmail.com with ESMTPSA id m131-20020a817189000000b00589dbcf16cbsm2430341ywc.35.2023.09.18.02.06.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Sep 2023 02:06:09 -0700 (PDT)
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-59bcd927b45so44819007b3.1;
        Mon, 18 Sep 2023 02:06:09 -0700 (PDT)
X-Received: by 2002:a81:5e84:0:b0:589:c065:b419 with SMTP id
 s126-20020a815e84000000b00589c065b419mr10493285ywb.34.1695027969581; Mon, 18
 Sep 2023 02:06:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230912045157.177966-1-claudiu.beznea.uj@bp.renesas.com>
 <20230912045157.177966-23-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdUCpbPA3cDjNAq1irvr6z4Jux-5-tVDBuyr6nx_qOQGpg@mail.gmail.com> <701ee3bd-5d16-6b5f-2d34-4a4919c4c532@tuxon.dev>
In-Reply-To: <701ee3bd-5d16-6b5f-2d34-4a4919c4c532@tuxon.dev>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 18 Sep 2023 11:05:57 +0200
X-Gmail-Original-Message-ID: <CAMuHMdW1ikV_AZXM24_a1YT_mUV_Qyvi+rpzGJxVSAwBMPyE+w@mail.gmail.com>
Message-ID: <CAMuHMdW1ikV_AZXM24_a1YT_mUV_Qyvi+rpzGJxVSAwBMPyE+w@mail.gmail.com>
Subject: Re: [PATCH 22/37] clk: renesas: add minimal boot support for RZ/G3S SoC
To: claudiu beznea <claudiu.beznea@tuxon.dev>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
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
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Claudiu,

On Mon, Sep 18, 2023 at 9:50=E2=80=AFAM claudiu beznea <claudiu.beznea@tuxo=
n.dev> wrote:
> On 15.09.2023 15:52, Geert Uytterhoeven wrote:
> > On Tue, Sep 12, 2023 at 6:53=E2=80=AFAM Claudiu <claudiu.beznea@tuxon.d=
ev> wrote:
> >> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> >>
> >> Add minimal clock and reset support for RZ/G3S SoC to be able to boot
> >> Linux from SD Card/eMMC. This includes necessary core clocks for booti=
ng
> >> and GIC, SCIF, GPIO, SD0 mod clocks and resets.
> >>
> >> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> >
> > Thanks for your patch!
> >
>
> [ ... ]
>
> >> +       CLK_PLL3_DIV2_4,
> >> +       CLK_PLL3_DIV2_8,
> >> +       CLK_PLL3_DIV6,
> >> +       CLK_PLL4,
> >> +       CLK_PLL6,
> >> +       CLK_PLL6_DIV2,
> >> +       CLK_SEL_SDHI0,
> >> +       CLK_SEL_PLL4,
> >> +       CLK_P1_DIV2,
> >> +       CLK_P3_DIV2,
> >
> > Do you need CLK_P1_DIV2 and CLK_P3_DIV2?
> > I don't see them in Figure 7.3 ("Clock System Diagram (2)").
>
> P1_DIV2 is clock source for MHU_PCLK or OTFDE_DDR_PCLK.
> P3_DIV2 is clock source for DMAC_PCLK, OTFDE_SPI_PCLK.
> These are expressed in clock list document
> (RZG3S_clock_list_r1.00_20230602.xlsx).
>
> It is true the functionality could be preserved even w/o these 2 clocks b=
ut
> I kept them here as I saw them as core clocks even though they are not
> present in the Clock System Diagram from HW manual.

I don't think you can, as the module clock abstraction does not support
specifying a divider.  Hence you do need an internal core clock between
P1 and the module clock, to take care of the divider.

> With these, would you prefer to keep these clocks or just remove them?

Yes, as I expect that at least the DMAC_PCLK will be added, eventually.

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

