Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A35B6640305
	for <lists+devicetree@lfdr.de>; Fri,  2 Dec 2022 10:16:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232922AbiLBJQI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Dec 2022 04:16:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41416 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232364AbiLBJQG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Dec 2022 04:16:06 -0500
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C40FCBA603
        for <devicetree@vger.kernel.org>; Fri,  2 Dec 2022 01:16:05 -0800 (PST)
Received: by mail-lj1-x22d.google.com with SMTP id x11so4736606ljh.7
        for <devicetree@vger.kernel.org>; Fri, 02 Dec 2022 01:16:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5CowaN3X6aGP8v74WeJ8QtN6vffRRQBWMLPAXH0CyvE=;
        b=Ktv15+PpUliBl+oCdKJqDihRTzd/1In4m4mlzDewigsAlPF51IPl3yV4Nv49FMtGgQ
         x8T/7v0YV8RLq5Q6Aq+gwh5eWb6c3iItj6a1SB5t4Y0UcAjEZAZIIc5DfaH0lauPgC7j
         Q5difBUIVIPIoNtR4Q0Z1t0dhQEAcRhvqSEijIbR2r5ub1Xn6Pw9LN4hXl+t5UPyNEEg
         AzM5yM6TCm1vj7pn8p5iodEHf8jqBGoRUx122FYz6F6dtpkYjrn9H0tiCrHJgPgEUgve
         5tg2KphtEuIUYCYfDXTPrqwllY6EJw2WbpQ7Ub0uwKTtHJq/MOXgTulDb5LAn1P2vz8m
         jqjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5CowaN3X6aGP8v74WeJ8QtN6vffRRQBWMLPAXH0CyvE=;
        b=ZQXqn/S9zB1IpQ+sQW7TAIJX70xeyjAu+msdorajTEMkfwrrRkLhi5SxOK+VgKlbds
         HmYkxVFuYQH8dZ91n9KqlzEizoI/CwY/Hnp4tueo1msomjgE/GrcOLxYdR2/3H9SSEPd
         rVl4YPNqsABcXGIXmEDPKlaGXz+M6YPaGoQi4ZguBebRJS/5OFxI3+2bGKjTBfS4mefh
         rNVSceMFJhuVJmGUdjQxj7JJlboOOIZeHL+mlMn2uAv9R65j12OHWfmS2zE7tX5T1avg
         0mreB5Dhez7Ndhst4roQLciEC/tjmRGA3W8e0gRoCHFEWD89sEu1uAoR1k9QeFLaJDOu
         awkw==
X-Gm-Message-State: ANoB5pn76WmVeefTvJqC6PABUyejuTzkjnWvRNMX0cNWOdmq3KPjLdIm
        AbN833R5H+VqS6cZ41b5hBBRSg==
X-Google-Smtp-Source: AA0mqf5QbXg5F5e1micOo+6IIGCMmgzqrPlJorHpya0Fb6JJOdb2tKE7Xq/yImxDz9S3239Dks61sg==
X-Received: by 2002:a2e:918d:0:b0:277:115a:1acb with SMTP id f13-20020a2e918d000000b00277115a1acbmr19478834ljg.350.1669972564180;
        Fri, 02 Dec 2022 01:16:04 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id bn38-20020a05651c17a600b002774e7267a7sm579781ljb.25.2022.12.02.01.16.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Dec 2022 01:16:02 -0800 (PST)
Message-ID: <7c13332c-597c-b52e-4346-75ce59ba94fc@linaro.org>
Date:   Fri, 2 Dec 2022 10:16:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v4 2/2] arm64: dts: qcom: Add base QDU1000/QRU1000 IDP DTs
Content-Language: en-US
To:     Bjorn Andersson <andersson@kernel.org>,
        Melody Olvera <quic_molvera@quicinc.com>
Cc:     Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221118192241.29384-1-quic_molvera@quicinc.com>
 <20221118192241.29384-3-quic_molvera@quicinc.com>
 <20221202033721.4slwz2utw5u6rv7b@builder.lan>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221202033721.4slwz2utw5u6rv7b@builder.lan>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/12/2022 04:37, Bjorn Andersson wrote:
> On Fri, Nov 18, 2022 at 11:22:41AM -0800, Melody Olvera wrote:
>> Add DTs for Qualcomm IDP platforms using the QDU1000 and QRU1000
>> SoCs.
>>
>> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
>> ---


(...)

>> +	vph_pwr: vph-pwr-regulator {
>> +		compatible = "regulator-fixed";
>> +		regulator-name = "vph_pwr";
>> +		regulator-min-microvolt = <3700000>;
>> +		regulator-max-microvolt = <3700000>;
>> +
>> +		regulator-always-on;
>> +		regulator-boot-on;
>> +
>> +		vin-supply = <&ppvar_sys>;
>> +	};
>> +};
>> +
>> +&apps_rsc {
>> +	regulators {
> 
> Seems like this is supposed to match -regulators$, so how about
> pm8150-regulators?

No, it's correct as model numbers should not be used for node names.

https://lore.kernel.org/linux-devicetree/20220926092104.111449-1-krzysztof.kozlowski@linaro.org/

https://lore.kernel.org/all/d13d5638-67b1-218b-c16d-505a389ccc42@quicinc.com/


Best regards,
Krzysztof

