Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E24CB606846
	for <lists+devicetree@lfdr.de>; Thu, 20 Oct 2022 20:37:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229810AbiJTShg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Oct 2022 14:37:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47296 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229741AbiJTShf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Oct 2022 14:37:35 -0400
Received: from mail-qk1-x72d.google.com (mail-qk1-x72d.google.com [IPv6:2607:f8b0:4864:20::72d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 03CBD1FAE5E
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 11:37:34 -0700 (PDT)
Received: by mail-qk1-x72d.google.com with SMTP id m6so525255qkm.4
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 11:37:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Q1hBLD4lH/XELJE0KWPJAlY/VEp51da8IvgbYfbE9SM=;
        b=m1MqjUsqQL2MbyAa48c2CVvgvq8u1I50bHLNDjMG1UmYjQuTXWEYox4FXqL9j3G6jR
         woCALKrlvanJEaLbeFrJ84/u56hESDulrFNddmwy58SGRhj3EiEzGT1LtoYHEzYnfJ05
         OCYYNp5ngLSolI5T5FcWxlKqd/KSyMNiJUnTMpq3gUeAc9Hjvb/jbahFh7g0fh8gk8AV
         1oMihPlKcs5XeUd3aha6KF8t9Odich8mjDh2Jd+E/9n1hNCcQDYOey8QxfFMnA/XxlfD
         9mvOHqsQCQHtgaAPmTHWtvv1lyTJ1pEulV28hR3143JLdTg1aVfqv/1MFufOVmRV1lEW
         aEsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Q1hBLD4lH/XELJE0KWPJAlY/VEp51da8IvgbYfbE9SM=;
        b=3TcNKeNUePh4zWG5KjSfEx+nFjp6xXSD+Ea09okiqKRWYjdOVv/81G22Q2JKKXkHmr
         p9B5BTuLpMwH28vXtWRUEOIOgsrsi84wtvqt0OSOR3LEaMndVhREdllK7Ce4bUoTXggZ
         V8pcrGYm4ZO/TMRSxSPLTbIBJgRggXbC4kgzcn+vaq7YPrWxhYbSNdSSqiSoqhsoMl9K
         mo52hX2EzFOCuBo3aVvpE/lJHpkrTrDd+Y3yBlwiCasWDrmV5TD8dwcl/NSaY8sjhGQx
         t2SN1SwyrSVgfZYCvf9wNIxiA0TEOa5unIPB77zzE2uc+w8g7fGhBqwp9Zi+hyaUtj3q
         1gmQ==
X-Gm-Message-State: ACrzQf0j6C59+W6wMtkoNh9EdwyfW29s7WwU5lfQJuh04PfheikNlqux
        yqLTp2x1wqf4zSPOxM+QXfM/Qg==
X-Google-Smtp-Source: AMsMyM6K0N51sGcqCNzQyBHqlKAxnwAGBccxXvK+t7f/OxW1GPu+nee4zPGTsttzdLGjy5sQo7B1IQ==
X-Received: by 2002:a37:5803:0:b0:6ee:834c:b605 with SMTP id m3-20020a375803000000b006ee834cb605mr10465392qkb.643.1666291053184;
        Thu, 20 Oct 2022 11:37:33 -0700 (PDT)
Received: from [192.168.10.124] (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id d4-20020ac81184000000b00359961365f1sm6400070qtj.68.2022.10.20.11.37.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Oct 2022 11:37:31 -0700 (PDT)
Message-ID: <fc302fb5-740a-41d6-2610-dde3cce604cc@linaro.org>
Date:   Thu, 20 Oct 2022 14:37:29 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v3 3/3] dt-bindings: clock: add loongson2 clock
Content-Language: en-US
To:     Yinbo Zhu <zhuyinbo@loongson.cn>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Huacai Chen <chenhuacai@kernel.org>,
        WANG Xuerui <kernel@xen0n.name>,
        Jiaxun Yang <jiaxun.yang@flygoat.com>,
        Jianmin Lv <lvjianmin@loongson.cn>,
        Yang Li <yang.lee@linux.alibaba.com>,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, loongarch@lists.linux.dev
References: <20221020063624.17548-1-zhuyinbo@loongson.cn>
 <20221020063624.17548-3-zhuyinbo@loongson.cn>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221020063624.17548-3-zhuyinbo@loongson.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/10/2022 02:36, Yinbo Zhu wrote:
> Add the loongson2 clock binding with DT schema format using
> json-schema.
> 
> Signed-off-by: Yinbo Zhu <zhuyinbo@loongson.cn>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

