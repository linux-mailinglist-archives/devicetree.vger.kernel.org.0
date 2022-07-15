Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6E4745769FF
	for <lists+devicetree@lfdr.de>; Sat, 16 Jul 2022 00:39:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230512AbiGOWjZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jul 2022 18:39:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42840 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231299AbiGOWjX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jul 2022 18:39:23 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2DE724948
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 15:39:21 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id a5so8537808wrx.12
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 15:39:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=HKeRLYmaiyT0QsZN/+8k9YJ8hsv5aCHl1ye2RpuX0Rs=;
        b=WLbZVQbcn/Z4IL593ZAkHola/vlG7OV8nJTCeQDosjrQiYP5vBdw2mbpaRyDYQOl2G
         qP2r0VjAI1VaQvJVYWNf/wI4qNcFiW+TiKgDwwVbwRZK56/4PCQGEnghWwUOlEQnSMlh
         JHURe6dV4E87xo/4pTASuObsH5g5D1Fb2WJT1nTkZaew6OWwsjosDirUPdVZWuwTu70z
         5NiID/1AfjSp6CYcJXhgj+OZC+ZHBJoOpZ4vcq+Xz0j0bQ6ymvPko2KOapw3F0HINg27
         U/f/jmMkrFcwp8aGefLwhXQQMt7cLuApqUpWNB0qrBDtkRQ2m5k1+GeFS+ixGA4Bi53v
         YY5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=HKeRLYmaiyT0QsZN/+8k9YJ8hsv5aCHl1ye2RpuX0Rs=;
        b=h9bI30NmCzLurbfbHUD1lqviLOA/ew7tVlGa/mkb5Yo6zsuh2XFIjl7VI+SFzXvUvQ
         XcsS4wO7K5SbvJDEZvSzdCBusUyt+EjnRVcHlT2ChGrvnlmIuzHK3159BZ/5BqP9s7JR
         2idkEjZOcm9IPyRvW+fgMEzJ+3hh/HSczaRii/kTrH5dNXM80QEK4Edd+GQEhm0LRJMz
         g5zE2wD2/DV6vRAy/MR6sWNmXQ7OR9cvUzRykkpJvODe0DTRgj0ZFuAO+tm9mzEMG8ET
         e0kFgX5U6qqkoY32G5gga72ET+14ru2BSFUUONYgHqWaXoRz31XxuxIUCsTOSkrWef+o
         lVPw==
X-Gm-Message-State: AJIora8LSyzNh5y6XcphwewGwM2+vE43G92XjSvNs9tMGw2CDmSyekiW
        I7FMyDVJfyfTGx+Llz9miVDePQ==
X-Google-Smtp-Source: AGRyM1vXQ8gvwtOOnPJdbUDyuoLyV70NJeblMrk1sKt5gbV6jwaZRFs4/gJY+FxUqi5uTp52DedCRw==
X-Received: by 2002:a5d:5847:0:b0:21d:b75e:12d0 with SMTP id i7-20020a5d5847000000b0021db75e12d0mr13850978wrf.208.1657924760237;
        Fri, 15 Jul 2022 15:39:20 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:a223:f4b3:40c9:43fa? ([2a05:6e02:1041:c10:a223:f4b3:40c9:43fa])
        by smtp.googlemail.com with ESMTPSA id n15-20020a05600c3b8f00b003a3080eacb9sm5525243wms.24.2022.07.15.15.39.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jul 2022 15:39:19 -0700 (PDT)
Message-ID: <c22f08d9-d55a-70e2-3413-b6cc279f6166@linaro.org>
Date:   Sat, 16 Jul 2022 00:39:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH v3 2/6] clocksource: Add Tegra186 timers support
Content-Language: en-US
To:     Thierry Reding <thierry.reding@gmail.com>
Cc:     Kartik <kkartik@nvidia.com>, tglx@linutronix.de,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        jonathanh@nvidia.com, spujar@nvidia.com, mperttunen@nvidia.com,
        rgumasta@nvidia.com, amhetre@nvidia.com, akhilrajeev@nvidia.com,
        pshete@nvidia.com, vidyas@nvidia.com, sumitg@nvidia.com,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-tegra@vger.kernel.org
References: <1656922422-25823-1-git-send-email-kkartik@nvidia.com>
 <1656922422-25823-3-git-send-email-kkartik@nvidia.com>
 <YshDgwTIUKanczPJ@orome>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <YshDgwTIUKanczPJ@orome>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/07/2022 16:47, Thierry Reding wrote:
> On Mon, Jul 04, 2022 at 01:43:38PM +0530, Kartik wrote:
>> From: Thierry Reding <treding@nvidia.com>
>>
>> Currently this only supports a single watchdog, which uses a timer in
>> the background for countdown. Eventually the timers could be used for
>> various time-keeping tasks, but by default the architected timer will
>> already provide that functionality.
>>
>> Signed-off-by: Thierry Reding <treding@nvidia.com>
>> Signed-off-by: Kartik <kkartik@nvidia.com>
>> ---
>>   drivers/clocksource/Kconfig          |   8 +
>>   drivers/clocksource/Makefile         |   1 +
>>   drivers/clocksource/timer-tegra186.c | 508 +++++++++++++++++++++++++++
>>   3 files changed, 517 insertions(+)
>>   create mode 100644 drivers/clocksource/timer-tegra186.c
> 
> Daniel, any more work needed on this? Looks good to me, so:
> 
> Acked-by: Thierry Reding <treding@nvidia.com>
> 
> I've picked up patches 1 and 4-6 into the Tegra tree, so you only need
> to take patches 2 and 3.

Applied, thanks


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog
