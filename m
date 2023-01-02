Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CFCBA65AE32
	for <lists+devicetree@lfdr.de>; Mon,  2 Jan 2023 09:38:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231800AbjABIiA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Jan 2023 03:38:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51878 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231636AbjABIh7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Jan 2023 03:37:59 -0500
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F6C9DB3
        for <devicetree@vger.kernel.org>; Mon,  2 Jan 2023 00:37:57 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id bp15so40711434lfb.13
        for <devicetree@vger.kernel.org>; Mon, 02 Jan 2023 00:37:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dKD2oYPqxwkscuSJaX6n62Thy0hpYICuwbwjsxv57qM=;
        b=gYEx/1FRmw8zLpDIyMXcZcxPcdHEoaIcnXlIiAPMRnHRivVJPxrOzzTmJI0JUcg4/y
         DDooRLa4gEEPb18BBcx058gElU88OuYbXzl45XQNwCkq+jQ4TP7zuFwaQePgi4rSPTeT
         QfG1S7JDXxWv5tXK460mNUpQKfGbQ+yq5zVvboCskiAIpnr6fJDBl48iJKWhrc+5fwr7
         Y/DXenuvMGsNVSZbC+Z+y8knuzSoYwL2mTGVXbNEtXFL8Wi8JOVBsXjl1joDHbHOQxj3
         lBopg8lAkzjSB7vsrkyovQ9OSuP5476PSkyj2UnNBNKBo0WzBzUVsL070t1MJdbB8/sO
         xsUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dKD2oYPqxwkscuSJaX6n62Thy0hpYICuwbwjsxv57qM=;
        b=Q9Jt18c7e86y8/6EEkF+uLGl7pN7tZ5E1tolZv31kOtZEU0qXQTXeDXeKcuMSdZNqY
         ObF2acuVFjenEyLAs9cQRRbXc1+NmadkqHENccO0HjlbsnV06JQqGaJwvmMbcJUlpWi7
         TsygW0Ln7PZ2VYVnkgLixUjJKrjzpLZnjp6a8WSwlimY2As+iFtypvI6Xr5H/KE+6kJN
         JFVXBMmGk9LYtZ7RBs1e/7PEw1MLSEz8ugKRH/9U0kNTm/3Isid+bxRdf/lfIR2gEn8b
         tzPJI5HggTBRrw3GFsXdHZOIWQfKtLY2GacARmeA9ZGTCG+Y2anpKLbeybrY37QgsFru
         LFpw==
X-Gm-Message-State: AFqh2krFfbfLi3fd1J3kOkwqG63Md9lcnkdltKEnT46r4AXOd5ZAtH70
        p/KHkTNapbxhXRUPJ4q+1H5aqQ==
X-Google-Smtp-Source: AMrXdXvWlfzV6v1AovzQ6WCwDTJ91eiRjLyxdA4DU/SipyZ379kerF3xRO1hINRB9jDpF8iPSA+P1w==
X-Received: by 2002:a05:6512:3901:b0:4a4:68b7:e71c with SMTP id a1-20020a056512390100b004a468b7e71cmr11288683lfu.6.1672648675984;
        Mon, 02 Jan 2023 00:37:55 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id y13-20020a19750d000000b004b55e16931fsm4440975lfe.259.2023.01.02.00.37.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Jan 2023 00:37:55 -0800 (PST)
Message-ID: <8a2016a6-5365-a231-ff4b-68dd3403e4e3@linaro.org>
Date:   Mon, 2 Jan 2023 09:37:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v2 2/3] dt-bindings: arm: fsl: Add the Starterkit SK-iMX53
 board
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20230101184651.807900-1-dmitry.baryshkov@linaro.org>
 <20230101184651.807900-2-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230101184651.807900-2-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/01/2023 19:46, Dmitry Baryshkov wrote:
> Add an entry for the Starterkit SK-iMX53 development board.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

