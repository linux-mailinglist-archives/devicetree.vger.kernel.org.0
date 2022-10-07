Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6511D5F746E
	for <lists+devicetree@lfdr.de>; Fri,  7 Oct 2022 08:58:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229614AbiJGG6M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Oct 2022 02:58:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40968 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229481AbiJGG6K (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Oct 2022 02:58:10 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6923FDB40
        for <devicetree@vger.kernel.org>; Thu,  6 Oct 2022 23:58:08 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id s10so4674555ljp.5
        for <devicetree@vger.kernel.org>; Thu, 06 Oct 2022 23:58:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=nox5N58PUPNJ5yQ3AV4MMMQoVYs4CGRh4FHi/aYZtq8=;
        b=cmIEcUaEDsgVERCGiwJFsICFmmfj8aGoPKoKJzFg9dKVokuVhnWNsdkJi+jizD9EdW
         J7sMQP+R7NC0xH0YgSqYhSufWYLp233d+K0fYZ/qLsky5/99jpCAdw3wr6+was66hurw
         S/mFnuFYVHg5h/oxryT60QiKLeViTkGx4NlpLs+hI2+x4YnZC68Ho35eaNqgZmgvRrBj
         HfMhVLnvTcxbZt3HCyPcHld9XxBF1iFgW9Zause1Dse3Do7qR9Ckh2byYSo1xFqRcLEj
         LneiL4XERdQlZYTPz7ytGILkLMDTzJhZSyBmbFE1UR87yTRcguSIMMsTQ9xCqtVGfIwf
         Z/8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=nox5N58PUPNJ5yQ3AV4MMMQoVYs4CGRh4FHi/aYZtq8=;
        b=cBQK2rgM5L/7IsY3M/XapuWEIxVCAgbg97CFRhdkp2uEO3yVgffDccLPRb+3h38/5q
         PT0iWVigG9Xkeo1QYkViu5TIMEnKCPi9ClqauUbiz+EgG+IowAebban28LYOC6FwWoq9
         nYOqXYUrW6xropkDPnTF4S3EgZq7PFdWdfVAtVgNh25LGu7GHfaPCHzr3qFOXjzGThDy
         GoOTUw36ChRB6ZY1PAJRfXDVfNq+yP1NzXzsvECWReEcr7FFxmRtgxYiw4ABW7DIkWxI
         4C5D2Q1MqI44gNVfW5zpHCP9ZF0siG46F+Q1mKjUYT5NlLU8hqIUtMp0ObfbYDIBzNVM
         T2fg==
X-Gm-Message-State: ACrzQf0peqTVFNayxN/L8ZWKryNmPFOa7LQt0lIwk3eOV9ofTLlRgbpL
        JmLklBvDwVH8DCP7kvxhHfgQtw==
X-Google-Smtp-Source: AMsMyM6qoiQIAmh1kbEthnONGWlXkdxK6WQpyoTgkWMObI0QiE5aE0pH2esA9hnjH3V2xb61cNcIeQ==
X-Received: by 2002:a05:651c:1a0a:b0:26c:d1e:7b3 with SMTP id by10-20020a05651c1a0a00b0026c0d1e07b3mr1221828ljb.160.1665125887244;
        Thu, 06 Oct 2022 23:58:07 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id j15-20020a056512344f00b0049f9c732858sm168618lfr.254.2022.10.06.23.58.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Oct 2022 23:58:06 -0700 (PDT)
Message-ID: <f66ebd71-3003-aefe-44ad-ef2cc78bf102@linaro.org>
Date:   Fri, 7 Oct 2022 08:58:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH v3 1/2] dt-bindings: it6505: add properties to restrict
 output bandwidth
