Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A75BE66DC06
	for <lists+devicetree@lfdr.de>; Tue, 17 Jan 2023 12:14:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236651AbjAQLOS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 06:14:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37048 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236245AbjAQLOD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 06:14:03 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5121022DF1
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 03:14:02 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id j17so3412253wms.0
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 03:14:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5c6PQv5GDgoyaWnn5uofPaSB861bzKOXtS7P1VBEJ/U=;
        b=Nk/wdM/1VqUObTxcVlYCjIrEQiOGg01+NejeWKj3A0J0beqUDjQppB8tjx7tBpvlkr
         rngzVdxAPrEZo51OICubrBRkuIyx58Wu8ssiLWJOMxUNByovxd8mQ/49jpjupLAmQfjC
         iOQRZk1hPaV+HJYW4HJZVjt2uIhEHcowGRcV3lieECu5lsvrByPBb6Vv4ioKXwdE4LrW
         NoFPu0Gjt2z3g12+u59NAC60TaBR6mMknCF7h7nA4W29YuIC6+8mBNc0dV39+ZO6v9OE
         tmkSXoli1xeWAZOBR9Xj1AK3BKtirK/oFhFfttnofHpq2paqhlgdPS6ya2eVrHNf7WKb
         dftw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5c6PQv5GDgoyaWnn5uofPaSB861bzKOXtS7P1VBEJ/U=;
        b=I1K9AstPA9FOK4bYrGs9pQJtzmS9l5rhLRIvBWrPM1tIgCZSA6tpL94BOG3U+qfp5e
         pwUEWGHeTky4Cwshp2NU1Oh0b0w+ugP70Wdl4u8ikFAscbrjGGeE2lKbW/NGyWLU91zS
         D2SNUbTA7vvBtFQz7+ty0qdOT/JrNCE1Z8aKittxBVk6QA+d1p1YvG4TEakkGiveAFGY
         8X1w3LGHvWwTcp6mblIw706wAYzCe9nYC4TPF6c1yYqVDHeyLaFgRr4O6lDF0tQup9vf
         EBsUrsM/dM/957uwzTZOQgNPe8FfjsS5SfLKZCnDygBkk88YRLyllAv70Vl0RYhwIWRJ
         0eFA==
X-Gm-Message-State: AFqh2krt1Hm8wdJIghmbjQfwIUmTqNUjeg73xNmL03+iRXpwYIqvaBYT
        YvC7SgRobeqYaUwTcQbwFE95Rw==
X-Google-Smtp-Source: AMrXdXuJrE/xyfiC0e2ujkxah8GjLYIzyARgUfH5DW/c0SrRHy2YVO0pgerg1muM2XJiTBtv7/MUcA==
X-Received: by 2002:a05:600c:1e08:b0:3da:f443:9f0f with SMTP id ay8-20020a05600c1e0800b003daf4439f0fmr2682284wmb.18.1673954040940;
        Tue, 17 Jan 2023 03:14:00 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id h8-20020a05600c350800b003d990372dd5sm46086006wmq.20.2023.01.17.03.13.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jan 2023 03:14:00 -0800 (PST)
Message-ID: <d1d2ca7c-bdae-9c68-398a-8efa151dcdd0@linaro.org>
Date:   Tue, 17 Jan 2023 12:13:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [RESEND PATCH V4 1/5] dt-bindings: usb: tegra-xudc: Add
 dma-coherent for Tegra194
Content-Language: en-US
To:     Jon Hunter <jonathanh@nvidia.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-tegra@vger.kernel.org
References: <20230116151917.94193-1-jonathanh@nvidia.com>
 <20230116151917.94193-2-jonathanh@nvidia.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230116151917.94193-2-jonathanh@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/01/2023 16:19, Jon Hunter wrote:
> DMA operations for XUSB device controller are coherent for Tegra194 and
> so update the device-tree binding to add this property.
> 
> Fixes: 394b012a422d ("dt-bindings: usb: tegra-xudc: Add Tegra194 XUSB controller support")
> 
> Signed-off-by: Jon Hunter <jonathanh@nvidia.com>
> ---
> V4: This is new in this version

Same comments as before resend.

Best regards,
Krzysztof

