Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 874C55F28A3
	for <lists+devicetree@lfdr.de>; Mon,  3 Oct 2022 08:46:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229627AbiJCGqO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Oct 2022 02:46:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57630 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229462AbiJCGqN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Oct 2022 02:46:13 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 215BF32077
        for <devicetree@vger.kernel.org>; Sun,  2 Oct 2022 23:46:12 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id p5so10675201ljc.13
        for <devicetree@vger.kernel.org>; Sun, 02 Oct 2022 23:46:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=GBss2BvV7ncDn+of25u5GesYBMaFx1PDINKixp5pMKQ=;
        b=rzkaZ6gGKlJkRBRLQQgopCIDLehxUIZuoDHUhuLMPLx9y7toK0VW1yeLXFr6qxq5N2
         SNQQV2S1DHwabvbNlGhUFLXtHnkfpLBzwzRx7o9Nga24jt8Ps0yFPkS2kCrEz9s2p+/O
         FRxpZX+XozR3wJYd9Nb/mHfYDno5R4LhpB2IgtkanKDRagtNIdk/2apAL8vJaLC9hOnv
         vITW8NjHu1fe376Q/e+XDlCoAxg2LfwsEePqxdOb9i8MIcP1O127kMYip0Vg1/0S92O1
         tfZ+1ba55UsOMLBom1Z20KeyeTmbdvDA9sqGiP+QrZ+2xT0a7jd2YrMBicvlyVHIcYR/
         o4rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=GBss2BvV7ncDn+of25u5GesYBMaFx1PDINKixp5pMKQ=;
        b=1dCkN0mV90IP6aOP0MvczXWWbG6sA6W9zws1eqLsb9TL0fPYwHT8ne6tgKBdc9gx4I
         EE4VjPODUv0/eD2fPLEeZmESgViqRuuw3pKTOLRs5LqCR5RnttWpuf/MjeZrGWCTnYaC
         a+upkMRTYVhw+D31ZQbjca9LOX0+0FM+Zt9lmRCVV0BAUeiOkR44+s1X6yqQX9ry+FuU
         ZPcFlYmsw9cDVEk+Hb6vDkc+vjySmWUe7C/juAYjNYzUIRGvGUUsCMb0BW2+SLLwiG4c
         q/dednnqCc+bvHyyRSYrdgu4YCW6+4jISFtViWc2sJFIBddI7WmFlu13Zz1Xe/livym7
         XS6w==
X-Gm-Message-State: ACrzQf2uvHbq5sYSuBZrYH6vU10q1I8LBVFtXloUuJi/SOxeuoVLfucu
        xw5QSuYItu3iAeKni41vl8mgpg==
X-Google-Smtp-Source: AMsMyM6VTbrIdbgrlC/jqlj+9Qf8O2sbZGi2mGlLv5ZeU8YFBKgyJMfDrqPekzIAJBH+LU115CeeQg==
X-Received: by 2002:a2e:9c8b:0:b0:26d:d04f:acc9 with SMTP id x11-20020a2e9c8b000000b0026dd04facc9mr1794424lji.347.1664779570538;
        Sun, 02 Oct 2022 23:46:10 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id f5-20020a056512228500b0049c86ca95bfsm1332705lfu.52.2022.10.02.23.46.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 02 Oct 2022 23:46:10 -0700 (PDT)
Message-ID: <4658c7bc-b26f-d22b-73ea-9deb7d29f90f@linaro.org>
Date:   Mon, 3 Oct 2022 08:46:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH 1/2] dt-bindings: soc: qcom: YAML-ify SSBI bindings
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20220930212052.894834-1-dmitry.baryshkov@linaro.org>
 <d1a26c97-75db-5d09-4c4f-77ed4fed1683@linaro.org>
 <CAA8EJpoUtfWFR315jiC8PzPQydM9kT3kQYeqyOav-P9=qZKO2w@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAA8EJpoUtfWFR315jiC8PzPQydM9kT3kQYeqyOav-P9=qZKO2w@mail.gmail.com>
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

On 02/10/2022 15:46, Dmitry Baryshkov wrote:
>>> +    enum:
>>> +      - ssbi
>>> +      - ssbi2
>>> +      - pmic-arbiter
>>> +
>>> +  pmic:
>>> +    type: object
>>
>> This is quite unspecific... Can we make it a ref to some PMICs schemas?
> 
> Yes, I thought about listing all compats, but probably a $ref:
> ../mfd/qcom-pm8xxx.yaml# makes more sense.

Then full path - /schemas/mfd/qcom-....

> 
>>

Best regards,
Krzysztof

