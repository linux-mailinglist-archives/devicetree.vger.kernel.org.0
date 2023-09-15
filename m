Return-Path: <devicetree+bounces-409-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 49FBA7A1777
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 09:30:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 035172828E7
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 07:30:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F071FD290;
	Fri, 15 Sep 2023 07:30:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2503DD284
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 07:30:17 +0000 (UTC)
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7E4A173B
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 00:30:10 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-40434d284f7so17259165e9.3
        for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 00:30:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694763009; x=1695367809; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=d2EYiqatqk/mmeH++F9aAHu7AJpxnj8N1J8p9RtMdAg=;
        b=UASsDevONc7DpbsDNodpqOkNqH9bY5cjZfpryE631e5wyLGrj6a6CJt341cg8OEzKV
         8GkOlPiUq8wG9BqG4y2k8uAfYNbwxj/6yEc5lA/yTpmToMHLETNragqvEXW8KoRy8S0a
         urCXfLl8J9VGiFG9r1f2QyHH0Mlzr1H2TedUd8nWGnK5v3PZLxdaSVitNkisN7Yex0GA
         BvZx4+tZT6Ra1lwogsyiHuN+cbrj7IsoJmo+JPqJHl1oHlJXBUTgICqC6bnnOPE310t4
         3wiOzXnOZTG7MHcQBjZ++gocyRxhrdirSXdxv4qqtJaSVyPcdBea+XCPY1i/6nv5/4gR
         T1Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694763009; x=1695367809;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=d2EYiqatqk/mmeH++F9aAHu7AJpxnj8N1J8p9RtMdAg=;
        b=aCtc6vBZb7RPGPsanEiD35i2bCgAm4ExiKPUhxZ/YP6BUrLwnt2VU3daqHwiV2cliX
         UDIGcnKJSn/O4M3nn6UNvbvGu0I/JOP3eeQH0eJgrPJu5+U0kWX5QZ10acVosW+XE9wY
         MTHd7vyoGlK9JxKk9y1P1usOQOYcG0fgwTlS5IT1D2LeaRUbc/tWZawZls7qcJFdSlO+
         R7DbX/vh9FKQ6ycEMldZrYebAHpKkKr+Q6qIb2C4MGciC0NsujgAQVimxOYn8ZDuF4mG
         7bWB/1r5xwlbUlML4HFvAlSKMrLqL1aZkzc1ep4reG7UQvqmUCt9pWY8Yo1/WpqkRZnB
         o2/Q==
X-Gm-Message-State: AOJu0Yy0z+vACYOmk3vjDT4nkpdpLv/iG0Q2gPigHgb32ZHlVDSJkTzk
	HX+Ck8Gfd3BnCu3Fv6l/kaGeMA==
X-Google-Smtp-Source: AGHT+IF7980nHByDaff0z5ewi2mUURn7ocVGdQTtGpw9rYCqn6ZZNLdUhnzi5ATsOWz+mZaHFsrIrQ==
X-Received: by 2002:a7b:ce93:0:b0:3fc:60:7dbf with SMTP id q19-20020a7bce93000000b003fc00607dbfmr843441wmj.41.1694763009367;
        Fri, 15 Sep 2023 00:30:09 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id s23-20020a7bc397000000b00403bbe69629sm3840766wmj.31.2023.09.15.00.30.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Sep 2023 00:30:08 -0700 (PDT)
Message-ID: <a57827f6-1af1-e914-fbcf-74e99413eb05@linaro.org>
Date: Fri, 15 Sep 2023 09:30:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 05/12] dt-bindings: interrupt-controller: Add SOPHGO's
 SG2042 PLIC
Content-Language: en-US
To: Wang Chen <unicornxw@gmail.com>, linux-riscv@lists.infradead.org,
 conor@kernel.org, aou@eecs.berkeley.edu, krzysztof.kozlowski+dt@linaro.org,
 palmer@dabbelt.com, paul.walmsley@sifive.com, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 jszhang@kernel.org, guoren@kernel.org, chao.wei@sophgo.com,
 xiaoguang.xing@sophgo.com, Wang Chen <wangchen20@iscas.ac.cn>
References: <20230915072358.118045-1-wangchen20@iscas.ac.cn>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230915072358.118045-1-wangchen20@iscas.ac.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 15/09/2023 09:23, Wang Chen wrote:
> Add compatible string for SOPHGO SG2042 plic.
> 
> Signed-off-by: Wang Chen <wangchen20@iscas.ac.cn>
> Signed-off-by: Xiaoguang Xing <xiaoguang.xing@sophgo.com>
> ---
>  .../bindings/interrupt-controller/sifive,plic-1.0.0.yaml         | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml b/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
> index dc1f28e55266..3abb1f68ea62 100644
> --- a/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
> +++ b/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
> @@ -66,6 +66,7 @@ properties:
>            - enum:
>                - allwinner,sun20i-d1-plic
>                - thead,th1520-plic
> +              - sophgo,sg2042-plic

s is before t.

Best regards,
Krzysztof


