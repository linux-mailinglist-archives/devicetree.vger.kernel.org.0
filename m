Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 68B215EF072
	for <lists+devicetree@lfdr.de>; Thu, 29 Sep 2022 10:29:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235525AbiI2I3e (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Sep 2022 04:29:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235542AbiI2I32 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Sep 2022 04:29:28 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F06C613EAFB
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 01:29:25 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id l18so963649wrw.9
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 01:29:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:from:reply-to
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date;
        bh=bpujdPbvMkKZc5tbT0tesQargul5oOFWG757hhJb/PI=;
        b=S+MBQ80rqHpEy6NEzdghu7ouA0nlstzMZO9Saw2V8CTa/0OE+fpOyEtEpWnJ5a33MZ
         2zwKxqsKiGGlhR/4NLysLq43VTA2zD4e1z9PcdNGWaTFDPTZoZgmMgJmpzQLLdSuXQki
         3UxJ5CNla358jTuqu4ssay4iY3uunEAjeUnNzs6uH0RQbOux2hAcJgwpZcaRvKB2DW25
         sHoBQ24LKekSRT/apOh73b0ZExISLGEUYJSiTewZC4btdD67F7IzGpGxTAlG4Ip+2Q/+
         Udesxn69qPH0WMUMoGAmU2sl3+VyQpVoVmiDlE6MI4C5LpxdKhafAm7PkHE7RaOKPQGI
         /8kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:from:reply-to
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date;
        bh=bpujdPbvMkKZc5tbT0tesQargul5oOFWG757hhJb/PI=;
        b=z25njpM6P0Fi52colL9ZJdtWZccX411bZuiTHlstAF3EyovBvHvWKasAnQst6jRWwo
         H4UlMJqNtWfQ0v9+343nypfLyh9XVAU8z8PEqsAhqEg88RLJ7+Y84aRCtKKtLHKyNEKb
         ipsXMskbuxyjhNwacb/rSYiy4tyoI5MsQLXZnhFiXBE+VNegTfpNXfxpsRPcy+IWH06m
         7w/p+5rTQNTjMULDFBzfYOPMglx0NovXNRnAyz5WouvKQR2TF5Y2xBIaN+tR7o262QcG
         IVv1h6rz5RCuYBLQo0Ube3QQSEPKku8asXPmrmhQKbzlRUEB2LJuKq9Mb9fd9x+d1w7h
         xNqw==
X-Gm-Message-State: ACrzQf081INJlEpmJ85wl+d0QRt2+hBuPFkubBy7Sz1kVHonw8i8q3kk
        Ar7WOZyMi/IfM5VuT97klUlBuQ==
X-Google-Smtp-Source: AMsMyM6kYyKnh1/JwTgKQ0f0DN5Ba74UeFtjFSwCtJ6Xed8FffnuPm3vCjv67+qK5DVvgDx79qu+mQ==
X-Received: by 2002:a05:6000:797:b0:22c:be73:ff82 with SMTP id bu23-20020a056000079700b0022cbe73ff82mr1331315wrb.618.1664440164403;
        Thu, 29 Sep 2022 01:29:24 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:1f17:3ea3:4e46:dff? ([2a01:e0a:982:cbb0:1f17:3ea3:4e46:dff])
        by smtp.gmail.com with ESMTPSA id z2-20020a05600c0a0200b003a4efb794d7sm4102412wmp.36.2022.09.29.01.29.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Sep 2022 01:29:23 -0700 (PDT)
Message-ID: <6ed642ea-424d-49ed-eb30-e09588720373@linaro.org>
Date:   Thu, 29 Sep 2022 10:29:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v1 5/7] arm: dts: qcom: mdm9615: remove invalid pmic
 subnodes compatibles
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
References: <20220928-mdm9615-dt-schema-fixes-v1-0-b6e63a7df1e8@linaro.org>
 <20220928-mdm9615-dt-schema-fixes-v1-5-b6e63a7df1e8@linaro.org>
 <0636d53f-508f-8a86-0973-2641c9020622@linaro.org>
Reply-To: neil.armstrong@linaro.org
From:   Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <0636d53f-508f-8a86-0973-2641c9020622@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 28/09/2022 20:03, Krzysztof Kozlowski wrote:
> On 28/09/2022 11:14, Neil Armstrong wrote:
>> The PMIC is an PM8018, but was compatible with the PM8921. Both compatibles
>> was left but it makes no sense anymore the leave both.
> 
> Why? It makes sense for backwards compatibility. If you think it does
> not make sense, please say why.

We had the same debate at submission 7y ago, some of the pm8018 new compatible
were rejected in bindings & drivers so I left both...

As of today only the pwrkey bindings is missing, so should I resubmit the pm8018-pwrkey bidings and
drop the pm8921-pwrkey compatible ?

> 
>>
>> The pwrkey compatible is left to PM8921, unlike the others because
>> the interface is stricly compatible with the PM9821 pwrkey.
> 
> typo: strictly
> typo: PM8921
> 
> Again, why? The old code looked correct. In all three places.

The qcom,pm8018-rtc require a single compatible, same for qcom,pm8018, so what's the way to fix it ?

> 
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>
> 
> Best regards,
> Krzysztof
> 
Thanks,
Neil

