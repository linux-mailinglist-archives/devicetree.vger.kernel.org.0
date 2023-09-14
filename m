Return-Path: <devicetree+bounces-206-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 632F27A0385
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 14:14:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 53CCC1C20F16
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 12:14:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74C9C219EB;
	Thu, 14 Sep 2023 12:13:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66AE220B2B
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 12:13:35 +0000 (UTC)
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BFACC1BF4;
	Thu, 14 Sep 2023 05:13:34 -0700 (PDT)
Received: by mail-yb1-f175.google.com with SMTP id 3f1490d57ef6-d7b79a4899bso905775276.2;
        Thu, 14 Sep 2023 05:13:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694693614; x=1695298414;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wCvoAaFuPyjPU6jJg4KzcxsCGGRqqM79Y530FyBZVZI=;
        b=nsm4AUelSdzZoMy5eLfIX4XFWnlT17GDxhS1j1OnHH+siBAE2IU/E6ljaKWm9Ngz2h
         TsEYLE8/k6MQVxLcHwtNmpvB0MfumdjiPZXloG+1h7HEVLop6tQXOtLx2vIz+3LZZFNV
         X4unHlFRsboKCAQGxC+dOiYajTpp0urPfPiXwYa+HgwcNwZyzhR1UVUKD3uyeZ1xMCIK
         AmqJuGhysyB8vDEyf/javDXjO/O7Q/TklcL2X+PP+osIqGkGgdM1wtSGbuycuQRC5Dhj
         fg4mweWEq+Ti1suKBtg2MNyKobMP6HdumVUNLceCqcxAv9TbhN+AbgDEMOOzot/ZmzAL
         danw==
X-Gm-Message-State: AOJu0YyjoJUrQQk10/EzlpNCOzRPSaLMJS85yvc2Tt0wV4XXggSCYQbt
	kNhS+zSd/8WMXODUiK+9VrXH0dY13YpiFg==
X-Google-Smtp-Source: AGHT+IElEcIVec6HYgwhxRS55oqpwnhGrAfZ+gRiC8cKpIyCcZl2dfeK63muj+9UbJignu95nNnQhA==
X-Received: by 2002:a25:7497:0:b0:d78:3a4e:c19e with SMTP id p145-20020a257497000000b00d783a4ec19emr5246688ybc.24.1694693613689;
        Thu, 14 Sep 2023 05:13:33 -0700 (PDT)
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com. [209.85.219.174])
        by smtp.gmail.com with ESMTPSA id m196-20020a25d4cd000000b00d814d8dfd69sm304403ybf.27.2023.09.14.05.13.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Sep 2023 05:13:32 -0700 (PDT)
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-d7b79a4899bso905708276.2;
        Thu, 14 Sep 2023 05:13:32 -0700 (PDT)
X-Received: by 2002:a25:d384:0:b0:d7b:8d0c:43ef with SMTP id
 e126-20020a25d384000000b00d7b8d0c43efmr5333188ybf.37.1694693611889; Thu, 14
 Sep 2023 05:13:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230912045157.177966-1-claudiu.beznea.uj@bp.renesas.com> <20230912045157.177966-8-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20230912045157.177966-8-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 14 Sep 2023 14:13:19 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXo14JwdJE+b1zdnJ7Re5cn8ugzxueD1a=-n=PUQz7VKw@mail.gmail.com>
Message-ID: <CAMuHMdXo14JwdJE+b1zdnJ7Re5cn8ugzxueD1a=-n=PUQz7VKw@mail.gmail.com>
Subject: Re: [PATCH 07/37] clk: renesas: rzg2l: lock around writes to mux register
To: Claudiu <claudiu.beznea@tuxon.dev>
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

Hi Claudiu,

On Tue, Sep 12, 2023 at 6:52=E2=80=AFAM Claudiu <claudiu.beznea@tuxon.dev> =
wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> SD MUX output (SD0) is further divided by 4 in G2{L, UL}. The divided
> clock is SD0_DIV4. SD0_DIV4 is registered with CLK_SET_RATE_PARENT which
> means a rate request for it is propagated to the MUX and could reach
> rzg2l_cpg_sd_clk_mux_set_parent() concurrently with the users of SD0.
> Add proper locking to avoid concurrent access on SD MUX set rate
> registers.
>
> Fixes: eaff33646f4cb ("clk: renesas: rzg2l: Add SDHI clk mux support")
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Thanks for your patch!

> --- a/drivers/clk/renesas/rzg2l-cpg.c
> +++ b/drivers/clk/renesas/rzg2l-cpg.c
> @@ -189,6 +189,7 @@ static int rzg2l_cpg_sd_clk_mux_set_parent(struct clk=
_hw *hw, u8 index)
>         u32 shift =3D GET_SHIFT(hwdata->conf);
>         const u32 clk_src_266 =3D 2;
>         u32 msk, val, bitmask;
> +       unsigned long flags;
>         int ret;
>
>         /*
> @@ -203,25 +204,27 @@ static int rzg2l_cpg_sd_clk_mux_set_parent(struct c=
lk_hw *hw, u8 index)
>          * the index to value mapping is done by adding 1 to the index.
>          */
>         bitmask =3D (GENMASK(GET_WIDTH(hwdata->conf) - 1, 0) << shift) <<=
 16;
> +       spin_lock_irqsave(&priv->rmw_lock, flags);
>         if (index !=3D clk_src_266) {
>                 writel(bitmask | ((clk_src_266 + 1) << shift), priv->base=
 + off);
>
>                 msk =3D off ? CPG_CLKSTATUS_SELSDHI1_STS : CPG_CLKSTATUS_=
SELSDHI0_STS;
>
> -               ret =3D readl_poll_timeout(priv->base + CPG_CLKSTATUS, va=
l,
> -                                        !(val & msk), 100,
> -                                        CPG_SDHI_CLK_SWITCH_STATUS_TIMEO=
UT_US);
> -               if (ret) {
> -                       dev_err(priv->dev, "failed to switch clk source\n=
");
> -                       return ret;
> -               }
> +               ret =3D readl_poll_timeout_atomic(priv->base + CPG_CLKSTA=
TUS, val,
> +                                               !(val & msk), 100,

According to the read_poll_timeout_atomic() documentation,
delay_us should be less than ~10us.

> +                                               CPG_SDHI_CLK_SWITCH_STATU=
S_TIMEOUT_US);

CPG_SDHI_CLK_SWITCH_STATUS_TIMEOUT_US =3D 20 ms, which is a long timeout
for an atomic poll.

> +               if (ret)
> +                       goto unlock;
>         }
>
>         writel(bitmask | ((index + 1) << shift), priv->base + off);
>
> -       ret =3D readl_poll_timeout(priv->base + CPG_CLKSTATUS, val,
> -                                !(val & msk), 100,
> -                                CPG_SDHI_CLK_SWITCH_STATUS_TIMEOUT_US);
> +       ret =3D readl_poll_timeout_atomic(priv->base + CPG_CLKSTATUS, val=
,
> +                                       !(val & msk), 100,
> +                                       CPG_SDHI_CLK_SWITCH_STATUS_TIMEOU=
T_US);

Likewise.

> +unlock:
> +       spin_unlock_irqrestore(&priv->rmw_lock, flags);
> +
>         if (ret)
>                 dev_err(priv->dev, "failed to switch clk source\n");

The rest LGTM.

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

