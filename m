Return-Path: <devicetree+bounces-533-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A566A7A1DC5
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 13:58:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 666142821AF
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 11:58:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BD02101F4;
	Fri, 15 Sep 2023 11:58:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCFF6DF43
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 11:58:34 +0000 (UTC)
Received: from mail-yw1-f193.google.com (mail-yw1-f193.google.com [209.85.128.193])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EBB671FE5;
	Fri, 15 Sep 2023 04:58:31 -0700 (PDT)
Received: by mail-yw1-f193.google.com with SMTP id 00721157ae682-58dce1f42d6so43345167b3.0;
        Fri, 15 Sep 2023 04:58:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694779111; x=1695383911;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IhoLa0IXdX3TaWf8YmV+AYUsXgMaohKowkvp3aA0P+I=;
        b=nlw9XbPDsFV/RqCjMx20OpBo9VNByN/YeoLg0bO0HA4HZCg0pnxrhrnC3k3R8ek3o3
         fAg8pk0KMQIyfi3f1bJuJ5CKd1+Y00aZP4vyozUvuSwQ6t/EyE8h1oHd1tRtHTSAzXTS
         DUcCajOBUijf1RyE1tkCxScQ/5QUYJZaJtOF/Wx+ir9DD5Jy7in03p+NhCfHYkwJ8QRa
         2ojlFYBm6xDg2/DT/cwdr0HYb469NgShFuNscklpyoUpdAbzkZ+oS1SpsvQv0GyoLiUT
         GQsGqhi8dd57L1rPPrMPSUFN4k16zRAt07rz8rRG5n+6je9i/nDRwTJwkCq3S0/XjgQo
         syIw==
X-Gm-Message-State: AOJu0Yw0M1GKB7wZcMi8hmdnFxv2PkeYaY105aiInVRJEV3exG8rahE5
	E6XKCa1vUYImHO8eBTML6kadyycFYF6BLL/O
X-Google-Smtp-Source: AGHT+IH49B71wpV06DDzaQrTvbIXqVRze07xbxbfDuEd47ROOpIoLqNZyXllMtZVtNOsiiBkWAxxUw==
X-Received: by 2002:a81:a04b:0:b0:56f:fd0a:588d with SMTP id x72-20020a81a04b000000b0056ffd0a588dmr4525175ywg.8.1694779111162;
        Fri, 15 Sep 2023 04:58:31 -0700 (PDT)
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com. [209.85.219.181])
        by smtp.gmail.com with ESMTPSA id m128-20020a0de386000000b00595394ba941sm828551ywe.81.2023.09.15.04.58.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Sep 2023 04:58:31 -0700 (PDT)
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-d819b185e74so2150221276.0;
        Fri, 15 Sep 2023 04:58:31 -0700 (PDT)
X-Received: by 2002:a25:d252:0:b0:d81:987f:989c with SMTP id
 j79-20020a25d252000000b00d81987f989cmr1869824ybg.3.1694779110814; Fri, 15 Sep
 2023 04:58:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230912045157.177966-1-claudiu.beznea.uj@bp.renesas.com> <20230912045157.177966-21-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20230912045157.177966-21-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 15 Sep 2023 13:58:18 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVzX6fM5OSEONngii13uzbG0tUgM-ZVYstKw6JoV=g1OQ@mail.gmail.com>
Message-ID: <CAMuHMdVzX6fM5OSEONngii13uzbG0tUgM-ZVYstKw6JoV=g1OQ@mail.gmail.com>
Subject: Re: [PATCH 20/37] dt-bindings: clock: renesas,rzg2l-cpg: document
 RZ/G3S SoC
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
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Sep 12, 2023 at 6:52=E2=80=AFAM Claudiu <claudiu.beznea@tuxon.dev> =
wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> Add documentation for RZ/G3S CPG. RZ/G3S CPG module is almost identical
> with the one available in RZ/G2{L, UL} the exception being some core
> clocks as follows:
> - SD clock is composed by a mux and a divider and the divider
>   has some limitation (div =3D 1 cannot be set if mux rate is 800MHz).
> - there are 3 SD clocks
> - OCTA and TSU clocks are specific to RZ/G3S
> - PLL1/4/6 are specific to RZ/G3S with its own computation formula
> Even with this RZ/G3S could use the same bindings as RZ/G2L.
>
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

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

