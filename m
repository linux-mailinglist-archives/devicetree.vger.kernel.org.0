Return-Path: <devicetree+bounces-597-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB9D7A2120
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 16:34:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 77C6C283666
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 14:34:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6083730CF0;
	Fri, 15 Sep 2023 14:34:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B876E30CE9
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 14:34:29 +0000 (UTC)
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B4271FCE;
	Fri, 15 Sep 2023 07:34:28 -0700 (PDT)
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-59c2ca01f27so563867b3.2;
        Fri, 15 Sep 2023 07:34:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694788467; x=1695393267;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2Bg+/ZlDV5cEjktS5gTZzV6GvE3CfacbspJaXAFuHm8=;
        b=d6Aop0qV/FY92P92vPrbPg3s28t7atINAVPHB+Cmh22mT+JkB4kcKtLirnOr8S+gYz
         jBB2qogCy/yD9sUk8pwsGENeLuNpxZnlBzksFuduChnOLAYTCCghlZT7vvQ5fVbK/gNb
         vFOnaUVAPnkaADrS+zycVYlyPHJjO+tu0l8QwkRm1kps03dW1tCKux52cDpOSNRt2FaH
         XyWLQuhvuqfGVH7vT0KimmdEcumf4rRA3BUpSqPEdCTDSmy5rZWKBBqyMxPGlZz7rMZh
         lwhPdgmT2/C/rVgzwJrTyOvyda3gkAkKnvgcPCTB/jajJnKWBkoiYtdn8X4FaevxDf4m
         7m4A==
X-Gm-Message-State: AOJu0YxrczgOTFioHVgOxuXDoHEsx1zQqOO5qaAgJ0pmkpSUEbaZLiy4
	KmiOzPXxsQW0pdMGDiqRyXQRMvBZja31UA==
X-Google-Smtp-Source: AGHT+IH6EveqHYcx/3C9xqQjrlqRaxedtE9rgp9QsIZ8zCtO0RoS5FOW+cOsuoEwcOqviJEJ61Uplw==
X-Received: by 2002:a81:d551:0:b0:599:241d:3a31 with SMTP id l17-20020a81d551000000b00599241d3a31mr2021303ywj.43.1694788467430;
        Fri, 15 Sep 2023 07:34:27 -0700 (PDT)
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com. [209.85.219.175])
        by smtp.gmail.com with ESMTPSA id j20-20020a819214000000b00598d67585d7sm885341ywg.117.2023.09.15.07.34.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Sep 2023 07:34:26 -0700 (PDT)
Received: by mail-yb1-f175.google.com with SMTP id 3f1490d57ef6-d7b91422da8so2102804276.2;
        Fri, 15 Sep 2023 07:34:25 -0700 (PDT)
X-Received: by 2002:a25:68ce:0:b0:d3c:58ef:ef7b with SMTP id
 d197-20020a2568ce000000b00d3c58efef7bmr1850354ybc.6.1694788465622; Fri, 15
 Sep 2023 07:34:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230912045157.177966-1-claudiu.beznea.uj@bp.renesas.com> <20230912045157.177966-38-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20230912045157.177966-38-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 15 Sep 2023 16:34:12 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUVfZednCjMSkJGZX7B+7G6mV33EJ=fpmuqqKuod7U55w@mail.gmail.com>
Message-ID: <CAMuHMdUVfZednCjMSkJGZX7B+7G6mV33EJ=fpmuqqKuod7U55w@mail.gmail.com>
Subject: Re: [PATCH 37/37] arm64: defconfig: enable RZ/G3S (R9A08G045) SoC
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

On Tue, Sep 12, 2023 at 6:53=E2=80=AFAM Claudiu <claudiu.beznea@tuxon.dev> =
wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> Enable config flag for Renesas RZ/G3S (R9A08G045) SoC.
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

