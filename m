Return-Path: <devicetree+bounces-167-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 573C67A0037
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 11:36:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2CCFF1C2105C
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 09:36:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F92520B3D;
	Thu, 14 Sep 2023 09:35:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83756224ED
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 09:35:28 +0000 (UTC)
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDC8D1FD3;
	Thu, 14 Sep 2023 02:35:27 -0700 (PDT)
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-59be9a09c23so7361757b3.1;
        Thu, 14 Sep 2023 02:35:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694684127; x=1695288927;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LTh8xPM+07FBTf1rIq+GUK/2kHbHJWljrJibJkEvgc4=;
        b=I7sz6BPoc8T2L0eqmoseib7EGNmf9l9CpfWIhHuDwx5F57YCJ0FOJaO1F5KEEmohV0
         8G8AJPPRyQ6Sl557+4paMevydZoCvHwA+zk/78mkcmFC2p+YcmWqZ8du/li7pdiihvx7
         9dKPcNTi6VUFA6Xa0sDZ1kEkl/SX/I3JiU1flmIujTwkk3vqV9kL7qXk000GySLiYuSw
         8Y0jzpZi9f6RsURtWNOg9MiW9qN9aMzxZtXcICgS6Mh/9pnEgS7oMbi70h1qbtrCgLDx
         /7FXNeRp49m9V5/kRoflMg77Eq1qgZdoUPVN8AXFbhglDNC0pgSWd4f6TiJZ3g61FLlq
         2a6g==
X-Gm-Message-State: AOJu0Yyfv3VgpjqRuEFvFRgOaC8fh4XvLYo1Ooj6VwESy1ktRmATLvoo
	SYSCocp4kN4kHB9fg+lsYK3jBFqFggOKNw==
X-Google-Smtp-Source: AGHT+IE2zonk+hup+uaOx0EVS3UrnYkAZUE5WTq1dNfGMoXak4bWzcR+xy0uC00D5lWMSWz29HEY1g==
X-Received: by 2002:a81:498c:0:b0:57a:8ecb:11ad with SMTP id w134-20020a81498c000000b0057a8ecb11admr4669031ywa.43.1694684127028;
        Thu, 14 Sep 2023 02:35:27 -0700 (PDT)
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com. [209.85.219.177])
        by smtp.gmail.com with ESMTPSA id g5-20020a0ddd05000000b0059b085c4051sm233923ywe.85.2023.09.14.02.35.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Sep 2023 02:35:25 -0700 (PDT)
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-d7b79a4899bso749171276.2;
        Thu, 14 Sep 2023 02:35:25 -0700 (PDT)
X-Received: by 2002:a25:32c4:0:b0:d80:e259:ce67 with SMTP id
 y187-20020a2532c4000000b00d80e259ce67mr4305854yby.61.1694684125448; Thu, 14
 Sep 2023 02:35:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230912045157.177966-1-claudiu.beznea.uj@bp.renesas.com> <20230912045157.177966-2-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20230912045157.177966-2-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 14 Sep 2023 11:35:13 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUeLiV-P6MUC7F2Mfs+axZjrM-iscTT0W9GqYZaXcKhQg@mail.gmail.com>
Message-ID: <CAMuHMdUeLiV-P6MUC7F2Mfs+axZjrM-iscTT0W9GqYZaXcKhQg@mail.gmail.com>
Subject: Re: [PATCH 01/37] dt-bindings: serial: renesas,scif: document
 r9a08g045 support
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
> Document support for the Serial Communication Interface with FIFO (SCIF)
> available in the Renesas RZ/G3S (R9A08G045) SoC. SCIF interface in
> Renesas RZ/G3S is similar to the one available in RZ/G2L.
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

