Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7675162F548
	for <lists+devicetree@lfdr.de>; Fri, 18 Nov 2022 13:47:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241969AbiKRMr4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Nov 2022 07:47:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56730 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235097AbiKRMry (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Nov 2022 07:47:54 -0500
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D72091501
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 04:47:53 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id l12so8037745lfp.6
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 04:47:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hNREZukHu2EWl9pxNtrKnMGTdTaPArHSEVFgX5pTSBA=;
        b=Mfh5qnu8wwOXZ/SzH/+YCoPeRNG7YHtHpQz4PENBI6WOjlTEfK65GOFFdJIdzBXmVS
         cQCc3SIyzhpYTLAG9BCUTPVGGzMKXpGfHew0Mxzw5lYfaxSFNnWlnPM9nDL/UNpmoAco
         Ujda1R1mHJWcw0le9xAyKp+xKwt0jPkXJwJbKK0RlzTv52xCVu4vcG1DeSEmpzDO2OTF
         MwEuUFvzBJLn1739krAvTZnDtW1t+c9brT7AK6XbxYe9DOOUDvwh9yVcG3IycoJZFceF
         XEpQgbRjiSiNMRzrvE5VmEXVtR1TVJKFe3XnBpo6OHDF7h96s9y09WzjnwrmT/XVex4r
         Jylw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hNREZukHu2EWl9pxNtrKnMGTdTaPArHSEVFgX5pTSBA=;
        b=Xb5orm20hDZjZlkDAIMklLUhcvHaKCbngi5yZKVxYZwdZCODiTaTTw96FbkJjV5CiP
         xP5kHL4Uhh9Dq48XyGSQ9PRg4yW3uSRw0g35tvWoOZnu0RE9OyCSNhZRgy3XwL6vswyV
         kI68D97n9Ar5UN78U0dYJDO//q1hgI56l3yOrt9CLmPcPBDSuakROWZuo6r4nruA+JWv
         mSQe7e7fffFvwohJZ7sdNiQA6i5zlg3dTAL9bUB/fifvdI2gQeohNfqceVoZ69Xh2eCR
         mqBK/OgQxeqiIyOZT5qXpL7d7j7tirg6K2R/Lc3kIRyy4ApFLcVOIeKumjoxsnr9OrIy
         qMGg==
X-Gm-Message-State: ANoB5pkMEPHSVN5QthNwHbHn8XixNk7csDWwgwk6KbM09H3PlvQfgKtW
        1gcBbI3/MhQiAcQ8qHVYZxeRuQ==
X-Google-Smtp-Source: AA0mqf5TGgDQBL7ZsT/FgIIAJdgZEFUFV8vHJHcHUACF18USX8SmXmeBQIkM1RWk72aUP3s8yc6eVA==
X-Received: by 2002:a05:6512:23a5:b0:4a4:7e77:664f with SMTP id c37-20020a05651223a500b004a47e77664fmr2353698lfv.603.1668775671475;
        Fri, 18 Nov 2022 04:47:51 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id i9-20020ac25229000000b004a764f9d653sm645706lfl.242.2022.11.18.04.47.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Nov 2022 04:47:51 -0800 (PST)
Message-ID: <acbe0e45-1abe-eb3f-f818-8511cae676ed@linaro.org>
Date:   Fri, 18 Nov 2022 13:47:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v7 2/3] dt-bindings: mfd: Add DT compatible string
 "google,cros_ec_uart"
Content-Language: en-US
To:     Tzung-Bi Shih <tzungbi@kernel.org>, Lee Jones <lee@kernel.org>
Cc:     Mark Hasemeyer <markhas@chromium.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Raul Rangel <rrangel@chromium.org>,
        Bhanu Prakash Maiya <bhanumaiya@chromium.org>,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        chrome-platform@lists.linux.dev, devicetree@vger.kernel.org
References: <20221117114818.v7.1.If7926fcbad397bc6990dd725690229bed403948c@changeid>
 <20221117114818.v7.2.I9e018ecb8bdf341648cb64417085978ff0d22a46@changeid>
 <Y3cboMlFTRzSJyQ8@google.com> <Y3dJYXCngi1p28HO@google.com>
 <Y3dOF3IQ/S5NCnR+@google.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Y3dOF3IQ/S5NCnR+@google.com>
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

On 18/11/2022 10:19, Tzung-Bi Shih wrote:
> On Fri, Nov 18, 2022 at 08:59:13AM +0000, Lee Jones wrote:
>> On Fri, 18 Nov 2022, Tzung-Bi Shih wrote:
>>
>>> On Thu, Nov 17, 2022 at 11:48:47AM -0700, Mark Hasemeyer wrote:
>>>> Add DT compatible string in
>>>> Documentation/devicetree/bindings/mfd/cros_ec.txt
>>>
>>> The patch doesn't apply.  Please rebase it.
>>
>> Were you actually trying to apply the patch, or just testing?
> 
> Was trying to apply the patch to my local Linux tree (for-next) for
> reading the series.

Are you sure then you choose correct base? Because with instructions
"please rebase" you actually could encourage to rebase it on incorrect
base...

Best regards,
Krzysztof

