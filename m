Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2F26C663D1E
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 10:41:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238160AbjAJJlh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 04:41:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52068 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238326AbjAJJle (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 04:41:34 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2DC98D
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 01:41:33 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id i17-20020a05600c355100b003d99434b1cfso9368024wmq.1
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 01:41:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Q1c9aHqCvcpBxSZmIa/w9TJir2sFfRFT43z/0k9S38M=;
        b=XrmPFrQ0zXqNUPuU++x4BV6LlYRetAqCPW4o4DiGaklcriUrZ0FmRvAFeJgJ0jR8F6
         YGmF00/EyOfzt0RwY+3ImHHIEEyEu7wClCq1/++pNQMB1T/6PsGw/8xJUpWbavSS/UDK
         CWp+b0kWvKsYO0k/CN6ZADvmweLPYhmAPDQs5SG751ZewGF4VvwkqebbWw64bbNxpChj
         YsZ/BCpsCQ2lCBRtfRsinwoyiR01iRPtaZF2kW59zhmZxSgBBjwQX2u0GqdxdLnPFq1L
         jpy0ACA6LM492VACs8kKP/E8rFq1GknIOjxV11fl28Yem6BpX3FH64G9SbhIWc7F5VnV
         hUTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Q1c9aHqCvcpBxSZmIa/w9TJir2sFfRFT43z/0k9S38M=;
        b=W7UhAlwMZDxNO7p4xMTvu7sT1hyK5N0OAdRA6zTXNxHPvFYWuWsLcyLC1izt5ZEmPA
         jL5ANS0Sy+gh7KPAKluixotLF8KhTuUokJ2yncaF3H2VNWaodUYs3Pa73+MBxLMXPEqB
         jxwiOSOZWzX9uSkAEJH3fEXVYGzmCLJ6hQyx+4j5uCG/C6HJSu43y8puy3gsqqeQxeUB
         69OLVMYVtgzPjKcE2JJ8AHgsbQnqouQKFJl5Iggo6LT8ZhDQ97zfnuuy60TREipH5Zho
         a/rVWJT4Ywovm5gvzhXEBAujEhy0I61Bi6a2Gnr3RBUJx0rHqBvLktPMSa4kFaQ1mJMM
         tURw==
X-Gm-Message-State: AFqh2kr+zt8tT4vxJXEl9kujKMWfmhDrb/QwMvj3pvOZ3EwJzm1CxKFX
        L5L3wHAELL3momxKU9jCLKRPyQ==
X-Google-Smtp-Source: AMrXdXujWwBotaAOM6xKOXfsaQFNCG3VADvN5qEYoG/NGKWyxKoWZR7j1sz4/Ta8wIHW7XEt1gRMNA==
X-Received: by 2002:a05:600c:246:b0:3d3:3deb:d91f with SMTP id 6-20020a05600c024600b003d33debd91fmr51191676wmj.5.1673343692416;
        Tue, 10 Jan 2023 01:41:32 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id r5-20020a05600c35c500b003d98f92692fsm15670059wmq.17.2023.01.10.01.41.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jan 2023 01:41:31 -0800 (PST)
Message-ID: <a3e0c4d9-525b-cf5c-5892-a206d6ef18e9@linaro.org>
Date:   Tue, 10 Jan 2023 10:41:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 2/3][v5] arm64: dts: imx8mm-evk: add revision-B EVK
Content-Language: en-US
To:     Johannes Schneider <johannes.schneider@leica-geosystems.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Li Yang <leoyang.li@nxp.com>,
        Shengjiu Wang <shengjiu.wang@nxp.com>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        linux-arm-kernel@lists.infradead.org
References: <20230110092830.3282561-1-johannes.schneider@leica-geosystems.com>
 <20230110092830.3282561-3-johannes.schneider@leica-geosystems.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230110092830.3282561-3-johannes.schneider@leica-geosystems.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/01/2023 10:28, Johannes Schneider wrote:
> the current EVKB come with LPDDR4, and a different PMIC

No improvements.

> 
> Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mm-evkb.dts | 132 ++++++++++++++++++
>  1 file changed, 132 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-evkb.dts

Still does not build.


Best regards,
Krzysztof

