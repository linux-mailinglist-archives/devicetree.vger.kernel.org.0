Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F0193702D98
	for <lists+devicetree@lfdr.de>; Mon, 15 May 2023 15:09:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240712AbjEONJ3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 May 2023 09:09:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242250AbjEONJD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 May 2023 09:09:03 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D73A72D4B
        for <devicetree@vger.kernel.org>; Mon, 15 May 2023 06:08:30 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-4f13ef4ad91so15159253e87.3
        for <devicetree@vger.kernel.org>; Mon, 15 May 2023 06:08:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684156107; x=1686748107;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EMAqsaRGOuH7aYnu9nF76xwuBcyGBSccLe/oQdd/lGw=;
        b=JQTXjdx1hCdZUu+TFRm45msNEhraalF81tGPSZhDWxwCQ3XyZOjheYW3t9bEd5Ssvd
         kryCXE44qP98GV1rn3pCKweQ/7fZ8x6TDFwxsnmWkCwMZ8UxJ7Hn0Fy/pY3rkZmxa8q6
         pa07hkSetrYv73pYjUdvCzjhToFezTMB7jiqLZE4qF7DX0xANEek8Zpdj5Vh5tcjbUL3
         rn4jUo4TM9FsarFgiUYAJEmQZDMNrAfOT9R5Ap7CvoGJ/buqzuaY2roguD3v1TU5/oTL
         IrHVRMfcopik32CZ4UZiydLqPdfuadn9RJ0GpZyaqrkcL6leSRoVyIhjraTrEIxabzs6
         GYRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684156107; x=1686748107;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EMAqsaRGOuH7aYnu9nF76xwuBcyGBSccLe/oQdd/lGw=;
        b=As12P8BTlvKI297wUWbbvHH6TyhipDzWVb4m95oe2abOj/N30Na5a3VdTjdpUY4fSE
         5TyMAJoBVEJ9h7X7a0+Cfg89cRFFRNcKhlpZzUK86aOBC+2GYQLpUPOPCiFyfYno9btC
         SPzhBxbEzEfi1WqIX+jJgMpYQdge0HH69rbJF4YhOx+rXZpDBcPbBLwtoIhvfRXzG426
         K5jLYzJkDUn45gdvr6HlFJa4LtO4gvKxc72aAkbULy/Dnckt2g4aDn+e9ePyQaVMc6Rb
         rS55b3Ek4+2VHFB5R3/tvWSC4KXTr+i3LecLQUYml5is22W7UexMYaPl/0l3LQ3aEjv4
         +0vg==
X-Gm-Message-State: AC+VfDxm7yqJm+XMCpZUVyOusGxQoIwkBFTO8Jhun5MtRWicBGnnrXq9
        VM93vreZFNMWIMryY1ftzw0Sjg==
X-Google-Smtp-Source: ACHHUZ7zwalfNArzw+7IOQn064/xa9HFIy8HjiMQsWu/M/XrbnInS9+7HLAQOFdS6mksjTcLvTKBGA==
X-Received: by 2002:a05:6512:11e7:b0:4ec:8e7e:46f1 with SMTP id p7-20020a05651211e700b004ec8e7e46f1mr5740935lfs.66.1684156106951;
        Mon, 15 May 2023 06:08:26 -0700 (PDT)
Received: from [192.168.1.101] (abxi58.neoplus.adsl.tpnet.pl. [83.9.2.58])
        by smtp.gmail.com with ESMTPSA id g24-20020a19ee18000000b004ee85d1444esm2587628lfb.208.2023.05.15.06.08.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 May 2023 06:08:26 -0700 (PDT)
Message-ID: <68c3f24f-99a2-ad7c-9371-33ccaf5740dd@linaro.org>
Date:   Mon, 15 May 2023 15:08:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 4/4] arm64: dts: qcom: sm8550: Add video clock controller
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Jagadeesh Kona <quic_jkona@quicinc.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Taniya Das <quic_tdas@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230509161218.11979-1-quic_jkona@quicinc.com>
 <20230509161218.11979-5-quic_jkona@quicinc.com>
 <7faf4c16-98ff-f27d-d1fd-3058370c06f5@linaro.org>
 <CAA8EJpo1iMj90BPc6gYngSrJqd8WWArRndgbcVg1fYBKBpVfAQ@mail.gmail.com>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <CAA8EJpo1iMj90BPc6gYngSrJqd8WWArRndgbcVg1fYBKBpVfAQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 15.05.2023 14:57, Dmitry Baryshkov wrote:
> On Mon, 15 May 2023 at 15:28, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>>
>>
>>
>> On 9.05.2023 18:12, Jagadeesh Kona wrote:
>>> Add device node for video clock controller on Qualcomm SM8550 platform.
>>>
>>> Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
>>> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
>>> ---
>>>  arch/arm64/boot/dts/qcom/sm8550.dtsi | 12 ++++++++++++
>>>  1 file changed, 12 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
>>> index 6e9bad8f6f33..e67e7c69dae6 100644
>>> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
>>> @@ -7,6 +7,7 @@
>>>  #include <dt-bindings/clock/qcom,sm8550-gcc.h>
>>>  #include <dt-bindings/clock/qcom,sm8550-tcsr.h>
>>>  #include <dt-bindings/clock/qcom,sm8550-dispcc.h>
>>> +#include <dt-bindings/clock/qcom,sm8550-videocc.h>
>>>  #include <dt-bindings/dma/qcom-gpi.h>
>>>  #include <dt-bindings/gpio/gpio.h>
>>>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>>> @@ -759,6 +760,17 @@ gcc: clock-controller@100000 {
>>>                                <&usb_dp_qmpphy QMP_USB43DP_USB3_PIPE_CLK>;
>>>               };
>>>
>>> +             videocc: clock-controller@aaf0000 {
>> This node should be moved down. Nodes with unit addresses
>> should be sorted alphanumerically.
>>
>>> +                     compatible = "qcom,sm8550-videocc";
>>> +                     reg = <0 0x0aaf0000 0 0x10000>;
>>> +                     clocks = <&bi_tcxo_div2>, <&gcc GCC_VIDEO_AHB_CLK>;
>> One per line, please
>>
>> Also, any reason the XO clock does not come from RPMhCC?
> 
> bi_tcxo_div_2 is an RPMhCC clock with the fixed divider.
Hm, I don't see it neither on -next or in this patchset..

Konrad
> 
>>
>> Konrad
>>> +                     power-domains = <&rpmhpd SM8550_MMCX>;
>>> +                     required-opps = <&rpmhpd_opp_low_svs>;
>>> +                     #clock-cells = <1>;
>>> +                     #reset-cells = <1>;
>>> +                     #power-domain-cells = <1>;
>>> +             };
>>> +
>>>               ipcc: mailbox@408000 {
>>>                       compatible = "qcom,sm8550-ipcc", "qcom,ipcc";
>>>                       reg = <0 0x00408000 0 0x1000>;
> 
> 
> 
