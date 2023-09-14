Return-Path: <devicetree+bounces-175-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FE807A00BE
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 11:49:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3C0271C20B34
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 09:49:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 667A62AB4F;
	Thu, 14 Sep 2023 09:49:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B249224F2
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 09:49:37 +0000 (UTC)
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BFC9CE3;
	Thu, 14 Sep 2023 02:49:36 -0700 (PDT)
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-58fc4eaa04fso8706007b3.0;
        Thu, 14 Sep 2023 02:49:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694684976; x=1695289776;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kGHFgFrGIBAAVa6J4diJj00gDkB/jKzsHsTxxfM9spg=;
        b=Ih9H6SooXaJzm1BjyVT/fhz3j1ERxlUanTi2k4k6zkPDoC7e1f41t+tqzHw1LY1P7l
         5yxGBsfWfMf3ewPvnygAzFTCLtwALr413nrJxFTUqxHoTNvUnKSo6dpY9+07T7o6/nHy
         grmqtYYGmBWzx1M56Jj5kA1iglNGsQZwcvrvUC9+b+3dud/bjwnw+wFUCeU5ZAJcM+bi
         EyfTdgdNyvmJtd0i8eJ2xT2b3KCSzIf01wl3N5h/JldY6mJqm+AndO+i0Dhw/nCm8Orc
         Xt5Qn3muQD5ZQ9aRy7EhFbM1p6RI8oxZlcSdgQ54fx4VeNt9kStbLfLqpB3IWB9JCWaQ
         ec4g==
X-Gm-Message-State: AOJu0YymLfW0gHukWO3Ri7gBamdQqDVo8wlJEUHFK8UkzITq6M+ydcBY
	5CmOeqsZWBIHDC0atL5Q4QH8fiFUoVtA2g==
X-Google-Smtp-Source: AGHT+IE0FtO51OE2xXwaxCbYz29NQ16FH2YXTzXPBhgSLua7xJ5UWFHUxUZdAx9ijvoTXUKN1++Qhg==
X-Received: by 2002:a81:af1d:0:b0:59b:de0f:c23b with SMTP id n29-20020a81af1d000000b0059bde0fc23bmr3423536ywh.46.1694684975874;
        Thu, 14 Sep 2023 02:49:35 -0700 (PDT)
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com. [209.85.128.178])
        by smtp.gmail.com with ESMTPSA id m126-20020a0de384000000b00594fb0e2db3sm236940ywe.138.2023.09.14.02.49.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Sep 2023 02:49:35 -0700 (PDT)
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-58fc4eaa04fso8705827b3.0;
        Thu, 14 Sep 2023 02:49:35 -0700 (PDT)
X-Received: by 2002:a25:29c3:0:b0:d80:1023:8222 with SMTP id
 p186-20020a2529c3000000b00d8010238222mr4854190ybp.34.1694684975146; Thu, 14
 Sep 2023 02:49:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230912045157.177966-1-claudiu.beznea.uj@bp.renesas.com> <20230912045157.177966-4-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20230912045157.177966-4-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 14 Sep 2023 11:49:21 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWXx_QNS0UKUdovnNGQFtWEqd1trfWYtQOZng2dVoXvtA@mail.gmail.com>
Message-ID: <CAMuHMdWXx_QNS0UKUdovnNGQFtWEqd1trfWYtQOZng2dVoXvtA@mail.gmail.com>
Subject: Re: [PATCH 03/37] dt-bindings: soc: renesas: renesas,rzg2l-sysc:
 document RZ/G3S SoC
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

On Tue, Sep 12, 2023 at 6:52=E2=80=AFAM Claudiu <claudiu.beznea@tuxon.dev> =
wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> Document RZ/G3S (R9A08G045) SYSC bindings. The SYSC block found on the
> RZ/G3S SoC is similar to one found on the RZ/G2UL.
>
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.7.

Gr{oetje,eeting}s,

                        Geert


--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

