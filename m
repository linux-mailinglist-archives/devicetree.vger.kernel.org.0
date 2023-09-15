Return-Path: <devicetree+bounces-408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B53127A1774
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 09:30:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6F00D28235A
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 07:30:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72E03D28E;
	Fri, 15 Sep 2023 07:30:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9D6ED284
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 07:30:06 +0000 (UTC)
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A4EAA1BC7
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 00:29:58 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-52bcd4db4e6so2135492a12.0
        for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 00:29:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694762997; x=1695367797; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OWx6IyehUEd6WP1uZ5sdPpY2p+OfJAAmTziPQjdEIpw=;
        b=XWocAorTmJGrC04cXFCDw/dv5SNrLiJe0HNrANNCtYv/1Zaa5/5LcVUbgjZlBv3x2Z
         vkUWz702sq9nNVzLecHVN24WxOlICyfAYVsToq0Wbg8eKHnJI3CmkTmhL4VRziY5w0DR
         OWVjGYfKWUNjSKYNiel/KcUKZHIqf1WT9Pupozg+o10Qf2OMO4soH+D+t2AiQfU8OkMP
         lrarHRN2JZGT+ajphfU+eabybU/HrU9dcyvPvA4fpOHatgzxUgxPjlwSRgBehO0ooVM2
         FS3cAKFHPKTCO6eKOHxWkpGo0HvlKCNS+xzLbFgZCvNm4QQzfyklvOjZCxZhj0Cv/jUC
         tpuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694762997; x=1695367797;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OWx6IyehUEd6WP1uZ5sdPpY2p+OfJAAmTziPQjdEIpw=;
        b=LpSjQe+Ox/YircP2RZ1F+1deJkPuzXPt3zcmp49iTKfyf/dXBJBfGYGhG1yBXHsevt
         4ZVU21m/Ypc+YlsLLz/GONlixPDZ0tJ7bn/ZB4zT/n7zz/RIED8lllyQFaF2sJr9NUPm
         1EOiVA82praqaSvPh23U6i0ysUZ/qLh82ERGGr1TVZA3eiZxuE6Ba9FD+dSWwEWXfUlP
         +3IPE7QjtjT5wwkhGPFFXGZDR6ntLawyMf4MZ8A1yGV+I8MlX5llbmJ23cmA9I1hWbay
         VuxyaCfdpJ+oTANdw7aeCcNiNON7E/Bc0fNB9VHi9SuEN2b9r03CjRKb5NeV2uwfoRnJ
         Z/BA==
X-Gm-Message-State: AOJu0Ywpw6iD8FFrlJrO3M6j3mVcxwRjgv8OD7qLiakPGmmC1Mv94NKE
	QqhjhJzBdptx1hhvgTMHffFf8Q==
X-Google-Smtp-Source: AGHT+IHEdnrk+p48Gcgs8Gitk+VjFYnhXtk5LidxjJQOz8O0a03Q0KXmD4dCClrq9u6i5z3sbe0/tw==
X-Received: by 2002:aa7:c948:0:b0:52c:164:efe5 with SMTP id h8-20020aa7c948000000b0052c0164efe5mr720921edt.39.1694762996902;
        Fri, 15 Sep 2023 00:29:56 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id c1-20020aa7c981000000b00523653295f9sm1833849edt.94.2023.09.15.00.29.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Sep 2023 00:29:56 -0700 (PDT)
Message-ID: <0fbda26b-235e-5043-d83e-af873dada5e5@linaro.org>
Date: Fri, 15 Sep 2023 09:29:54 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 06/12] dt-bindings: timer: Add Sophgo sg2042 clint
Content-Language: en-US
To: Wang Chen <unicornxw@gmail.com>, linux-riscv@lists.infradead.org,
 conor@kernel.org, aou@eecs.berkeley.edu, krzysztof.kozlowski+dt@linaro.org,
 palmer@dabbelt.com, paul.walmsley@sifive.com, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 jszhang@kernel.org, guoren@kernel.org, chao.wei@sophgo.com,
 xiaoguang.xing@sophgo.com, Inochi Amaoto <inochiama@outlook.com>
References: <20230915072415.118100-1-wangchen20@iscas.ac.cn>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230915072415.118100-1-wangchen20@iscas.ac.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 15/09/2023 09:24, Wang Chen wrote:
> From: Inochi Amaoto <inochiama@outlook.com>
> 
> The timer and ipi(mswi) of sg2042 are on different addresses. With the
> same compatible string, this will cause a mismatch when is processed by
> SBI.

No, same devices (obviously on different addresses) with same
programming interface have *the same compatible*.

> 
> Add two new compatible string formatted like `C9xx-clint-xxx` to identify
> the timer and ipi device separately, and do not allow c900-clint as the
> fallback to avoid conflict.
> 
> Signed-off-by: Inochi Amaoto <inochiama@outlook.com>
> ---
>  .../bindings/timer/sifive,clint.yaml          | 26 +++++++++++++++++++
>  1 file changed, 26 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/timer/sifive,clint.yaml b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
> index a0185e15a42f..2a86b80c3f1e 100644
> --- a/Documentation/devicetree/bindings/timer/sifive,clint.yaml
> +++ b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
> @@ -39,6 +39,14 @@ properties:
>                - allwinner,sun20i-d1-clint
>                - thead,th1520-clint
>            - const: thead,c900-clint
> +      - items:
> +          - enum:
> +              - sophgo,sg2042-clint-mtimer
> +          - const: thead,c900-clint-mtimer
> +      - items:
> +          - enum:
> +              - sophgo,sg2042-clint-mswi
> +          - const: thead,c900-clint-mswi
>        - items:
>            - const: sifive,clint0
>            - const: riscv,clint0
> @@ -74,4 +82,22 @@ examples:
>                              <&cpu4intc 3>, <&cpu4intc 7>;
>         reg = <0x2000000 0x10000>;
>      };
> +  - |
> +    clint-mtimer@ac010000 {
> +      compatible = "sophgo,sg2042-clint-mtimer", "thead,c900-clint-mtimer";
> +      interrupts-extended = <&cpu1intc 7>,
> +                            <&cpu2intc 7>,
> +                            <&cpu3intc 7>,
> +                            <&cpu4intc 7>;
> +      reg = <0xac010000 0x00007ff8>;

Drop example, not needed.

> +    };
> +  - |
> +    clint-mswi@94000000 {
> +      compatible = "sophgo,sg2042-clint-mswi", "thead,c900-clint-mswi";
> +      interrupts-extended = <&cpu1intc 3>,
> +                            <&cpu2intc 3>,
> +                            <&cpu3intc 3>,
> +                            <&cpu4intc 3>;
> +      reg = <0x94000000 0x00004000>;

Drop example, not needed.


> +    };
>  ...

Best regards,
Krzysztof


