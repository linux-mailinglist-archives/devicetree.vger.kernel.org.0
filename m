Return-Path: <devicetree+bounces-413-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C6417A1788
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 09:32:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 16F171C21321
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 07:32:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB21AD28B;
	Fri, 15 Sep 2023 07:32:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF19D290
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 07:32:16 +0000 (UTC)
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB0C71BCC
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 00:32:12 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-404573e6c8fso16418045e9.1
        for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 00:32:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694763131; x=1695367931; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1pFfXlJOJvNpdcADR+2RDuK6BOaq4eRQB5oTZpxIz5k=;
        b=nW8tylY/AmJICbuH7LNcjfM1P2U/o79LYCVn1j8tD6McQUuWDJa92FJdZd/oWsCQTW
         4DnqCM41XxvllI13hWRfTMCjmfmqxRSTVEy7mEaIZ5XkN7NFrniC8aZD16B6509LZaDK
         W80jeDtpX87vMBYKijGF/p4/zCANmV9eMQT6KDeqZqBxEKSz/TLFY8daWYDQZZ7iYS/+
         xL+6JrHBO4jYs77NUXp/SjblUSfEmJdYTuD4XgYyAxMcnvxSzIUFwCpvws4IxRhq1M/6
         xk4m0ZTBEmwtaTKAgv5cWgO/rmUuE5af2cxDtYY8/xA6dA9oA141lVfSHFHACvkVGkwD
         iuQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694763131; x=1695367931;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1pFfXlJOJvNpdcADR+2RDuK6BOaq4eRQB5oTZpxIz5k=;
        b=UN746z+b3PdE0dlRPmcrcBaKQb0F+ElQUGLjyAfjz/4NB9RoHTWdqpAETTLh9Mf+Ud
         Jb/elcrVvsPdPcVZ41CxR/iH58NgH1nh7jC+84rHnaX0wqLCDka6yrwVdAPWbv3ZV2iH
         yAWNDHPjzWF+LEPPqheFeHaIJHb9WOvU9xmIhp+dsO32hue08cydhVWqzYZRHlnprRgz
         3OiF4/a6Hh8JsWFm35q0XRpxbhOUtVPhbplTC+4gqoE8SUrSi0h9KRK2fb+1aT20GIPl
         xf+YQyqgwJ1oxBOT8gmpf2jSrhtIBHIA8ai95Osm48PvQf/5mcqSBCGPH1/miHpT7Uo6
         NLaQ==
X-Gm-Message-State: AOJu0Yx3O25sDNPXyvBCFuprmOIBqoAlVLl3t/WCg2G1tf+98S4M0gl2
	KopgMsT3jY30hhQVe+V08KzHig==
X-Google-Smtp-Source: AGHT+IEk8DMEDkEsYiFq89U3dw2MEH+q7FpthgjHUbEXaIRWLW2niQ9IP4LJHDt5iGn63/nNROlsew==
X-Received: by 2002:adf:f310:0:b0:317:e04c:6791 with SMTP id i16-20020adff310000000b00317e04c6791mr739845wro.62.1694763131275;
        Fri, 15 Sep 2023 00:32:11 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id j6-20020adfff86000000b0031c56218984sm3628569wrr.104.2023.09.15.00.32.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Sep 2023 00:32:10 -0700 (PDT)
Message-ID: <acd83ee9-951d-928c-eb9f-e3295ae7ad55@linaro.org>
Date: Fri, 15 Sep 2023 09:32:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 11/12] riscv: dts: sophgo: Add sophgo,sg2024-uart
 compatibles
Content-Language: en-US
To: Wang Chen <unicornxw@gmail.com>, linux-riscv@lists.infradead.org,
 conor@kernel.org, aou@eecs.berkeley.edu, krzysztof.kozlowski+dt@linaro.org,
 palmer@dabbelt.com, paul.walmsley@sifive.com, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 jszhang@kernel.org, guoren@kernel.org, chao.wei@sophgo.com,
 xiaoguang.xing@sophgo.com, Wang Chen <wangchen20@iscas.ac.cn>,
 Emil Renner Berthing <emil.renner.berthing@canonical.com>
References: <20230915072624.118388-1-wangchen20@iscas.ac.cn>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230915072624.118388-1-wangchen20@iscas.ac.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 15/09/2023 09:26, Wang Chen wrote:
> Add compatible for uart.
> 
> Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
> Signed-off-by: Wang Chen <wangchen20@iscas.ac.cn>
> ---
>  arch/riscv/boot/dts/sophgo/sg2042.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/riscv/boot/dts/sophgo/sg2042.dtsi b/arch/riscv/boot/dts/sophgo/sg2042.dtsi
> index 5c4b82f13207..87f7667bbe63 100644
> --- a/arch/riscv/boot/dts/sophgo/sg2042.dtsi
> +++ b/arch/riscv/boot/dts/sophgo/sg2042.dtsi
> @@ -492,7 +492,7 @@ &cpu63_intc  0xffffffff &cpu63_intc  9
>  		};
>  
>  		uart0: serial@7040000000 {
> -			compatible = "snps,dw-apb-uart";
> +			compatible = "sophgo,sg2042-uart", "snps,dw-apb-uart";

No, you just added this file. Do not add buggy code which is fixed in
next patch.

Best regards,
Krzysztof


