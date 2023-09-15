Return-Path: <devicetree+bounces-508-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2001B7A1C32
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 12:25:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 19BD81C216D3
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 10:25:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98DF8FC05;
	Fri, 15 Sep 2023 10:25:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1824FDF6E
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 10:25:45 +0000 (UTC)
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D74523C35
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 03:23:40 -0700 (PDT)
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 86EFA3F682
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 10:23:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1694773418;
	bh=DVQzFwUpbsXuIGkXzoIV2yaJxsbZHyDDscyAWq7j40I=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=VLgLHZCIvZXavGmzi/VrC/fTASD5+EiT9GdMyP7mVN56CdeiRSdTCXcLgRkhUpmzJ
	 FDt6MxjrACIt3BUN7g8SygpgHRa43QLRR47w54q5510QpyiN8a5qEewynhSwdPtyY2
	 +5IOkA0R+S4mbS782cwQe/nr1NHBgmD8RD8hRGqMbAL1ojctl+ZBzRlrf91A9DwiF7
	 +pzAOwwHRmxbe8i8TdMK02RyImOxlWmQGY0nJ2k2DehkxAJOw+toWCeD9jGIOZ17RV
	 cbC3CN/xM5+a877Jp+O+w/6Z1+hHXmttX80fR9MJlDilrzNcy3xFpjZm9Fn328LZMg
	 31WnMvhILcSTA==
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4121c086963so20414001cf.2
        for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 03:23:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694773417; x=1695378217;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DVQzFwUpbsXuIGkXzoIV2yaJxsbZHyDDscyAWq7j40I=;
        b=PorccKwRr7nlNZhbejpKIa4oVmgXaejr39B5Bb05klLGSLtstNQ8ttnj1E6hn1ikjD
         UHwsX9pPoiWC3xxxZ4GU+ve+0ZTLvJxPQrd7JSid+HTgLTTC5jj9E7rkl0vRffch9kgn
         1oPJE4vKIoIEIQjwVM+AxjiOO5lFajQIGVh253Tar1MgUmdwG5zd8ZG2e2j/xeMt+jkz
         vrX1jes+d5R6jlNhUSEDtvZrvXxT2sEXGCafDw0/yVxcsXweRrsDc17KDc7KFxTnTONt
         DzvYW3dSVfAFH9fuO5oBSLNL/Xt5mHN1cEekrI2DkKHfrXwxjZzRWCsGkbGXEkBk8uKB
         CXuQ==
X-Gm-Message-State: AOJu0YyHq1RsQYOwRJL6VkV6zWwXUqf5fcVgO1S3FlX+v6NcQw1qD55A
	UIlEFXkzGtGovMVJLDQ8FTXWqi30Y68F/J1ERp1A85XvQzeTsBCTeYeKBH5035QGctpdoRbPOPm
	rP9Cn0Jjr3Z9KTdq7JQk+uszpHHOPVqF6x12BOiQD2Y/E6ht5c+5fvHU=
X-Received: by 2002:a05:622a:1492:b0:403:e1d1:8b91 with SMTP id t18-20020a05622a149200b00403e1d18b91mr1304331qtx.60.1694773416765;
        Fri, 15 Sep 2023 03:23:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEz6XoHpeoa1FTEaRyEIa8VosrmBlxM/6MYyeWBvLfPWnf7jhkHcp8hPE2RmqA1ElsiydQSlVI4+mzX7w4v7/U=
X-Received: by 2002:a05:622a:1492:b0:403:e1d1:8b91 with SMTP id
 t18-20020a05622a149200b00403e1d18b91mr1304322qtx.60.1694773416535; Fri, 15
 Sep 2023 03:23:36 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 15 Sep 2023 03:23:36 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <862905cc-48c3-2dc9-6032-6ee189a629e6@linaro.org>
References: <20230915072558.118325-1-wangchen20@iscas.ac.cn>
 <803daa8f-f4bd-34b7-f826-89e1db5f24f6@linaro.org> <CAJM55Z-GMm5Hmk7-QWt8Prvp7qyFzOrQVjOjB7jfoX-oiT_C1A@mail.gmail.com>
 <862905cc-48c3-2dc9-6032-6ee189a629e6@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Fri, 15 Sep 2023 03:23:36 -0700
