Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5ADE06AD764
	for <lists+devicetree@lfdr.de>; Tue,  7 Mar 2023 07:25:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230473AbjCGGZK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Mar 2023 01:25:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58400 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229527AbjCGGZI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Mar 2023 01:25:08 -0500
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED21E311DA
        for <devicetree@vger.kernel.org>; Mon,  6 Mar 2023 22:24:27 -0800 (PST)
Received: by mail-ed1-x52c.google.com with SMTP id cw28so48140726edb.5
        for <devicetree@vger.kernel.org>; Mon, 06 Mar 2023 22:24:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678170251;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PDyVs5Tp4AmEIa4jJHYQ3YxnzQdYO9FwD0+92LrKRCs=;
        b=lIBnbYq+X0k7yTPgkk68JfKWSUVPxUVeg1zzbTSiRDJN1muXvqal/zgtajEw5/l5SP
         peUaVxqMflNB8BNDKQrXMdYz66IrjJ3gufIabO8UTjpFb3zeK07r/BgsRQL1DVvNFymF
         sKxo55F2RFUqzG8sMXWldVCP2EBXD0wPBTeKtrEk2wmryXKgfBeYIY9mHHLUdXrZdZQK
         8qWotIDshyKvDGY29RgjBaOHOeoJLuPqxG53Gi8G4y9eVldc0oaW+yB5v+WYbUrdnbME
         TKmQYEpuPlBCBs9FoLKTsIXcf0uE/8k3x6okurqM4P/pwha6JDjBeLczZZwRvAniwm9h
         4xbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678170251;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PDyVs5Tp4AmEIa4jJHYQ3YxnzQdYO9FwD0+92LrKRCs=;
        b=iHVkLOwuumavmhkn854iACVKz2u89Z/PkYzxCEXoOZ674L+BMQwr23j47RF0RiCqVY
         8bj3KRYS7etH+5DtbyTX3amLP2ib4+yv6SPiYatHbtHa+dwZC9n1Bfeu7Jzik/G/qBQE
         nRG6XaYoZivxnKw0AtL6u7RIFgXOfUztQZa9R4OPQhuQUMHx8EfmSvGsDdMMBCJVfbMd
         xLk0P0g5l7/0ugY3bp9kBFANEPmCwBp5Nr/OneCMqPNfxrrSWun+GBnEBpUTQZEvctKJ
         U22LM7HWCwfGsPxdGr+6G9irYSNlkrnP+5NEIhYbKcDhbjfLhc49xkLuwPWP2EFVsql2
         N9BQ==
X-Gm-Message-State: AO0yUKXRxO94UsBDvXGfwHoVEploXmVo0msnv7GDUHe0GHT4sk9jyV7T
        G8Ul/oa70jPQN7XtIJsV1UAKkQ==
X-Google-Smtp-Source: AK7set9bfSWk2Ij76CUHd0mZjRoajT+I8B6prfDGq0xDriLI755FLba/huCF+jlLTB9dH3TQa9jBdg==
X-Received: by 2002:a17:907:7746:b0:88a:2e57:9813 with SMTP id kx6-20020a170907774600b0088a2e579813mr14641357ejc.33.1678170251625;
        Mon, 06 Mar 2023 22:24:11 -0800 (PST)
Received: from ?IPV6:2a02:810d:15c0:828:5310:35c7:6f9e:2cd3? ([2a02:810d:15c0:828:5310:35c7:6f9e:2cd3])
        by smtp.gmail.com with ESMTPSA id x22-20020a170906b09600b008d9ddd2da88sm5552849ejy.6.2023.03.06.22.24.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Mar 2023 22:24:11 -0800 (PST)
Message-ID: <9838a507-4eae-61ff-53d7-44dce932d2df@linaro.org>
Date:   Tue, 7 Mar 2023 07:24:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v12 2/2] dt-bindings: arm: fsl: Add i.MX8MM-EVK revision B
To:     Johannes Schneider <johannes.schneider@leica-geosystems.com>,
        Shawn Guo <shawnguo@kernel.org>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Li Yang <leoyang.li@nxp.com>,
        Shengjiu Wang <shengjiu.wang@nxp.com>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        linux-arm-kernel@lists.infradead.org,
        Marco Felsch <m.felsch@pengutronix.de>
References: <20230307044449.2714529-1-johannes.schneider@leica-geosystems.com>
 <20230307044449.2714529-3-johannes.schneider@leica-geosystems.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230307044449.2714529-3-johannes.schneider@leica-geosystems.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/03/2023 05:44, Johannes Schneider wrote:
> Add DT compatible strings for recent EVKs, that come with a different PMIC.
> 
> The most recent revision of the 'original' EVK CPU module is C2 and the most
> recent revision of EVKB CPU2 module is A4.
> 
> Reviewed-by: Shawn Guo <shawnguo@kernel.org>

Where did you get this tag?

> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
> Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>

Best regards,
Krzysztof

