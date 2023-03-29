Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BE1016CCEC2
	for <lists+devicetree@lfdr.de>; Wed, 29 Mar 2023 02:27:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229572AbjC2A1t (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Mar 2023 20:27:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59872 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229489AbjC2A1r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Mar 2023 20:27:47 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7489F133
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 17:27:38 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id j11so18007910lfg.13
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 17:27:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680049657;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QxA5vlXgN1kNv4KKHx2xBHjmppFW0+Wm9O2gbx042ZE=;
        b=NeiVau98wu7RHndGOd0JF+1LYkdOfx/AFOzmqHomGn9raJnHMRGTmHmZSxTPw9rMZh
         ES27R/co0ivrMZjpl1TYZmUPsVqeHC0XuV2Gvbmn67qCL38WOMVfHZ6rRcl/4SdN2YLZ
         gR3kJlsW5d0lUAaHcTRPQzjjRF5RULRAuNsERsJmnQFZWRu3qtxcmFNPGGnEc5joDMya
         093ABencCfjd1+KBGKLFjT3ZMGP2sZsHqAAMz5WZEOba6iRaHhq9GQABE79Py9hYB9rj
         TSmhvJhQEq5kij4fowcdIzwaf0sBle1I5MrEWol0YW2jXw1Pp/RoYXR08iHqi3lnXLNA
         Xz2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680049657;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QxA5vlXgN1kNv4KKHx2xBHjmppFW0+Wm9O2gbx042ZE=;
        b=J9AWwMYlY2aUBR3ObWaxbQ67kREjQqLfS5ygemSYu6LwjI9aVP/FR+bYabbb8cU3QL
         /O6V2cIyyp/PdBTMV8BI4H3U5G1Lmf5j4iU+trGcPl1j5cvFNNmThqPH2CXs9i3BapGs
         iS70Q5kOAfSNVygNG5tAXMIAiTtttD2z43o+AtMReiYWeVBtiWkfABXmzOoVlMcwRW++
         y5teBIh9nEQC56grWUzhjVsZh5bZP5xkdT9OfZAIrRto6/WDlBmIcdi4GnjHZeAT+pe3
         zgLzLnLfHWJqCItRSoIjuORL3eAzjjjgqLa8DGR6dkY2XgtJP8vfQIbukLUocD/FWVny
         hy7A==
X-Gm-Message-State: AAQBX9dZpqrfGMNyvuPDHEgh/3RbYsI78e19S6W8+Zj1d1fOoD2jIi3D
        H5AHUsDf3bBGSs1wBd8Yv68Byg==
X-Google-Smtp-Source: AKy350axWh/lfjhHuFZMwUvSRAjcXlK8bpng80XEWoOriLxYLjqGpLB+OiHDdEkjYQllVSa+ktL+wQ==
X-Received: by 2002:a05:6512:218c:b0:4dd:9b6b:6b5b with SMTP id b12-20020a056512218c00b004dd9b6b6b5bmr4411319lft.16.1680049656755;
        Tue, 28 Mar 2023 17:27:36 -0700 (PDT)
Received: from [192.168.1.101] (abxj225.neoplus.adsl.tpnet.pl. [83.9.3.225])
        by smtp.gmail.com with ESMTPSA id f1-20020ac251a1000000b004e95f1c9e7dsm5213418lfk.78.2023.03.28.17.27.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Mar 2023 17:27:35 -0700 (PDT)
Message-ID: <9746792b-fd4a-6808-0c6b-4834ffc9c059@linaro.org>
Date:   Wed, 29 Mar 2023 02:27:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 3/6] arm64: dts: qcom: use main pmk8350.dtsi for sc8280xp
 platform
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org,
        Johan Hovold <johan+linaro@kernel.org>,
        devicetree@vger.kernel.org, Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>, linux-iio@vger.kernel.org
References: <20230329000833.2507594-1-dmitry.baryshkov@linaro.org>
 <20230329000833.2507594-4-dmitry.baryshkov@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230329000833.2507594-4-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 29.03.2023 02:08, Dmitry Baryshkov wrote:
> Employ existing PMK8350_SID and switch sc8280xp-pmics to use
> pmk8350.dtsi to reduce duplication and possible discrepancies.
> 
> For example, this changes sc8280xp platforms to use qcom,pmk8350-pon
> for the pon device compatibility rather than the incorrect
> qcom,pm8998-pon.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
Bit of a loaded patch..

This could probably go like:

1. outer join 8280 on pmk8350 (for feature parity)
2. rename all labels in 8280 to 8350 (for 3.)
3. switch over to the actual 8350 file, remove 8280 (with Fixes:)

[...]

> +#define PMK8350_SID 0
> +#include "pmk8350.dtsi"
> +#undef PMK8350_SID
Not sure if this undef is necessary

With or without all that though, the goal lgtm..

Konrad

>  
> +&spmi_bus {
>  	pmc8280_1: pmic@1 {
>  		compatible = "qcom,pm8350", "qcom,spmi-pmic";
>  		reg = <0x1 SPMI_USID>;
