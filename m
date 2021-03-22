Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 189863446F3
	for <lists+devicetree@lfdr.de>; Mon, 22 Mar 2021 15:19:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229897AbhCVOSv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Mar 2021 10:18:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230259AbhCVOSs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Mar 2021 10:18:48 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1F8CC061756
        for <devicetree@vger.kernel.org>; Mon, 22 Mar 2021 07:18:47 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id j7so17136735wrd.1
        for <devicetree@vger.kernel.org>; Mon, 22 Mar 2021 07:18:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=eDCWh6/zJaj6zj0loMji4f0PCuzcxZ0geR05LJmW8Tg=;
        b=oVyA+z3y23uEnKtQkY1RQf5yBOuxoeerXKQv7B381EZ76ZS862W5ZxxSKg2fAoC19m
         YE5wIA6FXOdsJY8P6ap7/h4Z02gjoxAqK5eB0iEJRDvasHi17g7tCithsM+mpdkg15ys
         5qc2ONzgmVZp56LOkrB9V9pUvk1Wjk2VTSzv3mFa4yanuJmGBMXRG/4jREIBVtzDN0tK
         XU69jMatGZFzSkq5Rv6ckSkcmoUQtnLuCXDT6t3DuPILC76D5F85UyV8mU0PUeMGKFjd
         GqjxqA6ojxl/3+po1xeqe4ZRjh6yIlggCJoRyeTdgt8YcI55JWl3P16jdlw0hl2yoaOj
         +fUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=eDCWh6/zJaj6zj0loMji4f0PCuzcxZ0geR05LJmW8Tg=;
        b=s/ENvLxBaA/pVuylDa7oDYNuDhICxK+YXPd6b2C6FIBfGNrkQyb6UpigaoQiQFXyxS
         +d5IEFvvN4zWbFBbggsguKDgEV0v8SZzrtlf7EWHI4USdg8G/C+0+IcEUKar+3kNZofY
         XscP/+3W6BYahrQKMnW+CneRjAyE0wWol62oAiGcA3emZbWaor3emvYXuyUjR+Ki+O6A
         hVlKqQZWN3QgOK5GrEdPHqHPQAq1fVSTQCtg+EnZZZO1c97SsnOq9H39x4Zv8hF1n39A
         k/pMn8vh2yNynW9E4fbFQUAO3ZCwadj6SB7kxAei4jFL2WxFaUvIczPRW4V1YG8JS6u5
         b5Lg==
X-Gm-Message-State: AOAM531cON7rNfP7SmAPA/3aD8J63/OyeidQU4JZZ/tGpVOySqSv8hV1
        Ul/p2vXX1/BfnAmtA37B8pqbAg==
X-Google-Smtp-Source: ABdhPJx4TchNaAFzgkknT14TZmeFXnxSJqznxfQPDOGIN4glPGFPb8gW6hhV2mLK1NhbSD4LnbVcbQ==
X-Received: by 2002:a5d:55c4:: with SMTP id i4mr18636846wrw.84.1616422726280;
        Mon, 22 Mar 2021 07:18:46 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:2091:71d6:3ab2:37f2? ([2a01:e34:ed2f:f020:2091:71d6:3ab2:37f2])
        by smtp.googlemail.com with ESMTPSA id r11sm20213102wrm.26.2021.03.22.07.18.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Mar 2021 07:18:45 -0700 (PDT)
Subject: Re: [PATCH v2 0/5] arm64: sunxi: Enable the sun4i timer
To:     Samuel Holland <samuel@sholland.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org
References: <20210322044707.19479-1-samuel@sholland.org>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <7bb14a82-5dc9-cefe-4b58-1d2c83974965@linaro.org>
Date:   Mon, 22 Mar 2021 15:18:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210322044707.19479-1-samuel@sholland.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/03/2021 05:47, Samuel Holland wrote:
> In preparation for adding CPU idle states, hook up the sun4i timer.
> Having a non-c3stop clockevent source available is necessary for all
> CPUs to simultaneously enter a local-timer-stop idle state.

Why simultaneously ?

> Changes from v1:
>   - Removed H616 changes (depends on an unmerged patch set)
>   - Reworded the patch 4-5 commit messages for clarity
>   - Added Acked-by tags
> 
> Samuel Holland (5):
>   dt-bindings: timer: Simplify conditional expressions
>   dt-bindings: timer: Add compatibles for sun50i timers
>   arm64: dts: allwinner: a64: Sort watchdog node
>   arm64: dts: allwinner: Add sun4i MMIO timer nodes
>   arm64: sunxi: Build the sun4i timer driver
> 
>  .../timer/allwinner,sun4i-a10-timer.yaml      | 42 +++++++++----------
>  arch/arm64/Kconfig.platforms                  |  1 +
>  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 25 +++++++----
>  arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi  |  9 ++++
>  4 files changed, 46 insertions(+), 31 deletions(-)
> 


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog
