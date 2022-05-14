Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 16889527227
	for <lists+devicetree@lfdr.de>; Sat, 14 May 2022 16:45:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233449AbiENOpq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 May 2022 10:45:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39250 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233439AbiENOpq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 14 May 2022 10:45:46 -0400
Received: from relay01.th.seeweb.it (relay01.th.seeweb.it [5.144.164.162])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D462410C6
        for <devicetree@vger.kernel.org>; Sat, 14 May 2022 07:45:44 -0700 (PDT)
Received: from [192.168.1.113] (abxh168.neoplus.adsl.tpnet.pl [83.9.1.168])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by m-r1.th.seeweb.it (Postfix) with ESMTPSA id E5D0D2054D;
        Sat, 14 May 2022 16:45:42 +0200 (CEST)
Message-ID: <649d0682-4b35-3c33-8f77-e7849da355c6@somainline.org>
Date:   Sat, 14 May 2022 16:45:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.9.0
Subject: Re: [PATCH v4 02/12] arm64: dts: qcom: sdm660: disable dsi1/dsi1_phy
 by default
From:   Konrad Dybcio <konrad.dybcio@somainline.org>
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20220514141041.3158521-1-dmitry.baryshkov@linaro.org>
 <20220514141041.3158521-3-dmitry.baryshkov@linaro.org>
 <cd3ef558-96f7-47ff-2543-32c2719b4038@somainline.org>
In-Reply-To: <cd3ef558-96f7-47ff-2543-32c2719b4038@somainline.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On 14/05/2022 16:44, Konrad Dybcio wrote:
>
> On 14/05/2022 16:10, Dmitry Baryshkov wrote:
>> Follow the typical practice and keep DSI1/DSI1 PHY disabled by default.
>> They should be enabled in the board DT files. No existing boards use
>> them at this moment.
>>
>> Reviewed-by: Marijn Suijten <marijn.suijten@somainline.org>
>> Reviewed-by: Konrad Dybcio <konrad.dybcio@somainline.org>
>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> ---
>>   arch/arm64/boot/dts/qcom/sdm660.dtsi | 3 +++
>>   1 file changed, 3 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sdm660.dtsi 
>> b/arch/arm64/boot/dts/qcom/sdm660.dtsi
>> index eccf6fde16b4..023b0ac4118c 100644
>> --- a/arch/arm64/boot/dts/qcom/sdm660.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sdm660.dtsi
>> @@ -192,6 +192,8 @@ dsi1: dsi@c996000 {
>>           phys = <&dsi1_phy>;
>>           phy-names = "dsi";
>>   +        status = "disabled";
>> +
>>           ports {
>>               #address-cells = <1>;
>>               #size-cells = <0>;
>> @@ -225,6 +227,7 @@ dsi1_phy: dsi-phy@c996400 {
>>             clocks = <&mmcc MDSS_AHB_CLK>, <&rpmcc RPM_SMD_XO_CLK_SRC>;
>>           clock-names = "iface", "ref";
>> +        status = "disabled";
>>       };
>>   };
>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@somainline.org>
>
>
> Konrad

Sorry, I went too fast and r-b'd this twice.. :P


Konrad

