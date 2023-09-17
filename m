Return-Path: <devicetree+bounces-817-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A59B37A3421
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 09:48:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 54E5D281689
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 07:48:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E7FB186D;
	Sun, 17 Sep 2023 07:48:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDF781859
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 07:48:29 +0000 (UTC)
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8DF1E18C
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 00:48:26 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-52a39a1c4d5so4232883a12.3
        for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 00:48:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694936905; x=1695541705; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GVPsYlLWrWkecJahmm8glLPlUmggcjlQlykoHTahPBs=;
        b=RN/bt+EsomRqiB9xWzz3SMs04X366PgKHRMTPVD3H0ZpHn4IUO2RP4d7muKgjhAsex
         VSKwLZELXwMsaIaG9LTVA/dxJ8Ap2byowHViWkenqaBhpIckL39/jOyxplFflfU4aNd2
         D3uQm4duDJKlJNaPp6wLntqVmAhQcFIS6NLd2N07ONbHzJ1Qc95FJ/QJAB8AiZxVtOVs
         h7M9W65VGPs88vnUs5kIguZNTPSrX5/rtkOB3Y/oPeWwiH5d7WbqqqkA7rjE66KWA4Cj
         74yczqv5bqql1xKUpZA0jka10LkW7qklbiIlNESgOGYPsp/HuP+8RtIwSzxM7CqR80i1
         jk1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694936905; x=1695541705;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GVPsYlLWrWkecJahmm8glLPlUmggcjlQlykoHTahPBs=;
        b=odlr50Ai2cTmgjY+tCbL+JXm35UrW1vKChimZeLFT2r7Vzl80N8fSR019WVnzd9QOP
         YYHR3dkvtt/uSijSfcfvKmFkenHozsWjNUmX7S1mIZWl2vrz9UNCi82arkdeMvnB/hQB
         48e6yWJd8K06/Qw5lCYImiwnQbIoskDzGxjod3q+h4PrwEKxato1k1wJIj1OtTZYXO9v
         sXLE3ThWd234AIGLLE3Dj/+m0qR0c5UmlXO4PSDX0VGs1acQPIycRkacHnaeKU73bT4v
         s1EaiUftsZGS32glgxGYnEMx6Ex2POYkCZkCZZUCGPzfqsWq/xEgqefnX0mt63mvo6h2
         KkGw==
X-Gm-Message-State: AOJu0YwSERCUpSrBJI3vk+y91E5u0+Km4OMDoFChWOYartN4apsmF/G4
	ijpMPAKdkCog2TkzDTScfGGS1w==
X-Google-Smtp-Source: AGHT+IEmjAsO4U5DH1/SUqLBxFViS6gZtzW/Gz0PYU4pDtjJ+T01gRVgwYJdAGxdBcBSE/ulzwTU1w==
X-Received: by 2002:aa7:cfd9:0:b0:523:38f5:c5ad with SMTP id r25-20020aa7cfd9000000b0052338f5c5admr5300840edy.20.1694936905043;
        Sun, 17 Sep 2023 00:48:25 -0700 (PDT)
Received: from [192.168.1.77] (150-140-187-31.ftth.glasoperator.nl. [31.187.140.150])
        by smtp.gmail.com with ESMTPSA id i8-20020a0564020f0800b005309eb7544fsm2636443eda.45.2023.09.17.00.48.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 17 Sep 2023 00:48:24 -0700 (PDT)
Message-ID: <4ff26ffd-2574-af16-d950-7f1b544528ef@linaro.org>
Date: Sun, 17 Sep 2023 09:48:23 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v2 5/6] arm64: dts: imx8ulp: update gpio node
Content-Language: en-US
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>,
 Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski
 <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Stefan Agner <stefan@agner.ch>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Peng Fan <peng.fan@nxp.com>
References: <20230916-vf610-gpio-v2-0-40823da788d7@nxp.com>
 <20230916-vf610-gpio-v2-5-40823da788d7@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230916-vf610-gpio-v2-5-40823da788d7@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 16/09/2023 04:04, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> The i.MX8ULP GPIO supports two interrupts and one register base, and not
> compatible with i.MX7ULP. Update the node following dt-binding doc.
> 
I think last email thread concluded they are compatible. Otherwise, how
did it work so far? You break users, which might be ok, but commit does
no say that anything was broken here.

Best regards,
Krzysztof


