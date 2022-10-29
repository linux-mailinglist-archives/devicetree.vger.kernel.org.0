Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B5C2C61211A
	for <lists+devicetree@lfdr.de>; Sat, 29 Oct 2022 09:48:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229925AbiJ2Hs2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Oct 2022 03:48:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229906AbiJ2HsR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 29 Oct 2022 03:48:17 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0C13BE507
        for <devicetree@vger.kernel.org>; Sat, 29 Oct 2022 00:48:15 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id 21so10881431edv.3
        for <devicetree@vger.kernel.org>; Sat, 29 Oct 2022 00:48:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mind.be; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pg+RytIDlq54zISxpQtl2L8fZN1+m9I00gnazEQCvBw=;
        b=VZRajbXPCAtrrJfcWiqzHT9mbVUjHfnuf9m3BveCxFmOAp0ZyKxznlo5NXRV9jfpjm
         tdswy1Dc8Gwwdr9bSgLmhB5Lp+rtEYHjKEY2CjKHzqpWHxtEfJg08482LckxO435gbTz
         QIndJA3KIrJh21NXJTOBBrRJTbPb1lbvT0W4AfasLiZWgJhD6bbOh95K08gz7wEMM3Mr
         vC5+zaX8PfVbmRpWLyn1ByH1d3RhiYUZKbme1ECUiaGh5sRjfG2jkzL4IHoxQ3hPW5YN
         xt1dwzz6PCCdQ1MZJoPtoDUOWd6fFi1H77ICXLwMZ10AfC5QAqvMuOe6xnvosin/gpUY
         v1bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pg+RytIDlq54zISxpQtl2L8fZN1+m9I00gnazEQCvBw=;
        b=0w6qJ/qt2wPdo+wnRfsxuEFdLnMKvw0kg+1T0R4/l2kAEUMFqypq7Cc8EGFNCWwRuM
         HVn8PYkTtsW87Xn8qnyk+0GMy3FhtZVgKyg+eos6uVHPFNII5L0jPCJboEiikMa0/L3b
         uZIu6zGCk/eljIJm/6uq8hUJai0MdBe8UM65v7bjwAzi2PRckpntHArcOpGe8E/4fANY
         Czt/3jOyFDzEZsUYU6JdMURBda/9F7lSANm8WKkmqWLTMvhfwsDR39blS4jniYWrxhKp
         B+RdHe1WuEV2v2csvjYC2xhF5jbQkYeSzfrb3GK0qA/Z1kppiVWVL4ccCxV2ZaqH7apY
         tW7A==
X-Gm-Message-State: ACrzQf0UKq4wk+CejKCMrgU8AVQOzLZvwDVCLxMFLpDM/yOTcBlbB2rI
        QhCHAMm3rTKIz9FM4Gpxu6KIXA==
X-Google-Smtp-Source: AMsMyM580yL+VrmPLJoT1pN0Qr+g2h9lTiNJM6CALSo57nrSxd+LUPZJvrxkCwrilpLOTIvui9gUBA==
X-Received: by 2002:a05:6402:5489:b0:43b:b935:db37 with SMTP id fg9-20020a056402548900b0043bb935db37mr3320635edb.347.1667029694230;
        Sat, 29 Oct 2022 00:48:14 -0700 (PDT)
Received: from [192.168.2.9] (78-22-137-109.access.telenet.be. [78.22.137.109])
        by smtp.gmail.com with ESMTPSA id gx3-20020a1709068a4300b0078c468bd604sm396505ejc.57.2022.10.29.00.48.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 29 Oct 2022 00:48:13 -0700 (PDT)
Message-ID: <7cbb1cc5-e333-db25-77e2-7a1ebda70e24@mind.be>
Date:   Sat, 29 Oct 2022 09:48:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH 1/2] dt-bindings: leds-lp55xx: add ti,disable-charge-pump
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jacek Anaszewski <jacek.anaszewski@gmail.com>
Cc:     linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221028133501.95833-1-maarten.zanders@mind.be>
 <20221028133501.95833-2-maarten.zanders@mind.be>
 <34c4037b-d152-412d-e551-dd3ea27b6b46@linaro.org>
Content-Language: en-US
From:   Maarten Zanders <maarten.zanders@mind.be>
In-Reply-To: <34c4037b-d152-412d-e551-dd3ea27b6b46@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On 10/29/22 00:07, Krzysztof Kozlowski wrote:
> Drop | 
OK.
>> +      Disable the internal charge pump.
> Does it mean that it is enabled by default?

The device default after reset is "off".
The current implementation sets it to "auto".
Other possible modes are "bypass" and "boost".

Should I change to an optional "ti,charge_pump_mode" as string and set 
default to "auto"?

Thanks!

