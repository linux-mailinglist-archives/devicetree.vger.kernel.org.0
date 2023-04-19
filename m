Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AC02C6E743D
	for <lists+devicetree@lfdr.de>; Wed, 19 Apr 2023 09:44:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231887AbjDSHov (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Apr 2023 03:44:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59860 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232449AbjDSHoJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Apr 2023 03:44:09 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C0EDB759
        for <devicetree@vger.kernel.org>; Wed, 19 Apr 2023 00:43:55 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id m39-20020a05600c3b2700b003f170e75bd3so1684131wms.1
        for <devicetree@vger.kernel.org>; Wed, 19 Apr 2023 00:43:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681890234; x=1684482234;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gZDXVKvsMbMfc3QHDbhDLe7byPrtEPfNnInfzjGU0DY=;
        b=spioXNQ4zpOkRnYaEv0FazW+Wr9DNiZxKaUmxUdz7M9Lk/ZlWTKRBncGHhzpZ74N1/
         GyQdqe7si9M8bz+9342fZu2pi0yLUbNY8t9kOS0/XFXxPPYCd4+PS6hD6X5h/a3Lu85i
         jFU1BCCek+UGbSgRXp5xROmNXmVE8QvRp6GBJyu04pAjdKzDNYFWdH1Wf7MUZuzEVqC3
         91pwwsK+4qGx99y1AVEDSTmdrR+5qTAQd43DuYzCwxW2i7yCktKR1F3QciXHqiACipyo
         BjM3QkPSfgDWKbInEwCEvAI8Q05el5JW9qj/M7+1OEFak5WqNSOMlF2VJQfp4SYtYG8O
         2PTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681890234; x=1684482234;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gZDXVKvsMbMfc3QHDbhDLe7byPrtEPfNnInfzjGU0DY=;
        b=YLm8ENxlHGM62utc2VhwZvNRAhYJ+CYss0MVzPLp3iLU0wKgr8nFoIj+kNB80p6SQS
         DX8E48/XuOhO+DM/QQ6iSu8KWGV5dpQAOQcilaFGbxWuAdb8pY8Io8/+9wVe0G4geBoh
         jUmMTNhBe0pUYhomuGPMC/m1zpC5bZ6BvQou7xWEdX4fdpQyTw3XUGAC+WZ08Ri1Xuy9
         lfMZCyntgg8tPnIa24VOUmIpOqnTC+bPwu6yThTFu/NKDhTl88RWx+Fs+ghTMqKno4CY
         vTjLmhV56LokuidCj1j50B26jFWOpjp4xVqBCjii9TbfnuWtiV4+caCscmXuVAPrDNtM
         gubg==
X-Gm-Message-State: AAQBX9epC9vFePe23NGxZ1nci7m4lmPDzd1czhQNBWVQ1bJRHaSb2Jri
        Dl4lXSe34/TL2qswvmqWisoWsA==
X-Google-Smtp-Source: AKy350a7PqWzaqXelupqzfecORzuWn5Cptqv/p6TdTifyGYk/tO05uZdapqxRO6XsNQsls5Rh11AiA==
X-Received: by 2002:a1c:cc07:0:b0:3f0:9c6c:54a0 with SMTP id h7-20020a1ccc07000000b003f09c6c54a0mr16014396wmb.2.1681890233898;
        Wed, 19 Apr 2023 00:43:53 -0700 (PDT)
Received: from [192.168.2.1] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id s9-20020a05600c45c900b003f092f0e0a0sm2248856wmo.3.2023.04.19.00.43.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Apr 2023 00:43:53 -0700 (PDT)
Message-ID: <a4b5c1cd-3d43-7286-749a-5627de9c48d5@linaro.org>
Date:   Wed, 19 Apr 2023 09:43:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH] clocksource: ti: Use of_property_read_bool() for boolean
 properties
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>, Thomas Gleixner <tglx@linutronix.de>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230310144702.1541660-1-robh@kernel.org>
 <20230418162437.GB1764573-robh@kernel.org>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20230418162437.GB1764573-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/04/2023 18:24, Rob Herring wrote:
> On Fri, Mar 10, 2023 at 08:47:01AM -0600, Rob Herring wrote:
>> It is preferred to use typed property access functions (i.e.
>> of_property_read_<type> functions) rather than low-level
>> of_get_property/of_find_property functions for reading properties.
>> Convert reading boolean properties to to of_property_read_bool().
>>
>> Signed-off-by: Rob Herring <robh@kernel.org>
>> ---
>>   drivers/clocksource/timer-ti-dm-systimer.c | 4 ++--
>>   drivers/clocksource/timer-ti-dm.c          | 8 ++++----
>>   2 files changed, 6 insertions(+), 6 deletions(-)
> 
> Ping!

Applied, thanks for heads up


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

