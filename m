Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7426C64B17C
	for <lists+devicetree@lfdr.de>; Tue, 13 Dec 2022 09:49:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234882AbiLMItB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Dec 2022 03:49:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234858AbiLMIsG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Dec 2022 03:48:06 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA0C71A390
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 00:48:04 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id co23so14855170wrb.4
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 00:48:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=V8Zjj3N/Rus1SUj60QIPVCtKEcMrA/Mh+KnOE6zWGQQ=;
        b=DzbTaCKlcSRjCYFGuV+AZ+zl/Uk7/q5BX8CDbZivcZks1YBMRajl9TsAkGpQ8v9ecE
         I3MtFlh7um6HblRxWKty5U9MxWUbjN9TJ3Ov7+ASBwvX7+HiGZWQYY0iQPLD9W+RE3Kl
         RD1qyyLXzyPS0qjGZWyKg5bjR5f5mTylrem2U7o369tYA0iCFjmMunGkqL9K1O4mT0QO
         LHgwQ1xn5j0llsiso4O/tkKLQ7BKwlYN2CD40/94h0vCwvmmngCUdrnEaQJHSw+DNA+6
         W/Epk2p9U4txXabivW0zNOc3exw0YMvEeCnvWgPHxpHKwghTNPomqJ5BsxbLP/Um6AIS
         nl3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=V8Zjj3N/Rus1SUj60QIPVCtKEcMrA/Mh+KnOE6zWGQQ=;
        b=2rAZ5wvd+KZYGytO+3ffGcsJBxYirAmC9AOJV97fmkkFCu67Wwus3mM36D3lzoBGjE
         r9RSmmkBgDisgvyf6wjyad/iAFONvnD2jJDtj4wzBB81diio0m6oLAKEhUFv0LTszfSX
         zEvuQ7gR8LonFTDsCYGO7Mb/G/3qCPzpm42ndxsfk5mFKMrUSPMWIOLCWoULL5IG98xW
         VUuLASF8FIOqPuVyCcxwIuyzfOPeCoO+LI2P6cg+fkvQI7+Fwe3l7FAsX3Cx8EOVFeTK
         9fAPw3SYKT8q5e7A4lm0ivppzp28yEHRF39l+hgt1zfkYWpLeNUD6MIhXzQGa8seTjuh
         Br6w==
X-Gm-Message-State: ANoB5pnjYFKf7eupKThfH7KkJjjwIHznzrucu9x1Uejw9xWBPxDFBcHq
        /yBmKlYR9+22icPir+GHIpfY+w==
X-Google-Smtp-Source: AA0mqf5rUlKo1swuyzbiW4JK9YiojP4ez25mYVh7JGfYdULVwWzXg+jgiRlAHFdeXqfNSS59HxvDfQ==
X-Received: by 2002:a05:6000:1c2:b0:242:63e5:fdaa with SMTP id t2-20020a05600001c200b0024263e5fdaamr10915979wrx.62.1670921283123;
        Tue, 13 Dec 2022 00:48:03 -0800 (PST)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id x1-20020a5d60c1000000b00241c712916fsm12953578wrt.0.2022.12.13.00.48.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Dec 2022 00:48:02 -0800 (PST)
Message-ID: <11c88b9c-00f0-d1b0-8a98-059a58e456f7@linaro.org>
Date:   Tue, 13 Dec 2022 09:48:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v8 2/8] dt-bindings: timer: rk-timer: Add rktimer for
 rv1126
Content-Language: en-US
To:     Jagan Teki <jagan@edgeble.ai>, Heiko Stuebner <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Johan Jonker <jbx6244@gmail.com>
References: <20221123183124.6911-1-jagan@edgeble.ai>
 <20221123183124.6911-3-jagan@edgeble.ai>
 <CA+VMnFwVt=t6kmYrvGgSJdkZDnHMuxKPHtyFCU7vBaGHa4hc6Q@mail.gmail.com>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <CA+VMnFwVt=t6kmYrvGgSJdkZDnHMuxKPHtyFCU7vBaGHa4hc6Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/12/2022 08:50, Jagan Teki wrote:
> On Thu, 24 Nov 2022 at 00:02, Jagan Teki <jagan@edgeble.ai> wrote:
>>
>> Add rockchip timer compatible string for rockchip rv1126.
>>
>> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
>> ---
> 
> Daniel or Can someone please pick this? Heiko is holding this series
> due to this patch.

Applied, with a trivial conflict fix

Thanks

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

