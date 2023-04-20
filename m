Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5A7166E8653
	for <lists+devicetree@lfdr.de>; Thu, 20 Apr 2023 02:21:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230263AbjDTAVn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Apr 2023 20:21:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59444 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230102AbjDTAVm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Apr 2023 20:21:42 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A79011BD3
        for <devicetree@vger.kernel.org>; Wed, 19 Apr 2023 17:21:39 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-4eed6ddcae1so1046942e87.0
        for <devicetree@vger.kernel.org>; Wed, 19 Apr 2023 17:21:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681950098; x=1684542098;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qcferh+wfnq4jhNatM44Fv5X3GmDSk82o3vBEIF/peQ=;
        b=d8YOP4LFWLy5HnqrcMkcMAPgIuFA1OdK7cVU17aOJ63e07MtX50dCSQASwuioTyFxA
         9kBv2Ax719177tC/haJSlUAqtbbrOi6b9iMn/fgsdrH4P6u8P7MaEaIc69dJweWJYyi2
         2JcAdcUIbE4Ls+rhe5DgN10cMAe6v/FUyz354fzJC1GE8IaJJjcxRsSy0T22WA8s79jg
         1WJH6glPMzih5u1GbbVrY+XA+CqreIecDUcx6dZb1mAzppCtUWhYReu6bp5ZOnYkDFg8
         X0GUJTWa9gsFEmiRAduWt4EBIsHkjzwnxpHmAirvy98wvGa6eYlgjPNDZ8ReWygTiNSo
         OQdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681950098; x=1684542098;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qcferh+wfnq4jhNatM44Fv5X3GmDSk82o3vBEIF/peQ=;
        b=ahDkbRvrXZOzZQ/oJUvXH6TMuh3XpSb2pKq68vQfkrJyyQhMEnf2RmC6kYKyeunJOj
         Gp3Q4U5EQOJTVQNlE+qe425+Yi7L8o8/TCX0SEk4ZS7XXPQScVk/e+DDVXsrjnHfOuIw
         XGbGmR12Gdx/aLcLdr0wvfSVIF1/ILoFMlO9Q1evcJI3bjXLdDSJwPN+ta4OoeRkL7Qk
         Z7RSRu81+U/9kJYT8+u1IB2r7PDkOF47m8gFeEKW8W2+13C2Bz/ZkWHvr42kTrhYsmxH
         Ht/ANNzpOWcWkjS51I7OoUTnUt0/9JiRq8e3+2ZB5JUHZCQ/oTzWgngNRCEsjWWTYelc
         45aw==
X-Gm-Message-State: AAQBX9d3mswTq09sVEWP6Xo6EAsc4IGD/ovKfQirrYOEMO0rUa299lfk
        KT4581vyjcZmmpnCfv9TDxlUdQ==
X-Google-Smtp-Source: AKy350bWvnMWjzD/I3jIgNC2i9i4g7z9CVYmfruGB5BQl+V0GY8p7L4tuvTpFBgb3d4lIQ15pOxQnw==
X-Received: by 2002:ac2:52bc:0:b0:4ea:e789:25b with SMTP id r28-20020ac252bc000000b004eae789025bmr1260713lfm.30.1681950097871;
        Wed, 19 Apr 2023 17:21:37 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id a23-20020ac25217000000b004d887e0e9edsm51381lfl.168.2023.04.19.17.21.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Apr 2023 17:21:37 -0700 (PDT)
Message-ID: <bfbd0ecc-342b-1321-8ead-b3e462099e51@linaro.org>
Date:   Thu, 20 Apr 2023 03:21:36 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 1/4] drm/msm: add some cec register bitfield details
Content-Language: en-GB
To:     Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Arnaud Vrac <avrac@freebox.fr>,
        Rob Clark <robdclark@gmail.com>,
        Hans Verkuil <hverkuil-cisco@xs4all.nl>,
        Sean Paul <sean@poorly.run>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org
References: <20230418-msm8998-hdmi-cec-v1-0-176479fb2fce@freebox.fr>
 <20230418-msm8998-hdmi-cec-v1-1-176479fb2fce@freebox.fr>
 <9d7f81fc-945e-9704-4eb2-d2e5cb31297e@linaro.org>
 <5797c537-fe70-27be-ef1d-f4c8b19806f5@quicinc.com>
 <639b264b-08e5-b84e-1933-ed768b6d1512@linaro.org>
 <5014976f-3026-9fef-e1ec-270d421df078@quicinc.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <5014976f-3026-9fef-e1ec-270d421df078@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/04/2023 03:17, Abhinav Kumar wrote:
