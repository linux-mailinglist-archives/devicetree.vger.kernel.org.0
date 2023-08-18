Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B00A47809D5
	for <lists+devicetree@lfdr.de>; Fri, 18 Aug 2023 12:17:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1358415AbjHRKQc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Aug 2023 06:16:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33452 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1358639AbjHRKQZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Aug 2023 06:16:25 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C26B030D6
        for <devicetree@vger.kernel.org>; Fri, 18 Aug 2023 03:16:23 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-3fe1d9a8ec6so11735695e9.1
        for <devicetree@vger.kernel.org>; Fri, 18 Aug 2023 03:16:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692353782; x=1692958582;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hXTabiaJxmNJ9oq0XkR6nAkvHWMygGA5C17EAhns0wg=;
        b=Re1LexwemUlpCxdH5CwQry+LacDXBZ3xU8v+wzoqheIa2Cq6/9Yk9uMG87xllqHH7X
         wmQ+4TJOo0skEVkVECkUA55wgxIX/sfKRdWuJ9J5zC2fzQLGdFx9CpwGc1/wXSwhuQLC
         MU9sAwriA9fuaSCfYSZJKABxo/VPxIxWmxn+6Go27BgmDd8QSW5IbS0RIyOLM0pABZju
         tj/gKtz5JpB2OkFOhwcxkREeaTyRQmZAZzaeOFINxEF+otVLfdWEh4kkEzhTkf+Fcfnd
         GU3IVtc2KWbP3mHmfnaama0dLjKMyakYLdqni4hZYjZoCcAcBFJEb0um3Z8Hxr+7iEom
         blTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692353782; x=1692958582;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hXTabiaJxmNJ9oq0XkR6nAkvHWMygGA5C17EAhns0wg=;
        b=Mt7giAaxHszkefQ10uBrp6WeC/5IMTik6umkoBhoJGTm1o7+u2RF0uxJ3aqHK/koV4
         ovguFbumOTpx8u0MHhPCkIT9UvcM9agXjpLkgeU47t6Ea3wk9yfS3nPgSFsG6PLQ+CXy
         vbwn2fkaAB77lt8xxEexK69ac/b7Dal+UzrJQ0OKyH+MOjGAoLwZqcNNPATsUfEmNgX+
         MuX1aGDY0Hovqd06U7OQpiiRn8ZYNQtKN/576F+ftKasUJRbj5qm/RhM1deHTOo280px
         ISWwScefZua9TLmi/ls4xcACGUgvDGMvQXhI1OKQh50uR1xlW1t76uj1AL5Hd4c6AeLT
         I1HQ==
X-Gm-Message-State: AOJu0YwyZcaU1VSFyNaqrPpMJTBYO3ABLanRS2XwSOx+3nCYOf49lAcT
        rCNqhzO/DqPKBX7eV2UgLEHqsA==
X-Google-Smtp-Source: AGHT+IF0yzR5wFadKQBSeUgKZJ0RQXMaeexJUOe03PNuqST7rF77V1m15KKYyPooKo53sQenEX6Brg==
X-Received: by 2002:a05:600c:5111:b0:3fe:1c57:3be with SMTP id o17-20020a05600c511100b003fe1c5703bemr4769676wms.8.1692353782169;
        Fri, 18 Aug 2023 03:16:22 -0700 (PDT)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id c15-20020a05600c0acf00b003fbc9b9699dsm2303355wmr.45.2023.08.18.03.16.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Aug 2023 03:16:21 -0700 (PDT)
Message-ID: <cb967ebc-0e15-b0e6-badb-4f9d2ba09178@linaro.org>
Date:   Fri, 18 Aug 2023 12:16:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] clocksource: Explicitly include correct DT includes
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Broadcom internal kernel review list 
        <bcm-kernel-feedback-list@broadcom.com>,
        Michal Simek <michal.simek@amd.com>,
        Jean-Marie Verdun <verdun@hpe.com>,
        Nick Hawkins <nick.hawkins@hpe.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-tegra@vger.kernel.org
References: <20230714174409.4053843-1-robh@kernel.org>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20230714174409.4053843-1-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-5.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/07/2023 19:44, Rob Herring wrote:
> The DT of_device.h and of_platform.h date back to the separate
> of_platform_bus_type before it as merged into the regular platform bus.
> As part of that merge prepping Arm DT support 13 years ago, they
> "temporarily" include each other. They also include platform_device.h
> and of.h. As a result, there's a pretty much random mix of those include
> files used throughout the tree. In order to detangle these headers and
> replace the implicit includes with struct declarations, users need to
> explicitly include the correct includes.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---

Applied, thanks


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

