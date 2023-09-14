Return-Path: <devicetree+bounces-268-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF797A097F
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 17:40:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 83A312821F1
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 15:40:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12674208A9;
	Thu, 14 Sep 2023 15:35:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05CE910A1E
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 15:35:29 +0000 (UTC)
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 72F481FD0;
	Thu, 14 Sep 2023 08:35:29 -0700 (PDT)
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-59b5484fbe6so13317807b3.1;
        Thu, 14 Sep 2023 08:35:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694705728; x=1695310528;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IGn0RiHyZw2DSAr2CB814hl7hb457z9EUqLLi0M5sq4=;
        b=D0i5QRQF4F5/JAruezsRJtPSF1Z8GxakPn0a9+MofSxgBrbe7aVduxE4u0FJB/k9F5
         4rEIt2ICgYvxfcAA21SRuy67Jc3wdrCQFb0xWmE4dp/wMAmZg0WR1e+PvHrLea7MLFRc
         2JsSmjmEwp6ZSh1E5LR35lf8SyGe5yrzuJYpUuT0Df/dQjYgLHkWaEidMsUPxDu2H9vn
         qCcX1Dld9voDkR7L38/JX5XK6rBL+4pAeEyzh0qQEYhSNUd5dLzBJx3uvvDWYXv5vLMB
         CNp2V8mGUHh3c1XZxYLjnhA9wh4kngJOeWhTJlw9rk6t3mCOYpXqHUkKJOT4UyJkaeUa
         0eKA==
X-Gm-Message-State: AOJu0YzSTGlc42QfBGjbozq960yKwcF8h/6hRCQlSeuOBueYTiLdBxJL
	Xd4TeUHiJZrzokrTVnXE4g8QV2cfI5FyjQ==
X-Google-Smtp-Source: AGHT+IH9URVAm+Kzolb63Se6nxQZFZvGSr3JDIiEG+FuOnIdxeJmgpGQh80V+nC8dF2Cz80HwINKWw==
X-Received: by 2002:a0d:df07:0:b0:59b:fda7:9d7f with SMTP id i7-20020a0ddf07000000b0059bfda79d7fmr1146235ywe.49.1694705728220;
        Thu, 14 Sep 2023 08:35:28 -0700 (PDT)
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com. [209.85.219.172])
        by smtp.gmail.com with ESMTPSA id n124-20020a0dfd82000000b005925c896bc3sm377732ywf.53.2023.09.14.08.35.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Sep 2023 08:35:27 -0700 (PDT)
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-d81b803b09aso237127276.2;
        Thu, 14 Sep 2023 08:35:27 -0700 (PDT)
X-Received: by 2002:a5b:ac2:0:b0:d0a:353b:b939 with SMTP id
 a2-20020a5b0ac2000000b00d0a353bb939mr5402450ybr.52.1694705727063; Thu, 14 Sep
 2023 08:35:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230912045157.177966-1-claudiu.beznea.uj@bp.renesas.com> <20230912045157.177966-32-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20230912045157.177966-32-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 14 Sep 2023 17:35:14 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXMXfqG9whhgTwS9Ut8ZBAoEYsGBx_WX-BPE02kGbiR_Q@mail.gmail.com>
Message-ID: <CAMuHMdXMXfqG9whhgTwS9Ut8ZBAoEYsGBx_WX-BPE02kGbiR_Q@mail.gmail.com>
Subject: Re: [PATCH 31/37] dt-bindings: mmc: renesas,sdhi: Document RZ/G3S support
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

On Tue, Sep 12, 2023 at 6:53=E2=80=AFAM Claudiu <claudiu.beznea@tuxon.dev> =
wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> Document support for the SD Card/MMC interface on the Renesas
> RZ/G3S (R9A08G045) SoC.
>
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

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

