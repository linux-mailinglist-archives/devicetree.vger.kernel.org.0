Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AB568649639
	for <lists+devicetree@lfdr.de>; Sun, 11 Dec 2022 21:27:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230321AbiLKU1t (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 11 Dec 2022 15:27:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230318AbiLKU1r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 11 Dec 2022 15:27:47 -0500
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1949963F9
        for <devicetree@vger.kernel.org>; Sun, 11 Dec 2022 12:27:45 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id bp15so15286895lfb.13
        for <devicetree@vger.kernel.org>; Sun, 11 Dec 2022 12:27:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DgDPGrHDZtjBSUigWKsoWgO/UHXBNax1bBRX5wVgHtQ=;
        b=CIOERC0LC5r2FeXrV+uoT7yyMEU+Oo1SWUskC9ALGOklbmU7WbUq+7bXXnB/sk8i8z
         p9SKlaxPgWSP9RgXfq1xpP86mHUWRm5rt0WNTyF1ss3J0Nuw4kBrpzoDKWOXWcKD/dtX
         G4YgV2Ldn0R9nn5RWluhNzdXu9+tYSDJJuwl7Ig3dPPSJxHpt6eaGpdliPNq1j0R/IE4
         fMP7sdHeHi/knBNA0v+k/AlBBsEhRQMYyuc+CQUXAks1pLzJ5NqhIbb79s8HUH5vC7au
         7EOjHDsmLGIcsC3WBEvWdZI6ccNavJ/Ed86sA+jvoxywijJiy0H5QM8gg/I9YROfYmVh
         6YwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DgDPGrHDZtjBSUigWKsoWgO/UHXBNax1bBRX5wVgHtQ=;
        b=HJxvEg3IJCOip7+9rTwet8nnysptiY39eRtkkateWmiVvSVehKgE1aXbcThWpIg6I8
         FV0giPfiHwU9u/I1Y60YyKqkIVYMFbz0EpiJK+enB3GKmDX0T3/XJV+FNZYzzLLxCZjb
         zj22MRD/yqhx64NRKQldJbDztxOGAn28uomsQY7l0J9ygYSDfw2ivK46cdravwwcSajF
         ihE2UOu1c7CFvzesZFApXTkMf8amAzUpmEuSQH1rX2j03Oq+fLpxYqkI/Jkh5fWXwMfh
         u/6GhR8I9spUFIaf8Kj3kBdjhhWg1CA0VyJh59S9/DperYZsxUHwsypaeQFGqFDU0Iwj
         FYEQ==
X-Gm-Message-State: ANoB5pksNIsjGVrSSKvvh0j6qzX9raBEza9qWJlf6nVfZWXWugPTL2s4
        PL6uCZAJ9XMoMvmb1xU5TIl3Rw==
X-Google-Smtp-Source: AA0mqf5kErham45eK7QALTxPmcZYfDrjQGz0mUyx/EQcgkxqNPhAp3BLEkRjQkieA7QzADoPxwW15g==
X-Received: by 2002:a05:6512:b8c:b0:4b5:7d49:4a05 with SMTP id b12-20020a0565120b8c00b004b57d494a05mr5458120lfv.0.1670790463339;
        Sun, 11 Dec 2022 12:27:43 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id a24-20020a056512201800b004a05837103csm1324227lfb.196.2022.12.11.12.27.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Dec 2022 12:27:42 -0800 (PST)
Message-ID: <a7894637-dee0-35dc-238f-dee222103d0e@linaro.org>
Date:   Sun, 11 Dec 2022 21:27:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v2 1/2] dt-bindings: rtc: m41t80: Convert text schema to
 YAML one
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org
Cc:     Alessandro Zummo <a.zummo@towertech.it>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-rtc@vger.kernel.org
References: <20221211030054.672717-1-marex@denx.de>
 <da4bc2f0-552b-5c8c-f8b2-97e84c5520d2@linaro.org>
 <336cf0b4-d0a7-42b9-5116-ad792b2aceb6@denx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <336cf0b4-d0a7-42b9-5116-ad792b2aceb6@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/12/2022 21:26, Marek Vasut wrote:
>>> diff --git a/Documentation/devicetree/bindings/rtc/st,m41t80.yaml b/Documentation/devicetree/bindings/rtc/st,m41t80.yaml
>>> new file mode 100644
>>> index 0000000000000..9977c8954307e
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/rtc/st,m41t80.yaml
>>> @@ -0,0 +1,73 @@
>>> +# SPDX-License-Identifier: GPL-2.0
>>
>> I missed that one during previous review - why not dual license? I do
>> not see here any text (hardware description) being copied. Is it because
>> of DTS example?
> 
> Copy paste from -- likely --
> Documentation/devicetree/bindings/rtc/rtc-ds1307.yaml:# 
> SPDX-License-Identifier: GPL-2.0
> 
> Would you prefer
> 
> (GPL-2.0-only OR BSD-2-Clause)
> 
> ?


Yes, please.

Best regards,
Krzysztof