> 
> 
> On 4/19/2023 5:11 PM, Dmitry Baryshkov wrote:
>> On 20/04/2023 03:10, Abhinav Kumar wrote:
>>>
>>>
>>> On 4/19/2023 4:53 PM, Dmitry Baryshkov wrote:
>>>> On 18/04/2023 21:10, Arnaud Vrac wrote:
>>>>> The register names and bitfields were determined from the downstream
>>>>> msm-4.4 driver.
>>>>>
>>>>> Signed-off-by: Arnaud Vrac <avrac@freebox.fr>
>>>>> ---
>>>>>   drivers/gpu/drm/msm/hdmi/hdmi.xml.h | 62 
>>>>> ++++++++++++++++++++++++++++++++++++-
>>>>>   1 file changed, 61 insertions(+), 1 deletion(-)
>>>>
>>>> I have opened MR against Mesa at 
>>>> https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/22588.
>>>>
>>>> The patch is:
>>>>
>>>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>>>>
>>>> Minor nit below
>>>>
>>>
>>> Also, shouldnt the register updates be done using rnn tool instead of 
>>> manual edits?
>>
>> We usually update the rnn and ask Rob to pull it at the beginning of 
>> the cycle.
>>
> 
> Sorry, I didnt get this. So you are saying, we will accept manual edits 
> and then replace it with the tool generated xml later? I was not aware 
> of that, because previously I was always asked by Rob to use the tool to 
> generate the xml and push that.

We accept manual edits for the patchset (so that one can test it), but 
before merging the patchset we ask Rob to pull the xml.

