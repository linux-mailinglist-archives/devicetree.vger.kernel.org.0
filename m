Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EFB9D5EC1C0
	for <lists+devicetree@lfdr.de>; Tue, 27 Sep 2022 13:44:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231684AbiI0Lo4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Sep 2022 07:44:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54302 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231654AbiI0Loy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Sep 2022 07:44:54 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFFB25A883
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 04:44:51 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id o2so15246906lfc.10
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 04:44:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=mR0nC036ORJYt9qJqYLxfoCa1jbn9t2q6hDh/lmZ/t0=;
        b=qQGgufVw6y5jWQFN9d3mDAI57aHv0lCYwOA/fEZzcQQKU1CLBzV/znaU8uy7Q4Aw3v
         TZqlaOZZl07FeB/8xjImbCqf4OIbYKYIbeHIDVj0c9ToL/RQ+mrTlJdNaO8CNIisJB4b
         tWEyoDEuWaYSM2DH5j2wgtA3BMDvEmAFNOR0PASPqMDak0cwvtNxqCqORDjIGMOcO511
         XiB66rpduRzvSKf5WVgx89hXZ/xG3WN+YgIt0lotRKSIXkN7ZoqRX2BGckPFOagQFeVE
         QWjlASRBYFqDeyfLcjoq/sTV/1LESfthtWavYqRBC/KQmcLIkOU2fzQ6JgMoYkRhmGfT
         UlSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=mR0nC036ORJYt9qJqYLxfoCa1jbn9t2q6hDh/lmZ/t0=;
        b=6yGs9RdQcuRg4aRojbGYHsUn6JrP2ft4RXZcyqDcQjDa+VW/CT6fAr1eZxuRzpcQxA
         ZNPp/h4uAjn4sJvRYk9C+b/WYjQrHLBAUmxJJPbEn5IOrv/o47UslrHTGP6nfWXR/TpV
         K7/mh2VIrFFv5iMz8pPof+5p64X7Hgmgplcae/m3ZKzf2YFOSXE6jOxt767u9XcEnvi2
         4Aa4ayuuU6awC3rAkMc3aFt+kPXbyP29sUHEdqCfRyWMkgpfgnHn7T3N3Cdd/rd9a2HO
         dSGJsersvQ5jnvANyHiOEasj7VMI1b9olU7pMDROyihueuyfaX5KSeXSrrTE0hihcDg9
         Zu3A==
X-Gm-Message-State: ACrzQf1olzTOWO3Z5XSPsVsYzl1V1HpmGiZM1EADmJoI4ZxGvRbJlTzz
        uikXxIMAxLex4l6aO5gZXN+oWg==
X-Google-Smtp-Source: AMsMyM4LYGncyuq9RIfsRUfJK+IGpdWskhjBf3k/vUBsZ86ip9zTHVF9u4PrtBFkbQL2dmypooJpvw==
X-Received: by 2002:a05:6512:312a:b0:498:f5d4:52fa with SMTP id p10-20020a056512312a00b00498f5d452famr11493651lfd.311.1664279090254;
        Tue, 27 Sep 2022 04:44:50 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id c23-20020ac25317000000b00492df78f311sm142527lfh.57.2022.09.27.04.44.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Sep 2022 04:44:49 -0700 (PDT)
Message-ID: <a1d0b224-e018-02a2-43c6-95acbab23915@linaro.org>
Date:   Tue, 27 Sep 2022 13:44:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v4 1/2] dt-bindings: mfd: qcom,spmi-pmic: Drop PWM reg
 dependency
Content-Language: en-US
To:     Bryan O'Donoghue <bryan.odonoghue@linaro.org>, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@somainline.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20220828132648.3624126-1-bryan.odonoghue@linaro.org>
 <20220828132648.3624126-2-bryan.odonoghue@linaro.org>
 <3434c098-3a5c-c4d1-28ee-1636f394092e@linaro.org>
 <096ed938-e216-039b-3529-961206fde1ee@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <096ed938-e216-039b-3529-961206fde1ee@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/09/2022 17:59, Bryan O'Donoghue wrote:
> On 26/09/2022 16:15, Krzysztof Kozlowski wrote:
>> On 28/08/2022 15:26, Bryan O'Donoghue wrote:
>>> The PWM node is not a separate device and is expected to be part of parent
>>> SPMI PMIC node, thus it obtains the address space from the parent. One IO
>>> address in "reg" is also not correct description because LPG block maps to
>>> several regions.
>>>
>>> Fixes: 3f5117be9584 ("dt-bindings: mfd: convert to yaml Qualcomm SPMI PMIC")
>>> Suggested-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>>> ---
>>>   Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml | 8 ++++----
>>
>> This still waits for merging... probably because maintainers were not
>> Cced. Bryan, please use scripts/get_maintainers.pl to Cc necessary
>> people. Otherwise your patch won't be applied.
> 
> Maitainers were cc'd
> 
> I have Andy, Bjorn, Rob and yourself on the list here.

And these are not the maintainers who will pick up this patch, so they
are not enough.

> 
> scripts/get_maintainer.pl 
> Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
> 
> Andy Gross <agross@kernel.org> (maintainer:ARM/QUALCOMM SUPPORT)
> Bjorn Andersson <bjorn.andersson@linaro.org> (maintainer:ARM/QUALCOMM 
> SUPPORT)
> Konrad Dybcio <konrad.dybcio@somainline.org> (reviewer:ARM/QUALCOMM SUPPORT)
> Lee Jones <lee@kernel.org> (supporter:MULTIFUNCTION DEVICES (MFD))

MFD patches go via Lee.

Best regards,
Krzysztof

