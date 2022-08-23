Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 49E2559D07F
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 07:33:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240021AbiHWFcT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Aug 2022 01:32:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60052 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238558AbiHWFcR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Aug 2022 01:32:17 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 428C55D103
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 22:32:16 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id d23so13840434lfl.13
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 22:32:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=R/QjFUcNKUdiXauvJpNpmHEGX/WH97nlgtVw8sVWY1g=;
        b=TYmHBG9HD9Q1YM2al5mGOFB0/dXez1jKaL+dBGjSWlR4ECz3VY5V5pHNpv9UQ5jfAk
         E4xPPuqeibjHcaeEq7/crPaaYl9QIYYqBrmi/wz9eQPJPByMtE8/dFh02hNt1/1hM0jA
         /8K4F7gEmD+zNXMuHt0YK7MHImrsHYMazvW5yAIFjQYZFWt7Auh8CC9s217k3fvresQN
         EuaKmkFB+YKGPzrq8Y0bNFdeGk9rNptxOo+3afQN1xrkn55MWjFQ5fh6XqtOLKiAR0al
         prMKeLK94cKBna+PFB8BSnc3Wu93DhrQfbkbTkM2MO3w/+SrG5plPc2VCGIs4pjhA/1M
         S4ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=R/QjFUcNKUdiXauvJpNpmHEGX/WH97nlgtVw8sVWY1g=;
        b=1xjGvNgA9Rb0OCAPKOIrPLhD8tSefn61XT/LfqKbWCsAYi7m5mKXz5mxNhtnNBATHo
         AZ0PaFlsguGIimCjX8eQCIZnmHErisK/4i0MXIEM2HyQ8NyQHyQR7KNM+ajLNZVF5CJk
         9DwmD+fXRLfPC1PbZS7MNbcLZVySccAzhRoy6K6qAR0vNuiV5y/XeWrFfm71n/7NaVHq
         m7Jpj429apq9ci6xJkB7RCJm4k3xJtFWd7DhWiyhU5s7it+45DycFU/OdQmK2rTPsDQL
         4weWVjmT89gLFoQkrq2J3AGqQZvAp+TT3mOKMdkfF7yqWmPxR77y6uU6I9PKO/MWnkIU
         WOuQ==
X-Gm-Message-State: ACgBeo3NIDeUp2rX98PUlJmbH0FKeO6zmyiX06Ah0nKCQI1/87aXPMjv
        IJRLg3OZLozIT1V4eeXBWUsxvQ==
X-Google-Smtp-Source: AA6agR4OvDADMwaWRuLgwGpQwmAz8EFd9IyuXL6RMcnA9HrdZmz4xE5aeC+taMS+A4H2C29Y3KZO2Q==
X-Received: by 2002:a05:6512:1507:b0:492:b9ae:5d51 with SMTP id bq7-20020a056512150700b00492b9ae5d51mr7677243lfb.14.1661232734412;
        Mon, 22 Aug 2022 22:32:14 -0700 (PDT)
Received: from [192.168.0.11] (89-27-92-210.bb.dnainternet.fi. [89.27.92.210])
        by smtp.gmail.com with ESMTPSA id z28-20020a2eb53c000000b0026181a42284sm2163307ljm.88.2022.08.22.22.32.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Aug 2022 22:32:13 -0700 (PDT)
Message-ID: <f56e69ae-809f-fe4e-a167-cc2ad10696f7@linaro.org>
Date:   Tue, 23 Aug 2022 08:32:12 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v2 0/6] fsys0/1 clock support for Exynos Auto v9 SoC
Content-Language: en-US
To:     Stephen Boyd <sboyd@kernel.org>,
        Chanho Park <chanho61.park@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>
Cc:     Sam Protsenko <semen.protsenko@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <CGME20220729003611epcas2p1fe80f3eb06160c48c41f10b35d7c03eb@epcas2p1.samsung.com>
 <cover.1659054220.git.chanho61.park@samsung.com>
 <20220823022031.6FBEFC433C1@smtp.kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220823022031.6FBEFC433C1@smtp.kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/08/2022 05:20, Stephen Boyd wrote:
> Quoting Chanho Park (2022-07-28 17:30:18)
>> CMU_FSYS0 block provides clocks for PCIe Gen3 1 x 4Lanes and 2 x 2
>> Lanes. Similarly, CMU_FSYS1 provides clocks for USB(2 x USB3.1 Gen-1,
>> 2 x USB 2.0) and mmc. For MMC clocks, PLL_MMC(PLL0831X type) is also
>> supported as a PLL source clock provider.
> 
> Is someone at Samsung going to pick up the Samsung clk driver patches
> and send them as a PR? I didn't see anything last cycle.

The DTS changes also wait for the ack on bindings (we need to split these).

Sylwester, shall I handle everything?

Best regards,
Krzysztof
