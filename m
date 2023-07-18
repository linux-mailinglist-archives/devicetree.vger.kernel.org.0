Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EC5DA757AF5
	for <lists+devicetree@lfdr.de>; Tue, 18 Jul 2023 13:54:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231253AbjGRLyL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jul 2023 07:54:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57932 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230253AbjGRLyK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Jul 2023 07:54:10 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D3D01AC
        for <devicetree@vger.kernel.org>; Tue, 18 Jul 2023 04:54:09 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-51e2a6a3768so8012824a12.0
        for <devicetree@vger.kernel.org>; Tue, 18 Jul 2023 04:54:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689681248; x=1692273248;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZDvfCq2rYjVFo4n3JaAZGwBu1O0j5CMRvxTlhF+phBE=;
        b=leb66+CLlHF97LLt85yV4SxY9TCEqgEUzNiJkcQh+ihcyBQvwr6uX7ola/6Va4rWOS
         8x19UvwnxZS53+PVzqyopBZ+2h+GmV15aX5TZ3fAJfUgukyZFWlxcEKowxtAWMHGLNdZ
         Pl7lwbkHzCOHYnZdKuYEFQG5jwABP23ZlGaj3kJVuHPorvxvfOacGUhNtjVIAkhdBBFA
         sM+yAbQ00jBvR2OevMUW5XvG7asOhIjplWejK3gQS+dZM430ilhxncncBU5wmeMazpT3
         vSfyrM1hB5bAOZJ8KXr2KFU2+Fd2dlMLafQKSYG6HisYENb41zP31Tk/sTVJNB9j7PXn
         VX/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689681248; x=1692273248;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZDvfCq2rYjVFo4n3JaAZGwBu1O0j5CMRvxTlhF+phBE=;
        b=X1NuziYMVlhoSikqYGMUzEoVlz2GtALdZJ5B3tbspVvPRv4LiuSKGhJpBz3Tv99/ip
         8Qq24t8/kQewsr+xKEawBu5VTcUlJO+3m+A8WD3KNcmEryOQZ5b340DQfNre0q1sQOAj
         LNXa5kWcTIluLvolmyp1uyVos0O8fjaetd8+HWDRTdr8i2f7cnhPT20X2fAafiLtJ8ho
         CnrSR6FwbelmNHiyGrWKNAE88EobfSInMel2xJ65WE5BeHY2WKYxEVB0ycGtOpGN+ZV4
         w+39MSJYYbNuIZ0N1Q/UrXuZbwznawvHfOSpljIcXVlQXoEJND4HSu97/OK0dV+aak9+
         /bBw==
X-Gm-Message-State: ABy/qLarrZFX8P8/e7toiBrqp8J5LX7HnUnVZcbI6XhgyhBp/zLdJe0z
        BJZLaqRfyx8gUPwjRcdz4U2hjg==
X-Google-Smtp-Source: APBJJlGo95nQJFKL792SHJPaSiWKgXJBaPhwi4GdonpOb/yE6DAQNPoWUsd1OUyOwDJJoiXFMUddtg==
X-Received: by 2002:a05:6402:2048:b0:51e:234:cc51 with SMTP id bc8-20020a056402204800b0051e0234cc51mr13412054edb.17.1689681248020;
        Tue, 18 Jul 2023 04:54:08 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id w5-20020aa7dcc5000000b005217a24addbsm1124462edu.20.2023.07.18.04.54.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jul 2023 04:54:07 -0700 (PDT)
Message-ID: <c674cc0f-087d-3333-65cd-00394aa62d32@linaro.org>
Date:   Tue, 18 Jul 2023 13:54:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v4 02/17] dt-bindings: gpu: Add Imagination Technologies
 PowerVR GPU
Content-Language: en-US
To:     Frank Binns <Frank.Binns@imgtec.com>,
        "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
        Sarah Walker <Sarah.Walker@imgtec.com>
Cc:     "luben.tuikov@amd.com" <luben.tuikov@amd.com>,
        "christian.koenig@amd.com" <christian.koenig@amd.com>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "tzimmermann@suse.de" <tzimmermann@suse.de>,
        "dakr@redhat.com" <dakr@redhat.com>,
        "matthew.brost@intel.com" <matthew.brost@intel.com>,
        "afd@ti.com" <afd@ti.com>, "hns@goldelico.com" <hns@goldelico.com>,
        "conor+dt@kernel.org" <conor+dt@kernel.org>,
        "boris.brezillon@collabora.com" <boris.brezillon@collabora.com>,
        "mripard@kernel.org" <mripard@kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        Donald Robson <Donald.Robson@imgtec.com>,
        "faith.ekstrand@collabora.com" <faith.ekstrand@collabora.com>
References: <20230714142526.111569-1-sarah.walker@imgtec.com>
 <01f0cf88-4e85-0c92-9723-eb9198782d0d@linaro.org>
 <b6a83ff4ba6ac92af2ab573e200cbf0b5b2847f9.camel@imgtec.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <b6a83ff4ba6ac92af2ab573e200cbf0b5b2847f9.camel@imgtec.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/07/2023 13:47, Frank Binns wrote:
> Hi Krzysztof,
> 
> On Tue, 2023-07-18 at 08:20 +0200, Krzysztof Kozlowski wrote:
>> On 14/07/2023 16:25, Sarah Walker wrote:
>>> Add the device tree binding documentation for the Series AXE GPU used in
>>> TI AM62 SoCs.
>>>
>>
>> ...
>>
>>> +
>>> +additionalProperties: false
>>> +
>>> +examples:
>>> +  - |
>>> +    #include <dt-bindings/interrupt-controller/irq.h>
>>> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>>> +
>>> +    gpu: gpu@fd00000 {
>>> +        compatible = "ti,am62-gpu", "img,powervr-seriesaxe";
>>> +        reg = <0x0fd00000 0x20000>;
>>> +        power-domains = <&some_pds 187>;
>>> +        clocks = <&k3_clks 187 0>;
>>> +        clock-names = "core";
>>> +        interrupts = <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
>>> +        interrupt-names = "gpu";
>>
>> Why does it differ from your DTS?
> 
> This is just an oversight on our part. We'll make sure they both match in the
> next version.
> 

Just test your DTS before sending. You would see errors and there is no
need to involve manual reviewing. It is always better to use tools than
reviewers time. Otherwise, please kindly donate your time by helping to
review other patches.

Best regards,
Krzysztof

