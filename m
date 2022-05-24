Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 303AD532FF3
	for <lists+devicetree@lfdr.de>; Tue, 24 May 2022 19:59:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234461AbiEXR7T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 May 2022 13:59:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230099AbiEXR7S (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 May 2022 13:59:18 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61A0562137
        for <devicetree@vger.kernel.org>; Tue, 24 May 2022 10:59:17 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id rq11so14805060ejc.4
        for <devicetree@vger.kernel.org>; Tue, 24 May 2022 10:59:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=pO9+5FvH2gC4RB2t7JEHm779XNwPcXe+oKNK7teE6y8=;
        b=ekHWPPF9gjP9Tq65v4Ro6X4Tzl6+F0xcMBDPNsV3DDFZBfcMjdn7xhs2eHivua+IQK
         HFzMCiWtXIc3PyOoDasP+m5y+NVdDzgLQKER45wydviPV6eTlQVAB217SJgWvQ3JRBJ3
         VUvBGXR3gWlhbGZT0iRD+o9L8hG8uagNoUPPnVplbtWdhoX67Dxcm1tWNTCfjQjD5A6P
         uplzCQMPV/1qRu6rcjhPG5rP43ely3OvJjLYpgzaFv/xIJYQYS8LIgBGXc4/inquZI+3
         E57unzyRiKDs4ZZoPEuEqK7uyxHS35U/EN6OAqRL2gUy3MTP+YVDkPHHzU6eKSJNOHv8
         kCew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=pO9+5FvH2gC4RB2t7JEHm779XNwPcXe+oKNK7teE6y8=;
        b=wGZywWzId4RSMYn3ryG1gPkgp/sjZdRlLar8jup856Bi1kemjEzY0uYibCpqqD32FC
         HYpcstkjhUXABX+5rCxl7ozYaCJ96m43H+yLObYOdW+g4bgwkYLJIG6CMw/WGFLVBCsq
         TqpTvv2JiLiZcUZtr+TzEbHOri/hsmxTVTuEGujFlnH0JFtvMQEW79T49bNjkik/ak61
         QU8Y1rBdDPr84/wKE9YkXRjQ0djspV6HC/zD9qOblLoAXaGt4EIugjpwiApp0ZCkfYb+
         kBeaE5/4JSBrsogpUgCQ6DXC3T5VUSB4cs/VhA48qij6+foYk1EQE59fcqsOagGpfFAN
         5acg==
X-Gm-Message-State: AOAM5314GTnmbzXIPYAcvXtLD38qkub4AR2HTOl7TX5NwpFVSm40A6hc
        r9LUH9nwlIqdzUn/1YYYRV578w==
X-Google-Smtp-Source: ABdhPJxWVK2ukINulMs9nwTRbFCFJEPYD/aNeNtg8NzCbY+S+OIDYVBI5sP7NK8vTGuPhYuejIZLcA==
X-Received: by 2002:a17:907:7da3:b0:6f5:2d00:e069 with SMTP id oz35-20020a1709077da300b006f52d00e069mr24451497ejc.743.1653415155919;
        Tue, 24 May 2022 10:59:15 -0700 (PDT)
Received: from [192.168.0.177] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id q1-20020aa7d441000000b0042aae0a4699sm9849134edr.60.2022.05.24.10.59.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 May 2022 10:59:15 -0700 (PDT)
Message-ID: <5e841cdb-ca44-02f9-6c98-3d000b515b6b@linaro.org>
Date:   Tue, 24 May 2022 19:59:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 3/8] dt-bindings: hwmon: Allow specifying channels for
 lm90
Content-Language: en-US
To:     Slawomir Stepien <sst@poczta.fm>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh@kernel.org>
Cc:     linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
        jdelvare@suse.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, przemyslaw.cencner@nokia.com,
        krzysztof.adamski@nokia.com, alexander.sverdlin@nokia.com,
        Slawomir Stepien <slawomir.stepien@nokia.com>
References: <20220520093243.2523749-1-sst@poczta.fm>
 <20220520093243.2523749-4-sst@poczta.fm>
 <3ea92486-0cf9-ce3d-d1b6-7a76f1d5a129@linaro.org>
 <0b84d109-d6be-dfba-99bb-0b7136af875e@roeck-us.net>
 <b5ff0f2c-d741-6dec-c306-b54cb5075ccf@linaro.org>
 <f124cbcb-3fca-3f1c-f47e-730f15c1f074@roeck-us.net>
 <YozHOsSdpWBRNLYt@t480s.localdomain> <YozM0L5uftHOgkjL@t480s.localdomain>
 <Yo0VfVthNdtjIWF+@t480s.localdomain>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Yo0VfVthNdtjIWF+@t480s.localdomain>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/05/2022 19:27, Slawomir Stepien wrote:
>> Well ok, looks like this:
>>
>>       temperature-offset-millicelsius:
>>         description: Temperature offset to be added to or subtracted from remote temperature measurements.
>>         items:
>>           items:

I think this is not an array, so items are not needed.

>>             type: integer

types are instead:
$ref: /schemas/types.yaml#/definitions/int32
but I think it still does not work.

>>             minimum: -128000
>>             maximum: 127000
> 
> This isn't working...from what I've read we cannot just simply overwrite existing schemas.
> 
> Krzysztof, Guenter what I should do? Is there a way to match with uint32-array schema and with
> schema that allows items in array to be below 0 (seems impossible to me)? I've tried a lot of
> combinations today without any luck. Any helpful tips? Thanks!

However this still does not work. I changed in schema:

   # Temperature

   "-celsius$":

-    $ref: "types.yaml#/definitions/uint32-array"

+    $ref: "types.yaml#/definitions/int32-array"


but that does not solve the problem that property is stored as uint32
and parsed like uint32:

    4294967291 is greater than the maximum of 40


Maybe Rob has some idea. Till then, you can skip minimum.

Best regards,
Krzysztof