To:     allen.chen@ite.com.tw
Cc:     Jau-Chih.Tseng@ite.com.tw, Kenneth.Hung@ite.com.tw,
        Hermes.Wu@ite.com.tw, treapking@chromium.org,
        andrzej.hajda@intel.com, narmstrong@baylibre.com,
        robert.foss@linaro.org, Laurent.pinchart@ideasonboard.com,
        jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@linux.ie,
        daniel@ffwll.ch, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221006020444.15823-1-allen.chen@ite.com.tw>
 <20221006020444.15823-2-allen.chen@ite.com.tw>
 <94c660bc-b7eb-1aea-8ae2-0ee7993091fd@linaro.org>
 <7acf5664832f43fbaa684c19415894c7@ite.com.tw>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <7acf5664832f43fbaa684c19415894c7@ite.com.tw>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/10/2022 05:18, allen.chen@ite.com.tw wrote:
> hi
> 
> -----Original Message-----
> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> 
> Sent: Thursday, October 6, 2022 4:17 PM
> To: Allen Chen (陳柏宇) <allen.chen@ite.com.tw>
> Cc: Jau-Chih Tseng (曾昭智) <Jau-Chih.Tseng@ite.com.tw>; Kenneth Hung (洪家倫) <Kenneth.Hung@ite.com.tw>; Hermes Wu (吳佳宏) <Hermes.Wu@ite.com.tw>; Pin-yen Lin <treapking@chromium.org>; Andrzej Hajda <andrzej.hajda@intel.com>; Neil Armstrong <narmstrong@baylibre.com>; Robert Foss <robert.foss@linaro.org>; Laurent Pinchart <Laurent.pinchart@ideasonboard.com>; Jonas Karlman <jonas@kwiboo.se>; Jernej Skrabec <jernej.skrabec@gmail.com>; David Airlie <airlied@linux.ie>; Daniel Vetter <daniel@ffwll.ch>; Rob Herring <robh+dt@kernel.org>; Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>; open list:DRM DRIVERS <dri-devel@lists.freedesktop.org>; open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS <devicetree@vger.kernel.org>; open list <linux-kernel@vger.kernel.org>
> Subject: Re: [PATCH v3 1/2] dt-bindings: it6505: add properties to restrict output bandwidth
> 
> On 06/10/2022 04:04, allen wrote:
>> From: allen chen <allen.chen@ite.com.tw>
>>
>> Add properties to restrict dp output data-lanes and clock.
>>
>> Signed-off-by: Pin-Yen Lin <treapking@chromium.org>
>> Signed-off-by: Allen Chen <allen.chen@ite.com.tw>
>> ---
>>  .../bindings/display/bridge/ite,it6505.yaml          | 12 ++++++++++++
>>  1 file changed, 12 insertions(+)
>>
>> diff --git 
>> a/Documentation/devicetree/bindings/display/bridge/ite,it6505.yaml 
>> b/Documentation/devicetree/bindings/display/bridge/ite,it6505.yaml
>> index 833d11b2303a..f5482a614d05 100644
>> --- a/Documentation/devicetree/bindings/display/bridge/ite,it6505.yaml
>> +++ b/Documentation/devicetree/bindings/display/bridge/ite,it6505.yaml
>> @@ -52,6 +52,16 @@ properties:
>>      maxItems: 1
>>      description: extcon specifier for the Power Delivery
>>  
>> +  ite,dp-output-data-lane-count:
>> +    description: restrict the dp output data-lanes with value of 1-4
> 
> Drop "with value of 1-4" because it is redundant, but instead explain what this property is about. "Restrict output" is not yet enough.
> Restrict the number? Or choose specific lanes? Why it cannot be data-lanes from video-interfaces?
> 
> ==> DP output bandwidth depends on data-lane-count, so the number of output data-lane-count will restrict output bandwidth.
> In this dt-binding we don't have output endpoint, so use another property name to configure.
> If need to use data-lanes, where can we put in this dt-binding?

I see you got review in v2 to rename it, but it still should be the same
property, if it has similar/same meaning. It can be put here. You just
need to define its type or reference other schema (e.g. video-interfaces
if applicable) which defines it.

Best regards,
Krzysztof

