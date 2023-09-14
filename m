Return-Path: <devicetree+bounces-267-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 808037A095C
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 17:34:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5D50D1C20FFC
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 15:34:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 980F51F5F7;
	Thu, 14 Sep 2023 15:26:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C17739C
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 15:26:30 +0000 (UTC)
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1AD731FCC;
	Thu, 14 Sep 2023 08:26:30 -0700 (PDT)
Received: by mail-oi1-f171.google.com with SMTP id 5614622812f47-3ab7fb1172cso573878b6e.3;
        Thu, 14 Sep 2023 08:26:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694705189; x=1695309989;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Zjr+4JPeft5J8axsyk1Mf3l6qkBl6xOY0dnNNBTJUBQ=;
        b=mpfBjIMZDv+5mG9ImwZC4DhwpSbriglD4DuYUB675F5cOSXO2Z0OZTu3zI5d2qgNDc
         4zJ4ODUxaah1MUrT1tCKBRMKPPIIjMBkDW9mIqiTxK50mAEuvhONAsGYAz7LBkVmE7XJ
         g0elAT19GLzVvGlgm0IdD3cjxo06yal4LPRzscxBPKelZQijvibuHVhU2JpjwOeB6K5h
         nJTK84A4tvkmRJyGDlojSp3NaqMq/dLVCiNARbkKkV+hfz9bpylroJKyNg0EZSJwBjMN
         PZnDOZIcR2S5mzTBHNa8CPhY8Cm0YDCTsSNEMrDMYUHy0N7sZQYNT+9eWRgVTzLnHM4N
         yZpw==
X-Gm-Message-State: AOJu0Yw6YHEzlEG/x9Fvocl3iO2Hf+Iw0BhBfgeUOglrYgb93uABvL/7
	tLeAnndvhnIaC3xIA6MyLtw7N66V5Cq/qQ==
X-Google-Smtp-Source: AGHT+IFwzNwD7eIsFKSCBxFquEW7uHOw3r/h6O4PRtNLelnAKLrh7d7UZU16T9bRuqB14GMvkJLyfg==
X-Received: by 2002:a05:6808:200c:b0:3a8:a4bd:ceed with SMTP id q12-20020a056808200c00b003a8a4bdceedmr7260019oiw.9.1694705189003;
        Thu, 14 Sep 2023 08:26:29 -0700 (PDT)
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com. [209.85.219.181])
        by smtp.gmail.com with ESMTPSA id c17-20020a5b0bd1000000b00d3596aca5bcsm360223ybr.34.2023.09.14.08.26.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Sep 2023 08:26:27 -0700 (PDT)
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-d81b42a3108so316446276.1;
        Thu, 14 Sep 2023 08:26:26 -0700 (PDT)
X-Received: by 2002:a25:d1d6:0:b0:d19:664:7425 with SMTP id
 i205-20020a25d1d6000000b00d1906647425mr5526179ybg.27.1694705186564; Thu, 14
 Sep 2023 08:26:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230912045157.177966-1-claudiu.beznea.uj@bp.renesas.com>
 <20230912045157.177966-22-claudiu.beznea.uj@bp.renesas.com> <20230912160330.GA864606-robh@kernel.org>
In-Reply-To: <20230912160330.GA864606-robh@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 14 Sep 2023 17:26:14 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWxKFrTi7c0Df0cHLrVFt3=a7UOy0jnKxsG8PEuD=15Pg@mail.gmail.com>
Message-ID: <CAMuHMdWxKFrTi7c0Df0cHLrVFt3=a7UOy0jnKxsG8PEuD=15Pg@mail.gmail.com>
Subject: Re: [PATCH 21/37] dt-bindings: clock: add r9a08g045 CPG clocks and
 resets definitions
To: Rob Herring <robh@kernel.org>
Cc: Claudiu <claudiu.beznea@tuxon.dev>, mturquette@baylibre.com, sboyd@kernel.org, 
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

Hi Rob,

On Tue, Sep 12, 2023 at 6:03=E2=80=AFPM Rob Herring <robh@kernel.org> wrote=
:
> On Tue, Sep 12, 2023 at 07:51:41AM +0300, Claudiu wrote:
> > From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> >
> > Add RZ/G3S (R9A08G045) Clock Pulse Generator (CPG) core clocks, module
> > clocks and resets.
>
> This is part of the binding, so it can be squashed with the previous
> patch. The ack there still stands.

Usually we keep it as a separate patch, to be queued in an immutable
branch, as it is included by both the clock driver and by DTS, but
not by the yaml bindings file.

> > Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> > ---
> >  include/dt-bindings/clock/r9a08g045-cpg.h | 243 ++++++++++++++++++++++
> >  1 file changed, 243 insertions(+)
> >  create mode 100644 include/dt-bindings/clock/r9a08g045-cpg.h

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

