Return-Path: <devicetree+bounces-389-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 179EE7A1727
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 09:19:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C76CE28293A
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 07:19:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDD53D275;
	Fri, 15 Sep 2023 07:19:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 445A06AB7
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 07:19:50 +0000 (UTC)
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE49DA1
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 00:19:49 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-307d58b3efbso1646992f8f.0
        for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 00:19:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694762388; x=1695367188; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UWppzIvE71bQdSmepb9Q7KfKBm9EUT935/Q3Gt6YfSo=;
        b=uOpWahmPXxeJ0oqMDTQ+rdXqD5GiGtl+kqr4PIhib6epz5+BTpij05JDBpwXxPCKIV
         EiaUoRwl0OQ0SwFk/e8qQm3++VDl+9C/w/xillpablFLj1UaERmND6X+5lAYWRERxQnP
         yB9xgmzLKWCB6HnRC0ksV6kErhRMsQkBsZszYFmWBW40D/7JJjR9YHE7TrHyUEZ2EsYI
         TYYn1hw2pwTsl4d5bV7gJhracrya6nsT/VbdyVWLgOjlcq+iXvPd8iVZT7ZS8A978pgF
         2S+AMyPjivhfdkvwGrVjSn6H+PDt96BSVd1Rcdow4sZzFuINSy1cGBTNVO7htTflU60G
         vlWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694762388; x=1695367188;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UWppzIvE71bQdSmepb9Q7KfKBm9EUT935/Q3Gt6YfSo=;
        b=OLKlMDg+PPIk3ycC/RdBOpXhvNWsJuo7rfk3MhuYJBab1XlYh+L1n6Wlt5TvPC2mPt
         ilniDyFZmOBLuew9cO76bDPMjHm2dAiR9ah45HyACOQv6ycaGwQDNNGtYfGfySa5OiJa
         RwZzL+amjkiF6w0/u5mgbafWx+8yy56eFGTJrkGTBilWcL2Uc2FoPkACdxeA4vOFoAKg
         4EHXPVcE1ptUK3vxTJ8KcaC3dW+0hTN464vI/SVl1+G9UKJQ1T69Veohn0FqbSXmoVdb
         usJPySGDNk0D+Z4Ie9ZUDNRztytYDyFXxe4nTlYep3OZ97LJD9kc04MtzCTrAQgzesdP
         +2SQ==
X-Gm-Message-State: AOJu0YwFwnxdwei0VWPdVQwb17bjWK+XIEIbHpLmJ1G8o5mm0oa+HHdf
	Iv80pKsqm0WDpRvgv+fvZAMASA==
X-Google-Smtp-Source: AGHT+IEtogEt5SzjYHhCTVd0LkUEWxZ8PBeGANpHgtQjRN4h7y4lYJIqFvei9LFkm8l25UnU9mIeyQ==
X-Received: by 2002:adf:ef8a:0:b0:314:1ce9:3c86 with SMTP id d10-20020adfef8a000000b003141ce93c86mr794603wro.0.1694762388245;
        Fri, 15 Sep 2023 00:19:48 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id a4-20020a5d4d44000000b00317e77106dbsm3622789wru.48.2023.09.15.00.19.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Sep 2023 00:19:47 -0700 (PDT)
Message-ID: <e087f579-198b-49b9-97f0-b642400feaef@linaro.org>
Date: Fri, 15 Sep 2023 09:19:45 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 02/12] dt-bindings: vendor-prefixes: add milkv/sophgo
Content-Language: en-US
To: Wang Chen <unicornxw@gmail.com>, linux-riscv@lists.infradead.org,
 conor@kernel.org, aou@eecs.berkeley.edu, krzysztof.kozlowski+dt@linaro.org,
 palmer@dabbelt.com, paul.walmsley@sifive.com, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 jszhang@kernel.org, guoren@kernel.org, chao.wei@sophgo.com,
 xiaoguang.xing@sophgo.com, Wang Chen <wangchen20@iscas.ac.cn>
References: <20230915071409.117692-1-wangchen20@iscas.ac.cn>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230915071409.117692-1-wangchen20@iscas.ac.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 15/09/2023 09:14, Wang Chen wrote:
> Add new vendor strings to dt bindings.

Why? Where is the user?

Why did I got only 2/12?

> 
> Signed-off-by: Wang Chen <wangchen20@iscas.ac.cn>
> Signed-off-by: Xiaoguang Xing <xiaoguang.xing@sophgo.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 4 ++++
>  1 file changed, 4 insertions(+)


Best regards,
Krzysztof


