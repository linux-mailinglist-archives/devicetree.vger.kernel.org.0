Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 24AD66550AE
	for <lists+devicetree@lfdr.de>; Fri, 23 Dec 2022 14:05:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235627AbiLWNFR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Dec 2022 08:05:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60380 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229959AbiLWNFQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Dec 2022 08:05:16 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E13BA120B2
        for <devicetree@vger.kernel.org>; Fri, 23 Dec 2022 05:05:14 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id p36so7006286lfa.12
        for <devicetree@vger.kernel.org>; Fri, 23 Dec 2022 05:05:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pWkDm8VTi/aNMVKq2clYzkYTUV3hCRYUmPeGWBXD2Cs=;
        b=m1pfSUtEhjRLBEA7QtyYfeIZaEgkdpYEwqvmODKZ4G2Kd2grdJvspvZ08SSYM+c8K4
         n3sPYDpMUMaI2ARGsyxCwdlFlZbuMfUWYSTMswbd408wXMitmg73ZIm5wzJuCxQwIm3P
         OpwNM2ZeyFnD6o7JYUzUop8N4g4QJbCbcBrkwPozU1gxkS6KKmR6M/RLZmnPPupoEmIR
         wZch3mFYZRQ/klmYi5t16ragodC/INnmM+LJx4nku0VVRCwh0z/CTuFfEnTwKEH1w3TB
         5IykP4Zk8Ap8rSRSGnHZDQfa1o9K1qDDYId6xk0b8GDcAqoEQce9bAdfNQ2OVd6ot540
         3N1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pWkDm8VTi/aNMVKq2clYzkYTUV3hCRYUmPeGWBXD2Cs=;
        b=dX5botGxwiCNDJ5tVXcb979Elc1J86J1yhGujhm5At2v5ZWci4pa5T238vSRh663hr
         /x/zKivAs4sM5cUcdimaoLi3LyDz5GXNsldQbZ9fQ9LwErAULMXJX6+rubEo1vCl0xdP
         4HBVWEB4I0RSVpWd3RjNuVd0PI1zOsAYNae7YUHh5MAhI/l/OHIw1nv+1Rj8WFD1lyc7
         q0+x2kzSV7Hv94XYByXAEkFwFRKBL3zdLA5v14cgaikhHmvMq6xWszLAOQY15NUEcNP2
         ljO8QjEFXxpme/KaLROHR8fgLXBsOSNUZP2zj7ZNhHD/I+rMWXLwQK/djZRAgr7tJ83x
         hPTg==
X-Gm-Message-State: AFqh2kp0A+z8vCXVsUsMj5GOJY3CrcCgFlh5M9qcxv1NhEkndOHB9Gyf
        pKAC9Au0pFG6xKgBHy8bKnA3bQ==
X-Google-Smtp-Source: AMrXdXs7YXJfnDOBBzOONIhqj399EIgroVq3lLIHbP/jmDK4X7FMXGVo1nOIqwuR5/AVMC7XbAUuxw==
X-Received: by 2002:ac2:43cf:0:b0:4b5:aa85:3874 with SMTP id u15-20020ac243cf000000b004b5aa853874mr2969976lfl.68.1671800713284;
        Fri, 23 Dec 2022 05:05:13 -0800 (PST)
Received: from [192.168.1.101] (abyl184.neoplus.adsl.tpnet.pl. [83.9.31.184])
        by smtp.gmail.com with ESMTPSA id e11-20020ac2546b000000b004b5478d8222sm514379lfn.184.2022.12.23.05.05.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Dec 2022 05:05:12 -0800 (PST)
Message-ID: <1fb41bd1-815e-d82a-ccff-97e88a5707ae@linaro.org>
Date:   Fri, 23 Dec 2022 14:05:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v3 4/7] arm64: dts: qcom: sc8280xp: add missing i2c nodes
Content-Language: en-US
To:     Johan Hovold <johan@kernel.org>
Cc:     Brian Masney <bmasney@redhat.com>, andersson@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, quic_shazhuss@quicinc.com,
        robh+dt@kernel.org, johan+linaro@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ahalaney@redhat.com,
        echanude@redhat.com
References: <20221220192854.521647-1-bmasney@redhat.com>
 <20221220192854.521647-5-bmasney@redhat.com>
 <Y6WEzkcP31S2JGrL@hovoldconsulting.com>
 <80ef7460-2c92-1636-96c7-c91b7d5c62e6@linaro.org>
 <Y6Wnh+tXPhF6aC1b@hovoldconsulting.com>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <Y6Wnh+tXPhF6aC1b@hovoldconsulting.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 23.12.2022 14:05, Johan Hovold wrote:
> On Fri, Dec 23, 2022 at 01:42:32PM +0100, Konrad Dybcio wrote:
>> On 23.12.2022 11:37, Johan Hovold wrote:
>  
>>>> +			i2c16: i2c@880000 {
>>>> +				compatible = "qcom,geni-i2c";
>>>> +				reg = <0 0x00880000 0 0x4000>;
>>>> +				clocks = <&gcc GCC_QUPV3_WRAP2_S0_CLK>;
>>>> +				clock-names = "se";
>>>> +				interrupts = <GIC_SPI 373 IRQ_TYPE_LEVEL_HIGH>;
>>>> +				#address-cells = <1>;
>>>> +				#size-cells = <0>;
>>>
>>> I'm aware that the two current i2c nodes has these two properties here
>>> in the middle, but would you mind moving '#address-cells' and
>>> '#size-cells' after 'reg' instead where I'd expect them to be?
> 
>> Hm.. we've been sticking them somewhere near the end for the longest
>> time for every bus-like, or generally "i have childen" type node..
>> I see it's a rather mixed bag in non-qcom SoCs, people just seem to
>> put it wherever they please.. The dt spec doesn't seem to mention any
>> preference fwiw.
> 
> The rationale for placing them under 'reg' is that you keep the
> address-related properties together (e.g. 'reg', '#address-cells',
> '#size-cells' and 'ranges').
Okay, I see the point.

Konrad
> 
> Johan
