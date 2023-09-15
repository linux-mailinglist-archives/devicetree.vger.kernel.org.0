Return-Path: <devicetree+bounces-412-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A16F7A1786
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 09:31:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5947C1C20B14
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 07:31:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00E24D292;
	Fri, 15 Sep 2023 07:31:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4DFD284
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 07:31:50 +0000 (UTC)
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ADC43170E
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 00:31:17 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-402d499580dso19631355e9.1
        for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 00:31:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694763076; x=1695367876; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=psUYRiGcbU1OwB/5y/R6sSINX0z5CsdjGxmapbhxkEc=;
        b=v/YjmCmDec0SFlavo6P/GLK57KBK2RaL6JvN3y7sgHo6fiIHnjDfUy85awapzDqX0v
         eAI6j2PEZMqbf4S9Fijoar88PDDnnuYNe8WIUu/KyaS5BPVbww9UXR0mjLkuVa0CFklw
         c8BgkuV9v5vwlPgBod3rXIrKTISmWkBIQGuMJ7Awb0edDONqKt9qsr51i1GstKSFwBkx
         3Eok5AxQ/IY51c8v2w4z4ru/Ju8NmApVfFnvGZbFd0e6Tc6+SBqlVJuYQ1mR64BfGlr4
         DpPHUX4H0yRDRvtZ8WswlK/pTmpNHj3EMNTzkoOod7fB5iFPdVE7XTATvzOWT56yapZO
         TjjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694763076; x=1695367876;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=psUYRiGcbU1OwB/5y/R6sSINX0z5CsdjGxmapbhxkEc=;
        b=rjfKjx8Y+I0pxbwN4U15+GBizcrChZmQYETRp3LCsudnwsmkB4TuTkmB3VESz6+M4l
         NB1bIZVVTIimQ+IBc5wx2yJR8F6lOliDGpgJhhOqE5ufUF11bbmhIii/y3tWpbfNtxWh
         mB0gEvttmOfbDXcUT1eQsNl6r8tFjU0KsrfytnshNq73DPdQJ/XWIM/ZQyYUNHdZR3f8
         V+x0ZXUm8VyPQlPQGd2XPu42h7TdZ6AZ/zWmoWtTxK43uV0HFmTnnBb+DJ+kmQeEhig7
         HqnlGCE62XtAUUJzZOPFvlRd9nnqW/DzyUrkPTKNEgmVgTd9X7jbq8wZCbj23GJcqT2i
         H/eQ==
X-Gm-Message-State: AOJu0YzUNge7+cV4QcbRH1adhmFpL2h2+oKkN6pCjoyD7cvnnz/U3Qzi
	e+Ap9hnQ76/+ny3gSm49NHyNgg==
X-Google-Smtp-Source: AGHT+IEzcssOytMiuWez42gEHao5Kw2NkuxenhdyXU5euFPWe8NZ4zTEcTm0nySnu4uCOWK/ADVkQA==
X-Received: by 2002:adf:ed8b:0:b0:317:7330:bd82 with SMTP id c11-20020adfed8b000000b003177330bd82mr772813wro.8.1694763076095;
        Fri, 15 Sep 2023 00:31:16 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id e11-20020a056000120b00b003196b1bb528sm3719683wrx.64.2023.09.15.00.31.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Sep 2023 00:31:15 -0700 (PDT)
Message-ID: <0c059b65-181f-3e87-fb51-64435ad5bc0c@linaro.org>
Date: Fri, 15 Sep 2023 09:31:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 03/12] dt-bindings: riscv: add sophgo sg2042 bindings
Content-Language: en-US
To: Wang Chen <unicornxw@gmail.com>, linux-riscv@lists.infradead.org,
 conor@kernel.org, aou@eecs.berkeley.edu, krzysztof.kozlowski+dt@linaro.org,
 palmer@dabbelt.com, paul.walmsley@sifive.com, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 jszhang@kernel.org, guoren@kernel.org, chao.wei@sophgo.com,
 xiaoguang.xing@sophgo.com, Wang Chen <wangchen20@iscas.ac.cn>
References: <20230915072242.117935-1-wangchen20@iscas.ac.cn>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230915072242.117935-1-wangchen20@iscas.ac.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 15/09/2023 09:22, Wang Chen wrote:
> Add DT binding documentation for the Sophgo SG2042 Soc [1] and the
> Milk-V Pioneer board [2].
> 
> [1]: https://en.sophgo.com/product/introduce/sg2042.html
> [2]: https://milkv.io/pioneer
> 
> Signed-off-by: Wang Chen <wangchen20@iscas.ac.cn>
> Signed-off-by: Xiaoguang Xing <xiaoguang.xing@sophgo.com>

Fix your email threading :/



Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


