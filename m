Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2F3DF651F4B
	for <lists+devicetree@lfdr.de>; Tue, 20 Dec 2022 11:54:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232021AbiLTKyq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Dec 2022 05:54:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229746AbiLTKyn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Dec 2022 05:54:43 -0500
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7FB3F186CE
        for <devicetree@vger.kernel.org>; Tue, 20 Dec 2022 02:54:41 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id b13so18029573lfo.3
        for <devicetree@vger.kernel.org>; Tue, 20 Dec 2022 02:54:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=F0ytT4haaRKS+4+AS2PJdurU/Qf/a13nitxBHh9cBLs=;
        b=MNeWldNkH/aisAvBoQN+9XmJgLi2MKWpxH3caNhECyQj0gJSkhQFGD1rNToJTjEkSR
         T7CmCqhWY3s7XdfcV5jae5mO2/gP+ibsER5NeGEA6LD8atNXKwXKihH6tFshJcnnyAho
         JDJE0qs5JDLcO/V4sGY019Vin5czcbX+g12WgmxxQKWIXhhYFMxv4EWXVTU8l3eXsVUK
         QBreFv3j+bWt0Sv5juILb+U4fvhg6F71neqp8ipG34fdOtaqMJeyEEgZJaICMiUZoq7G
         GbrkwlqqS/9heFJivFgLt88Ie/d6e/+o9IbcifCBF/u7qbYs/hcx2cSIk/muMQGS2qBZ
         UW9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=F0ytT4haaRKS+4+AS2PJdurU/Qf/a13nitxBHh9cBLs=;
        b=2cGAyiMve2w4isKxs0eCp0uWx7MeRS1n/M8AZ89VzKZNQSaeTft5j8wNuVVCxcE86y
         +nCYK90DpQ9Xa01SIKk9L5u6rolZ3fbRIRwcIyqMQErIQIxpWaljyzWf80moXU0FtzrD
         R/t6C50TvCQksCmkpy5Of4L+9/KAfuIes8vwDlVNJrlD8UQhpWJlp0u+zvm5vM2vcAWj
         WVIbl7ZPZ1g1srGIxb8cVZtLzs5FuzkPz063vxmkdwLl/VFrnClPcDImNJv1e9zY8Wug
         x7+5b9JthccJLhMJHSr99J//KAXmd36yIlqdhhVPQM1hmkdMHcY5OYyAhAt3DX2OO8nx
         fduw==
X-Gm-Message-State: ANoB5plnpEQFJ6SOFa6RnDEWOQDvspd+S78EdHOvPaRxhhYiwbo3VG6Y
        k6OxN0UAeqEbCGwL4FIwHVCdmw==
X-Google-Smtp-Source: AA0mqf6iPj+SI+zpVr4GGyQp8KSkc6m6aLEeHQgVs1O3HWcL0nKvcGb5wj1hWeZr8EK2QcmA9HAh/w==
X-Received: by 2002:a05:6512:2286:b0:4b5:5bcc:cbcd with SMTP id f6-20020a056512228600b004b55bcccbcdmr16970972lfu.0.1671533679932;
        Tue, 20 Dec 2022 02:54:39 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id r21-20020ac24d15000000b004b5853f0fc6sm1401292lfi.246.2022.12.20.02.54.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Dec 2022 02:54:39 -0800 (PST)
Message-ID: <b7dbf45f-8707-7e4c-63ec-c42a299803aa@linaro.org>
Date:   Tue, 20 Dec 2022 11:54:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v2 1/2] dt-bindings: iio: adc: ep93xx: Add
 cirrus,ep9301-adc description
Content-Language: en-US
To:     Alexander Sverdlin <alexander.sverdlin@gmail.com>,
        linux-iio@vger.kernel.org
Cc:     Hartley Sweeten <hsweeten@visionengravers.com>,
        Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221219173618.1030415-1-alexander.sverdlin@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221219173618.1030415-1-alexander.sverdlin@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/12/2022 18:36, Alexander Sverdlin wrote:
> Add device tree bindings for Cirrus Logic EP9301/EP9302 internal SoCs' ADC
> block.
> 
> Signed-off-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>
> ---
> Changelog:
> v2: removed clock-names property, soc node and include as Krzysztof suggested
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

