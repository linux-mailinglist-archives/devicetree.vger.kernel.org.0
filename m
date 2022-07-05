Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F0F7F566CCE
	for <lists+devicetree@lfdr.de>; Tue,  5 Jul 2022 14:20:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236031AbiGEMUS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Jul 2022 08:20:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236614AbiGEMR5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Jul 2022 08:17:57 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E719193DF
        for <devicetree@vger.kernel.org>; Tue,  5 Jul 2022 05:13:09 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id a11so14255024ljb.5
        for <devicetree@vger.kernel.org>; Tue, 05 Jul 2022 05:13:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language
         :from:to:cc:references:in-reply-to:content-transfer-encoding;
        bh=UeNH2jSWLV7pgX+9k7Jm7Qrd1Rmj1W872ul3so8oKsg=;
        b=z8mFZcu8ol2iXYecvxhFYVi1ZxVvlUsA9LO5AkNvxja+k2FsQDGymo6xlhVwgpfHAa
         IZnKK/XQLW3VNqnYmH1aVoW+TMAqVeQZ8Ia9/maR4izz4q8X9gP7wWoQV8/cjgUC6Q4f
         L/MSlBfpow9PbpLtZWW95HXO/IAIG2VUsZ05RyWvU5mRTJdyezEz6oEvl4M65oogq60W
         Fv6fNRQJNaykpYXU/aBizSMBVCSZRUcDmPoiAF1sAKWeDzwtWem5NJnjOz3Mu0KBhNal
         gPyLFTAAnFxB+R3UjFOQ7gccQ0tXnKh1BvIe8QZiD041AJ8Zj3ZgSVfuuf4f1OTiJvBz
         UVJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:from:to:cc:references:in-reply-to
         :content-transfer-encoding;
        bh=UeNH2jSWLV7pgX+9k7Jm7Qrd1Rmj1W872ul3so8oKsg=;
        b=MCOc5Oref19eVDIlWcW84g58fEZgDAxpc3NU1uUVhZXmt2osKCDlDImYsujF+x0Ha5
         W4crTT7B1vZRxzxxTfPTaZkMVUPPxe/H6g0eFQUnzlArHztoET5QhRqIlC0wxEE1SEag
         JwBjS6Irhxs8HijR+aYP75Dz23PgP+5crIgzVjPW8JUTmbpGt699aKKKFVUWAkh9+Y+N
         e5WxhyMtr92SFITF+0sQWLi52j4EeLrcVOooiLRIVoH74PLHCafWe0PqCkGXGrkr0icO
         DK6KxRxJNM9uKFOtEexDXbKiPr0w8yz+A+OPJ/9rTfxoI6Ajc35C+ULTJ62FJPAlvSHD
         SG1A==
X-Gm-Message-State: AJIora/vuKUqp3tFcxG5w7NnsX2RB6SbHrtoz6YD8n2nOxW6o143sd/L
        78PB/chz3Ch1NiJ4NQuxpzs6zg==
X-Google-Smtp-Source: AGRyM1u4eaLpKZopejR3YzQCSTc3vkTgPfGkiK6QtKH02WQO260Dtam/hZsuQzVtqY6jQ39l776M9w==
X-Received: by 2002:a05:651c:246:b0:25a:3420:735d with SMTP id x6-20020a05651c024600b0025a3420735dmr20556878ljn.515.1657023188027;
        Tue, 05 Jul 2022 05:13:08 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id v13-20020ac2560d000000b0047f8790085csm5673105lfd.71.2022.07.05.05.13.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 05:13:06 -0700 (PDT)
Message-ID: <e5d2d2b9-b346-0481-03be-4a94c87a816f@linaro.org>
Date:   Tue, 5 Jul 2022 14:13:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH] dt-bindings: leds: lp50xx: fix LED children names
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh@kernel.org>
Cc:     Dan Murphy <dmurphy@ti.com>, linux-leds@vger.kernel.org,
        Jacek Anaszewski <jacek.anaszewski@gmail.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>, Pavel Machek <pavel@ucw.cz>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
References: <20220624111325.96478-1-krzysztof.kozlowski@linaro.org>
 <1656091594.405509.146345.nullmailer@robh.at.kernel.org>
 <31f5f441-eba3-4ffb-cf68-159cd827ade7@linaro.org>
In-Reply-To: <31f5f441-eba3-4ffb-cf68-159cd827ade7@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/06/2022 19:31, Krzysztof Kozlowski wrote:
> On 24/06/2022 19:26, Rob Herring wrote:
>> On Fri, 24 Jun 2022 13:13:25 +0200, Krzysztof Kozlowski wrote:
>>> The lp50xx LEDs expects to have single-color LED children with unit
>>> addresses.  This is required by the driver and provided by existing
>>> DTSes.  Fix the binding to match actual usage.
>>>
>>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>> Fixes: dce1452301e7 ("dt: bindings: lp50xx: Introduce the lp50xx family of RGB drivers")
>>> ---
>>>  Documentation/devicetree/bindings/leds/leds-lp50xx.yaml | 8 +++++++-
>>>  1 file changed, 7 insertions(+), 1 deletion(-)
>>>
>>
>> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
>> on your patch (DT_CHECKER_FLAGS is new in v5.13):
>>
>> yamllint warnings/errors:
>>
>> dtschema/dtc warnings/errors:
>> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/leds/leds-lp50xx.example.dtb: led-controller@14: multi-led@2:#size-cells:0:0: 0 was expected
>> 	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/leds/leds-lp50xx.yaml
>>
> 
> This is expected and fixed in:
> https://lore.kernel.org/all/20220607075247.58048-1-krzysztof.kozlowski@linaro.org/
> 
> I did not combine this patch with above patchset because this one is a
> fix and might be backported to stable.
> 

Anyone willing to pick this up? This is a fix.

Best regards,
Krzysztof
