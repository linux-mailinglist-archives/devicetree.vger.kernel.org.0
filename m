Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EE3C26BC65E
	for <lists+devicetree@lfdr.de>; Thu, 16 Mar 2023 07:55:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229903AbjCPGzY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Mar 2023 02:55:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229885AbjCPGzX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Mar 2023 02:55:23 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED81A9DE03
        for <devicetree@vger.kernel.org>; Wed, 15 Mar 2023 23:55:20 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id o12so3535183edb.9
        for <devicetree@vger.kernel.org>; Wed, 15 Mar 2023 23:55:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678949719;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=p25e97wDMfgDnPnE95tN98IR5MoSUZWy0CVnCFqXSdU=;
        b=fzAYCB3aNtzULDLDyoHNuafqVzmBW+1ayVIApVTnF+LcfqY4rm2G+pfUC7M6gOtqWC
         zxLWkOVWzwlDOVQWLhTd6R8s1wnHX11w26lj+dta6GBqBmgDoE1Ra9psST30g/34e36K
         rL80ntiypgni7EffrUpzMd1kUniOHQYEUvwGNo57mDa01asaAs1z2IYawb7QNHfKPBws
         0B3W70zetV6nTfw7Q/pRRVKKEhOT0UmOLQF7tQjCg7TwRwzn1o41k5ypbvt1bVvgjbQm
         eSyACiPQvcvr4bKU5rgGeUnsZTiy5oWky3XaeTJHyKcrRWgP1YlJn1CLCvvQiLEg/TE0
         W23w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678949719;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=p25e97wDMfgDnPnE95tN98IR5MoSUZWy0CVnCFqXSdU=;
        b=LOn3K5ZRWA4T//PtKFXvr4Rw7QlLUnLyGByXwZEtmMolkPydBZFYgFT/ZRZhKxfg7W
         mp3bDZN/3UJwflImgg5ulgbVPhxc4qR3AIycfnqSBuD46evOLxinA7vCYzvoCeHOcQd8
         CLjSYnJUzKjcCAuAf0D0cEXXGp/PIBS5tJt+r9ylh+ztTQE0gWjYNtZWUN8N8hNAyOOl
         rsvYbM0b0bNmwOEeNpvgiTuL5CSDFpZ5PTxAWQdh+8gJKZgvw64qeoXmgcKHrgG8GsYV
         5LiH6+EiWfd94XYSJzbX4EuoEhqLQWanhpLxPBt8RVGdri0JCAtW6ovXs2w444wDImuk
         zxVw==
X-Gm-Message-State: AO0yUKWitnqluAE0QhfBdMJ9Aezw9E75g+fk8OfMZwYWJjgfjRzfqZUI
        +sWvEcb3NTA87pYQ81Y5xPx5KA==
X-Google-Smtp-Source: AK7set+TbKI6aA2alVPnlfi3mb7ymQVRySWJSY8MPQIWj7KNaeGdBb3suc0hJ9FX95pglxiyooHx9w==
X-Received: by 2002:a17:906:f1d9:b0:92b:e566:98fb with SMTP id gx25-20020a170906f1d900b0092be56698fbmr9854728ejb.12.1678949719355;
        Wed, 15 Mar 2023 23:55:19 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:9827:5f65:8269:a95f? ([2a02:810d:15c0:828:9827:5f65:8269:a95f])
        by smtp.gmail.com with ESMTPSA id u21-20020a170906409500b00928de86245fsm3404436ejj.135.2023.03.15.23.55.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Mar 2023 23:55:18 -0700 (PDT)
Message-ID: <72904c0b-4b32-7acc-346d-04add0ab66fb@linaro.org>
Date:   Thu, 16 Mar 2023 07:55:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] arm64: dts: qcom: sa8775p: add symbols to dtb
Content-Language: en-US
To:     Prasad Sodagudi <quic_psodagud@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Eric Chanudet <echanude@redhat.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230309233945.1199358-1-echanude@redhat.com>
 <43c11038-91d5-cbfd-7349-06fcd61a0661@linaro.org>
 <1bd61fa7-cd0e-e198-9cee-7485eacbe685@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1bd61fa7-cd0e-e198-9cee-7485eacbe685@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/03/2023 05:48, Prasad Sodagudi wrote:
> 
> 
> On 3/9/2023 3:47 PM, Konrad Dybcio wrote:
>>
>>
>> On 10.03.2023 00:39, Eric Chanudet wrote:
>>> ABL uses the __symbols__ section to process the DTB before passing it
>>> forward. Without it, the bootstrap is interrupted.
>>>
>>> Signed-off-by: Eric Chanudet <echanude@redhat.com>
>>> ---
>> Fix your ABL.
> Hi Konrad,
> 
> Apps boot-loader need __symbols__ for dynamic overlay operation. 
> Qualcomm firmware passes an overlay file to apps boot-loader to overlay 
> some of the nodes based on firmware configuration. Without __symbols__ 
> apps boot-loader is not able to overlay.
> 
> Qualcomm hypervisor/gunyah would like to overlay arch timer node with 
> always-on property, So adding __symbols__ helps boot-loader to overlay.

Since none of these overlays are upstream, we can argue that it is not a
valid reason. If you decide to keep overlays downstream then also you
can keep patch enabling the overlays there...

Best regards,
Krzysztof

