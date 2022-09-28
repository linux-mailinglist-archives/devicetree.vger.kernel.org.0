Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C986D5ED5C1
	for <lists+devicetree@lfdr.de>; Wed, 28 Sep 2022 09:12:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233400AbiI1HM5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Sep 2022 03:12:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54616 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233349AbiI1HMw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Sep 2022 03:12:52 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7FCF362F9
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 00:12:51 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id q17so13316123lji.11
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 00:12:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=J7AHnurfwGRZ0ip8GkiH7mYVTuQZ+AW1ouNTkLIseFI=;
        b=bRxlKDNbfipIuNeXw4e/7aIUtlBCJlQ//t9YgZeP2E2OHcRVCfXLe7eAwKxCvvx90m
         PRc+Fs8PCIsxjk9hWQYuZv/PZWCKb9906yTYAPGjprdGNkKrRKTZKbzxsCocClcRhwUs
         Sx4D5YD0vD8aHCCxivN+rJCOs2m04rYyHo9LtYeAIcZrKHHCbRMtElFFsqMuY7VO4YoE
         tFGEyJHvtTe1oURW2umgZg5SFtMo8MpVOBMCjmcYIdc93jVZmFIo60n8qh2XOOvqb4Ba
         nujmHXXXWAILBW3RXa63pwf0Olgp3+KjxMHrcmRnRLkSyr3fOQ+6YfrM43nlDJYBOKk2
         5pcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=J7AHnurfwGRZ0ip8GkiH7mYVTuQZ+AW1ouNTkLIseFI=;
        b=mWDvp2fFZWZKy9m0xmE5fEd3nFmuAhhewfNqOEY0ne3jVnEyylnhPc1LwTDAygs5hj
         o/WCZo42OGi1vuV6rgfc3tRzz713YfqoaF+GZO80rJgSa6Jk6Ct8A6x/GD44wcy0jmTO
         cUR+YROg/n9b786/3oG/kluV0GDWR5Lq4G9QUKn6M4xgN0164dFL+sfPxO1MNOQ7OaaI
         PD7ehRxAEed4d8eztlQX24eN+i8/lyI6MmMyZgTJF+J7ZVGIIpQl5B3m3B2TPIHxUtWL
         PvOhrNANbhKjYknkwLo0OzUXOsloxe+qKL4w+SGj27Di49aKY3eg6/ySCoYLp9ZGh9/1
         /3zw==
X-Gm-Message-State: ACrzQf3Znkgo8rh2ztx45m6mtE9patyxkrcVi21Zw/X+rbQRSX9SnKx6
        1nz3CX4wppFn5mBq/j3DKj2M4A==
X-Google-Smtp-Source: AMsMyM5c5bD3HKX4LBqKnBoCvSwHbUYROfgtxy9aXKlB/3kIJGYg18HrwZIG7jnwQ1ZZkS97KLCOIw==
X-Received: by 2002:a2e:bd0e:0:b0:261:e718:e902 with SMTP id n14-20020a2ebd0e000000b00261e718e902mr11824478ljq.435.1664349169860;
        Wed, 28 Sep 2022 00:12:49 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id h2-20020a05651c124200b0026c18aa8587sm365898ljh.75.2022.09.28.00.12.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Sep 2022 00:12:49 -0700 (PDT)
Message-ID: <c54f15a6-b4e6-d512-654f-28819eeaab4c@linaro.org>
Date:   Wed, 28 Sep 2022 09:12:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH] dt-bindings: memory-controller: st,stm32: Fix
 st,fmc2_ebi-cs-write-address-setup-ns
Content-Language: en-US
To:     linux-arm-kernel@lists.infradead.org, marex@denx.de
Cc:     christophe.kerello@foss.st.com, robh+dt@kernel.org,
        mcoquelin.stm32@gmail.com, devicetree@vger.kernel.org,
        alexandre.torgue@foss.st.com,
        linux-stm32@st-md-mailman.stormreply.com, linus.walleij@linaro.org
References: <20220926222003.527171-1-marex@denx.de>
 <166434910296.10148.2597210651020575227.b4-ty@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <166434910296.10148.2597210651020575227.b4-ty@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/09/2022 09:11, Krzysztof Kozlowski wrote:
> On Tue, 27 Sep 2022 00:20:03 +0200, Marek Vasut wrote:
>> The property st,fmc2_ebi-cs-write-address-setup-ns should really be
>> st,fmc2-ebi-cs-write-address-setup-ns (there is underscore _ between
>> fmc2 and ebi and there should be a dash - instead). This is a remnant
>> from conversion of old non-upstream bindings. Fix it.
>>
>>
> 
> Applied, thanks!
> 
> [1/1] dt-bindings: memory-controller: st,stm32: Fix st,fmc2_ebi-cs-write-address-setup-ns
>       https://git.kernel.org/krzk/linux-mem-ctrl/c/587f9891ec9661e16df7e5268543416a7d8cb547

Just a note: it's late for me in the cycle to pick up patches. I applied
this but there is a change it will miss this merge window. If that
happens, I will keep it for next cycle (no need to resend).

Best regards,
Krzysztof

