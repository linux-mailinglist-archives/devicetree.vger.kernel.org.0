Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D00856B8F14
	for <lists+devicetree@lfdr.de>; Tue, 14 Mar 2023 10:59:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229730AbjCNJ7t (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Mar 2023 05:59:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229709AbjCNJ7r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Mar 2023 05:59:47 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64AA61589D
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 02:59:45 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id br6so1057246lfb.11
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 02:59:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678787983;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gbQPUzNB3ID6pvgwQJH+wME6Ds92/P9woaOtkl2i5u8=;
        b=GqKgGJ20kMDb5o3ZhnHFpC4sl0f61CUq2USW5m3TGTowgmFFbRGSV+Gifp9aBt3nQe
         A490DTAu1kS58JZNJT+zUCcPJCInhpXydDUuim6rOyLmDmt+QgTdtzFTCJpLQCsZ/P9S
         u4JA/MOpMMrJhCbqIypD5LmoJZgnSDXhgXRR5D1m0nLVp4gNHiOoEzzRib9+pdaTmt3p
         piyKQtALFE1HmJbCq1MvvHYXOZbaa+SWjNAonr96szUrHYUcgF2TI6PvbhcRZEvCaFNo
         gb4zE6aGs9Wz/bnE6sg1WuG7FfGcQvdnaIZO27jZ90yf8Tv/EVFXzhR/MfN+8YiGvFx7
         Pn0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678787983;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gbQPUzNB3ID6pvgwQJH+wME6Ds92/P9woaOtkl2i5u8=;
        b=5LqSzSVOX61m2bmdextk7hvIlOk2g98ok66qGE6NZMw53dS6AS50kyO2hJ+TqC1Rxb
         T6yH6PbR8DFERE3h74cV5RjsZ0zpzM1Es3VK3TBQGXEdMBNOBNxUlRDJBYKSJ3OeddQg
         AQ01rXl60u6yP7oxjGsO2YgD8XJ8D1lsg8eqTWndIeYOE1nzpM6UlARgJGKAkfR28QoX
         cguMegBQm4j0fBCwfPIXOkwBZyBp6pcluuglKrC2AqDcgEt5cEFM/cC7E04zBRbOFQUW
         QmlbyVj2+ZQpmcBY3KtC0+wMkh22vYEpZo5WeuB5U2HpcgrPX451XETV6oWNqMjhOATq
         AVYw==
X-Gm-Message-State: AO0yUKW5MAugPkrwY+//JF1hiIBe3caQ2b7Kjj0bQ8w4RpZggsiXy6jM
        3Gk+xRdKo1Woqj6QyZ2QGp+42g==
X-Google-Smtp-Source: AK7set9J0jfti/lMPhcprp1dbInMOH8UTlXpjIv9GivdjQJIaKApf44OJfQEjPvxSP5uynMa96SaWQ==
X-Received: by 2002:a19:740a:0:b0:4cb:2aa:9e58 with SMTP id v10-20020a19740a000000b004cb02aa9e58mr569835lfe.13.1678787983651;
        Tue, 14 Mar 2023 02:59:43 -0700 (PDT)
Received: from [192.168.1.101] (abyj16.neoplus.adsl.tpnet.pl. [83.9.29.16])
        by smtp.gmail.com with ESMTPSA id l13-20020ac2430d000000b004e83fedf354sm332043lfh.122.2023.03.14.02.59.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Mar 2023 02:59:43 -0700 (PDT)
Message-ID: <efff0988-869b-7ee8-17ea-4b82f6a5205a@linaro.org>
Date:   Tue, 14 Mar 2023 10:59:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] arm64: dts: qcom: sa8775p: add symbols to dtb
To:     Prasad Sodagudi <quic_psodagud@quicinc.com>,
        Eric Chanudet <echanude@redhat.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230309233945.1199358-1-echanude@redhat.com>
 <43c11038-91d5-cbfd-7349-06fcd61a0661@linaro.org>
 <1bd61fa7-cd0e-e198-9cee-7485eacbe685@quicinc.com>
Content-Language: en-US
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <1bd61fa7-cd0e-e198-9cee-7485eacbe685@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SORBS_HTTP,RCVD_IN_SORBS_SOCKS,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 14.03.2023 05:48, Prasad Sodagudi wrote:
> 
> 
> On 3/9/2023 3:47 PM, Konrad Dybcio wrote:
>>
>>
>> On 10.03.2023 00:39, Eric Chanudet wrote:
>>> ABL uses the __symbols__ section to process the DTB before passing it
>>> forward. Without it, the bootstrap is interrupted.
>>>
>>> Signed-off-by: Eric Chanudet <echanude@redhat.com>
>>> ---
>> Fix your ABL.
> Hi Konrad,
> 
> Apps boot-loader need __symbols__ for dynamic overlay operation. Qualcomm firmware passes an overlay file to apps boot-loader to overlay some of the nodes based on firmware configuration. Without __symbols__ apps boot-loader is not able to overlay.
Yes/no. There are a plenty of libfdt functions that let you do that,
especially if you know something about the node.

> 
> Qualcomm hypervisor/gunyah would like to overlay arch timer node with always-on property, So adding __symbols__ helps boot-loader to overlay.
For the arch timer, you can simply iterate over the top-level nodes (or
in the worst case scenario, over all nodes which would not take very
long on cortex-a / cortex-x cores) and look for the specific timer
compatible that has been with us for like 10 years at this point and
use libfdt's fdt_add_property without overlays.

> 
> I think, commit text is misleading here and I will request Eric to fix the commit text.
Sort of, but then the design you explained is very error-prone as it's
dependent on the device tree always satisfying your hypervisor's needs.

Konrad
> 
> -Thanks, Prasad
> 
>>
>> Konrad
>>> Depends on initial sa8775p-ride.dts:
>>> https://lore.kernel.org/all/20230214092713.211054-3-brgl@bgdev.pl/
>>>
>>>   arch/arm64/boot/dts/qcom/Makefile | 4 ++++
>>>   1 file changed, 4 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
>>> index b63cd1861e68..72e85ab31d74 100644
>>> --- a/arch/arm64/boot/dts/qcom/Makefile
>>> +++ b/arch/arm64/boot/dts/qcom/Makefile
>>> @@ -1,4 +1,8 @@
>>>   # SPDX-License-Identifier: GPL-2.0
>>> +
>>> +# Enable support for device-tree overlays required on sa8775p-ride.
>>> +DTC_FLAGS_sa8775p-ride := -@
>>> +
>>>   dtb-$(CONFIG_ARCH_QCOM)    += apq8016-sbc.dtb
>>>   dtb-$(CONFIG_ARCH_QCOM)    += apq8094-sony-xperia-kitakami-karin_windy.dtb
>>>   dtb-$(CONFIG_ARCH_QCOM)    += apq8096-db820c.dtb
>>
>>
