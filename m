Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0121E465A23
	for <lists+devicetree@lfdr.de>; Thu,  2 Dec 2021 01:00:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353933AbhLBADa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Dec 2021 19:03:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353930AbhLBAD3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Dec 2021 19:03:29 -0500
Received: from m-r2.th.seeweb.it (m-r2.th.seeweb.it [IPv6:2001:4b7a:2000:18::171])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1538C061574
        for <devicetree@vger.kernel.org>; Wed,  1 Dec 2021 16:00:07 -0800 (PST)
Received: from [192.168.1.101] (83.6.166.111.neoplus.adsl.tpnet.pl [83.6.166.111])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by m-r2.th.seeweb.it (Postfix) with ESMTPSA id 5866B3F35C;
        Thu,  2 Dec 2021 01:00:05 +0100 (CET)
Message-ID: <0b171f2e-4bbc-a54a-7615-87fd4559fee9@somainline.org>
Date:   Thu, 2 Dec 2021 01:00:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Subject: Re: [PATCH 04/16] arm64: dts: qcom: sm8350: Specify clock-frequency
 for arch timer
Content-Language: en-US
To:     Stephen Boyd <sboyd@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht
Cc:     martin.botka@somainline.org,
        angelogioacchino.delregno@somainline.org,
        marijn.suijten@somainline.org, jamipkettunen@somainline.org,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20211114012755.112226-1-konrad.dybcio@somainline.org>
 <20211114012755.112226-4-konrad.dybcio@somainline.org>
 <20211130020536.52D0FC53FC7@smtp.kernel.org>
 <dee30442-8a78-07f3-1fa1-e5922a510182@somainline.org>
 <20211201204543.1286DC53FAD@smtp.kernel.org>
From:   Konrad Dybcio <konrad.dybcio@somainline.org>
In-Reply-To: <20211201204543.1286DC53FAD@smtp.kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On 01.12.2021 21:45, Stephen Boyd wrote:
> Quoting Konrad Dybcio (2021-11-30 11:59:03)
>> On 30/11/2021 03:05, Stephen Boyd wrote:
>>> Quoting Konrad Dybcio (2021-11-13 17:27:43)
>>>> Arch timer runs at 19.2 MHz. Specify the rate in the timer node.
>>>>
>>>> Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>
>>>> ---
>>>>   arch/arm64/boot/dts/qcom/sm8350.dtsi | 1 +
>>>>   1 file changed, 1 insertion(+)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
>>>> index a30ba3193d84..60866a20a55c 100644
>>>> --- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
>>>> +++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
>>>> @@ -2484,5 +2484,6 @@ timer {
>>>>                               <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW)>,
>>>>                               <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW)>,
>>>>                               <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW)>;
>>>> +               clock-frequency = <19200000>;
>>> Does the firmware not set the frequency properly?
>> It does on my device on the current firmware version (it wouldn't really 
>> boot if it didn't, no?),
>>
>> but who knows if it always will, or if it always has been..
>>
>>
>> It's present in downstream too, so I reckon it does not hurt to have it 
>> here too, even
>>
>> for completeness-of-describing-the-machine-properly sake.
>>
> No. We don't want dts files to have this. The property is only there to
> workaround bad firmware that doesn't set the frequency. Please drop this
> patch.

After looking at it again, I see I was indeed wrong, and so was this patch.

Sorry, and green light for dropping..


Konrad

