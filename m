Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4E44A5745EC
	for <lists+devicetree@lfdr.de>; Thu, 14 Jul 2022 09:41:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234681AbiGNHlG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jul 2022 03:41:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231246AbiGNHlG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jul 2022 03:41:06 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E0131F63D
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 00:41:05 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id t25so1433290lfg.7
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 00:41:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=HgFqzbnGex/viFGpubqhq0dmXVFonIW0bw0LdRvMvsE=;
        b=OGTPYuUdvmlcQPFyx/Kys+T0o68/AI6USKJuhqgcRdfIKPZ6C502xLBQbmnuv6+GNd
         mgxRDwBlLv0DJsg5GEiC+4SIXv+/wL9hYKCusTv0vpiLtIf8Q/Gk6zRlIeOzWTRuqnaS
         p4AQeE5WpvQbDOOTYHvg0vRFv4OG/2veUz7u62ICUQYzUO7DotDIRhLV2SdT4tZF7Anc
         crDkN08rWDTYmt6r8qkT7YjDRPzO5ZQOGvNr2EBm0udfvfnFV3PTBMmD1Ojo5WKk8lEx
         sWjBvzEl7xaMhv5pW/F3JEPWamnYWyWTjdaCcsY2znAZ1gPfxF5d8gOdi9ni424QV3kT
         z7ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=HgFqzbnGex/viFGpubqhq0dmXVFonIW0bw0LdRvMvsE=;
        b=EB4/mAbDP1fuZwJm1elGBHNNdXm+cAk739+r5QwEjNNwvMFam97Nd6s7ffzFKcLhnK
         Eva9pEB1cLGEcFIzh5TECfvw8fSaErucL5gEw95TpMJ+oEBdY+kyJTHpjI0FtIKrFKy7
         PHP6aTcu93BOGK3WdvvSs9vZfZxMZDR1zzR2OS4mXxLp1SSP1eBOJCSQch9W/Qn5w4jl
         kIFJZvGhGc/OUpVBFIs9AdzxBDGAJddQQsTpxcOufr4apB5NZFY/XpPC/ufmdbIGgSnP
         Up3gZ8e9sinqTX1YJ67dKY858feIIpLXf3VZRyj2Zt20glM7ifqpD6b+TsqknCbOe9Ng
         ZnFw==
X-Gm-Message-State: AJIora/H4YWoquFyxSCDvejw5BtncGPnW332F4rU5Zfmg0YjcgHh/tIs
        hgu9tWWpo3Nsl5JrGasEY59Lnhy/eQ4o4g==
X-Google-Smtp-Source: AGRyM1vUem2jmxH1oSZWWgvjndTc6uWdIU3yhZJH4Ldw9SB3oVGbaxs0KwY0Wq1OLiYV1H7G+pd3jA==
X-Received: by 2002:a05:6512:3503:b0:481:4470:4134 with SMTP id h3-20020a056512350300b0048144704134mr4340287lfs.42.1657784463417;
        Thu, 14 Jul 2022 00:41:03 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id j8-20020a2eb708000000b0025d696f5fe6sm135783ljo.73.2022.07.14.00.41.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 00:41:02 -0700 (PDT)
Message-ID: <50ce334b-4c13-1eb3-0e6e-96c9ccee7e1d@linaro.org>
Date:   Thu, 14 Jul 2022 10:41:02 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 4/4] ARM: dts: qcom: msm8660: add pxo/cxo clocks to the
 GCC node
Content-Language: en-GB
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Andy Gross <agross@kernel.org>, Stephen Boyd <swboyd@chromium.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20220620110739.1598514-1-dmitry.baryshkov@linaro.org>
 <20220620110739.1598514-4-dmitry.baryshkov@linaro.org>
 <Ys85KUGnlXlUI+zE@builder.lan>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <Ys85KUGnlXlUI+zE@builder.lan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/07/2022 00:29, Bjorn Andersson wrote:
> On Mon 20 Jun 06:07 CDT 2022, Dmitry Baryshkov wrote:
> 
>> Add pxo/cxo clocks to the GCC device tree node.
>>
>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> ---
>>   arch/arm/boot/dts/qcom-msm8660.dtsi | 6 ++++--
>>   1 file changed, 4 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/arm/boot/dts/qcom-msm8660.dtsi b/arch/arm/boot/dts/qcom-msm8660.dtsi
>> index 47b97daecef1..61e3ab0ebfd3 100644
>> --- a/arch/arm/boot/dts/qcom-msm8660.dtsi
>> +++ b/arch/arm/boot/dts/qcom-msm8660.dtsi
>> @@ -50,13 +50,13 @@ cpu-pmu {
>>   	};
>>   
>>   	clocks {
>> -		cxo_board {
>> +		cxo_board: cxo_board {
> 
> As requested by Krzysztof, please use clock-output-names to specify the
> name of the clock, and rename the node "cxo-board-clk".

Actually I believe Krzysztof agreed (and acked) this change, as it 
follows the example of existing boards.

> 
> Thanks,
> Bjorn
> 
>>   			compatible = "fixed-clock";
>>   			#clock-cells = <0>;
>>   			clock-frequency = <19200000>;
>>   		};
>>   
>> -		pxo_board {
>> +		pxo_board: pxo_board {
>>   			compatible = "fixed-clock";
>>   			#clock-cells = <0>;
>>   			clock-frequency = <27000000>;
>> @@ -129,6 +129,8 @@ gcc: clock-controller@900000 {
>>   			#power-domain-cells = <1>;
>>   			#reset-cells = <1>;
>>   			reg = <0x900000 0x4000>;
>> +			clocks = <&pxo_board>, <&cxo_board>;
>> +			clock-names = "pxo", "cxo";
>>   		};
>>   
>>   		gsbi6: gsbi@16500000 {
>> -- 
>> 2.35.1
>>


-- 
With best wishes
Dmitry
