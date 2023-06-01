Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A77E5719DF5
	for <lists+devicetree@lfdr.de>; Thu,  1 Jun 2023 15:28:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233891AbjFAN15 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Jun 2023 09:27:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35762 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233835AbjFAN1t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Jun 2023 09:27:49 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A218E64
        for <devicetree@vger.kernel.org>; Thu,  1 Jun 2023 06:27:29 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-5149bdb59daso1296354a12.2
        for <devicetree@vger.kernel.org>; Thu, 01 Jun 2023 06:27:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685626045; x=1688218045;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0Bh0NwcmQVDulBJjQlFxoXeFk9v1DzA4S7ePzbUk4+w=;
        b=q1iotZxbLy8szFOTeC5e/G0VQdDeibKUxN1V13zopsKDoRyLSyc6Z3+4NCEAYIHRcr
         0Y+SOKRkc0h/8PrlcU2NIUN1lDLPBiHpGdDNpR2mlagpo/gvLvFSQS3CValEhaAtjE+2
         RE+eVynh/sqxFzs+LL8qvlWKtlmi6qvz/TKHDm0/IH+D5aOrdEusPcJwXPMYNre/ulBW
         FI9QWATMBhOQi00g1fzNaUT9uFmVOiAy+PvM5ML4OmjN50l9Q4JqXau5CjGGmBr819kT
         fq1kDhA1u4fUCbzvrfZF+RjuYK9zU0Wo40z60SZLVIhSRl3FKihyEIC7AAk5scS9W995
         Kp9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685626045; x=1688218045;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0Bh0NwcmQVDulBJjQlFxoXeFk9v1DzA4S7ePzbUk4+w=;
        b=UmHvzdmcErK2ZjGE2xXNyRJ+sRjcWYrlaLsTZDr3WBIg8g03XjyAkpCYewruCTWFZM
         UDYWt77VZO6rSo9L+yJ+/wqdJcyUgttxpFrTmnxzFnfuWVeK/4HbbL4ZkCdoODV+jOdV
         JKWdn7I30TzX2QeoVPSfovt2K+EL82HJZHpCNRKcFlGTVbd+ngUeF9vskK09DzBx0svC
         hGO0rRchRNsPlLRD8M/EKLlzdiLBxVcEaB1mOWIP9XsLfhmUQD8MN2b3iAnLbexFlldK
         93eLmRpS8sM6h+5zwQo+y6AgnYZ04fLGJ/oI7d52TsX65iyn8pekTL0Qwt5IHMbVkOVj
         5Puw==
X-Gm-Message-State: AC+VfDyJAAzX9/Xa/ItPgB0R5JzSLQwzGraD3YMZVHRZxPQdRV3uTe/I
        mf+i0d8A6UhnkbG/puAarR7kkg==
X-Google-Smtp-Source: ACHHUZ56vTDQLpgZcsfUFAD+UPccMtNn7lITWkhbfSA78O9BcUWWDHiZ5WDLxtlvxFtNO3fcz/01mw==
X-Received: by 2002:a05:6402:12ce:b0:514:938a:67cd with SMTP id k14-20020a05640212ce00b00514938a67cdmr5009231edx.38.1685626045251;
        Thu, 01 Jun 2023 06:27:25 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id y1-20020aa7c241000000b0050bfeb15049sm7070997edo.60.2023.06.01.06.27.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Jun 2023 06:27:24 -0700 (PDT)
Message-ID: <33979417-2c0c-5474-23e0-7e72add99873@linaro.org>
Date:   Thu, 1 Jun 2023 15:27:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH V7 4/8] pinctrl: qcom: Add IPQ5018 pinctrl driver
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Sricharan Ramabadhran <quic_srichara@quicinc.com>,
        andy.shevchenko@gmail.com
Cc:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        mturquette@baylibre.com, sboyd@kernel.org, ulf.hansson@linaro.org,
        linus.walleij@linaro.org, catalin.marinas@arm.com, will@kernel.org,
        p.zabel@pengutronix.de, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-mmc@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, robimarko@gmail.com
References: <20230519125409.497439-1-quic_srichara@quicinc.com>
 <20230519125409.497439-5-quic_srichara@quicinc.com>
 <CAHp75VfVx+oGYKcija3h9-eWc6jggMx8p5SAQTEHTBEbjTaJKw@mail.gmail.com>
 <1823419a-6bb4-03f7-d5ae-e32204c5e598@quicinc.com>
 <ZHTK7uEzO7kcx_cV@surfacebook>
 <aefd0df1-8dfb-1b69-589b-974dea312845@quicinc.com>
 <664940c3-9ec1-b4bd-9db5-fa3529e3d1ff@linaro.org>
 <8146f367-c539-bea5-12b6-424213018488@quicinc.com>
 <eb109116-94eb-5b6d-0049-7bb31feada36@linaro.org>
Content-Language: en-US
In-Reply-To: <eb109116-94eb-5b6d-0049-7bb31feada36@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/06/2023 13:53, Krzysztof Kozlowski wrote:
> On 01/06/2023 13:41, Sricharan Ramabadhran wrote:
>>
>>
>> On 6/1/2023 3:21 PM, Krzysztof Kozlowski wrote:
>>> On 01/06/2023 11:50, Sricharan Ramabadhran wrote:
>>>>
>>>>
>>>> On 5/29/2023 9:25 PM, andy.shevchenko@gmail.com wrote:
>>>>> Mon, May 29, 2023 at 03:58:09PM +0530, Sricharan Ramabadhran kirjoitti:
>>>>>> On 5/20/2023 12:17 AM, Andy Shevchenko wrote:
>>>>>>> On Fri, May 19, 2023 at 3:55 PM Sricharan Ramabadhran
>>>>>>> <quic_srichara@quicinc.com> wrote:
>>>>>
>>>>> ...
>>>>>
>>>>>>>      depends on OF || COMPILE_TEST
>>>>>>
>>>>>>    Yeah sure. COMPILE_TEST could be standalone. Will fix it and repost.
>>>>>
>>>>> Standalone COMPILE_TEST will give you definitely NOT what you want.
>>>>> And actually it's strange to have it standalone.
>>>>>
>>>>
>>>>    Ho ok, i meant like this, "depends on ARM64 || COMPILE_TEST"
>>>
>>> Don't do it differently than all other drivers. Open the Kconfig and
>>> look at existing entries.
>>>
>>    The latest added has this below, will use this
>>
>> 	depends on OF || COMPILE_TEST
> 
> I would even drop this... Lemme check, it looks odd. We depend on
> ARCH_QCOM which uses OF. We have few drivers which depend on ACPI, but
> that also seems wrong. These are platform drivers so they should expect
> platform select proper firmware interface. I think none of other
> platform drivers do like this (neither Samsung pinctrl nor other
> Qualcomm drivers)).
> 
> I will fix this. For your patch I would just skip OF entirely.

Correction: you need OF :(

Best regards,
Krzysztof

