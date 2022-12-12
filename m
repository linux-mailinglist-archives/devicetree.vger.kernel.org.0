Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 504E7649A52
	for <lists+devicetree@lfdr.de>; Mon, 12 Dec 2022 09:48:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231213AbiLLIsd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Dec 2022 03:48:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56744 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231524AbiLLIsc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Dec 2022 03:48:32 -0500
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C8C9E0C4
        for <devicetree@vger.kernel.org>; Mon, 12 Dec 2022 00:48:30 -0800 (PST)
Received: by mail-lf1-x132.google.com with SMTP id cf42so17421000lfb.1
        for <devicetree@vger.kernel.org>; Mon, 12 Dec 2022 00:48:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=McWLAbiWx9EGavkST5tPBJkjslGPyy5JJT1sS66lkrc=;
        b=yw1soTR3eNoJeK6G4Nxj3tt/u1brSadf7TQ8/L1v8irqzZUcQgy5fsvbXNOA4UTh86
         i6C17yXhCn6c3iMCXo031/raTvGe+ym8uSWcBt5a+GWWWRDukwlzy+kvYsAcwv1r1VQP
         5Y9af8NZEOeI09smYFP0XnC1QRSssvmZTSJaOq3iPfs38KSZqtaYIlQXFtxn3YEviqKT
         iV5PSE1ByoUwj7/CA3zIiEDCGnCRWYVSRe1aMQR/HRsin/6UePnLir1ooFuo3tga/0+r
         Bm8oHT+9pK1e6qVCgNOmIFtiYqDTSVNLbOR3V1bECZoLRCA5WYjlZUOB7rN/eOFwXOMD
         5z2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=McWLAbiWx9EGavkST5tPBJkjslGPyy5JJT1sS66lkrc=;
        b=l1tcrmOhbUQlj2KzZVQWYMTrY1xkcwawmu6i+pBqZ2ETv/AhD+1xe4vvtOgYUT/wIb
         rpUiP2gC+3D3cBFfMfgP3S2lwN+7EfGO/oU9z3Gts8mAdndc24tmHdtdQDhFw1ZCZ4d+
         sGO6Y3lOMr6zbFcKBrFXSKNDOLk31vvt8v6jj8TJooQc2UcVAp66lmQwRVAcY66ardc/
         2/HFXMoiliLERjcfH3qlnpPTnGOxtgK0jkWPCVDRm4FgbNl97QlTG/xLqI4ohoqoOF7C
         YHswBMg1JKNyDpS1J1871BycSxwW5kEiZEp7f2veylqduZ+Je0VPWhyxLt7ev81flPZ+
         ujNQ==
X-Gm-Message-State: ANoB5pn7xUamdpUDUorCa0kl9vbrO17YbhwmYGzcTpp0UUFFta5WYeTW
        UKeb8OBmIPtGqeWz7MKVAzcaLg==
X-Google-Smtp-Source: AA0mqf7er3Sp7wf4I5oY705f4HD5tE4QhtM3l0kUAYfPKwEVgmRgeFfNKU0dGLLA1d1sEXdkFl8d8Q==
X-Received: by 2002:a05:6512:1108:b0:4b5:5ca8:93bc with SMTP id l8-20020a056512110800b004b55ca893bcmr4806140lfg.23.1670834908485;
        Mon, 12 Dec 2022 00:48:28 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id c16-20020a056512075000b004a47e7b91c4sm1554307lfs.195.2022.12.12.00.48.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Dec 2022 00:48:27 -0800 (PST)
Message-ID: <0bc1eba8-bc26-0bdb-16bf-78160c27c57b@linaro.org>
Date:   Mon, 12 Dec 2022 09:48:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [RFC PATCH] arm64: dts: qcom: Use labels with generic node names
 for ADC channels
Content-Language: en-US
To:     Marijn Suijten <marijn.suijten@somainline.org>,
        phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Martin Botka <martin.botka@somainline.org>,
        Jami Kettunen <jami.kettunen@somainline.org>,
        Jonathan Cameron <jic23@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221209215308.1781047-1-marijn.suijten@somainline.org>
 <3d5b29f3-8d8d-93a7-a485-5261e2d8891d@linaro.org>
 <20221210165434.3hhen5mgtvflghks@SoMainline.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221210165434.3hhen5mgtvflghks@SoMainline.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/12/2022 17:54, Marijn Suijten wrote:
> On 2022-12-10 12:02:03, Krzysztof Kozlowski wrote:
>> On 09/12/2022 22:53, Marijn Suijten wrote:
>>> As discussed in [1] the DT should use labels to describe ADC
>>> channels, with generic node names, since the IIO drivers now
>>> moved to the fwnode API where node names include the `@xx`
>>> address suffix.
>>> 
>>> Especially for the ADC5 driver that uses extend_name - which
>>> cannot be removed for compatibility reasons - this results in
>>> sysfs files with the @xx name that wasn't previously present, and
>>> leads to an unpleasant file-browsing experience.
>>> 
>>> Also remove all the unused channel labels in pm660.dtsi.
>>> 
>>> [1]:
>>> https://lore.kernel.org/linux-arm-msm/20221106193018.270106-1-marijn.suijten@somainline.org/T/#u
>>>
>>>
>>> 
Signed-off-by: Marijn Suijten <marijn.suijten@somainline.org>
>> 
>> The talk was in context of bindings, not about changing all
>> existing users thus affecting DTS.
> 
> And as a consequence, DTS.  The already-merged transition from OF to 
> fwnode resulted in `@xx` to be included in the ADC channel name - and
> in the case of ADC5 even in sysfs filenames - so this seems like a 
> necessary change to make.
> 
> At the very least I would have changed the bindings submitted or 
> co-authored /by myself/ since I initially decided to rely on this
> (now obviously) wrong behaviour, and should have used labels from the
> get go.
> 
>> What's more, to me "skin-temp-thermistor" is quite generic name,
>> maybe "thermistor" would be more and reflects the purpose of the
>> node, so it was more or less fine.
> 
> Are you suggesting to not use "adc-chan", but "thermistor" as node
> name (and still use skin_temp as label)?

No, I am just saying that some of the names were correct, so the
reasoning in commit msg is not entirely accurate.

> Or to keep the fully-written-out "thermistor" word in the label?

No, I don't refer to labels. Labels don't matter, they are being removed
entirely during DTS build.

> 
>> Anyway I am against such changes without expressing it in the
>> bindings.
> 
> As expressed in [1] I suggested and am all for locking this change
> in via bindings, and you are right to expect that to have gone paired
> with this patch.

Yes, I expect such changes to have both binding and DTS change together.

> 
> I'll submit that as the leading patch to this in v2, with the
> wildcard pattern changed to adc-chan (or something else pending the
> discussion above), and should I then also require the label property
> via `label: true`?

I don't think label is required.

Best regards,
Krzysztof

