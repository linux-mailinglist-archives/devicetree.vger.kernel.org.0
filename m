Return-Path: <devicetree+bounces-174-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DDDDF7A00B8
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 11:49:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7AF70B20CBB
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 09:49:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA2022AB4F;
	Thu, 14 Sep 2023 09:49:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9FD9224F2
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 09:49:22 +0000 (UTC)
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2B43E3;
	Thu, 14 Sep 2023 02:49:21 -0700 (PDT)
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-59bbbeea69fso8778527b3.0;
        Thu, 14 Sep 2023 02:49:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694684961; x=1695289761;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6gFLY2IMJxQUgyhc4c6QO4qakT/ISmys8Z8hG9m2OZ0=;
        b=iyLqbP09/fI0q2uTcLxZMBuNRcXKOsZsUum0LY4k598lh3MSCLYLhSLyFVfuuP+lzF
         6wU0kPdWXusTun5TrBXZmQWqbt3gc+Xof3hY1qOIRBr4RwUKBWN7mnCy++CAjcgWrVsw
         XlAnH33K0bno/aDKnFhxrqQM+SVndKp3eiiLGU8I7KyTFYDrN2kb3WM0sVmAJNFh7iO+
         jFPMhnP1/uVCj/ebsWmygd61mT3ChmdD99FND6kfmHUuJUZ3uzkFR1ekKl9tlp50gm/o
         PAlG90iEDtE0NKUAMpaWVd8TnckKqJBwYSh073R3n68Yiuz7IMXBlflnRsRoHAzgC06U
         4f9A==
X-Gm-Message-State: AOJu0YyrP0ukobi3dWgaYLj0afVO0kLWikOZolLO69J9wYvkXwZreY1M
	WZF+dMEoF8c1UXK7ACJfEnw3sBTExw/AJw==
X-Google-Smtp-Source: AGHT+IFp9ulQBIKOKi9VDoashW8zbaOQfXpQJiQhP3lQPQJdqOSO2x9xLrL4P0fMJ1m1P1uUGUdBuQ==
X-Received: by 2002:a81:de4f:0:b0:592:ffc:c787 with SMTP id o15-20020a81de4f000000b005920ffcc787mr4514871ywl.30.1694684961014;
        Thu, 14 Sep 2023 02:49:21 -0700 (PDT)
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com. [209.85.219.170])
        by smtp.gmail.com with ESMTPSA id q66-20020a815c45000000b0059b547b167esm239119ywb.98.2023.09.14.02.49.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Sep 2023 02:49:19 -0700 (PDT)
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-d7b91422da8so755976276.2;
        Thu, 14 Sep 2023 02:49:19 -0700 (PDT)
X-Received: by 2002:a25:87:0:b0:d44:af:3cce with SMTP id 129-20020a250087000000b00d4400af3ccemr5046648yba.27.1694684958968;
 Thu, 14 Sep 2023 02:49:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230912045157.177966-1-claudiu.beznea.uj@bp.renesas.com> <20230912045157.177966-3-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20230912045157.177966-3-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 14 Sep 2023 11:49:06 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWSFkeV0u1GsQox1EQZzOHBrhV5roRLp17VCZRCQzkDZw@mail.gmail.com>
Message-ID: <CAMuHMdWSFkeV0u1GsQox1EQZzOHBrhV5roRLp17VCZRCQzkDZw@mail.gmail.com>
Subject: Re: [PATCH 02/37] dt-bindings: soc: renesas: document Renesas RZ/G3S
 SoC variants
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
> Document RZ/G3S (R9A08G045) SoC variants.
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

