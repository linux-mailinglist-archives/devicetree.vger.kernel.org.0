Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 18C3F6509B6
	for <lists+devicetree@lfdr.de>; Mon, 19 Dec 2022 11:00:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231542AbiLSKAS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Dec 2022 05:00:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231536AbiLSKAR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Dec 2022 05:00:17 -0500
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F669DF90
        for <devicetree@vger.kernel.org>; Mon, 19 Dec 2022 02:00:16 -0800 (PST)
Received: by mail-lj1-x233.google.com with SMTP id v11so8496622ljk.12
        for <devicetree@vger.kernel.org>; Mon, 19 Dec 2022 02:00:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=VvGsWNXd2sbIuCGTBAb8giI5M4ZbtzdhUaCHxPqguuA=;
        b=vEOsjONH/HBa0Dvt8Wfo0C4jy+8ib/qc9mS3JZXNDkQ/MAV2mwGbr4rHbuNG47dNBR
         CkzLsZSuGXtQjFPTUZi7KoueLzrOCrDJ5RIXmR4a7i0dsavJPLDjOu7AyddLkWF2PK0+
         ORq0wMlmFaaCFyPfVYE0xJv2xbr3QLhtFuSCur8uXNtNH/JH8X7xxifnPybjkFqWD8LN
         D7BIteCcFcn9C+jdjRYysvYACxLQ+mrIU341PMCYjffPabRpBwJrSMmyP/FoNQVDuv/q
         8dV/HLiq+vaiU07PToiFtA2FcCE7TehhGhdzYVsyHkOEhl0K2KKljz8blOplIRzpFl5e
         +E6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VvGsWNXd2sbIuCGTBAb8giI5M4ZbtzdhUaCHxPqguuA=;
        b=4poXjHlTxfXeSb32vbQd3i1mOEIZTumL1kMWqM+8Dbm/JqOfwC8mm7OHlG21ZWl4JF
         TZHxcQzi3HofBdAJutp2A/UFL2uJLNHeM2X1bijAO59jJ8B0bqp0/8G/XKJOduFNNlIb
         xj90LO012jiUcoGulMcH9dmLkVun8BEnqZDKMpzoN0spP7KuRcABLMG6C6jlbDSpyH82
         68W9eCthtMuEi5IbHgDG/QOmZuOPD3i18oqQLbSRlWXaiCjqvrYdK7KVMTxQHVbXfX0O
         n12c1mavNfTdjT5oU6s+RXJ7kV4BGqs6seeuVKbMfdnB1pow0MqY0/SK4J4HzSSW6MGQ
         r6pw==
X-Gm-Message-State: ANoB5pn0bZFsc0Pf8Eo9qNrHoKD0Vznubt4hSTmZgulkG+/sQ4l1bq6q
        vcF8roiD63H9Ks/nQwRdSNrumA==
X-Google-Smtp-Source: AA0mqf40876iPiH31zJn1csjPZ1HWwhK43qAq2eFad2xN1UNE8nyxTJuhE9H1T/IabGOMvEKVGKG/A==
X-Received: by 2002:a2e:a90c:0:b0:26f:db35:2e93 with SMTP id j12-20020a2ea90c000000b0026fdb352e93mr16749818ljq.5.1671444014308;
        Mon, 19 Dec 2022 02:00:14 -0800 (PST)
Received: from [192.168.1.101] (abxh44.neoplus.adsl.tpnet.pl. [83.9.1.44])
        by smtp.gmail.com with ESMTPSA id b16-20020a05651c033000b0026dced9840dsm700690ljp.61.2022.12.19.02.00.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Dec 2022 02:00:13 -0800 (PST)
Message-ID: <b26891a3-f784-a188-e7ef-422dda9ef771@linaro.org>
Date:   Mon, 19 Dec 2022 11:00:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH] arm64: dts: qcom: sm6125-seine: Clean up gpio-keys
 (volume down)
To:     Marijn Suijten <marijn.suijten@somainline.org>,
        phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Martin Botka <martin.botka@somainline.org>,
        Jami Kettunen <jami.kettunen@somainline.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221217100455.52593-1-marijn.suijten@somainline.org>
 <11174eb6-0a9d-7df1-6f06-da4010f76453@linaro.org>
 <20221218101841.mjsmnwtfzbmazfys@SoMainline.org>
Content-Language: en-US
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221218101841.mjsmnwtfzbmazfys@SoMainline.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 18.12.2022 11:18, Marijn Suijten wrote:
> On 2022-12-17 16:04:17, Konrad Dybcio wrote:
>> On 17.12.2022 11:04, Marijn Suijten wrote:
>>> [..]
>>> @@ -270,6 +270,16 @@ &sdhc_1 {
>>>  
>>>  &tlmm {
>>>  	gpio-reserved-ranges = <22 2>, <28 6>;
>>> +
>>> +	gpio_keys_state: gpio-keys-state {
>>> +		key-volume-down-pins {
>> I see no need for defining a wrapper node.
>> The other changes look good!
> 
> I did the same for sm6350-lena, which we should flatten out then too.
> 
> For these uses I'm not sure when it's clearer/better to use:
> 
>     thing@x {
>         pinctrl-0 = <&thing_state>;
>         ...
>     };
> 
>     thing_state: thing-state {
>         specific-pin {
>             ...
>         };
> 
>         other-specific-pin ...
>         ...
>     };
> 
> Or separate out the pins with their own state and instead use:
> 
>     thing@x {
>         pinctrl-0 = <&specific_pin1_state &specific_pin2_state>;
>         ...
>     };
> 
> If I had to guess the former groups related pins together (as we finally
> do now for SDC...) which should all be toggled at once.  In this
> specific gpio-keys case, irrespective of whether it has one or more
> keys, the pins aren't related apart from representing keys, and should
> thus better be individual pinctrl nodes and individually referenced in
> pinctrl-X.
> 
> Did I sympathize that correctly?
I think so.

> 
> (side-note: the SDC pinctrl groups typically get extended with a
>  card-detect pin in board DTS or in some likely-erroneous cases directly
>  in SoC DTSI.  This may also count as unrelated pins being grouped
>  together only because that is how the hardware/DTS node consumes them,
>  but it is rather concise/readable/convenient though...)
8450 has:

pinctrl-0 = <&sdc2_default_state &sdc2_card_det_n>;

which seems like a sane application of what you described.

Konrad
> 
> - Marijn
