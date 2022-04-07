Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 02CCC4F898B
	for <lists+devicetree@lfdr.de>; Fri,  8 Apr 2022 00:14:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230189AbiDGUox (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Apr 2022 16:44:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230375AbiDGUom (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Apr 2022 16:44:42 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 886163B38D8
        for <devicetree@vger.kernel.org>; Thu,  7 Apr 2022 13:39:12 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id b19so9544694wrh.11
        for <devicetree@vger.kernel.org>; Thu, 07 Apr 2022 13:39:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=fqtKr787N6Vy1cwaYaYZc9PI8pUmju7Cz4kLVR3rNO0=;
        b=xd/uN/+Wfa0+DJziXe7CM988LNaoE/LluwkoUHTwQ9+zH3ooZE1UWwe7s2BIb3c1My
         +esS9mC72qFXdlzWLyQnaolMh3gfwuzHDc4OALOUZAkHKljGW/17t6SY2BefhYkzmR9j
         s5w/ym9EyM1G11gyyb8n0f1speuoHsrdCRrMjd4uydyz+uNmsUAz2Bv2uvCsmDDbUTht
         CMAS2VmtJcNiWBQiF3YDbR+DbtTez2CXIt3x89DCv1ZWbq5FeH4kLl8vdIT0pt/NjK/4
         BvErXNsFnFwcldyNvMR5l37DqHw/QXSkKDJ/R0HYkjnkdQD1vH1yozKEsvj1CUz6ui5/
         zp4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=fqtKr787N6Vy1cwaYaYZc9PI8pUmju7Cz4kLVR3rNO0=;
        b=x5+7VvQmX3N9ShxjOPWkoRTvl8tAsXktiHjyH97wEX9mvAcmVOV+E4ONVC+srbkKR/
         6F5bZl30fYkg3j4s8F5arYfnpgB65a/SsqQO3E2d0We4IgzUE2lUjBzSgBZo2pPK5IhB
         7pXsbYyyaDbB4cLobCnT17vp8797dL56Re1a9XwLka/cYctjnYE9qrlnDw9a2ACN/Tj5
         R3B+YMLkftYobfcHjC67RWAXUNGkzpa04snUApkunIZtGpg5/K0LCMlwKbNqE74ArzHg
         8B5AbJRb0jxs3c2D7C6K51LM10ry5iSh7LJ7dWVbeqdHun+Efo0uPuU6jrZ4qNlZ01B3
         RVDg==
X-Gm-Message-State: AOAM5332X5eJzwAIam7g2/CR340MlKLZlYSAjK/tBc02HlCW1mJjoYnS
        GNdcnUUVriTvITZ3LaCMgLVAIg==
X-Google-Smtp-Source: ABdhPJzFnUZMpklEvBXqWfIprKr3SeUKOVHJYtNHafYjioDtHTrl0Yu/4IrS7rpVQtAYsGOUPaDGmQ==
X-Received: by 2002:a05:600c:28cd:b0:38e:72c5:5259 with SMTP id h13-20020a05600c28cd00b0038e72c55259mr13665875wmd.176.1649363951008;
        Thu, 07 Apr 2022 13:39:11 -0700 (PDT)
Received: from [192.168.0.187] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id f11-20020a7bcc0b000000b0037e0c362b6dsm8584615wmh.31.2022.04.07.13.39.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Apr 2022 13:39:10 -0700 (PDT)
Message-ID: <8fa6212c-a914-dcc4-c852-32a3948db99f@linaro.org>
Date:   Thu, 7 Apr 2022 22:39:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH] arm64: dts: synaptics: add DT for AS370-RDK
Content-Language: en-US
To:     Arnd Bergmann <arnd@arndb.de>,
        Jisheng Zhang <Jisheng.Zhang@synaptics.com>
Cc:     SoC Team <soc@kernel.org>, Rob Herring <robh@kernel.org>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        DTML <devicetree@vger.kernel.org>
References: <20210820173108.01d5c6de@xhacker.debian>
 <29e96ece-8541-a7a2-c6a9-453be6644eed@canonical.com>
 <20210820182708.51d13e29@xhacker.debian>
 <CAK8P3a2vkZVt1bb7-iDGaSHp20U9d8QXu6AcrUMceJSS9Q_-4Q@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAK8P3a2vkZVt1bb7-iDGaSHp20U9d8QXu6AcrUMceJSS9Q_-4Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/08/2021 21:55, Arnd Bergmann wrote:
> On Fri, Aug 20, 2021 at 12:27 PM Jisheng Zhang
> <Jisheng.Zhang@synaptics.com> wrote:
>> On Fri, 20 Aug 2021 11:59:30 +0200 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com> wrote:
>>> On 20/08/2021 11:31, Jisheng Zhang wrote:
>>>
>>> There is no such binding. You need to update the bindings file (first
>>> patch in the series).
>>
>> This is my plan ;) In fact, "berlin4ct" related binding is also missing.
>> I want to convert Documentation/devicetree/bindings/arm/syna.txt
>> to yaml, then add missing bindings. But it's too late for 5.15,
>>
>> If it's fine to keep as370.dtsi without board user(s), we can drop
>> this patch. I will solve this issue in next development window.
> 
> Yes, doing it for the next cycle is ok.

Hi Arnd and Jisheng,

This patch was discussed in Aug 2021 and since then there was no resend.
I assume that AD370 will not get a board, so I propose to pick up my
removal patch:
https://lore.kernel.org/all/YRbDNInfG7caSr2r@robh.at.kernel.org/

I will resend it.

Best regards,
Krzysztof
