Return-Path: <devicetree+bounces-254-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DA3977A086D
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 17:04:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 93B43281E08
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 15:04:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F4541D536;
	Thu, 14 Sep 2023 14:48:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 544F528E11
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 14:48:25 +0000 (UTC)
Received: from mail-yb1-xb2b.google.com (mail-yb1-xb2b.google.com [IPv6:2607:f8b0:4864:20::b2b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0798211B
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 07:48:24 -0700 (PDT)
Received: by mail-yb1-xb2b.google.com with SMTP id 3f1490d57ef6-d7ba4c5f581so1096117276.0
        for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 07:48:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694702904; x=1695307704; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=HuHnnCCpKec3KupkEaXCUwSfceD3r5v9lcKHYT+1ctU=;
        b=uwOzEaRMlvkrX6eBWpjTmYYq/BIp35aWULXxX2pVTtglET3jtjxkAVOfYdwt22wd7J
         pSGO7CeMaYRPidkO4KLxPl2tkhCI+pAFOs3tq+i4l4eSCJUnXbwD/zJNwoAxdBcVNsT1
         yLPx5eGtt5WLnq4uOXEZiF5JAyCWPgrH3ns8qg4llIB6S4qSBK4HfSVVSn0k0614reaS
         7XFG6H7hlO/rwk1Itq+cm7NhauRK5bfd1r0Ed03QLTNs9b9CYic0vQ4ZxHutkLnFF7YR
         JX55qt8AGcP1IZLlKKbAK22Nq2SI9U8J1Cz7yOyD61xKh3qDgJyhueuNzA9SC44kuQcf
         T4eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694702904; x=1695307704;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HuHnnCCpKec3KupkEaXCUwSfceD3r5v9lcKHYT+1ctU=;
        b=qW/8393/j+nlJDqnpthfGpvPFBpYGyeGhqQNVngWL3o2O5N2wlTIOW2U4zasLYbyd/
         rU2NDJ7zn9soFKYOD052csTs65PqaXuxANHggETbetGRNTWTcECgXaHgon7xvREWYf+3
         ZY0P1dOLUoOuhKKsVUX0KKY6HWzpJJLIAxs8sI9kVlj4Z18XNlUCNc1pfRwq2WVoNqVD
         826WXmolZnEjoGvYBuuV+9Rz7HaDO4i8tWWAdTur+Jbq3u2XYk2f/deXbzA1rzmXsCxR
         PJFMvXQUJabGwbAnqr/iTMJzGdzKpaoX+IU5y1n5y/QojXoFvTccOHZsf+PPUN9+FHRI
         bFiQ==
X-Gm-Message-State: AOJu0YzRr9cgpgMgl6yDpVhR0Yrxvfxyw/Kb5AUrRwcgUWNh3xR9TpeU
	WIQUYHNPBbue8W0TrF8MNiO0Tfx1QTy+iplLlQdCFw==
X-Google-Smtp-Source: AGHT+IGBWbsPXdVUyVGh6IoeKWogXMpeV+NV1QYCzoeda8qrpQjFBedRitaOXAtVUrf1hzUWZSmx3vAdawl5AXo2Qt4=
X-Received: by 2002:a25:858b:0:b0:d4c:cbd2:f6f3 with SMTP id
 x11-20020a25858b000000b00d4ccbd2f6f3mr5416147ybk.53.1694702903830; Thu, 14
 Sep 2023 07:48:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230912045157.177966-1-claudiu.beznea.uj@bp.renesas.com> <20230912045157.177966-32-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20230912045157.177966-32-claudiu.beznea.uj@bp.renesas.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 14 Sep 2023 16:47:48 +0200
Message-ID: <CAPDyKFq1n=QOt9WSnzH4juPZ-B7xWdwGnDcAYUo7_D=2PRj-WQ@mail.gmail.com>
Subject: Re: [PATCH 31/37] dt-bindings: mmc: renesas,sdhi: Document RZ/G3S support
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: geert+renesas@glider.be, mturquette@baylibre.com, sboyd@kernel.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	linus.walleij@linaro.org, gregkh@linuxfoundation.org, jirislaby@kernel.org, 
	magnus.damm@gmail.com, catalin.marinas@arm.com, will@kernel.org, 
	prabhakar.mahadev-lad.rj@bp.renesas.com, biju.das.jz@bp.renesas.com, 
	quic_bjorande@quicinc.com, arnd@arndb.de, konrad.dybcio@linaro.org, 
	neil.armstrong@linaro.org, nfraprado@collabora.com, rafal@milecki.pl, 
	wsa+renesas@sang-engineering.com, linux-renesas-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-serial@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, 12 Sept 2023 at 06:53, Claudiu <claudiu.beznea@tuxon.dev> wrote:
>
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> Document support for the SD Card/MMC interface on the Renesas
> RZ/G3S (R9A08G045) SoC.
>
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/renesas,sdhi.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/renesas,sdhi.yaml b/Documentation/devicetree/bindings/mmc/renesas,sdhi.yaml
> index 7756a8687eaf..94e228787630 100644
> --- a/Documentation/devicetree/bindings/mmc/renesas,sdhi.yaml
> +++ b/Documentation/devicetree/bindings/mmc/renesas,sdhi.yaml
> @@ -59,6 +59,7 @@ properties:
>                - renesas,sdhi-r9a07g043 # RZ/G2UL
>                - renesas,sdhi-r9a07g044 # RZ/G2{L,LC}
>                - renesas,sdhi-r9a07g054 # RZ/V2L
> +              - renesas,sdhi-r9a08g045 # RZ/G3S
>                - renesas,sdhi-r9a09g011 # RZ/V2M
>            - const: renesas,rcar-gen3-sdhi # R-Car Gen3 or RZ/G2
>        - items:
> @@ -122,6 +123,7 @@ allOf:
>                - renesas,sdhi-r9a07g043
>                - renesas,sdhi-r9a07g044
>                - renesas,sdhi-r9a07g054
> +              - renesas,sdhi-r9a08g045
>                - renesas,sdhi-r9a09g011
>      then:
>        properties:
> --
> 2.39.2
>

