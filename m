Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 25A7C6F6FE6
	for <lists+devicetree@lfdr.de>; Thu,  4 May 2023 18:26:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229778AbjEDQ0K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 May 2023 12:26:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229754AbjEDQ0I (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 May 2023 12:26:08 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D767359D
        for <devicetree@vger.kernel.org>; Thu,  4 May 2023 09:26:06 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-4f00d41df22so11255287e87.1
        for <devicetree@vger.kernel.org>; Thu, 04 May 2023 09:26:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683217564; x=1685809564;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3oaodqov9+zMBxA9jjLMyaN6+ESrOud/sUhJoj5OmZI=;
        b=vXy4JFrQdRVgIww90EhIOZIkG0xpsOoEGeSnR8G7dQdy++A5WO8p7uoDaur3QIhWlu
         EMEhBtNEJKSRRNKS74KSRMa2srx/+yh15u5Lq8OW9qzCCqxsKvudEnI8v7eh4IiEYfu1
         JJ5tHtst43PB9HcP3VfIdV02P6sgrIgmTul+P3gtaeG9h0Y5WIzeRAfnRt/DSnnVSkR0
         wX6Uh2StBLfqQsJ1FRAwqirfZy2V0lZx5msKE2sty76/SS+Nc6sxoUk8yON3rhVqEvtE
         vmP5koveHNK4fX+UA7LhY9wAzodzuunEN3uAAOw0PCYfHc/BhjwLVSR+ud0NBMLGUniS
         A3Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683217564; x=1685809564;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3oaodqov9+zMBxA9jjLMyaN6+ESrOud/sUhJoj5OmZI=;
        b=Zaa8khC4MASGY+EUqiqN74zxqMuGIOhAeRUMn45zIEMGUJ2wYeb5DQNoVklvG4JTNh
         e6m0e8HdgSUNO35TO+4tMofG9A/nWk7s2yLVOZn4Tc3MYzz7BrwQL7C9TTJkK1BUKxI2
         A4CqLdTtgmjB176KlvaS2Pe8W5l5NkrCN1HT9KDD81RNWprmtwnsnCr+QVCAYhJbaORI
         Cl4EhCw9dFSQZBvrGlpEp13o5AmN7jA8M+uX7Um/hpCaib7f5+Subu7IiadOE1Mfjdyt
         NIZeBhthWIfISYN/OTi0zYZb8FK+yr/7bGYkJTS98ZV2oGaY5FrWyjibmDFao0ifb0wb
         Ub3w==
X-Gm-Message-State: AC+VfDz+/Mz7w3/6/3D0sFCNgyFq+znwtn5BxfgUISTnvJIg3IOeBHe4
        BmOaGeHOBNHjamQOg+dfLAShpg==
X-Google-Smtp-Source: ACHHUZ5AQHC5LfEEzcxFVSKjL6WCfaAGAhtN3hRrxCx4XMt4upQLrNpg3oQqb82KL4pM6oVqkdmJbA==
X-Received: by 2002:a2e:b904:0:b0:2a8:a6b5:2042 with SMTP id b4-20020a2eb904000000b002a8a6b52042mr984606ljb.19.1683217564444;
        Thu, 04 May 2023 09:26:04 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a0db:1f00::8a5? (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id n1-20020a2e8781000000b002a7e9e4e9dcsm6611553lji.114.2023.05.04.09.26.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 May 2023 09:26:04 -0700 (PDT)
Message-ID: <77c4ba62-1566-993b-ec33-0da2fa9936ec@linaro.org>
Date:   Thu, 4 May 2023 19:26:03 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH V4 1/3] dt-bindings: sram: qcom,imem: Add Boot Stat region
 within IMEM
Content-Language: en-GB
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Caleb Connolly <caleb.connolly@linaro.org>,
        Souradeep Chowdhury <quic_schowdhu@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
References: <cover.1681742910.git.quic_schowdhu@quicinc.com>
 <NO2MhqhxQqjQ33CVOtaXXxo2iBfl6Ugz1lE5oJAl-mjUyrRu4l9vCBWV8AVJZoCrVF0Cw0j49t44Bn5yEAv3mA==@protonmail.internalid>
 <bd3350e3b0b02669cffa4bdaf9a0a1d8ae9072d1.1681742910.git.quic_schowdhu@quicinc.com>
 <9da030c6-6a9f-6766-7120-94aaa8fcd8ab@linaro.org>
 <3ef818c8-1ee4-5bee-6b37-20658b2e4637@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <3ef818c8-1ee4-5bee-6b37-20658b2e4637@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/05/2023 09:26, Krzysztof Kozlowski wrote:
> On 04/05/2023 00:10, Caleb Connolly wrote:
>>
>>
>> On 17/04/2023 16:08, Souradeep Chowdhury wrote:
>>> All Qualcomm bootloaders log useful timestamp information related
>>> to bootloader stats in the IMEM region. Add the child node within
>>> IMEM for the boot stat region containing register address and
>>> compatible string.
>>>
>>> Signed-off-by: Souradeep Chowdhury <quic_schowdhu@quicinc.com>
>>> ---
>>>   .../devicetree/bindings/sram/qcom,imem.yaml        | 22 ++++++++++++++++++++++
>>>   1 file changed, 22 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/sram/qcom,imem.yaml b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
>>> index ba694ce..d028bed 100644
>>> --- a/Documentation/devicetree/bindings/sram/qcom,imem.yaml
>>> +++ b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
>>> @@ -49,6 +49,28 @@ patternProperties:
>>>       $ref: /schemas/remoteproc/qcom,pil-info.yaml#
>>>       description: Peripheral image loader relocation region
>>>
>>> +  "^stats@[0-9a-f]+$":
>>> +    type: object
>>> +    description:
>>> +      Imem region dedicated for storing timestamps related
>>> +      information regarding bootstats.
>>> +
>>> +    additionalProperties: false
>>> +
>>> +    properties:
>>> +      compatible:
>>> +        items:
>>> +          - enum:
>>> +              - qcom,sm8450-bootstats
>>
>> This region isn't exclusive to sm8450, it exists also on sdm845 and
>> presumably other platforms. Is there any need for an SoC specific
>> compatible?
> 
> Yes.
> https://elixir.bootlin.com/linux/v6.1-rc1/source/Documentation/devicetree/bindings/writing-bindings.rst#L42
> 
> Also see many discussions on LKML about this.

After taking another glance at the parent device (IMEM), I start to 
think that we should not be defining the device at all. The imem has the 
SoC name in it. So I think there should be a proper driver for IMEM. 
Then it will instantiate the ABL stats platform device depending on the 
SoC compat. Also this would allow us to rewrite qcom_pil_info_init() in 
a way to query IMEM instead of poking into DT directly.

-- 
With best wishes
Dmitry

