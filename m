Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7EB4C5EEE39
	for <lists+devicetree@lfdr.de>; Thu, 29 Sep 2022 09:01:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234963AbiI2HAf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Sep 2022 03:00:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53360 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234992AbiI2HA2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Sep 2022 03:00:28 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DCFB89AF8F
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 00:00:18 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id p5so498253ljc.13
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 00:00:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=386vlBKDQjGeVA3UyXvp0S8C8SjZLA4HBFBpObVt3X0=;
        b=iDQWWtFc4TYoufGNtl5idwxvcScK9gXnShtoEafVc8eis/UFl7Zv1g3g1J5B6CtmGq
         OBEA6X0b0XY6A+8KBVkZsR/a9s6j8PG6FhJ7uutPLQYb6DqVIqiLO7DVYicJz8Z1g7iJ
         tlZ66Nv2Nqj0/I/XDzKelS36hUFzT/EaKzTvytSoM0hSHxlg1vYYxYbF1vKp8Bw5v1Im
         RJpM5kS9+UBX635n5/d0/MN9ZkXypQlWcAZNqqjekcavhZT1WP3h8BQYTV4kusZKoKyg
         pDVoexaf/MO6eCDox7Bi4eQvNmTy5UCkvWpRnKmsveVWRXbDtfzh3mQHtPv2TMUTngwQ
         Lwfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=386vlBKDQjGeVA3UyXvp0S8C8SjZLA4HBFBpObVt3X0=;
        b=1ycu9HXGgH9JGGEoOQIp4W6RmkGmpR4PinVP1Kz85pA43aade4z+Z5Mk9SkdD/Ikqt
         XmswimcEXasGKYMdNsy5BUtA5jUOfDGQA7ulNcdVPIlowI+u/0Fo0j5enp4eW36HKNru
         mrvS0Il2qHuYTXenDMiSupAq/UDtYNYgo0GTOytjUXZcNPRoDMDXkwcVZguFI+v7068X
         HhT8TlwLp/Ial7jh0eoxBIKvyUXH7r//t7sf8KGD/b89RAkgzrboee/h2LVl8TJC1bPx
         sYxTephtaNOLKlvDIH4GSYjgWu0WMEZTjm/8gHHhgcRhadQbyE7vO3j6yoEhXSD44VFG
         8tgg==
X-Gm-Message-State: ACrzQf1cnCbQ8dcUceqNDdadxpcwrEml17A5+ENnn+6eIVBX4hDhT/y0
        YuyfAWPhhk4EnHCnNg1wNTtsLg==
X-Google-Smtp-Source: AMsMyM6QKX06KtmExcskEX2wYdgSCaBqkRuJ/kZNSLsxyQRCtbIu7RpvR0GEETSMzkuXfxZSMZZtyQ==
X-Received: by 2002:a2e:b8d6:0:b0:26c:4776:ba2e with SMTP id s22-20020a2eb8d6000000b0026c4776ba2emr557550ljp.143.1664434816949;
        Thu, 29 Sep 2022 00:00:16 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id g1-20020a0565123b8100b00497b198987bsm694899lfv.26.2022.09.29.00.00.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Sep 2022 00:00:16 -0700 (PDT)
Message-ID: <9b62594f-7473-9974-8ab3-4c93aae5fa64@linaro.org>
Date:   Thu, 29 Sep 2022 09:00:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v5 2/3] dt-bindings: thermal: add loongson2k thermal
 binding
Content-Language: en-US
To:     Yinbo Zhu <zhuyinbo@loongson.cn>,
        "Rafael J . Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Amit Kucheria <amitk@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     zhanghongchen <zhanghongchen@loongson.cn>,
        Liu Peibao <liupeibao@loongson.cn>
References: <20220928083702.17309-1-zhuyinbo@loongson.cn>
 <20220928083702.17309-2-zhuyinbo@loongson.cn>
 <066b55cf-4a28-89a2-56ab-572590c97c30@linaro.org>
 <9b2f2d43-981d-3ffb-7526-dc3e58a9f367@linaro.org>
 <f0946817-cc2c-449b-d93b-0dd94a0f51f1@loongson.cn>
 <ed762d71-7104-b1ad-009d-51c1a4407472@loongson.cn>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <ed762d71-7104-b1ad-009d-51c1a4407472@loongson.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/09/2022 05:57, Yinbo Zhu wrote:
> 
> 
> 在 2022/9/29 上午11:42, Yinbo Zhu 写道:
>>
>>
>> 在 2022/9/28 下午10:18, Krzysztof Kozlowski 写道:
>>> On 28/09/2022 10:37, Krzysztof Kozlowski wrote:
>>>> On 28/09/2022 10:37, Yinbo Zhu wrote:
>>>>> Add the loongson2k thermal binding with DT schema format using
>>>>> json-schema.
>>>>>
>>>>> Signed-off-by: Yinbo Zhu <zhuyinbo@loongson.cn>
>>>>
>>>> Please add Acked-by/Reviewed-by tags when posting new versions. However,
>>>> there's no need to repost patches *only* to add the tags. The upstream
>>>> maintainer will do that for acks received on the version they apply.
>>>>
>>>> https://elixir.bootlin.com/linux/v5.17/source/Documentation/process/submitting-patches.rst#L540 
>>>>
>>>>
>>>> If a tag was not added on purpose, please state why and what changed.
>>>>
>>>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>>
>>> ... and please test your patches before sending :(
> You said is refer that "reg: [[0, 534779136], [0, 48]] is too long" ?
> Need fix that warning, right?

Yes. You said you tested it but then sent with an error... so it's not
really a testing.

Best regards,
Krzysztof

