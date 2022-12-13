Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EB32164B20F
	for <lists+devicetree@lfdr.de>; Tue, 13 Dec 2022 10:14:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235130AbiLMJOH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Dec 2022 04:14:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234581AbiLMJNR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Dec 2022 04:13:17 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 287BF193F0
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 01:11:31 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id 206-20020a1c02d7000000b003d1e906ca23so1332955wmc.3
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 01:11:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uw1voEWUp0+0v05jbG+NYaaxMpvPtik5wxTtm6xJtnc=;
        b=mmCPbBux9a5PQtx4gbSUNSg56ycUpi8ANwAZbb1Od/wJyAAsIqXhsPBDz7qK9Das2/
         1jUOy4JuW24JJ7ffMfxYaREfxU3cZQppmH60uP6TqfI5ziv81DyyHWDxyeKA61tO3M8a
         eGhmb2OJslJzwOP+4XURDoe3f0Ov20ZN/8q+Sw6xGmujQnqgJGTYCMuj4975w+ZvdVMI
         ylbfHJJ4n3LT+K/F6pMmhGAsJF/bMUMpQi5cKjMM1qe+oN1X/Kyzk1zFPIVfu1cYEmG1
         EdMlE/4nRk7o6ifyYlOPzKoFmA4eA1vJmwpKpw+ld6ALCYYaNoWz3Qsw380NGmfUBsAX
         4xuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uw1voEWUp0+0v05jbG+NYaaxMpvPtik5wxTtm6xJtnc=;
        b=TQ5OEgzhiz9bzLd38LDwJyIdQ/GeQ15nprFJ7X7KY2ZyHT2rAq3c5xdo7kwCasZaI+
         rv2+5xvtrfadRFS5JdfRF4CUIvro9Br8Vx1limyo8Ttq0ghlzO4e3dexxC1oMSCDjdzv
         AazDEqTAijIoHz0rAeqQc+/kzsu0vdevCRjfq9zCOvcXS8zKbQjp69jMue/kwQ0bmEV7
         6SBia7hi984Rg9aiNDw2rfpRJxd5AYR6RwvMrICa9fHJ23Ftj/C00rypGGuS3ApfNM2F
         F5gGkw0V116ZD6BcvL2bM0A2P8vYF2mv87TvCHkuERBjjia8pnBfCCUDI+g+TEdLGNh5
         swVA==
X-Gm-Message-State: ANoB5plSgdZ8ML7BARIf9hQuC3i45qJG4E/On6mw5AXzy02Qtn5IFs1K
        WAYR90GsTUAHLzLhhklveZMdLw==
X-Google-Smtp-Source: AA0mqf5qMOYPOTj8H5LDaHHrXGWetVbN10xSkU6EVkmeROZ/YDkQbYFFOw+e7zoZAzAGvlBsiLofVw==
X-Received: by 2002:a05:600c:5407:b0:3c6:e63e:89a6 with SMTP id he7-20020a05600c540700b003c6e63e89a6mr15269539wmb.2.1670922689669;
        Tue, 13 Dec 2022 01:11:29 -0800 (PST)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id f13-20020a05600c4e8d00b003c70191f267sm13320087wmq.39.2022.12.13.01.11.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Dec 2022 01:11:29 -0800 (PST)
Message-ID: <ffd36b9a-4d8f-3405-1926-668151e2ecbb@linaro.org>
Date:   Tue, 13 Dec 2022 10:11:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 06/12] dt-bindings: watchdog: qcom-wdt: merge MSM timer
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-watchdog@vger.kernel.org
References: <20221212163532.142533-1-krzysztof.kozlowski@linaro.org>
 <20221212163532.142533-6-krzysztof.kozlowski@linaro.org>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20221212163532.142533-6-krzysztof.kozlowski@linaro.org>
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

On 12/12/2022 17:35, Krzysztof Kozlowski wrote:
> Merge Qualcomm MSM timer bindings into watchdog, because the timer
> compatibles are already included here and the hardware is quite similar.
> 
> While converting the MSM timer bindings, adjust clock-frequency
> property to take only one frequency, instead of two, because:
> 1. DT schema does not allow to frequencies,
> 2. The Linux timer driver reads only first frequency.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

