Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4BA3265D39D
	for <lists+devicetree@lfdr.de>; Wed,  4 Jan 2023 14:02:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229801AbjADNCY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Jan 2023 08:02:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233028AbjADNCX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Jan 2023 08:02:23 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFA6BFADF
        for <devicetree@vger.kernel.org>; Wed,  4 Jan 2023 05:02:21 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id m3so16590062wmq.0
        for <devicetree@vger.kernel.org>; Wed, 04 Jan 2023 05:02:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZKBkOxPQDQxFRbDRNc5obTwTZfsl0xxWawxlciZ/+D0=;
        b=sjq09NCzb36uWSFZVxgDEgzX6qmQDQv73cCt+lyUZ/ebz+BN43wCZZIrUEs0tWg05t
         SxYvHWfxLukshsZAAU0tbRZESqaxipQfiwUfYnpSNtR6Li4N+zqZQRiMFCk5fwCe1zKu
         HYCMC78u1t6Di6Fm7cZ2WNuZc+8qqNuXWwckuGa84VtfmFqmU4ZpnBT+D5qwpofBPSOy
         41cURwMuoOzJe1/nDlERY1fNOTzN1E43tG9KHY3dt3QdoHmQPtfych1bbXEQ3+W672Le
         YPE+szE1cIkVz2QquLhvpvyetpn1NJlDJ/u3kzM8DpCYvlcRjJ44nb8vCbSspkCJ2M2L
         1R+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZKBkOxPQDQxFRbDRNc5obTwTZfsl0xxWawxlciZ/+D0=;
        b=eF5GX0h4rXIsRKGCq5yqcgSHs8mzTCMa3w/P4Myner1fflOLtBjKvjIzR9bPSL64iX
         2q3Xj+MpfclTsIQfhAtu3EqUFAToOuikpeYSPDXT/+7YRwCPYPeg9tvxBoPyF8ceonq1
         JOMQVH0sTQsXiROKL+BMizdDq29v+Y5dY4b23g9vYJta1ZL1+PR/eyI+v8Y1HZQtWCnF
         HqHlI/09JhJh+Fjn0R/3VMy1w0z1ywc48Fki0XBBWTaTbqZBgnOWcwu5Q9Mh4ljrBO6U
         92/9sbLmpWJzPhCYMlKjUkMTElh6qj1TXRSKUpZSoZ6Stjq89pUb3glB1mnZsdswwGCU
         0CDw==
X-Gm-Message-State: AFqh2kpHUTorAhQJg5cTjCvhBFKXm7A083bm224OCGeCFBHAvWlojgW9
        aOeDpNW7AoPGSSunDUq3cvpu9Q==
X-Google-Smtp-Source: AMrXdXvP/TQdzrayFXpnotepvxBxHXarJG35uQ6VQhJFhVgYy/brfPMVX4b3MQfbe7eGTIA0YWwUaQ==
X-Received: by 2002:a05:600c:214a:b0:3cf:6910:51d4 with SMTP id v10-20020a05600c214a00b003cf691051d4mr33280628wml.29.1672837339958;
        Wed, 04 Jan 2023 05:02:19 -0800 (PST)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id q16-20020a05600c46d000b003d1f3e9df3csm55968811wmo.7.2023.01.04.05.02.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Jan 2023 05:02:19 -0800 (PST)
Message-ID: <9a98300c-e845-60d6-bdf1-12010eae2075@linaro.org>
Date:   Wed, 4 Jan 2023 14:02:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v6 0/3] Improve CLOCK_EVT_FEAT_C3STOP feature setting
Content-Language: en-US
To:     Anup Patel <apatel@ventanamicro.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Thomas Gleixner <tglx@linutronix.de>
Cc:     Andrew Jones <ajones@ventanamicro.com>,
        Atish Patra <atishp@atishpatra.org>,
        Samuel Holland <samuel@sholland.org>,
        Conor Dooley <conor.dooley@microchip.com>,
        Anup Patel <anup@brainfault.org>, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230103141102.772228-1-apatel@ventanamicro.com>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20230103141102.772228-1-apatel@ventanamicro.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


Hi Anup,

shall I pick the entire series or just the bindings and the driver changes ?


On 03/01/2023 15:10, Anup Patel wrote:
> This series improves the RISC-V timer driver to set CLOCK_EVT_FEAT_C3STOP
> feature based on RISC-V platform capabilities.
> 
> These patches can also be found in riscv_timer_dt_imp_v6 branch at:
> https://github.com/avpatel/linux.git
> 
> Changes since v5:
>   - Rebased on Linux-6.2-rc2
> 
> Changes since v4:
>   - Update commit text of PATCH1 based on Samuel's comments
>   - Renamed DT property "riscv,timer-can-wake-cpu" to
>     "riscv,timer-cannot-wake-cpu" in PATCH2 and PATCH3
>   - Updated description of DT property "riscv,timer-cannot-wake-cpu"
>     in PATCH2
> 
> Changes since v3:
>   - Rebased on Linux-6.1-rc7
>   - Replaced PATCH1 with a patch to initialize broadcast timer
> 
> Changes since v2:
>   - Include Conor's revert patch as the first patch and rebased other patches
>   - Update PATCH2 to document bindings for separate RISC-V timer DT node
>   - Update PATCH3 based on RISC-V timer DT node bindings
> 
> Changes since v1:
>   - Rebased on Linux-5.19-rc8
>   - Renamed "riscv,always-on" DT property to "riscv,timer-can-wake-cpu"
> 
> Anup Patel (2):
>    dt-bindings: timer: Add bindings for the RISC-V timer device
>    clocksource: timer-riscv: Set CLOCK_EVT_FEAT_C3STOP based on DT
> 
> Conor Dooley (1):
>    RISC-V: time: initialize hrtimer based broadcast clock event device
> 
>   .../bindings/timer/riscv,timer.yaml           | 52 +++++++++++++++++++
>   arch/riscv/kernel/time.c                      |  3 ++
>   drivers/clocksource/timer-riscv.c             | 10 ++++
>   3 files changed, 65 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/timer/riscv,timer.yaml
> 

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

