Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DB4CC5A6AEB
	for <lists+devicetree@lfdr.de>; Tue, 30 Aug 2022 19:36:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232163AbiH3Rga (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Aug 2022 13:36:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48108 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232062AbiH3RgD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Aug 2022 13:36:03 -0400
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F1C812A5E4
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 10:32:29 -0700 (PDT)
Received: by mail-lj1-f169.google.com with SMTP id z23so9261430ljk.1
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 10:32:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=4oLornOVjulEhAP01pKqWVy9qULQoBVG2owDVTSt2sY=;
        b=JqQvaKAyf4NiH7wH0XvTGOv7bwgM02SZ2JlPTqBr+6bjakQ88TGk6oKBe14UVEMDfe
         HMO1MtVqLdcXBs7NtWWeekV6URrE3hVxnSAb8JPxoMd9af1aJBAbthn3NmOryfdAJhdh
         ah2NqPyrBlwfY4EOxBMU85j4+XkJsQ4Shy2L2o2zyBoIFqwwLrIxleWNuUhwrwh6Z+WN
         o+AuVEvbnHSg6x/xyWOrKJUgED8OE1oppPESoxyZXbCuk8eFX5z9/vbXgdaZu6Qsrbdg
         gk/sYfHZjwthuI4Czn9yIB9wTVytIoZ6cfz8pvNtENcfwTt1ucC9zBV8Z+SoMdDNsKwI
         2kZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=4oLornOVjulEhAP01pKqWVy9qULQoBVG2owDVTSt2sY=;
        b=5mKsYsdA8XpHhDhHTSxevQSiqGM89VAwGCdaKJj44frjHJB7W9+3wyI58FHCvxJh01
         vF9l4JHZmLz0R2PimjR5ym7zGOWkRfdQo1P6YK5NnCBidnw3zAoRr4niJiwFEpZmHIaD
         U4qiOWq0mixecdICenHBYdxi/8thJK1XsM/9Df1n8N6NrBTpe57koUsjYcxz7smtFO4w
         DOT1QunPffIcnB7PdA2EwW8toamrL4pmBNnbA9cFjMqp1N/zGPFvesMJNsvJCXrbLc+l
         nezmdDNoku3P2PLCIeIhCwBcwJerGm5Rcf1315eBltcMFBEa5cF8mbUB3pS62R8PRWF4
         SNkw==
X-Gm-Message-State: ACgBeo1OmH9zgc2hpHpz3NNeXurXIFh/F88YGUnSK/uUqvzXRl5xDv2y
        KK1XmC7dBGFxYdZM7IyIRrt9EFz9UpDA4hI1
X-Google-Smtp-Source: AA6agR5LlXfJrdqDnVn0v8peNaVh8plpRRfBgPhdV098SOCTZ2Bo0ipZxlJJHCZdZCRPOLbkya6dKw==
X-Received: by 2002:a2e:9c88:0:b0:263:d696:75b7 with SMTP id x8-20020a2e9c88000000b00263d69675b7mr3926487lji.461.1661880610307;
        Tue, 30 Aug 2022 10:30:10 -0700 (PDT)
Received: from [192.168.28.124] (balticom-73-99-134.balticom.lv. [109.73.99.134])
        by smtp.gmail.com with ESMTPSA id bj36-20020a2eaaa4000000b002641ede39e1sm1112468ljb.9.2022.08.30.10.30.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Aug 2022 10:30:09 -0700 (PDT)
Message-ID: <dc3bd6c6-852d-30a5-2ec1-ab5f7fd1488c@linaro.org>
Date:   Tue, 30 Aug 2022 20:30:07 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v2 2/9] dt-bindings: riscv: microchip: document the aries
 m100pfsevp
Content-Language: en-US
To:     Conor.Dooley@microchip.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, Daire.McNamara@microchip.com,
        Shravan.Chippa@microchip.com
Cc:     paul.walmsley@sifive.com, palmer@dabbelt.com,
        aou@eecs.berkeley.edu, Cyril.Jean@microchip.com,
        Lewis.Hanly@microchip.com, Praveen.Kumar@microchip.com,
        wg@aries-embedded.de, Hugh.Breslin@microchip.com,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20220830101803.1456180-1-conor.dooley@microchip.com>
 <20220830101803.1456180-3-conor.dooley@microchip.com>
 <a3a8e2ba-a6bd-6e66-fd04-e3a46661a34d@linaro.org>
 <27b8aa9e-9173-b40e-8f9c-a53fa5ba36c8@microchip.com>
 <1065bc99-d73a-9d19-7f09-26cd862fe0c7@linaro.org>
 <69027950-f18d-c9a7-9f0b-d73ef68197c7@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <69027950-f18d-c9a7-9f0b-d73ef68197c7@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/08/2022 19:59, Conor.Dooley@microchip.com wrote:
>>> w dts were
>>> needed so that the gpio-hog could be set correctly. Out of curiosity, I can
>>> have the same compatible in multiple devicetrees right? In that case, it
>>> would just be "aries,m100pfsevp" here and I could put that in both?
>>> Would make things easier..
>>
>> Depends, but I would say for this case rather not. The compatible should
>> identify the board. If the boards are different, one compatible should
>> not identify both of them. Imagine U-Boot (or something else) trying to
>> match the DTS.
> 
> It is the same board though, the way the bootloader works is that if it
> detects an SD-card it will use that to boot from, and if not will fall back
> to the emmc.

Wait, I might miss that part. So this is exactly the same hardware with
the same SoM/SoC, same eMMC and SD card, except that one has plugged
this SD card (as it is hot-pluggable)?

Best regards,
Krzysztof