Message-ID: <CAJM55Z8WDcjRER3ffnj+6V=QWEmudZyaO9z2iPUvreU1okq27A@mail.gmail.com>
Subject: Re: [PATCH 10/12] serial: 8250_dw: Add Sophgo SG2042 support
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>, Wang Chen <unicornxw@gmail.com>, 
	linux-riscv@lists.infradead.org, conor@kernel.org, aou@eecs.berkeley.edu, 
	krzysztof.kozlowski+dt@linaro.org, palmer@dabbelt.com, 
	paul.walmsley@sifive.com, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	jszhang@kernel.org, guoren@kernel.org, chao.wei@sophgo.com, 
	xiaoguang.xing@sophgo.com
Content-Type: text/plain; charset="UTF-8"

Krzysztof Kozlowski wrote:
> On 15/09/2023 12:02, Emil Renner Berthing wrote:
> > Krzysztof Kozlowski wrote:
> >> On 15/09/2023 09:25, Wang Chen wrote:
> >>> From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
> >>>
> >>> Add quirk to skip setting the input clock rate for the uarts on the
> >>> Sophgo SG2042 SoC similar to the StarFive JH7100.
> >>>
> >>> Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
> >>
> >> Missing SoB.
> >>
> >>> ---
> >>>  drivers/tty/serial/8250/8250_dw.c | 5 +++--
> >>>  1 file changed, 3 insertions(+), 2 deletions(-)
> >>>
> >>> diff --git a/drivers/tty/serial/8250/8250_dw.c b/drivers/tty/serial/8250/8250_dw.c
> >>> index f4cafca1a7da..6c344877a07f 100644
> >>> --- a/drivers/tty/serial/8250/8250_dw.c
> >>> +++ b/drivers/tty/serial/8250/8250_dw.c
> >>> @@ -770,7 +770,7 @@ static const struct dw8250_platform_data dw8250_renesas_rzn1_data = {
> >>>  	.quirks = DW_UART_QUIRK_IS_DMA_FC,
> >>>  };
> >>>
> >>> -static const struct dw8250_platform_data dw8250_starfive_jh7100_data = {
> >>> +static const struct dw8250_platform_data dw8250_skip_set_rate_data = {
> >>
> >> Why? What is wrong with old name?
> >>
> >>>  	.usr_reg = DW_UART_USR,
> >>>  	.quirks = DW_UART_QUIRK_SKIP_SET_RATE,
> >>>  };
> >>> @@ -780,7 +780,8 @@ static const struct of_device_id dw8250_of_match[] = {
> >>>  	{ .compatible = "cavium,octeon-3860-uart", .data = &dw8250_octeon_3860_data },
> >>>  	{ .compatible = "marvell,armada-38x-uart", .data = &dw8250_armada_38x_data },
> >>>  	{ .compatible = "renesas,rzn1-uart", .data = &dw8250_renesas_rzn1_data },
> >>> -	{ .compatible = "starfive,jh7100-uart", .data = &dw8250_starfive_jh7100_data },
> >>> +	{ .compatible = "sophgo,sg2042-uart", .data = &dw8250_skip_set_rate_data },
> >>> +	{ .compatible = "starfive,jh7100-uart", .data = &dw8250_skip_set_rate_data },
> >>
> >> So devices are fully compatible? Then use compatibility and drop this
> >> patch entirely.
> >
> > I'm fine with this, but these are two different companies and SoCs that just
> > happens to have both implemented the Designware UART with an inflexible input
> > clock. So if fx. a real quirk is found on the JH7110 then we'd need to either
> > change the compatible on an unrelated SoC or change compatible on the JH7110 to
>
> Wait, why? The compatible is still there, so you just add here proper
> entry, if ever needed.

Sorry, I messed up my example by writing JH7110 where I meant JH7100

> > something like "starfive,jh7100-uart-with-quirk" and "starfive,jh7100-uart" will
> > forever be a quirky way to spell "dw8250 with inflexible input clock".
> > Is that how device trees are supposed to work?
>
> I don't get this part. But anyway if the blocks are really designed or
> done independently and there is no shared part, except the DWC block,
> then indeed the compatibility might be just a coincidence...
>

It is. Sophgo and StarFive are not the same company. Sophgo are using RISC-V
cores from T-Head and StarFive are using cores from SiFive. They just happen to
both use the Designware UART in the same way.

/Emil

