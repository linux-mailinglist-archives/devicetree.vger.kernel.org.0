Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3878D6F7199
	for <lists+devicetree@lfdr.de>; Thu,  4 May 2023 19:53:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229864AbjEDRxd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 May 2023 13:53:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229733AbjEDRxc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 May 2023 13:53:32 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C1686181
        for <devicetree@vger.kernel.org>; Thu,  4 May 2023 10:53:29 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-4f11d267d8bso918167e87.2
        for <devicetree@vger.kernel.org>; Thu, 04 May 2023 10:53:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683222807; x=1685814807;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bGWBY1EvDvANzNRRgwGxSmKWI6IUXnWqKsKUclR7gkQ=;
        b=O7tJapyRA5EEcqABi7Nh/CClOsJA/wnxeZdzgLxx9xd3J7V0pUtimZUq1IDgyoieoe
         nDRBJaUwlDmSdXpZ89/eAWAV6O72vWgi9CKcIzyyBm+EIrbDLhav1JVOCyIB3qOQbabI
         +xT96KqZlLgEri0fessiDW9CQx+/xw1sXsb8hIuyjrIcU4pNXX9tDuPVpypnOVdEqqXP
         d5BmNdUvgUFUVC6CCbijPiMsCyR1cP9/ZW9tbdSW+e9OSvpPE3R48hzV8NK+NhxKs6bt
         7jQ6r5zJ4pOzpkaFaV76Lw+7CxHTKNvShqnIN2Y3TDGoE1DqROw8GAd/ojuo+b7N5IHK
         wkFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683222807; x=1685814807;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bGWBY1EvDvANzNRRgwGxSmKWI6IUXnWqKsKUclR7gkQ=;
        b=gp+wJaYny0uetAOFYjIpja70EPWqLNwRtTx3trcDKsqQJWfkYtrt963QHiW6iMkEQM
         2IzvR1Hk8f8A27Tjchi4naSFyaRSmDSbYNBbRYjG+FI2Gd0C8rkdfPjkTE6emmYi9e3h
         18vz3StuSlC54T1cTqZefxs7pzplhdENzUhjfFd+7x9vuxAqf0IjB+piE6RFaNVoS4n7
         zEwsDKymwrt1ccWutVBv78w+13mHapHU90y0v1MQOKKifs1d9tV2bAlioJWa/b3lTI4N
         LJ3a2/B89YULBPc4i7zkfMBmtMRzb7+RYeF4EoqTOs3XSbjC3u9YbhgI0TVr2Dij9LSe
         MyaA==
X-Gm-Message-State: AC+VfDw8WODtSZsH+CKDHl4/wG/BPd0i0beIktDw7WL2gSFA4MmWhkDQ
        AQzvI4XPriTT1IrHlvnklqWH+w==
X-Google-Smtp-Source: ACHHUZ4ApDCXmWIWNwbgdjtaqu0LEdo9Ew0BnReh4X/HY9fc/UeOVfK44tMXnjaOD46dvFSSIjcxzA==
X-Received: by 2002:ac2:5fc3:0:b0:4ed:c757:bc3e with SMTP id q3-20020ac25fc3000000b004edc757bc3emr1672464lfg.38.1683222807328;
        Thu, 04 May 2023 10:53:27 -0700 (PDT)
Received: from [192.168.1.101] (abyl248.neoplus.adsl.tpnet.pl. [83.9.31.248])
        by smtp.gmail.com with ESMTPSA id v6-20020ac25586000000b004eff1163c37sm5347448lfg.308.2023.05.04.10.53.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 May 2023 10:53:26 -0700 (PDT)
Message-ID: <fc4caddf-b393-8f27-2217-82bbe300c0f9@linaro.org>
Date:   Thu, 4 May 2023 19:53:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH] arm64: dts: qcom: enable dual ("bonded") DSI mode for
 DB845c
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org,
        Amit Pundir <amit.pundir@linaro.org>
References: <20230504160430.4014206-1-dmitry.baryshkov@linaro.org>
 <723f23b2-c4d8-d688-b261-4198537eefe4@linaro.org>
 <CAA8EJpoHBtxMg559WdG+G=+BEJPiVo4agGEfxCORjWDwMTC5Ow@mail.gmail.com>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <CAA8EJpoHBtxMg559WdG+G=+BEJPiVo4agGEfxCORjWDwMTC5Ow@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
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



On 4.05.2023 19:47, Dmitry Baryshkov wrote:
> On Thu, 4 May 2023 at 20:11, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>>
>>
>>
>> On 4.05.2023 18:04, Dmitry Baryshkov wrote:
>>> Now as both lt9611 and drm/msm drivers were updated to handle the 4k
>>> modes over DSI, enable "bonded" DSI mode on DB845c. This way the board
>>> utilizes both DSI links and thus can support 4k on the HDMI output.
>>>
>>> Cc: Amit Pundir <amit.pundir@linaro.org>
>>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>>> ---
>> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
>>
>> Konrad
>>>  arch/arm64/boot/dts/qcom/sdm845-db845c.dts | 36 ++++++++++++++++++++++
>>>  1 file changed, 36 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
>>> index e14fe9bbb386..4dea2c04b22f 100644
>>> --- a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
>>> +++ b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
>>> @@ -419,6 +419,9 @@ &dsi0 {
>>>       status = "okay";
>> P.S. wanna move status last by chance?
> 
> Not within this patch, it is not relevant to bonded DSI mode.
Of course.

Konrad
> 
>>
>> Konrad
>>>       vdda-supply = <&vreg_l26a_1p2>;
>>>
>>> +     qcom,dual-dsi-mode;
>>> +     qcom,master-dsi;
>>> +
>>>       ports {
>>>               port@1 {
>>>                       endpoint {
>>> @@ -434,6 +437,31 @@ &dsi0_phy {
>>>       vdds-supply = <&vreg_l1a_0p875>;
>>>  };
>>>
>>> +&dsi1 {
>>> +     vdda-supply = <&vreg_l26a_1p2>;
>>> +
>>> +     qcom,dual-dsi-mode;
>>> +
>>> +     /* DSI1 is slave, so use DSI0 clocks */
>>> +     assigned-clock-parents = <&dsi0_phy 0>, <&dsi0_phy 1>;
>>> +
>>> +     status = "okay";
>>> +
>>> +     ports {
>>> +             port@1 {
>>> +                     endpoint {
>>> +                             remote-endpoint = <&lt9611_b>;
>>> +                             data-lanes = <0 1 2 3>;
>>> +                     };
>>> +             };
>>> +     };
>>> +};
>>> +
>>> +&dsi1_phy {
>>> +     vdds-supply = <&vreg_l1a_0p875>;
>>> +     status = "okay";
>>> +};
>>> +
>>>  &gcc {
>>>       protected-clocks = <GCC_QSPI_CORE_CLK>,
>>>                          <GCC_QSPI_CORE_CLK_SRC>,
>>> @@ -493,6 +521,14 @@ lt9611_a: endpoint {
>>>                               };
>>>                       };
>>>
>>> +                     port@1 {
>>> +                             reg = <1>;
>>> +
>>> +                             lt9611_b: endpoint {
>>> +                                     remote-endpoint = <&dsi1_out>;
>>> +                             };
>>> +                     };
>>> +
>>>                       port@2 {
>>>                               reg = <2>;
>>>
> 
> 
> 
