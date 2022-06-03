Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2406053C43B
	for <lists+devicetree@lfdr.de>; Fri,  3 Jun 2022 07:31:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240582AbiFCFbW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Jun 2022 01:31:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41996 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240569AbiFCFbU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Jun 2022 01:31:20 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 279E938DB4
        for <devicetree@vger.kernel.org>; Thu,  2 Jun 2022 22:31:18 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id o10so8771509edi.1
        for <devicetree@vger.kernel.org>; Thu, 02 Jun 2022 22:31:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=yFbf+rXeDHG885MgXcNO51F92YtprLRprfusKhUHuBo=;
        b=HvAPt7FU+EKdVfe4M56mrmA88Z2Sb3LN+iFmf/An2t2gpkgvQ3W83g/WnnJYQ84SdT
         G7vi61e8GzCWZspwwxCSSBF3viBVC/3S5Ooy5miiKnW+QvHV+rzvgrcYQ4BmpHIk0XFN
         3KVL8DoTsQJNNy8KwExUyusxwt/t+80CJvD7NsoFEpDOw0erh8mxFBxIkQMSQ3iWpLNf
         CnVyUovmE1Q1SfpjyDcnjnGXMQxNUivUPDTFGJ/OsmymUY4YPMnOOukeHzR50frZZ9rf
         ozXjhkMPf9lKrPRJAshFOCcSMEUyevHZ93/5fYXSuExQKpEiuVJD78+8x7UUSwSkc6XN
         iCPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=yFbf+rXeDHG885MgXcNO51F92YtprLRprfusKhUHuBo=;
        b=jzjGiGp6quoNbi6U2MHINc+JHFxB7XF1d7vSI1/lU+AMrUmKqF96sxRpntoJgzNrjF
         4CUHOdWbCKxqJyDXX6+4tKIA/5UuNobr/BXRCV2I3mTBFaOnuHISMSHH1BRuZJuW17aC
         sQtI4Ki0x5YmU6Ubx7rEB8q+flaWsn7Tr5khxshcDdQfRVnkoKJZX0avJnRbSFVoGDD6
         DjCy0+nfKibyBMKhxVsEjcwfk5XZ9NYyprWaSz5lyns36lsa8Ny6vv+2Gx/ILmBjwyzb
         FWJOw9Mw1Ww31dZpQm444TAgyX4N/sEIfCjhVcKwUQrjo4g2l+aJ3iOQtwQbsF8SgUGY
         gD3w==
X-Gm-Message-State: AOAM530Par/387XDuEhJYSmj78RtS2xkSFpfgsmBNQJgiIamm4m9mkWq
        c/v/edxYtgHiNKr/XhGYi5x5fQ==
X-Google-Smtp-Source: ABdhPJytg9hlGbrqAJkmbUkOLFwR2Mp42qHfQVrb4vP92ORErxOSUQl/RMSZVGmH5dPo0cpyKWBMFw==
X-Received: by 2002:a05:6402:1d4a:b0:42e:93de:17f4 with SMTP id dz10-20020a0564021d4a00b0042e93de17f4mr693550edb.8.1654234276765;
        Thu, 02 Jun 2022 22:31:16 -0700 (PDT)
Received: from [192.168.0.181] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id bk2-20020a170906b0c200b006fef557bb7asm2422104ejb.80.2022.06.02.22.31.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jun 2022 22:31:15 -0700 (PDT)
Message-ID: <65daf4b7-212d-b726-cc7e-bcdf5d4664b8@linaro.org>
Date:   Fri, 3 Jun 2022 07:31:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v2 0/7] pinctrl/arm: dt-bindings: deprecate header with
 register constants
Content-Language: en-US
To:     Chanho Park <chanho61.park@samsung.com>,
        'Rob Herring' <robh+dt@kernel.org>,
        'Krzysztof Kozlowski' <krzysztof.kozlowski+dt@linaro.org>,
        'Alim Akhtar' <alim.akhtar@samsung.com>,
        'Tomasz Figa' <tomasz.figa@gmail.com>,
        'Sylwester Nawrocki' <s.nawrocki@samsung.com>,
        'Linus Walleij' <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org
References: <CGME20220601152757epcas2p30927b9924e9371cdfa79986c6efb6eaf@epcas2p3.samsung.com>
 <20220601152720.232383-1-krzysztof.kozlowski@linaro.org>
 <000501d87703$211ff7a0$635fe6e0$@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <000501d87703$211ff7a0$635fe6e0$@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/06/2022 06:33, Chanho Park wrote:
>> Krzysztof Kozlowski (7):
>>   ARM: dts: s3c2410: use local header for pinctrl register values
>>   ARM: dts: s3c64xx: use local header for pinctrl register values
>>   ARM: dts: s5pv210: use local header for pinctrl register values
>>   ARM: dts: exynos: use local header for pinctrl register values
>>   arm64: dts: exynos: use local header for pinctrl register values
>>   arm64: dts: fsd: use local header for pinctrl register values
>>   dt-bindings: pinctrl: deprecate header with register constants
> 
> nit: Put the comment closure to the next line.
> 
> + * Author: Krzysztof Kozlowski <krzk@kernel.org>  */

Which file has the comment in wrong place? I checked now and everywhere
it is:

+ * Author: Krzysztof Kozlowski <krzk@kernel.org>
+ */
+


Best regards,
Krzysztof
