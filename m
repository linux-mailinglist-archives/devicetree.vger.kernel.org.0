Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3E720773E7A
	for <lists+devicetree@lfdr.de>; Tue,  8 Aug 2023 18:31:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232807AbjHHQbI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Aug 2023 12:31:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232701AbjHHQ3e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Aug 2023 12:29:34 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 233A767E6
        for <devicetree@vger.kernel.org>; Tue,  8 Aug 2023 08:51:28 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-5217ad95029so7536106a12.2
        for <devicetree@vger.kernel.org>; Tue, 08 Aug 2023 08:51:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691509882; x=1692114682;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UyS/L7dLf5HA1aT+dxr0rfvSOnR4w8+8xr/m/2kmCIY=;
        b=NWEK1e3cNElKstvQccr1+Zry0kzUaC1mrsXaHrTxacz9CQilSoS7R2dsWsCPTW8JUW
         M5FwxxQKZnwZuB45cF0EI0ART3GzDEZYDaCyw2EmiZul8HhzHkXP5UYvazL0IAm6b9gX
         V8gX3d1vAGbAwTeg14hLAymZmZnO6FVpkHMiIqnbCWQX8DGwnaRIic63sV8Cinvs0lZp
         S37WbekFyQmwQYsyWDFPdpp2wZzgZ4zWtBpoAWFWfnRuzZgCH1t+OX8hHr93ELUr6tpX
         8aqBhKed7KlLLjP3fqld8dqOCiWav9BY/vVJmzLrtRpO8WV7wB81ViFOds0HnW7ogxJF
         jYJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691509882; x=1692114682;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UyS/L7dLf5HA1aT+dxr0rfvSOnR4w8+8xr/m/2kmCIY=;
        b=YQ50U6M2fd4mkpmWWBbidpDcnEA0JvhjEMS0b/3sC9SiXlonxPa0I+oqSBSlJMr2/h
         yNWA4LxGdvJ958IYJAvxbifG9nW4DGkoACQ4+6X8/KkchDDtca3xuYGSfuGsO3CmXU+k
         FHlK+bCRY9Dv8hO199MSdtfWjnNF6d3YY5f1j8d6KG2mxInGeAu/Jz5s3tv8V2Jr/sek
         Ej6jb2Q0WJkykSxuiw1n1nNDrebqaY2jQKxNNPET3f/DJHPbkCwMq3c5LLOMi4QfDykf
         IoQnlu2tyUEvyiRjhAQ1TfKppnroolgwlqf68VTSI01Fkxo3y95E8RFXDXkRylSj54ZD
         jmNA==
X-Gm-Message-State: AOJu0YxEE+pYYK0fdoB0dB1QHWkJyp45DVEzCjWKR5wPMENV6kTyeMhl
        bkCFnVThU4tie2P8v1naAk0JiM4mu+2Cr81XwLI=
X-Google-Smtp-Source: AGHT+IG5ejXw8mSfMpGS3YO2cZNr5f38aIplR/Hy2qVkoP54+cIeF0lk06XFWiAgsKDzR7RqHr3rDA==
X-Received: by 2002:a2e:904c:0:b0:2b9:4b2b:89d8 with SMTP id n12-20020a2e904c000000b002b94b2b89d8mr7661614ljg.35.1691474242601;
        Mon, 07 Aug 2023 22:57:22 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.113])
        by smtp.gmail.com with ESMTPSA id bn10-20020a170906c0ca00b00992b0745548sm6162130ejb.152.2023.08.07.22.57.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Aug 2023 22:57:21 -0700 (PDT)
Message-ID: <d1172ed6-ee3b-83b6-1656-c91e35fbc2df@linaro.org>
Date:   Tue, 8 Aug 2023 07:57:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 2/3] dt-bindings: clock: add qca8386/qca8084 clock and
 reset definitions
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
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <cf9788f0-a115-5ff9-1195-f4f302551e04@quicinc.com>
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

On 08/08/2023 07:19, Jie Luo wrote:
>>> +properties:
>>> +  compatible:
>>> +    const: qcom,nsscc-qca8k
>>
>> SoC name is before IP block names. See:
>> Documentation/devicetree/bindings/arm/qcom-soc.yaml
>>
>> qca8k is not SoC specific. I don't know what you are documenting here,
>> but if this is a SoC, then follow SoC rules.
>>
>> If this is not SoC, it confuses me a bit to use GCC binding.
>>
>> Anyway, this was not tested, as pointed out by bot... Please test the
>> code before sending.
>>
>> Best regards,
>> Krzysztof
>>
> 
> Hi Krzysztof,
> 
> Thanks for the review comments.
> qca8383/qca8084 is a network chip that support switch mode and PHY mode,
> the hardware register is accessed by MDIO bus, which is not a SOC.
> 
> But it has the self-contained clock controller system, the clock 
> framework of qca8386/qca8084 is same as the GCC of ipq platform such as 
> ipq9574.

OK

> 
> would you help advise whether we can document it with the compatible
> "qcom,qca8k-nsscc"?

For example:
qcom,qca8084-nsscc

Best regards,
Krzysztof

