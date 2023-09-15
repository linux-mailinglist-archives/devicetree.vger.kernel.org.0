Return-Path: <devicetree+bounces-416-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 526CA7A178D
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 09:34:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 781811C20C7B
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 07:34:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79B52D296;
	Fri, 15 Sep 2023 07:34:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F34B1D294
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 07:34:04 +0000 (UTC)
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8578E7F
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 00:34:02 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-3ff7d73a6feso20610095e9.1
        for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 00:34:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694763241; x=1695368041; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gkYzzAYu6z6sZUC/njWzLy4El1Pk9IRes3LMwHpGr1Y=;
        b=nWqP0hwdukE9JXld+4+n8qRo4E1AhXP+26lGis52fOupWJzXCsMXRRMXZMnsKY2P/7
         k7Rl9BuubSg8aL44ttSkj2v2oNlDnohyzbRe3K0EznlUuWK6u3vEVqyLPjQBKMHCpurG
         51kORJ3GYCBWfdG2TJepanNPKirXtuXZ1Rzo5T+3fJ2QiA0fPnGcN5O+fFZF12v6q3Ti
         0v2DRsbOIFtpOSVc7dmj4+PgdGOaHY0gDQ6mkdiJL+FL1tiO2jSo8X4Mx9hepxVOGDOC
         r3YRIS0Re/WRcW+hz9JaQ4OIl8o9t9tGDLtNH+ki/wkZSI24LmsrCQ2vNKTyMhkQLyGU
         bKyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694763241; x=1695368041;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gkYzzAYu6z6sZUC/njWzLy4El1Pk9IRes3LMwHpGr1Y=;
        b=eQqg1wkCJizLgB9Kf9vdbWVPkqvo5dWntpSLj7WmFUaBXnvbcRPl1fnBcsnDKdO8T8
         0cAITcwU544Xf4jdX1duJGi9FQDhPsvNWdf81tb/NHn6lW2PrpBx3CgJ/if7YxsVlFcM
         tzAFCDUmtQqYMAYiPADw6kmQYmkm+Ncm07Bkj/2FzyAkJem6urAlXLpp3PkSsO9rnwBY
         UsQxf3pLV9s85uNDCWeRnlB22Z1Te++8Bp3pnM4Rj8io3vwPFX1Vbjp11JhumnO4t5rk
         LfC6BAAZD/P4Is3wHa5tgg5uLougy1V05uBq5jE4mdKGLiLhDYh5sJjN5dUqVBCae4Ug
         5ZBw==
X-Gm-Message-State: AOJu0YxUN7+DZ6Y+8JNhwTUGfrUWTkqEPp+/+6s2YHnrQ4G2gvaexFN/
	7fp/EXrWdISAauru3h50Yb/Iew==
X-Google-Smtp-Source: AGHT+IE2Obhc55XP1QiiY3UGOyxumTBVdfX/RVmrGFpCslUPIRsfXHxMYvSILZfNBxFmySF3oWKyRg==
X-Received: by 2002:a05:600c:2194:b0:401:bf87:989c with SMTP id e20-20020a05600c219400b00401bf87989cmr775757wme.34.1694763241447;
        Fri, 15 Sep 2023 00:34:01 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id n12-20020a05600c294c00b003ff3b964a9asm6743292wmd.39.2023.09.15.00.33.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Sep 2023 00:34:01 -0700 (PDT)
Message-ID: <c4aa8d45-1248-5656-a045-a475ec737c0f@linaro.org>
Date: Fri, 15 Sep 2023 09:33:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 09/12] dt-bindings: serial: snps-dw-apb-uart: Add Sophgo
 SG2042 uarts
Content-Language: en-US
To: Wang Chen <unicornxw@gmail.com>, linux-riscv@lists.infradead.org,
 conor@kernel.org, aou@eecs.berkeley.edu, krzysztof.kozlowski+dt@linaro.org,
 palmer@dabbelt.com, paul.walmsley@sifive.com, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 jszhang@kernel.org, guoren@kernel.org, chao.wei@sophgo.com,
 xiaoguang.xing@sophgo.com,
 Emil Renner Berthing <emil.renner.berthing@canonical.com>
References: <20230915072517.118266-1-wangchen20@iscas.ac.cn>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230915072517.118266-1-wangchen20@iscas.ac.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 15/09/2023 09:25, Wang Chen wrote:
> From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
> 
> Add compatible for the uarts on the Sophgo SG2042 RISC-V SoC.
> 
> Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

Missing Sob.

> ---
>  Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
> index 17c553123f96..6c23562f1b1e 100644
> --- a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
> +++ b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
> @@ -48,6 +48,9 @@ properties:
>                - starfive,jh7100-hsuart
>                - starfive,jh7100-uart
>            - const: snps,dw-apb-uart
> +      - items:
> +          - const: sophgo,sg2042-uart

No, you do not get your own entry. Stuff it into previous enum.



Best regards,
Krzysztof


