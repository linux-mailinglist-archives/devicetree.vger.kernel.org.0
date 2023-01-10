Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 11644663D13
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 10:39:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238162AbjAJJj3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 04:39:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238231AbjAJJjM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 04:39:12 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B92E8625C8
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 01:39:03 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id co23so11084034wrb.4
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 01:39:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Wslz6y6QZ7b+Yi4wl1WJOLgpi6eGbhoFeVNOIgS6OEE=;
        b=WV6MFZYuvbmdpb/4LUshDVvbSJRKpSlNvjc4yA2utH/ZG/VZJYkaAYIc2vO0f3pIsm
         QEpzWSlx5oq6BtM1epBAzrwoS7e0NORJVmvvMnnLYzmcJ5MXLlGm0bthS5A/RDu1yPYk
         YGodi45emaSuPp9ouc8tIL/GiMz7LS9Vyq+Tu14z5hX1HjWs+Y+4ieJiwJ6+i7kqaBP5
         u2Elf+3PF4mtVfyysacpRGhoA3dnyQPWI96mSEVbKiRetHyLphRngFy+2VMwFut56ubt
         J13jVschTDZXe5pviDqauDXJx/YSfGL8R5tSg4nYiknycQyD8WYRS09znRtDb7iel/oz
         NvLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Wslz6y6QZ7b+Yi4wl1WJOLgpi6eGbhoFeVNOIgS6OEE=;
        b=GBiTSSlkNAT7huld6EbQ090GHwWzSkofWWXwtyiZZcggvcJnxEmZwWv8yf+Ut/J5Ke
         sLRtxRChY86pN7yT7R6TIy0sysn57gQxE2qVaNdkvJp7bH4fefujc5AI2YjYss980isF
         OyedkbafK76z56w6VzmergVnwk4JA/ZJlDJyUdvJIMYlnKCKbYFXymxFgyE7BeAbpecB
         u7W90jm7zg54urI3bAlViP2fLFIhPQGoxXjB/Xw64goqR89VNih/UCCTYz3tFQlutkVD
         7mvHswtQjW1jnX4Z5yLaTifjsvIwXYGqaRTZ5NuRHoxhpqpRhMQpEmPGBA34F7ZJpZ8i
         l03Q==
X-Gm-Message-State: AFqh2kop7JA/vNUTtzeM1noR6Ivp2uKkxnG5ioxsFxQ9Ad4hSpKJqS6x
        i8GA37W/fR9DD/8knZzrqD3Amw==
X-Google-Smtp-Source: AMrXdXtBV8mfO6k2vWrB1Gt+QcpBUTBU1v3bxCarmEcP9YIyloj8n0YZqrr4Y1tiOcuBxJHFwmdtzA==
X-Received: by 2002:a05:6000:705:b0:267:e918:d1e6 with SMTP id bs5-20020a056000070500b00267e918d1e6mr42710016wrb.51.1673343542340;
        Tue, 10 Jan 2023 01:39:02 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id x2-20020adff642000000b002a01e64f7a1sm10895315wrp.88.2023.01.10.01.39.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jan 2023 01:39:01 -0800 (PST)
Message-ID: <5bc9560b-67d8-1b0d-2525-0c4fe8a134cf@linaro.org>
Date:   Tue, 10 Jan 2023 10:38:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 0/3][v5] pmic on imx8mm
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
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230110092830.3282561-1-johannes.schneider@leica-geosystems.com>
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
> current(?) imx8mm EVKs come with a different PMIC: used to be
> "rohm,bd71847", which is now replaced by "nxp,pca9450a" on the LPDDR4
> variant at least the register settings etc where "backported" from
> current u-boot sources for the EVK
> 
> Note: not sure if the changes should go in the ddr4-evk.dts or elsewhere;
> what about backwards compatibility? = users/holders of the EVKs with the bd71847 IC?
> 

Subject version number is not in correct place. Use git format-patch -v5.

Best regards,
Krzysztof

