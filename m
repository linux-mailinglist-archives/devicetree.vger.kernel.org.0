Return-Path: <devicetree+bounces-211-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6848C7A0499
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 14:57:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0602FB20A5B
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 12:57:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 800E41C2B3;
	Thu, 14 Sep 2023 12:55:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 755CD241E0
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 12:55:29 +0000 (UTC)
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ECE221FCE;
	Thu, 14 Sep 2023 05:55:28 -0700 (PDT)
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-5924093a9b2so10996187b3.2;
        Thu, 14 Sep 2023 05:55:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694696128; x=1695300928;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3OySoOAXpGiHywCf7Be+nSlExy6EfoQyK+RnfTEyz8w=;
        b=lDWi4exwaN7rQccx8xUDpsaDe0T1oPUajTd8mZPChFyp8B6XhVL5+/mJWO9ensrB+3
         N/DJLxN9zaFWtdP5I31qXd2RMNlRUYocE3WSzcRgxjW9757N6+9vag5PP90ULifEvIdT
         MwJJzgGFpDh2vc/hKePd6uKirh7txI5LMuH8FdxO1QlSoSq6vhtweZe3TP1gvKtdfR75
         +vS4B3M8qvcW9wjGTgOhovrzuUA+GQ3Afx9NKcnPyfaVgtpj8FhYREEIKV4zDq+2sWh+
         3wilgdGQUxJ0Wn5jhuXfIcuSR7lRSo+91KIsmh3e3j62BMRFJuXBi0HWmKIb9qJ9bkJc
         bxLQ==
X-Gm-Message-State: AOJu0Ywqjcf7ivYfLH+p0Bc/8VKq6ElUzXitkIDHdC5D0Ion7at3lqil
	K4xQNa3vfzVYl327wxFxYteRUrGKycSGgQ==
X-Google-Smtp-Source: AGHT+IEXsVnasCCuC+S8+r/qMn64l5C45yGlPPhSFzkjdnybMDmtq6fH5lBPqIrjBKQfSfDz74Y1Vw==
X-Received: by 2002:a81:98d5:0:b0:59b:cde8:fc32 with SMTP id p204-20020a8198d5000000b0059bcde8fc32mr4683677ywg.46.1694696127987;
        Thu, 14 Sep 2023 05:55:27 -0700 (PDT)
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com. [209.85.219.169])
        by smtp.gmail.com with ESMTPSA id d194-20020a814fcb000000b0058fb9863fe7sm297073ywb.103.2023.09.14.05.55.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Sep 2023 05:55:26 -0700 (PDT)
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-d8181087dc9so915345276.3;
        Thu, 14 Sep 2023 05:55:26 -0700 (PDT)
X-Received: by 2002:a25:b813:0:b0:d77:8fd3:36e with SMTP id
 v19-20020a25b813000000b00d778fd3036emr5095803ybj.20.1694696126345; Thu, 14
 Sep 2023 05:55:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230912045157.177966-1-claudiu.beznea.uj@bp.renesas.com> <20230912045157.177966-10-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20230912045157.177966-10-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 14 Sep 2023 14:55:13 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVNzgHqURohOgpFEaGn+6+rQTqsDomoS1u_-jn=GgmHXw@mail.gmail.com>
Message-ID: <CAMuHMdVNzgHqURohOgpFEaGn+6+rQTqsDomoS1u_-jn=GgmHXw@mail.gmail.com>
Subject: Re: [PATCH 09/37] clk: renesas: rzg2l: fix computation formula
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
> According to hardware manual of RZ/G2L (r01uh0914ej0130-rzg2l-rzg2lc.pdf)
> the computation formula for PLL rate is as follows:
>
> Fout =3D ((m + k/65536) * Fin) / (p * 2^s)
>
> and k has values in range [-32768, 32767]. Dividing k by 65536 with
> integer variables leads all the time to zero. Thus we may have slight
> differences b/w what has been set vs. what is displayed. Thus,
> get rid of this and decompose the formula before dividing k by 65536.
>
> Fixes: ef3c613ccd68a ("clk: renesas: Add CPG core wrapper for RZ/G2L SoC"=
)
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Thanks for your patch!

> --- a/drivers/clk/renesas/rzg2l-cpg.c
> +++ b/drivers/clk/renesas/rzg2l-cpg.c
> @@ -696,18 +696,22 @@ static unsigned long rzg2l_cpg_pll_clk_recalc_rate(=
struct clk_hw *hw,
>         struct pll_clk *pll_clk =3D to_pll(hw);
>         struct rzg2l_cpg_priv *priv =3D pll_clk->priv;
>         unsigned int val1, val2;
> -       unsigned int mult =3D 1;
> -       unsigned int div =3D 1;
> +       unsigned int div;
> +       u64 rate;
> +       s16 kdiv;
>
>         if (pll_clk->type !=3D CLK_TYPE_SAM_PLL)
>                 return parent_rate;
>
>         val1 =3D readl(priv->base + GET_REG_SAMPLL_CLK1(pll_clk->conf));
>         val2 =3D readl(priv->base + GET_REG_SAMPLL_CLK2(pll_clk->conf));
> -       mult =3D MDIV(val1) + KDIV(val1) / 65536;
> +       kdiv =3D KDIV(val1);
>         div =3D PDIV(val1) << SDIV(val2);
>
> -       return DIV_ROUND_CLOSEST_ULL((u64)parent_rate * mult, div);
> +       rate =3D (u64)MDIV(val1) * parent_rate;
> +       rate +=3D ((long long)parent_rate * kdiv) / 65536;

As the division is a binary shift, you can use the mul_u64_u32_shr() helper=
,
and incorporate the sdiv shift at the same time:

    rate +=3D mul_u64_u32_shr(parent_rate, KDIV(val1), 16 + SDIV(val2));

You can save a multiplication by premultiplying mdiv by 65536:

    rate =3D mul_u64_u32_shr(parent_rate, (MDIV(val1) << 16)) + KDIV(val1),
                           16 + SDIV(val2));

> +
> +       return DIV_ROUND_CLOSEST_ULL(rate, div);

return DIV_ROUND_CLOSEST_ULL(rate, PDIV(val1));

>  }
>
>  static const struct clk_ops rzg2l_cpg_pll_ops =3D {

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

