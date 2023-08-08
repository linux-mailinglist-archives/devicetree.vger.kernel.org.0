Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6E5CE7740CB
	for <lists+devicetree@lfdr.de>; Tue,  8 Aug 2023 19:10:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234035AbjHHRKs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Aug 2023 13:10:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50650 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232454AbjHHRKU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Aug 2023 13:10:20 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8C8B61A2
        for <devicetree@vger.kernel.org>; Tue,  8 Aug 2023 09:04:11 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2b9b50be31aso90019241fa.3
        for <devicetree@vger.kernel.org>; Tue, 08 Aug 2023 09:04:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691510649; x=1692115449;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wkxbaJE1w03H/idk1NWqMQgLO1L7biBsn5GEkh/lQVQ=;
        b=mPVbr9CMVy667wpEf+XGLyWmb0YfSgHK4nj6hGU6xMrGPh1K2TVHyHt71fK9YrVPIi
         j0qkm5lWxVRgwV8eNREbv31kJG/X6UwFSR3CrbakNEsISGclOWoAOhFJ4b9PBkdPpv+0
         S97WivvNd2s0SYI/ZJ9f8MLnQm/YTpt9Bw4XHIgfNMW8kxmfe8AJ+5L2OXBPoXb/mNSs
         aeilNL8SGkarWAKksU3k0iNEU1yusin6gARGVEpa/XEtJ1ewfkQIo/WnB5r6hZjqeijo
         1iyaMIEkXRyoARP68Jeb76pFhkyuxaX5glQen1TtobshIa9PImleoYnIFIoXFPUWEdUo
         atVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691510649; x=1692115449;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wkxbaJE1w03H/idk1NWqMQgLO1L7biBsn5GEkh/lQVQ=;
        b=GAaTnUCCTYnCHvwlf22iblQSz1OB5UOsvNbhsqEclv2HrPkJipuWsYK98ZUaHhgYKC
         69LCPaI7fHhqsFDqREUNLP7Vrs3H9cVnUdV397H8KAY6UKJeMckvhVU5Uh1eNICrTtnQ
         RCDOYgU6UqDUgZX6Be7rwPeXdg7t56y2EIUdpkyh4rNBcfo2tcGX3y0dJzY1bMyVpRK1
         H7mGLKwPtZreoHNl4ZGLGEHpEukCVphOiPDvKTB9mdkZbeIH9pY8+IleqtEqU2tcmUhz
         wgmoWMLoQuPpDAbe8on7vD4L9GD17RmLUUZ/9BHzI8enr5ba0rTx+ej4UY9isj2USoCM
         64wQ==
X-Gm-Message-State: AOJu0YylMcQB/O2Hg0JQ9wCLQKm8f8zdU8J8V+AsUsc0SHz2ILIcxhsx
        YJT0y6Q+glpDZNGHsjhosjLku6BgzttdVzZkQ4A=
X-Google-Smtp-Source: AGHT+IGd2EkYnVmcbGVqenoYmJMzDW0/GB/8EFYGT8j/Y3vIO8hIfyRd/OSu9mbr2kbuJOvTwsbF3g==
X-Received: by 2002:a17:906:cc0f:b0:99b:d440:bf0b with SMTP id ml15-20020a170906cc0f00b0099bd440bf0bmr8097863ejb.67.1691477192381;
        Mon, 07 Aug 2023 23:46:32 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.113])
        by smtp.gmail.com with ESMTPSA id c24-20020a170906155800b00993004239a4sm6147808ejd.215.2023.08.07.23.46.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Aug 2023 23:46:31 -0700 (PDT)
Message-ID: <1f20d778-cdae-d6d9-ac86-744dd45176d3@linaro.org>
Date:   Tue, 8 Aug 2023 08:46:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 2/3] dt-bindings: clock: add qca8386/qca8084 clock and
 reset definitions
Content-Language: en-US
To:     Jie Luo <quic_luoj@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@linaro.org,
        mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        p.zabel@pengutronix.de
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_srichara@quicinc.com
References: <20230801085352.22873-1-quic_luoj@quicinc.com>
 <20230801085352.22873-3-quic_luoj@quicinc.com>
 <ef996a7e-6eba-4366-c3ea-0d08f2768e98@linaro.org>
 <cf9788f0-a115-5ff9-1195-f4f302551e04@quicinc.com>
 <d1172ed6-ee3b-83b6-1656-c91e35fbc2df@linaro.org>
 <f25e1043-6dfa-2dcc-2948-88025f4881d8@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <f25e1043-6dfa-2dcc-2948-88025f4881d8@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/08/2023 08:31, Jie Luo wrote:
> 
> 
> On 8/8/2023 1:57 PM, Krzysztof Kozlowski wrote:
>> On 08/08/2023 07:19, Jie Luo wrote:
>>>>> +properties:
>>>>> +  compatible:
>>>>> +    const: qcom,nsscc-qca8k
>>>>
>>>> SoC name is before IP block names. See:
>>>> Documentation/devicetree/bindings/arm/qcom-soc.yaml
>>>>
>>>> qca8k is not SoC specific. I don't know what you are documenting here,
>>>> but if this is a SoC, then follow SoC rules.
>>>>
>>>> If this is not SoC, it confuses me a bit to use GCC binding.
>>>>
>>>> Anyway, this was not tested, as pointed out by bot... Please test the
>>>> code before sending.
>>>>
>>>> Best regards,
>>>> Krzysztof
>>>>
>>>
>>> Hi Krzysztof,
>>>
>>> Thanks for the review comments.
>>> qca8383/qca8084 is a network chip that support switch mode and PHY mode,
>>> the hardware register is accessed by MDIO bus, which is not a SOC.
>>>
>>> But it has the self-contained clock controller system, the clock
>>> framework of qca8386/qca8084 is same as the GCC of ipq platform such as
>>> ipq9574.
>>
>> OK
>>
>>>
>>> would you help advise whether we can document it with the compatible
>>> "qcom,qca8k-nsscc"?
>>
>> For example:
>> qcom,qca8084-nsscc
>>
>> Best regards,
>> Krzysztof
>>
> Thanks Krzysztof for the suggestion.
> 
> i will document the compatible below.
> "qcom,qca8084-nsscc" for the PHY mode of device.
> "qcom,qca8386-nsscc" for the switch mode of device.

The clocks seem to be exactly the same for both, so use only one
compatible in the driver (the fallback) and oneOf in the bindings like:

https://elixir.bootlin.com/linux/v6.3-rc6/source/Documentation/devicetree/bindings/sound/nvidia,tegra210-ope.yaml#L31

Best regards,
Krzysztof