> 
>>>
>>>>>
>>>>> diff --git a/drivers/gpu/drm/msm/hdmi/hdmi.xml.h 
>>>>> b/drivers/gpu/drm/msm/hdmi/hdmi.xml.h
>>>>> index 973b460486a5a..b4dd6e8cba6b7 100644
>>>>> --- a/drivers/gpu/drm/msm/hdmi/hdmi.xml.h
>>>>> +++ b/drivers/gpu/drm/msm/hdmi/hdmi.xml.h
>>>>> @@ -76,6 +76,13 @@ enum hdmi_acr_cts {
>>>>>       ACR_48 = 3,
>>>>>   };
>>>>> +enum hdmi_cec_tx_status {
>>>>> +    CEC_TX_OK = 0,
>>>>> +    CEC_TX_NACK = 1,
>>>>> +    CEC_TX_ARB_LOSS = 2,
>>>>> +    CEC_TX_MAX_RETRIES = 3,
>>>>> +};
>>>>> +
>>>>>   #define REG_HDMI_CTRL                        0x00000000
>>>>>   #define HDMI_CTRL_ENABLE                    0x00000001
>>>>>   #define HDMI_CTRL_HDMI                        0x00000002
>>>>> @@ -476,20 +483,73 @@ static inline uint32_t 
>>>>> HDMI_DDC_REF_REFTIMER(uint32_t val)
>>>>>   #define REG_HDMI_HDCP_SW_LOWER_AKSV                0x00000288
>>>>>   #define REG_HDMI_CEC_CTRL                    0x0000028c
>>>>> +#define HDMI_CEC_CTRL_ENABLE                    0x00000001
>>>>> +#define HDMI_CEC_CTRL_SEND_TRIGGER                0x00000002
>>>>> +#define HDMI_CEC_CTRL_FRAME_SIZE__MASK                0x000001f0
>>>>> +#define HDMI_CEC_CTRL_FRAME_SIZE__SHIFT                4
>>>>> +static inline uint32_t HDMI_CEC_CTRL_FRAME_SIZE(uint32_t val)
>>>>> +{
>>>>> +    return ((val) << HDMI_CEC_CTRL_FRAME_SIZE__SHIFT) & 
>>>>> HDMI_CEC_CTRL_FRAME_SIZE__MASK;
>>>>> +}
>>>>> +#define HDMI_CEC_CTRL_LINE_OE                    0x00000200
>>>>>   #define REG_HDMI_CEC_WR_DATA                    0x00000290
>>>>> +#define HDMI_CEC_WR_DATA_BROADCAST                0x00000001
>>>>> +#define HDMI_CEC_WR_DATA_DATA__MASK                0x0000ff00
>>>>> +#define HDMI_CEC_WR_DATA_DATA__SHIFT                8
>>>>> +static inline uint32_t HDMI_CEC_WR_DATA_DATA(uint32_t val)
>>>>> +{
>>>>> +    return ((val) << HDMI_CEC_WR_DATA_DATA__SHIFT) & 
>>>>> HDMI_CEC_WR_DATA_DATA__MASK;
>>>>> +}
>>>>> -#define REG_HDMI_CEC_CEC_RETRANSMIT                0x00000294
>>>>> +#define REG_HDMI_CEC_RETRANSMIT                    0x00000294
>>>>> +#define HDMI_CEC_RETRANSMIT_ENABLE                0x00000001
>>>>> +#define HDMI_CEC_RETRANSMIT_COUNT__MASK                0x000000fe
>>>>> +#define HDMI_CEC_RETRANSMIT_COUNT__SHIFT            1
>>>>> +static inline uint32_t HDMI_CEC_RETRANSMIT_COUNT(uint32_t val)
>>>>> +{
>>>>> +    return ((val) << HDMI_CEC_RETRANSMIT_COUNT__SHIFT) & 
>>>>> HDMI_CEC_RETRANSMIT_COUNT__MASK;
>>>>> +}
>>>>>   #define REG_HDMI_CEC_STATUS                    0x00000298
>>>>> +#define HDMI_CEC_STATUS_BUSY                    0x00000001
>>>>> +#define HDMI_CEC_STATUS_TX_FRAME_DONE                0x00000008
>>>>> +#define HDMI_CEC_STATUS_TX_STATUS__MASK                0x000000f0
>>>>> +#define HDMI_CEC_STATUS_TX_STATUS__SHIFT            4
>>>>> +static inline uint32_t HDMI_CEC_STATUS_TX_STATUS(enum 
>>>>> hdmi_cec_tx_status val)
>>>>> +{
>>>>> +    return ((val) << HDMI_CEC_STATUS_TX_STATUS__SHIFT) & 
>>>>> HDMI_CEC_STATUS_TX_STATUS__MASK;
>>>>> +}
>>>>>   #define REG_HDMI_CEC_INT                    0x0000029c
>>>>> +#define HDMI_CEC_INT_TX_DONE                    0x00000001
>>>>> +#define HDMI_CEC_INT_TX_DONE_MASK                0x00000002
>>>>> +#define HDMI_CEC_INT_TX_ERROR                    0x00000004
>>>>> +#define HDMI_CEC_INT_TX_ERROR_MASK                0x00000008
>>>>> +#define HDMI_CEC_INT_MONITOR                    0x00000010
>>>>> +#define HDMI_CEC_INT_MONITOR_MASK                0x00000020
>>>>> +#define HDMI_CEC_INT_RX_DONE                    0x00000040
>>>>> +#define HDMI_CEC_INT_RX_DONE_MASK                0x00000080
>>>>>   #define REG_HDMI_CEC_ADDR                    0x000002a0
>>>>>   #define REG_HDMI_CEC_TIME                    0x000002a4
>>>>> +#define HDMI_CEC_TIME_ENABLE                    0x00000001
>>>>> +#define HDMI_CEC_TIME_SIGNAL_FREE_TIME__MASK            0x0000ff80
>>>>> +#define HDMI_CEC_TIME_SIGNAL_FREE_TIME__SHIFT            7
>>>>> +static inline uint32_t HDMI_CEC_TIME_SIGNAL_FREE_TIME(uint32_t val)
>>>>> +{
>>>>> +    return ((val) << HDMI_CEC_TIME_SIGNAL_FREE_TIME__SHIFT) & 
>>>>> HDMI_CEC_TIME_SIGNAL_FREE_TIME__MASK;
>>>>> +}
>>>>>   #define REG_HDMI_CEC_REFTIMER                    0x000002a8
>>>>> +#define HDMI_CEC_REFTIMER_ENABLE                0x00010000
>>>>
>>>> I think this should come after the REFTIMER field.
>>>>
>>>>> +#define HDMI_CEC_REFTIMER_REFTIMER__MASK            0x0000ffff
>>>>> +#define HDMI_CEC_REFTIMER_REFTIMER__SHIFT            0
>>>>> +static inline uint32_t HDMI_CEC_REFTIMER_REFTIMER(uint32_t val)
>>>>> +{
>>>>> +    return ((val) << HDMI_CEC_REFTIMER_REFTIMER__SHIFT) & 
>>>>> HDMI_CEC_REFTIMER_REFTIMER__MASK;
>>>>> +}
>>>>>   #define REG_HDMI_CEC_RD_DATA                    0x000002ac
>>>>>
>>>>
>>

-- 
With best wishes
Dmitry

