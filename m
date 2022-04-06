Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 341774F5D7B
	for <lists+devicetree@lfdr.de>; Wed,  6 Apr 2022 14:20:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230096AbiDFMHI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Apr 2022 08:07:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42458 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232452AbiDFMGz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Apr 2022 08:06:55 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5FDBB2220D4
        for <devicetree@vger.kernel.org>; Wed,  6 Apr 2022 00:46:57 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id qh7so2427026ejb.11
        for <devicetree@vger.kernel.org>; Wed, 06 Apr 2022 00:46:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=KmxEJzWVtAPtT0hHJKYkYT+MKJ5FKhKIUSiktqCv3H0=;
        b=FTwM4mW7Uk8wlU0y17I9NC3iOW9d3uTv7LnOyLd+urZwYIj4tdPV6Zf7Sb8CC92yuI
         WycSjTVsqfFPfulEQS1WWVrpihU6LDNZofWNUFMhX5Kr89oM6wSe+X7UKK5BiHHKOpCm
         wSWgqlQybRaPxjM9aEF059CgvzrzMCMLa6aWzlqWaugml52gVv1puQYh9xhyqYyEVVPM
         Zf351ZPxXApZKClS3Fb1gMUw62rea/lC0Z4p6HUMl2LhOxgLJdBtcnSRFo58AFJArklC
         w6X7nCd7JAlb9hWt5DW+TJwYQtOZ7UDwcixBtfUcT8HF7WZrqCgMVc05AlMXm/W8erCY
         rfpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=KmxEJzWVtAPtT0hHJKYkYT+MKJ5FKhKIUSiktqCv3H0=;
        b=sfy3y6OZI31wYgvetdBtzFQm6ULvCKEZRrJGFALv7acFS47W+ECFD0G3PQYAwHBVRo
         DlD2FZhvsxIvQukAwqEGI/vMhvEWgFAxqnJCL4p3mECx73XH8+B3S1PQQdvmDHxwdPjb
         Of16p1xJSo5r58mctmL6yuqj3q7p/CJEDa2i3IUcnZWlrq+q2sGFpXzxFKOC2ZTRSGuL
         59uVMQ+G3qv7cS6I4d0Q2NMXIukkDjRiR7jB+tsE+HHa8Kr93GTE1uispNyBx0QI3eeO
         MhwnSzKpz/eqYNW+8s1hzyICxdThYg+o5a6cbr7rGjZol4uahWjYmgd+dehieH8S8kZt
         Vtyw==
X-Gm-Message-State: AOAM530ZrJWRPqegtq/P/lGXn7r9zDso/MVhBU8p2qkvOVx+REaaP289
        XM6aQxJebNA1jiVw8QVVr52/mg==
X-Google-Smtp-Source: ABdhPJyLX+kJl66+LI5ZU/LOjINI9y85HnNQVRa6f1zZCdvyKyniSugFb2Co7cWo++WiAQK3v1vv7A==
X-Received: by 2002:a17:907:7d9e:b0:6df:9fe8:856a with SMTP id oz30-20020a1709077d9e00b006df9fe8856amr6996138ejc.373.1649231215957;
        Wed, 06 Apr 2022 00:46:55 -0700 (PDT)
Received: from [192.168.0.182] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id p22-20020a17090653d600b006e7eb81d0b6sm3717673ejo.29.2022.04.06.00.46.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Apr 2022 00:46:55 -0700 (PDT)
Message-ID: <d94ffddf-8bec-fecd-1eb1-a873966e60a0@linaro.org>
Date:   Wed, 6 Apr 2022 09:46:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 1/3] dt-bindings: clock: add binding for MA35D1 clock
 controller
Content-Language: en-US
To:     Jacky Huang <ychuang3@nuvoton.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Cc:     "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "sboyd@kernel.org" <sboyd@kernel.org>,
        "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
        "arnd@arndb.de" <arnd@arndb.de>, "olof@lixom.net" <olof@lixom.net>,
        "soc@kernel.org" <soc@kernel.org>, MS10 CFLi0 <CFLi0@nuvoton.com>
References: <20220331024256.14762-1-ychuang3@nuvoton.com>
 <20220331024256.14762-2-ychuang3@nuvoton.com>
 <866c6b42-434d-e7db-5319-2256cd7003d7@linaro.org>
 <cbe5c963-c727-0fe6-6e03-039c4334f7a9@linaro.org>
 <724094ab-ed58-debd-8901-466540a66eab@nuvoton.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <724094ab-ed58-debd-8901-466540a66eab@nuvoton.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/04/2022 06:00, Jacky Huang wrote:
>> You also ignored my comments from your v1 (because this is not v1...).
>> Do not resend without discussion or implementation.
>>
>> Best regards,
>> Krzysztof
> 
> Hi Krzysztof,
> 
> I am finding out the comments from all mails of this series and working 
> on them.
> I will fix all the issues before sending the next version.
> So, the next version should be V3, right?
> I will add modification history "V1 -> V2" and "V2 -> V3" to [PATCH V3 0/3].
> Is that OK?

Yes


Best regards,
Krzysztof
