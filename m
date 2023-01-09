Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 933166623A6
	for <lists+devicetree@lfdr.de>; Mon,  9 Jan 2023 12:02:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234365AbjAILB0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Jan 2023 06:01:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236931AbjAILBH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Jan 2023 06:01:07 -0500
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C14F31262A
        for <devicetree@vger.kernel.org>; Mon,  9 Jan 2023 03:01:05 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id cf42so12368079lfb.1
        for <devicetree@vger.kernel.org>; Mon, 09 Jan 2023 03:01:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=H0ToFTU22uw/EU5jzVOt8i4P5/Fma88pMVtWZFLHwWQ=;
        b=Aln5Qw8/kY/8ib8VMSBqVrvgHu3qD7wkkqtYl1LShVfXvfUGRCEIr+hEneOU9A27cf
         LnYP9zsoe25yafwq/JERa0ilnUTWZYhn4zMSRd/LXb1//Cc8H5MO/hmqygnrR5O3/DF+
         wZfu0AQCINThUaBqrCs9aFa7yFP2C3Q2DpttfO6gRmFod8du8H8WjON7DZxg05iahTrF
         l/8aPLgPyFEaL++zZbQ+B8G8iXd8rir8Kp+qZIegpMyM6L2SuAg/8fW8FASjQxl1bHAT
         frDfORkCUjHWhzrhDpIf5gAChz0nRXBKWxl4hxyJmU+w7XqXjILP613iOMtnSHzu9KkF
         RNqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=H0ToFTU22uw/EU5jzVOt8i4P5/Fma88pMVtWZFLHwWQ=;
        b=BZM97xu62JiPq0z7LRO1aw5WXq+DEo/gKOhb2ReP9aWSp4Bqa4X6sTNEj27s2BKEMk
         oK0Vav9ACMr1rtosrd8lxqp8gPSKeNdBxzj+KzLGhGqIHNDxkgPz2sQsK9r2zbzKAqzk
         KCqulXQ40vfUxAnbbL6nbuZQsA1Mha3W9torSYIaqKn/vVGDSiQ/AGKcmWztdBiJ9gqT
         DJkJ3AcPe+rZSsOtUQSCg+xvouR3uq3NRsIvE8WIKmPlhfijdxifSL9aJPSi7rY+m3I0
         lbV9YKadK4KirGRZOA2H84MUoU9eUR8jbj5xP8pYFmpyt2PS8ZDfHPtgOxr9Fb14MPB/
         Dpag==
X-Gm-Message-State: AFqh2kpIZdoPiIbS3ZiZBHEgEg5sPraIhVeJ6W1zir9/heJzbXX8pCSF
        VsrxRttpHpJUKBn1eE+qhwxr5g==
X-Google-Smtp-Source: AMrXdXsqvQTQzi2Ij+HrD4VNoWUSr5i3TvSM1G9ouV4yMtXYu7/YQwbZyggJ93g6wqvGyfHXF4zG+A==
X-Received: by 2002:a05:6512:3b2a:b0:4b5:5efb:7d26 with SMTP id f42-20020a0565123b2a00b004b55efb7d26mr22289735lfv.37.1673262064015;
        Mon, 09 Jan 2023 03:01:04 -0800 (PST)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id v22-20020a056512349600b004b580a526c3sm1551548lfr.295.2023.01.09.03.01.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Jan 2023 03:01:03 -0800 (PST)
Message-ID: <eab688b1-1dd1-88c7-ef23-f660349fe46c@linaro.org>
Date:   Mon, 9 Jan 2023 13:01:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH] arm64: dts: qcom: sdm845: make DP node follow the schema
Content-Language: en-GB
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20230109041728.308725-1-dmitry.baryshkov@linaro.org>
 <5caddeb2-bcea-43fc-ee00-7813f1d8a75f@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <5caddeb2-bcea-43fc-ee00-7813f1d8a75f@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/01/2023 12:38, Krzysztof Kozlowski wrote:
> On 09/01/2023 05:17, Dmitry Baryshkov wrote:
>> Drop the #clock-cells (leftover probably from the times before the DP
>> PHY split) and rename dp-opp-table to just opp-table.
>>
>> Fixes: eaac4e55a6f4 ("arm64: dts: qcom: sdm845: add displayport node")
>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> ---
>>   arch/arm64/boot/dts/qcom/sdm845.dtsi | 3 +--
>>   1 file changed, 1 insertion(+), 2 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
>> index 9e881e19b984..fa62479206ce 100644
>> --- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
>> @@ -4593,7 +4593,6 @@ mdss_dp: displayport-controller@ae90000 {
>>   					 <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK>;
>>   				clock-names = "core_iface", "core_aux", "ctrl_link",
>>   					      "ctrl_link_iface", "stream_pixel";
>> -				#clock-cells = <1>;
>>   				assigned-clocks = <&dispcc DISP_CC_MDSS_DP_LINK_CLK_SRC>,
>>   						  <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK_SRC>;
>>   				assigned-clock-parents = <&dp_phy 0>, <&dp_phy 1>;
>> @@ -4619,7 +4618,7 @@ port@1 {
>>   					};
>>   				};
>>   
>> -				dp_opp_table: dp-opp-table {
>> +				dp_opp_table: opp-table {
> 
> Already done:
> https://patchwork.kernel.org/project/linux-arm-msm/patch/20221225115844.55126-2-krzysztof.kozlowski@linaro.org/
> 
> Please rebase on top of my changes or just drop this part.

Ack, thanks for the pointer.

-- 
With best wishes
Dmitry

