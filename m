Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B3CCC786CDD
	for <lists+devicetree@lfdr.de>; Thu, 24 Aug 2023 12:36:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235499AbjHXKfb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Aug 2023 06:35:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238775AbjHXKfF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Aug 2023 06:35:05 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0E5719A2
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 03:35:01 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-4018af1038cso3330005e9.0
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 03:35:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692873300; x=1693478100;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MAiqbsCO7EHmMgBmtMmnEi5rZ4ly2kGdPYqaez1VPW4=;
        b=yF85apN6sUJ6NxDSjbQrjnxTeYWmFEY1KhgeXxqWKBQbRIcTfpWOADMg2HUncbWy+B
         eLpUk4WvHQH4B+ozUPY76PV78iEDkptzjS2yUAb4G52uSnS/tmDRSBAdGObUWtNxM9Q7
         ryp91aRPJNo5dOIkUJH3Y69NkWyIfS5hYPlUTFzFH7ygItRx7Z1aBMWJSnq4voNe0jBF
         rTITf5DD5uqzf78uukr1+934gBw8DA2C593SWpYUk6GiT4mJdrcb3W+ltm+dtQ9kq9eu
         xblj0xE1/VzFhHFo+Sr6MO+d16yzQu7ZjJg8AP9eSg7KBPY+RRMjdj/6148b7QdmFvvb
         09yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692873300; x=1693478100;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MAiqbsCO7EHmMgBmtMmnEi5rZ4ly2kGdPYqaez1VPW4=;
        b=RWKdtn5ljivnRU+tEicshM8xDvg8qGX3nSsTrmtXbgpyAdeq0iEZkpq6V1H3sjv0C3
         a+6BaG+3cd5ZKEQg59tWdYv1Jx806r4fYqd1mudmjvOjymlyfPmsF3ozApyk84e9Pu0A
         X+WY8dO4oCSOeKd3hH2SfoPxtpeK7NzgiwENsq8pWNSo0OI+ljPOWgxTJosFIxJNX3E0
         gCyak42keSk58duSRqcXRQ7My1qVz3oXXisIrxt0o0Q35o0LvQctajkBUX0rtD68Vykr
         ZafatuSfVu9ui8vrtRmHTae34BiODUShGZEJ83ckDS73XjJR7+vUMliBl7veysFxO3hk
         PDxw==
X-Gm-Message-State: AOJu0YzRqXt88BkRV6GTo8sKNAcXHK1cQxbwtJ4+eQQ2Gfzr6KHnIRnk
        G3ee7KerqmijkVsD2aq9lKIpgg==
X-Google-Smtp-Source: AGHT+IHfOYQM7v18dWzMzugs8FYJlBkAkivWx7DZFcATs7GtYjD12T9aN3zP8yxsyq8EWy7UmlehhA==
X-Received: by 2002:a05:600c:296:b0:401:b0f2:88c0 with SMTP id 22-20020a05600c029600b00401b0f288c0mr492298wmk.16.1692873300365;
        Thu, 24 Aug 2023 03:35:00 -0700 (PDT)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id n15-20020a7bcbcf000000b003fc02e8ea68sm2254056wmi.13.2023.08.24.03.34.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Aug 2023 03:35:00 -0700 (PDT)
Message-ID: <8070b293-b187-b0cc-fd3d-d057c5623094@linaro.org>
Date:   Thu, 24 Aug 2023 12:34:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 1/2] dt-bindings: imx8mm-thermal: Document
 'nxp,reboot-on-critical'
To:     Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     linux-pm@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
References: <20230823173334.304201-1-festevam@gmail.com>
 <cd1985cf-f13b-8d5b-1f67-f93bae98ce7d@linaro.org>
 <CAOMZO5CPz=ysfjb_x3T0FqKxjTPy1zippZRnkMXCTuyD7fF57g@mail.gmail.com>
Content-Language: en-US
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <CAOMZO5CPz=ysfjb_x3T0FqKxjTPy1zippZRnkMXCTuyD7fF57g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/08/2023 11:57, Fabio Estevam wrote:
> On Thu, Aug 24, 2023 at 4:18 AM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
> 
>> And if Linux changes the behavior of critical temperature to be "reboot"
>> instead of "poweroff", what happens with this property? You add now
>> property for a SW policy depending on one given implementation. Not
>> suitable for bindings, sorry.
> 
> Ok, understood.
> 
> I will try a different approach by introducing a Kconfig option.

Alternatively, the 'chosen' DT node could be used, no ?

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

