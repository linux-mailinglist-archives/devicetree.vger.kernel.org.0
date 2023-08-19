Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5628B781814
	for <lists+devicetree@lfdr.de>; Sat, 19 Aug 2023 09:43:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344339AbjHSHmQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 19 Aug 2023 03:42:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47144 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344334AbjHSHlq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 19 Aug 2023 03:41:46 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3BEA63ABC
        for <devicetree@vger.kernel.org>; Sat, 19 Aug 2023 00:41:44 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-99c93638322so337098966b.1
        for <devicetree@vger.kernel.org>; Sat, 19 Aug 2023 00:41:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692430903; x=1693035703;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mL5yjhdmw8GacqDjOvdF9rVaf+/ZSZWnODXm2yL5ZAE=;
        b=OS7FDLT5qemjOv0zalS3xNpn6eNWnNlWTJqvcAbWN7Gwn+nm7jz+VwxsexO8n9OMgD
         aA0v7ZeMVsuvJGx9mKJBHjY93idpOQ/C4seCJmm3vnxzlveV4DphhiSV9+eIGHlrD5oJ
         xiw19zfWTNGF1gCmMYxdv46kIuBiUkbi46zEIm80BRqyjOtSpmf9TBMdSqSBAs49UZON
         n2OnIRxmqkhhchxX13o79BrFE8Uhb00Kgb2BDdCuxmho5StNo2s68aPIgAnXTzBNIhDC
         mVBVaD0O3F0Hht+EG/4eIu05OsASDtkuzxEmFMTluCum1Orn7Q6BDbHxVVZyEKdjeKg9
         ZU4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692430903; x=1693035703;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mL5yjhdmw8GacqDjOvdF9rVaf+/ZSZWnODXm2yL5ZAE=;
        b=Z01CADMKiZTj4B4rwxZuvqxkSRPitITgI9ZUM4FoPQwPsm57jRwKHXJZbHwNvqM66a
         VV5+yqIl5xAgkSDKwPEBsDROAm2q17FFEBM1pG3AF4gLzShX2ZkXKadYoOF8iVlRG9zl
         4FF4yCRa9VZl6wTrubdDhikrAmrdObJUdmqhmpz08yNi+CZB8lQVWv8sKUtiIuv4ORZC
         0/eK5po4KVjxOqKQHpFgeiSIBvAKcr9F+re3LyDL2OVPlSYVgAHu1mUulSMtzRjUCHwL
         8bGeKoHIcNcYKj6AIhqNGkkbOzs4DX454tOQukRk5Nx8WN38c+7AcTIormnDEdUGxo50
         vt8w==
X-Gm-Message-State: AOJu0YwQiqOTPqW5Bpk88kFAJjVRynAOzvihO7W/lNehRLIgIpUz/Z5P
        0V1fKTz/+w/PIB/XTQO5hYK7vA==
X-Google-Smtp-Source: AGHT+IEg1hWfCSvOgsaSQlDTxjjOn5EwetNePa41wADm35vr3XLbYE6ijpcyaBjC+nmjFBXWf9FJQw==
X-Received: by 2002:a17:906:7316:b0:974:fb94:8067 with SMTP id di22-20020a170906731600b00974fb948067mr1396252ejc.23.1692430902721;
        Sat, 19 Aug 2023 00:41:42 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id bv24-20020a170906b1d800b0099b8234a9fesm2241070ejb.1.2023.08.19.00.41.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 19 Aug 2023 00:41:42 -0700 (PDT)
Message-ID: <e572cb3a-54bf-8f08-e74d-e1df42548b6a@linaro.org>
Date:   Sat, 19 Aug 2023 09:41:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 5/8] phy: exynos5-usbdrd: Add 26MHz ref clk support
Content-Language: en-US
To:     Sam Protsenko <semen.protsenko@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Thinh Nguyen <Thinh.Nguyen@synopsys.com>
Cc:     JaeHun Jung <jh0801.jung@samsung.com>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Marc Kleine-Budde <mkl@pengutronix.de>,
        Heiko Stuebner <heiko@sntech.de>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org
References: <20230819031731.22618-1-semen.protsenko@linaro.org>
 <20230819031731.22618-6-semen.protsenko@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230819031731.22618-6-semen.protsenko@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/08/2023 05:17, Sam Protsenko wrote:
> Modern Exynos chips (like Exynos850) might have 26 MHz OSCCLK external
> clock, which is also used as a PHY reference clock. For some USB PHY
> controllers (e.g USB DRD PHY block on Exynos850) there is no need to set
> the refclk frequency at all (and corresponding bits in CLKRSTCTRL[7:5]
> are marked RESERVED), so that value won't be set in the driver. But
> even in that case, 26 MHz support still has to be added, otherwise
> exynos5_rate_to_clk() fails, which leads in turn to probe error.
> 
> Add the correct value for 26MHz refclk to make it possible to add
> support for new Exynos USB DRD PHY controllers.
> 
> Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

