Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 17E1B524A0B
	for <lists+devicetree@lfdr.de>; Thu, 12 May 2022 12:12:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352491AbiELKMT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 May 2022 06:12:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352486AbiELKMS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 May 2022 06:12:18 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D42963532
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 03:12:17 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id j6so9149229ejc.13
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 03:12:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=X47EehVG5WvUqloForq0DZnxSI00PxXqiAYmDlOndV4=;
        b=XcbBbT5ghzHqWLRyDZ1BKspnTguxqGaIeoUYfzYWe9VUqk+FI7S3Q9xvJ/szWbY1Z6
         02kucFbrE8C4oNqLGlY63/PTA4XHqGrxwQpjKr66LCH8cD7PNicO4ILOxnMvqIrYsIq+
         UdsVVRk+xsNd8YWfFxU6Xhr/9OBME5uvIbEkpO2ZrGS31VC9H65RORFO61FOupEVIorB
         xMpMT+Qy7El3qOGSJRFGxXUttTf+xj28dcmxmirMKer7O8oCawTEjv/XBmxpTGMhHcZu
         6c3VgQ0/7l8D3W2LpgXIf6Xb4I/edQ5+4LKsv/M7xfuFgTKGyGceWGs1YT0Ew+pU0Ndd
         XCpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=X47EehVG5WvUqloForq0DZnxSI00PxXqiAYmDlOndV4=;
        b=duxG7xXNYZfMAeDoGBhs/wrTmo3ZklhaS7JhgHhUcn27NbcSvV14dBMunAVEL5WXp3
         0sbMKonSi+emAYPkSCQNYOzjqFU8kM4OyMIt1/wvrJyH/CAmov5lFD9oK1TW1qzxW5zF
         MxOg9vCO4JPQ4t9wOAfSIzYc+GtEhkhWPqR2PR9ej1BTJKnF1W8JNpGj3I3MTkGgA987
         J9uRQp6YoragazO7XTZW8wyOxEMzUs8ryVAd4oEykmfZl8Eb+EwzhA2Gb5MVrfRnBfSf
         9UFy6mU2dmgUqGUA6kzZA4qwXMovljbchAut5q7M3pfazmlmCtOI4DI6LOrB1Ggzn7XY
         l5vQ==
X-Gm-Message-State: AOAM530qa20VjnncfWpC0sAE/9SOxI00oN7Vjf48aG2ABwgvB1inFJ5t
        avV6fscS/pJkb8zVCRqW5jsH0A==
X-Google-Smtp-Source: ABdhPJyOK7m/Haubvq4yt7fx4gwrkdHtoZkWKty8XoSlOK4EgnDcro57q4KvfFw/SJn8cFrNSvZdMw==
X-Received: by 2002:a17:907:6d1e:b0:6f9:ffbd:477a with SMTP id sa30-20020a1709076d1e00b006f9ffbd477amr20830957ejc.104.1652350335645;
        Thu, 12 May 2022 03:12:15 -0700 (PDT)
Received: from [192.168.0.158] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id c6-20020aa7c746000000b0042617ba63b9sm2326664eds.67.2022.05.12.03.12.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 May 2022 03:12:14 -0700 (PDT)
Message-ID: <2aeb7845-1dfe-c295-9fc9-38249e84f308@linaro.org>
Date:   Thu, 12 May 2022 12:12:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH V2 1/2] dt-bindings: rtc: Add TI K3 RTC description
Content-Language: en-US
To:     Nishanth Menon <nm@ti.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Alessandro Zummo <a.zummo@towertech.it>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-rtc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Andrew Davis <afd@ti.com>
References: <20220511002600.27964-1-nm@ti.com>
 <20220511002600.27964-2-nm@ti.com>
 <d7f124a7-a338-8ada-8d68-9434059db9fc@linaro.org>
 <20220511193838.o62nvhwfo4fgcg7l@overview>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220511193838.o62nvhwfo4fgcg7l@overview>
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

On 11/05/2022 21:38, Nishanth Menon wrote:
> On 18:28-20220511, Krzysztof Kozlowski wrote:
>> On 11/05/2022 02:25, Nishanth Menon wrote:
> [...]
> 
>>
>> I didn't brought it earlier (I assumed you used existing RTC examples
>> for your schema): why this is not including generic rtc.yaml schema?
>> Isn't this a RTC?
> 
> Oversight, and I suppose I picked a bad example to emulate :(
> 
> I assume you mean adding:
> allOf:
>   - $ref: "rtc.yaml#"
> 
> Like this:
> https://gist.github.com/nmenon/0c326c92fbadecd042209c0078f0af99 ?

Yes plus you need to use unevaluatedProperties:false and remove
wakeup-source (it's coming from rtc.yaml).

Best regards,
Krzysztof
