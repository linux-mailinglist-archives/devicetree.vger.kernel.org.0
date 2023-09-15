Return-Path: <devicetree+bounces-480-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AFD67A1BAF
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 12:05:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 356872815A3
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 10:05:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26738DF58;
	Fri, 15 Sep 2023 10:04:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E418DF45
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 10:04:41 +0000 (UTC)
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A4D7835A5
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 03:02:55 -0700 (PDT)
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id F10B73F665
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 10:02:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1694772167;
	bh=QkyFp7kf2CVO2Ub+8zdfAbl+jurBUvZ+r3KzB+EtSOE=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=IWNX+0XFHPRbrVwvDNh04s3QpFX04ULlixQ93AzQH3wOE0UZxlDBOT3B/7Ze2ynV6
	 34NdDFB5FPBPcMEwIjuw8PBaVe70O8fHx5sZfOAIBgnty8QhGxEhFyoL8lNmVujqhA
	 Vr08rM7kwFLnaqLA/DftF0HpdxEtMTjBvsv44Ii3auCkj4MKbyvO+bSAcyyH2KBA52
	 6YDlvy3f9YIcuWBysHZNKvpOdtwMSsL5ZV4PrRVf6QvXaTBoiETJ5efn15XoKEZ0lM
	 787+2cYxoCGsZR1snXWnwAaS0uyotyraGKQHSlnSl65ufCSB/l5Gtvr+vvpwaYhRB4
	 ogky6hv0QnVnQ==
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-41360d145b1so22139931cf.1
        for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 03:02:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694772166; x=1695376966;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QkyFp7kf2CVO2Ub+8zdfAbl+jurBUvZ+r3KzB+EtSOE=;
        b=oet1rYTh2BvqYRUs5qB/z6xyL5FoPazmEkeo17Wr9PsA7U1LZWJb57i8Dd6XheB67l
         UOjf3RXggacIgAY4zwahdrPbDV/aUatbiCjLLJ+fWiJ3Ippy5vLCNwW3zcgs2ThdkSV2
         cv1ULVOXCtgKgXPAJtuq2HREfKUUAw2OHl1EaUyjygIVQzkDbm8AxKlboAwcLYizl8id
         lEPRLBMZIon14KwVgxSUZP/YqitggMTvj8WswoyJ937mgXwg3jEf/yB2yz5QIOMUzIn3
         bsZnBoPiFjNyKOqoYsR9+jyhyYGgDn/us2XtzbCzxq8a2wiTkBoZV1XcM6Fb+iRd3KPV
         +PuQ==
X-Gm-Message-State: AOJu0YwDMQExTcxwNcQGq0blyik7ydlYplhNx9q/TtDRVkauZHgsMQt2
	P9wcD1ZD+FVV5MZ4i9J6Jf3NnRDP7FgoruJa6kxykhd/bUEa1VgstXqZQZSZ3Ub4jbzTH1UfXap
	fxh4SDZDzaY7Osii4iexG5lFYB+QHzhdjLjnztGRT/t8MuVtvYUqt7Yw=
X-Received: by 2002:a05:622a:50f:b0:413:3384:d43f with SMTP id l15-20020a05622a050f00b004133384d43fmr1205914qtx.11.1694772166711;
        Fri, 15 Sep 2023 03:02:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHcuEVbIaKxRfintolzQeQEqh1KYU8VcadUoiPE32/xiQVSV3jCFDSTK9K4fjz4v/l2KVtOBfxlhc7L+2IchGU=
X-Received: by 2002:a05:622a:50f:b0:413:3384:d43f with SMTP id
 l15-20020a05622a050f00b004133384d43fmr1205890qtx.11.1694772166482; Fri, 15
 Sep 2023 03:02:46 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 15 Sep 2023 03:02:46 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <803daa8f-f4bd-34b7-f826-89e1db5f24f6@linaro.org>
References: <20230915072558.118325-1-wangchen20@iscas.ac.cn> <803daa8f-f4bd-34b7-f826-89e1db5f24f6@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Fri, 15 Sep 2023 03:02:45 -0700
Message-ID: <CAJM55Z-GMm5Hmk7-QWt8Prvp7qyFzOrQVjOjB7jfoX-oiT_C1A@mail.gmail.com>
Subject: Re: [PATCH 10/12] serial: 8250_dw: Add Sophgo SG2042 support
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Wang Chen <unicornxw@gmail.com>, 
	linux-riscv@lists.infradead.org, conor@kernel.org, aou@eecs.berkeley.edu, 
	krzysztof.kozlowski+dt@linaro.org, palmer@dabbelt.com, 
	paul.walmsley@sifive.com, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	jszhang@kernel.org, guoren@kernel.org, chao.wei@sophgo.com, 
	xiaoguang.xing@sophgo.com, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Krzysztof Kozlowski wrote:
> On 15/09/2023 09:25, Wang Chen wrote:
> > From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
> >
> > Add quirk to skip setting the input clock rate for the uarts on the
> > Sophgo SG2042 SoC similar to the StarFive JH7100.
> >
> > Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
>
> Missing SoB.
>
> > ---
> >  drivers/tty/serial/8250/8250_dw.c | 5 +++--
> >  1 file changed, 3 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/tty/serial/8250/8250_dw.c b/drivers/tty/serial/8250/8250_dw.c
> > index f4cafca1a7da..6c344877a07f 100644
> > --- a/drivers/tty/serial/8250/8250_dw.c
> > +++ b/drivers/tty/serial/8250/8250_dw.c
> > @@ -770,7 +770,7 @@ static const struct dw8250_platform_data dw8250_renesas_rzn1_data = {
> >  	.quirks = DW_UART_QUIRK_IS_DMA_FC,
> >  };
> >
> > -static const struct dw8250_platform_data dw8250_starfive_jh7100_data = {
> > +static const struct dw8250_platform_data dw8250_skip_set_rate_data = {
>
> Why? What is wrong with old name?
>
> >  	.usr_reg = DW_UART_USR,
> >  	.quirks = DW_UART_QUIRK_SKIP_SET_RATE,
> >  };
> > @@ -780,7 +780,8 @@ static const struct of_device_id dw8250_of_match[] = {
> >  	{ .compatible = "cavium,octeon-3860-uart", .data = &dw8250_octeon_3860_data },
> >  	{ .compatible = "marvell,armada-38x-uart", .data = &dw8250_armada_38x_data },
> >  	{ .compatible = "renesas,rzn1-uart", .data = &dw8250_renesas_rzn1_data },
> > -	{ .compatible = "starfive,jh7100-uart", .data = &dw8250_starfive_jh7100_data },
> > +	{ .compatible = "sophgo,sg2042-uart", .data = &dw8250_skip_set_rate_data },
> > +	{ .compatible = "starfive,jh7100-uart", .data = &dw8250_skip_set_rate_data },
>
> So devices are fully compatible? Then use compatibility and drop this
> patch entirely.

I'm fine with this, but these are two different companies and SoCs that just
happens to have both implemented the Designware UART with an inflexible input
clock. So if fx. a real quirk is found on the JH7110 then we'd need to either
change the compatible on an unrelated SoC or change compatible on the JH7110 to
something like "starfive,jh7100-uart-with-quirk" and "starfive,jh7100-uart" will
forever be a quirky way to spell "dw8250 with inflexible input clock".
Is that how device trees are supposed to work?

/Emil
>
> Best regards,
> Krzysztof
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

