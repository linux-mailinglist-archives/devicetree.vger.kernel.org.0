Return-Path: <devicetree+bounces-220-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DFA67A0536
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 15:14:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 79E8A1C20BCB
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 13:13:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1877208AE;
	Thu, 14 Sep 2023 13:12:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4EE2241E0
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 13:12:24 +0000 (UTC)
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB76E1FDA;
	Thu, 14 Sep 2023 06:12:23 -0700 (PDT)
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-d8181087dc9so934550276.3;
        Thu, 14 Sep 2023 06:12:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694697142; x=1695301942;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/oWvZHVsTkVbLPbiv0w553loiJf0Vtu9uXJvexs6wx4=;
        b=g0wH90TBFIX8WDQTUF1hlrgf3a35CnvNzUKXT7YGZenVUDKrCJ9X9seJ1u51o0zwNG
         DWhbaraIxB83Z89mFB/gFmcEdhkva8nL3uzQLHDAXgILyoeFAoIkH6gVN8YCH9P4RENT
         M0WcrgbYswmaG3R+uoBGIqdJSB286IG42vQP4aF6IusbuBae8a2277vIbW7akgDDfjvO
         1jEvsVoB/ZkOsjfCC7PmFg6IzJmuzSMESO1lsUi1cog6JlMayZ0YQJ/hb4BuEz2In4Ax
         8gUmL/IxIyWh65MLEwmQ1bbvZ4de6Vfr1q3AaHXChl2kjeJi3BRyc7P95w7sN2C4xP7e
         tLow==
X-Gm-Message-State: AOJu0Yyw/XuO+MEkFbFxN3X8uPJ1ToaaM27RkCNQvr5YOT4rHaK2CDrw
	whf1Iw7tbSweytxnv+WD+vvA7RRhB4baUQ==
X-Google-Smtp-Source: AGHT+IHLpejWN1ToSC21mHfiFO/oSUF/st7hYB1AGOqNhV5Ziw4khqR3hyYJeL82u26RaBHn2d8gFg==
X-Received: by 2002:a25:ac03:0:b0:d0f:6f1d:89ec with SMTP id w3-20020a25ac03000000b00d0f6f1d89ecmr5214472ybi.35.1694697142452;
        Thu, 14 Sep 2023 06:12:22 -0700 (PDT)
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com. [209.85.219.169])
        by smtp.gmail.com with ESMTPSA id j73-20020a25234c000000b00babcd913630sm328997ybj.3.2023.09.14.06.12.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Sep 2023 06:12:21 -0700 (PDT)
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-d8181087dc9so934514276.3;
        Thu, 14 Sep 2023 06:12:21 -0700 (PDT)
X-Received: by 2002:a25:c7d1:0:b0:d5c:4a6a:f5a4 with SMTP id
 w200-20020a25c7d1000000b00d5c4a6af5a4mr5646812ybe.24.1694697141289; Thu, 14
 Sep 2023 06:12:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230912045157.177966-1-claudiu.beznea.uj@bp.renesas.com> <20230912045157.177966-13-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20230912045157.177966-13-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 14 Sep 2023 15:12:08 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVLx1d-6=5xx_GLAb7LxxRR9FwhAU56fxNc3b=9wj286g@mail.gmail.com>
Message-ID: <CAMuHMdVLx1d-6=5xx_GLAb7LxxRR9FwhAU56fxNc3b=9wj286g@mail.gmail.com>
Subject: Re: [PATCH 12/37] clk: renesas: rzg2l: reduce the critical area
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
> spinlock in rzg2l_mod_clock_endisable() is intended to protect the access=
es
> to hardware register. There is no need to protect the instructions that s=
et
> temporary variable which will be then written to register. Thus limit the
> spinlock only to the hardware register access.
>
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Thanks for your patch!

> --- a/drivers/clk/renesas/rzg2l-cpg.c
> +++ b/drivers/clk/renesas/rzg2l-cpg.c
> @@ -912,13 +912,13 @@ static int rzg2l_mod_clock_endisable(struct clk_hw =
*hw, bool enable)
>
>         dev_dbg(dev, "CLK_ON %u/%pC %s\n", CLK_ON_R(reg), hw->clk,
>                 enable ? "ON" : "OFF");
> -       spin_lock_irqsave(&priv->rmw_lock, flags);
>
>         value =3D bitmask << 16;
>         if (enable)
>                 value |=3D bitmask;
> -       writel(value, priv->base + CLK_ON_R(reg));
>
> +       spin_lock_irqsave(&priv->rmw_lock, flags);
> +       writel(value, priv->base + CLK_ON_R(reg));
>         spin_unlock_irqrestore(&priv->rmw_lock, flags);

After this, it becomes obvious there is nothing to protect at all,
so the locking can just be removed from this function?

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

