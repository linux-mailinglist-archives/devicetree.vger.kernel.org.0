Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 82F9E663D1F
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 10:41:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238222AbjAJJlw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 04:41:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52170 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238164AbjAJJlv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 04:41:51 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E23A8D
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 01:41:50 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id bg13-20020a05600c3c8d00b003d9712b29d2so11339725wmb.2
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 01:41:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fl7nJuLJ5mbgdG7vizY55LQcwlj9pQvh5luRorI860s=;
        b=kXkDrGSiZYxAPeHA551mIMZj/MahXh+BNHHEd6AgJX48+rSY6jKXLSXSaJO8LEt3EL
         6oivY8xz+4EYNhp7iFchhaVKfDT/apJJI0gzFcVAii2CNs1EZoxcee/TxGkzuR90cWGi
         /4jwaogQ+AbZh0Qu4V3hdkY3kWXljBJDVAX4nvlWr7CkF+w/tkZHy6qbjaSfmVoF1gSE
         VOih9NAXnmRJivvOXaxyeH0rkgnqAQhgwQQ11Q4O7K0gvKdQ1fLWRSs090meq7sypN4M
         4/G3LAcvSOD/FFjASKm8nPHiPXZc4feB8Lx2umAQxxwp+lyj5d0gxfwDzALycYsM5z8O
         uSzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fl7nJuLJ5mbgdG7vizY55LQcwlj9pQvh5luRorI860s=;
        b=bQbUT4VoVQEcNgMD38QXsXWdLlrlK8UP4e4vRMQz8+qfLJ5EF3xKR7WJl7HJDSvBM1
         l7wEeE70VOeXIWnIhVIzLkghVRbJvQ1/XX/c+7OFHCIbMZlXWezlw5HAuKAUJlijh4dQ
         DD/svXdMyv8EWc+Fyxvo6MKeQsbBf52qn3FdmZ+k6X8+3MzrGWYP+5x9x38/bxup1fzy
         Y9QdHvLVfAkTiH2QlBwHkLV2vCWV5WKzoVhN8j0PjBEZchzR6FjQf1qxMsoUD0xbma9Q
         wp/k0FfA01cevQligbV69+Hjn3n1y3tRQj8dAEIIrdM82CUxhTGBFOo4gdNCZed1AvJw
         Vu9w==
X-Gm-Message-State: AFqh2kq0CXlGJE+i7irLCqhhSasKsrWjTdTWiPPut7AW6E1vn2Yq7ZHh
        0ceyrQ8bUFegUSDej6KnQLnMMw==
X-Google-Smtp-Source: AMrXdXswSrV23jX+Wyu7nL0jsPtdPSAbZCvgsWZwX4TAExAFAjaJOEEIFqb0KDvYUscOldArNjBnGQ==
X-Received: by 2002:a05:600c:1c97:b0:3d1:c8e3:2452 with SMTP id k23-20020a05600c1c9700b003d1c8e32452mr50988229wms.30.1673343708736;
        Tue, 10 Jan 2023 01:41:48 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id r5-20020a05600c35c500b003d98f92692fsm15671155wmq.17.2023.01.10.01.41.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jan 2023 01:41:48 -0800 (PST)
Message-ID: <12510bb3-43a0-f2a0-f0e3-37dfec84f6b7@linaro.org>
Date:   Tue, 10 Jan 2023 10:41:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 3/3][v5] dt-bindings: arm: fsl: Add i.MX8MM-EVK rev-b
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
 <20230110092830.3282561-4-johannes.schneider@leica-geosystems.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230110092830.3282561-4-johannes.schneider@leica-geosystems.com>
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
> Add DT compatible strings for a rev-b imx8mm-EVK which come with a
> different PMIC than rev-a.
> 

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

