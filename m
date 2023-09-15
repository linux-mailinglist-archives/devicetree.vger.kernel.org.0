Return-Path: <devicetree+bounces-384-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C4DE7A1711
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 09:13:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C0EB41C21364
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 07:13:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BAFAD26A;
	Fri, 15 Sep 2023 07:13:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA3808478
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 07:13:50 +0000 (UTC)
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 905B3A1;
	Fri, 15 Sep 2023 00:13:49 -0700 (PDT)
Received: by mail-qk1-f180.google.com with SMTP id af79cd13be357-76ef27a8e4dso118967585a.1;
        Fri, 15 Sep 2023 00:13:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694762028; x=1695366828;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yQu7qZKWAlj7tq/NRi+dvudr3FOrz54dbR3YSeAAyEY=;
        b=RP1lHN/FauF8Ist99fWh0eWftrHtK0TgT7ovzTda13TCuP9SSPj92fouOiwsEQMRKR
         53KoW3TCBSo+h0nBGtInYmq1u5wx4HkOLhz/PPRbE0SzuleToFBtuzaDeu0/htmUiWcU
         YxB9vgMc81i+DPo63vAoFh4L4xWDxgZq9WjoBRqPJxO4kA1MsSmzRGDEIAZ0OhBcmSZJ
         RHRIc9v1pMcqpMUssPhx1/ICaMocQz7W+NNuiwCs0XHvLdBD5Jyu5ily8QyQs39DdOuh
         IbLFtx2M+Ory/VwpFWOQyTM/I9ErZbPTwhgYDsAfCD4zn334FDl9jrngTHatmRAGmRrl
         Ecxg==
X-Gm-Message-State: AOJu0YwH4M0dAeV9sPzd5jLYhbzT+cJY6jGjbFOprFm+kiZgCaWkQy6b
	bHsgZDWe1Tu5ub8lTXoTrS3FB5hsWz8V8Q==
X-Google-Smtp-Source: AGHT+IH1/6PBbk4Q7gFNBPTK6HVASIXvb5iO6zHfYc+f6n+2n1PTxciETzo/itOiu2r2xv1tzwjDIw==
X-Received: by 2002:a05:620a:e98:b0:770:fc5d:c191 with SMTP id w24-20020a05620a0e9800b00770fc5dc191mr728429qkm.44.1694762028483;
        Fri, 15 Sep 2023 00:13:48 -0700 (PDT)
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com. [209.85.222.170])
        by smtp.gmail.com with ESMTPSA id a27-20020a05620a125b00b0076f16a00693sm1038854qkl.47.2023.09.15.00.13.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Sep 2023 00:13:48 -0700 (PDT)
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-773a0f36b4bso90739485a.0;
        Fri, 15 Sep 2023 00:13:48 -0700 (PDT)
X-Received: by 2002:a25:dcc3:0:b0:d62:6514:45b7 with SMTP id
 y186-20020a25dcc3000000b00d62651445b7mr319109ybe.37.1694761562659; Fri, 15
 Sep 2023 00:06:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230912045157.177966-1-claudiu.beznea.uj@bp.renesas.com>
 <20230912045157.177966-13-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdVLx1d-6=5xx_GLAb7LxxRR9FwhAU56fxNc3b=9wj286g@mail.gmail.com> <f0aa7983-0300-ce21-8726-41d033f6afbe@tuxon.dev>
In-Reply-To: <f0aa7983-0300-ce21-8726-41d033f6afbe@tuxon.dev>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 15 Sep 2023 09:05:48 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVtBoTRB7dMvxjwwhOXVUDS8LtZQsVcMctaxBU_J7HWwA@mail.gmail.com>
Message-ID: <CAMuHMdVtBoTRB7dMvxjwwhOXVUDS8LtZQsVcMctaxBU_J7HWwA@mail.gmail.com>
Subject: Re: [PATCH 12/37] clk: renesas: rzg2l: reduce the critical area
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

On Fri, Sep 15, 2023 at 7:51=E2=80=AFAM claudiu beznea <claudiu.beznea@tuxo=
n.dev> wrote:
> On 14.09.2023 16:12, Geert Uytterhoeven wrote:
> > On Tue, Sep 12, 2023 at 6:52=E2=80=AFAM Claudiu <claudiu.beznea@tuxon.d=
ev> wrote:
> >> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> >>
> >> spinlock in rzg2l_mod_clock_endisable() is intended to protect the acc=
esses
> >> to hardware register. There is no need to protect the instructions tha=
t set
> >> temporary variable which will be then written to register. Thus limit =
the
> >> spinlock only to the hardware register access.
> >>
> >> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> >
> > Thanks for your patch!
> >
> >> --- a/drivers/clk/renesas/rzg2l-cpg.c
> >> +++ b/drivers/clk/renesas/rzg2l-cpg.c
> >> @@ -912,13 +912,13 @@ static int rzg2l_mod_clock_endisable(struct clk_=
hw *hw, bool enable)
> >>
> >>         dev_dbg(dev, "CLK_ON %u/%pC %s\n", CLK_ON_R(reg), hw->clk,
> >>                 enable ? "ON" : "OFF");
> >> -       spin_lock_irqsave(&priv->rmw_lock, flags);
> >>
> >>         value =3D bitmask << 16;
> >>         if (enable)
> >>                 value |=3D bitmask;
> >> -       writel(value, priv->base + CLK_ON_R(reg));
> >>
> >> +       spin_lock_irqsave(&priv->rmw_lock, flags);
> >> +       writel(value, priv->base + CLK_ON_R(reg));
> >>         spin_unlock_irqrestore(&priv->rmw_lock, flags);
> >
> > After this, it becomes obvious there is nothing to protect at all,
> > so the locking can just be removed from this function?
>
> I tend to be paranoid when writing to hardware resources thus I kept it.
> Would you prefer to remove it at all?

Yes please. I guess this was copied from R-Car and friends, where
there is a RMW operation on an MSTPCR register.

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

