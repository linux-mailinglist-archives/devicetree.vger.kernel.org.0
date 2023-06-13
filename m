Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9619A72ECDD
	for <lists+devicetree@lfdr.de>; Tue, 13 Jun 2023 22:25:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230430AbjFMUZ2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Jun 2023 16:25:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233084AbjFMUZ1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Jun 2023 16:25:27 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F4711989
        for <devicetree@vger.kernel.org>; Tue, 13 Jun 2023 13:25:26 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-30fbf6603d2so2719373f8f.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jun 2023 13:25:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rasmusvillemoes.dk; s=google; t=1686687925; x=1689279925;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=egapat9nKLVbEL0RSNztXM4SBCHEw0ma+Z+x0S2Gh+4=;
        b=Zsqdh5wuHwORNoPP708m7DSDEewDdPjwV+ZN42XJPmUrE+7QOL3OQZRD0VFjLuEikj
         EGgT4PF/N3T7+b2hPpLComB69l4nD/aa8vBVf0WxxfAQ1HoVm+ihdI07Os+YCYD3u1h9
         wo5Jj1emcKecQPy4FztjkT5jghxelXlB1aVxY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686687925; x=1689279925;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=egapat9nKLVbEL0RSNztXM4SBCHEw0ma+Z+x0S2Gh+4=;
        b=VWhZZgZzqq/n52+heVa0TNvhOr9/cx3T7iy+Pe8QOOHtXJSjQyazy5LXD+6HTNASvz
         vWCNJWQ4gpK5ArWHgb4Jbq1JA8BJyOHCVQNkQMwf5pA3MovcTRFwFguTJesh00HH+mUi
         MLgZqberXy2AUOMknGJW1JMCPtdgU4aWEg/0KTRVYJKCPy//KxIdNVSS+X28orSPEDnn
         auTALHaAeiMHa9F9cXsc+pFQVgAnhs6mwnnWpk9BbcyNjB0k28EmsLxqJkjgVLqF1Nij
         NfvUJRQ21iOCbJId9ZKrXQhc8/Zom8EGWCyOS6ihecebnMwDcS3TWE7pKMdy9Zf6HTbi
         7vlw==
X-Gm-Message-State: AC+VfDyM6MpTcWZBeY+jpx9pzKAvyuh78AvjGV4ghi60X9UIx31ccEIZ
        lcpuokFRLLD/eZd4yC3o3CC9cA==
X-Google-Smtp-Source: ACHHUZ71HKRRFbc1HYV+aUNSvwmqAgxu0cv2zz+B+t93tzUJk/dgx8oHd0VhKFsJxYywEBdd+xhQnQ==
X-Received: by 2002:a05:6000:18c4:b0:30a:3498:a360 with SMTP id w4-20020a05600018c400b0030a3498a360mr6888579wrq.24.1686687924903;
        Tue, 13 Jun 2023 13:25:24 -0700 (PDT)
Received: from [192.168.1.128] ([80.208.70.1])
        by smtp.gmail.com with ESMTPSA id b20-20020a05640202d400b005182df57885sm4643627edx.19.2023.06.13.13.25.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jun 2023 13:25:24 -0700 (PDT)
Message-ID: <13f61130-ca44-cacb-15f7-835a74dda26f@rasmusvillemoes.dk>
Date:   Tue, 13 Jun 2023 22:25:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 7/8] dt-bindings: rtc: isl12022: add #clock-cells
 property
Content-Language: en-US, da
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Alessandro Zummo <a.zummo@towertech.it>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc:     Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-rtc@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230612113059.247275-1-linux@rasmusvillemoes.dk>
 <20230613130011.305589-1-linux@rasmusvillemoes.dk>
 <20230613130011.305589-8-linux@rasmusvillemoes.dk>
 <208d06d1-58e3-748e-de28-075dc0cd28de@linaro.org>
From:   Rasmus Villemoes <linux@rasmusvillemoes.dk>
In-Reply-To: <208d06d1-58e3-748e-de28-075dc0cd28de@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/06/2023 21.10, Krzysztof Kozlowski wrote:
> On 13/06/2023 15:00, Rasmus Villemoes wrote:

>> diff --git a/Documentation/devicetree/bindings/rtc/intersil,isl12022.yaml b/Documentation/devicetree/bindings/rtc/intersil,isl12022.yaml
>> index d5d3a687a34d..a9ef68b5fdcd 100644
>> --- a/Documentation/devicetree/bindings/rtc/intersil,isl12022.yaml
>> +++ b/Documentation/devicetree/bindings/rtc/intersil,isl12022.yaml
>> @@ -11,6 +11,13 @@ maintainers:
>>  
>>  allOf:
>>    - $ref: rtc.yaml#
>> +  # If #clock-cells is present, interrupts must not be present
>> +  - if:
>> +      required:
>> +        - '#clock-cells'
>> +    then:
>> +      properties:
>> +        interrupts: false
> 
> Entire allOf block should be like in example-schema, so before
> unevaluatedProperties. Please put it in correct place in your first
> patch so here it does not have to be moved.
>

OK. That first patch was basically a copy-paste of c690048ed59b, and
e.g. ingenic,rtc.yaml has a similar non-trivial allOf block between
maintainers and properties. Is there somehow I could have known it
should be right before unevaluatedProperties?

Rasmus

