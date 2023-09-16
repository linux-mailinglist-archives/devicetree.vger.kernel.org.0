Return-Path: <devicetree+bounces-806-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 718DE7A3285
	for <lists+devicetree@lfdr.de>; Sat, 16 Sep 2023 22:40:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2A806281853
	for <lists+devicetree@lfdr.de>; Sat, 16 Sep 2023 20:40:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6346A1C285;
	Sat, 16 Sep 2023 20:40:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DDE55685
	for <devicetree@vger.kernel.org>; Sat, 16 Sep 2023 20:40:00 +0000 (UTC)
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46BE6CEC
	for <devicetree@vger.kernel.org>; Sat, 16 Sep 2023 13:39:57 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-529fb2c6583so4109657a12.1
        for <devicetree@vger.kernel.org>; Sat, 16 Sep 2023 13:39:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694896796; x=1695501596; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lR5T6ibwSrvheSebyD3OBI+eNynqOjBxcgSy01mbWmU=;
        b=RANesbT4XnnLodCcUhyl9ouw15NrfbkPBrqtdTe0bBXcYXGlN4SdWvuxDmYb/2ac6p
         s+hxa2G/IXyCzsrGnfnIMFvsl9aslJQi5nDyAGODhSi+25BZHmZ3v3uqnyOFgE+Je+PY
         sU1Yv5W9zoIC1zoqd4JTC0DiWt8U7odsjwDHzrK4AT6OAc6CfEdBZrcPT5K/vQfk1Qq0
         0nw7bxq/Yy+ffIKu5BBVXNJM+wSOClPzmvL2uVGlKawzwM+BjpH9ZFzmbtavA1qivjoy
         Kl/3AP3uKk3nQti0ICAmuUjscz4Sws7ILQEX6le9Km4Yk++mV1jWGdWNzYVUWa0JjNHv
         CsFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694896796; x=1695501596;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lR5T6ibwSrvheSebyD3OBI+eNynqOjBxcgSy01mbWmU=;
        b=ARiVQncJSF9o0O5La6zO2HQLUsQznzBnVLc7B2RG/zGtnjTIcXwBp48NHOjtgeB/2t
         KrFePq6jHaR7ljAvy9sXmnzFwDXze8yHFaQs8eYiLnvoyBTrS2yCJ2Keekoy2Jjgv7Wt
         qUJ4G4Leg5lmpUGKvrCPHX+9Vtpj9Y2+J9Rm+KtEScwUA3gacuH7a+pwnirtSK18qmnt
         9t/oj+GT4eJcafuZNlmnGtK34wBCpMZrc/c0e9ZXnY/OadfbSkByg3a7P313dfAE7ycT
         zfQm1elS5ZaCfZayix4+PfF7nZe2DkGYMEfRzYFTlrnRq7SGFpH19YCIjct3mZnG1sSG
         lN5g==
X-Gm-Message-State: AOJu0Yzd26RwusB3onpn5Sl7IboleSMV9XXPX2fQP2c8314s5t+kwltB
	3+OyClWqfVZgYri8/oMqzIjwnA==
X-Google-Smtp-Source: AGHT+IG0agA43aj2FABBUW8LcSlXyrYgJOmlotEOtAspWlPfaHsL2EVQAPzuRlrdQpY6P2iyOjGKUQ==
X-Received: by 2002:a17:906:73cb:b0:9a9:f3df:80cd with SMTP id n11-20020a17090673cb00b009a9f3df80cdmr4420148ejl.72.1694896795733;
        Sat, 16 Sep 2023 13:39:55 -0700 (PDT)
Received: from [192.168.1.77] (150-140-187-31.ftth.glasoperator.nl. [31.187.140.150])
        by smtp.gmail.com with ESMTPSA id bj26-20020a170906b05a00b00997e99a662bsm4058272ejb.20.2023.09.16.13.39.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 16 Sep 2023 13:39:55 -0700 (PDT)
Message-ID: <bd833cee-2349-368d-93a4-9465ebc8a0e9@linaro.org>
Date: Sat, 16 Sep 2023 22:39:53 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 2/2] arm64: dts: qcom: msm8939-huawei-kiwi: Add initial
 device tree
Content-Language: en-US
To: Lukas Walter <lukas.walter@aceart.de>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 Raymond Hackley <raymondhackley@protonmail.com>
References: <20230916134147.163764-1-lukas.walter@aceart.de>
 <20230916134147.163764-2-lukas.walter@aceart.de>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230916134147.163764-2-lukas.walter@aceart.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 16/09/2023 15:41, Lukas Walter wrote:
> This dts adds support for Huawei Honor 5X / GR5 (2016) smartphone
> released in 2015.
> 
> Add device tree with initial support for:
> 
> - GPIO keys
> - Hall sensor
> - SDHCI (internal and external storage)
> - WCNSS (BT/WIFI)
> - Sensors (accelerometer, proximity and gyroscope)
> - Vibrator
> - Touchscreen
> 
> Signed-off-by: Lukas Walter <lukas.walter@aceart.de>
> Signed-off-by: Raymond Hackley <raymondhackley@protonmail.com>

Order of SoB is unusual. Who did what here?

Best regards,
Krzysztof


