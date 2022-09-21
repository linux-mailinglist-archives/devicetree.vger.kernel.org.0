Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CAB435BF7DA
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 09:39:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229596AbiIUHjB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 03:39:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59118 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230213AbiIUHi6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 03:38:58 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A4E0E844CD
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 00:38:56 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id z25so7823248lfr.2
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 00:38:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=tKyW+HZv2hHL14sibSU7htBGflXZun3m7MZ1hGhHr3U=;
        b=TFgf7Fo8R/QmGLNmiI/kCU3fRHuqJ6fqDumRwasgk+9HrMOKVGNrJmJulNcdrrNh44
         oEABKcV7+4h9J4yXpGk6PzC32AdJtamsi6vY1g17+2/ZXhGOqNnoGx57ly67/HAHlyI5
         YByBuAdtigIF1Yc4gij1G++tPK7hSkhLZ9JXmc3Uaw+vOEtuvyaRE0h3FmXb4YBzqaWD
         BCGNET9MjBMogCojTkuIGiFj/K8vW9zm57YMFT/hcVQrgOGA0wS3ewFh1ZOOpCmfZCMf
         bZZGCakQu/8sk4MnFLzodxCMhEUYJPPDwEhTiDvarRv5kc5rC2xku3MZesv9lyIIGzwb
         XfEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=tKyW+HZv2hHL14sibSU7htBGflXZun3m7MZ1hGhHr3U=;
        b=yvtfDcSBKr4dyEmURFOYO7/PvEa+A6f7VCAst66TwuaQj+TM6wIj3Cce539ksUZZEs
         L8aEIBhkS6WJYr/IqUqioa8N/ZkDBnl6gaI4HDgZHHG7fkuzmZVmZlgU7FY4vaYK/tSz
         q1jgAB6CrsIv/1WCyPWCXBh9qCV709Hs5pmnaegREKoqzPCQdaOOB+5mkDWUpnlguqOa
         K5Z74+OyYrd/y0mDFC5+OiXh12vHeocIrwKrc6W/t/q6oDbrh28LdivK2NqlYH2FEhlO
         vPRrPRIFcmXsx94RltZQhcAoWM8asiATj+DLbGvUDjxLAgQf7fn6siIIBbra+4jn3H5U
         X2pw==
X-Gm-Message-State: ACrzQf3mpOk+NWQEGP0yFKhq4iFE8EUWV1x+fXn0WIL9kD1BGp7bLwJt
        4fm7Ov00pFh0fFahzYC2VDWvXw==
X-Google-Smtp-Source: AMsMyM4At4Vjc4EcdI6Wln06JX5aezsTXIdrLbB3KIShxuAhMRlje7wbMEQdH4wIztqA6I7NLLEb+g==
X-Received: by 2002:ac2:5cc7:0:b0:497:a835:48c9 with SMTP id f7-20020ac25cc7000000b00497a83548c9mr9011912lfq.62.1663745934973;
        Wed, 21 Sep 2022 00:38:54 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id bg33-20020a05651c0ba100b00261beb471d1sm312971ljb.121.2022.09.21.00.38.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Sep 2022 00:38:54 -0700 (PDT)
Message-ID: <e24ceba1-02b2-88c5-d459-9151a0567eed@linaro.org>
Date:   Wed, 21 Sep 2022 09:38:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v2 2/2] regulator: qcom-rpmh: add pm660 and pm660l pmics
Content-Language: en-US
To:     Richard Acayan <mailingradian@gmail.com>,
        linux-arm-msm@vger.kernel.org
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org
References: <20220920223331.150635-1-mailingradian@gmail.com>
 <20220920223331.150635-3-mailingradian@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220920223331.150635-3-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/09/2022 00:33, Richard Acayan wrote:
> The SDM630 and SDM660 both use RPM (not RPMh) for managing the PM660 and
> PM660L. The SDM670 uses RPMh to manage them as PMIC 4s. To support the
> SDM670, add the PM660 and PM660L to the RPMh regulator driver.
> 
> Link: https://android.googlesource.com/kernel/msm/+/58064f13c0a436a82c35f2e3b5a122d874ae5846%5E%21/#F0
> Link: https://android.googlesource.com/kernel/msm/+/f676d3d24f9d802bfe63369167c4a8cc162b8950%5E%21/#F3
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
