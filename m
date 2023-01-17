Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 17B5A66DC0B
	for <lists+devicetree@lfdr.de>; Tue, 17 Jan 2023 12:15:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236670AbjAQLO4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 06:14:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37392 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236807AbjAQLOU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 06:14:20 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D960933459
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 03:14:17 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id e3so20977476wru.13
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 03:14:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cO6AFziXGC+KpcHbu+/A+8FnY3OCRPyzyDvT638H6Jw=;
        b=pBMQiXW3+m2rhClbC5n2voc9R392J9OF8Yk0XJszmwDflUiQUldtELr3MnMtGhqYTu
         RebSBP7v3lIbmLA1kAPUBOw9RmyF8tSVRjYpgeyCEDAxwb804+rlb4mu7XRjnu1R/BGE
         lkT/bUYk2qvKdy3nYVv9BztXqRLXwuXIyNG6z+qAkhZnUdoyvFMQmo/WqLluAQl9NOAZ
         sc1t8QEKaEiTiSgFxpIkmhhAyAWWY+3e3eTaYl2BbU4x+oAfIADyVeGpVhtIHDoBqHVS
         ylUvVN4FBV2sUdIqqMILMioIo7TqG5zFk9YkQdaVZulz+S9FQwrIsCHQe9vs0c8raP6H
         gvBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cO6AFziXGC+KpcHbu+/A+8FnY3OCRPyzyDvT638H6Jw=;
        b=N+kmRDC0ymt8VXIDwIXF3KQGwsiQQvXEqNszL7Vwr/dwVV8qLFSYFoZkXgml0ljWN9
         OPac6KvjaPScMtx4q469QvHyXN2WGS8pMOToYlRtcfI6pcLqEUZwMt/3buC0JiMfHOBt
         wWt5/mlIB4TOIxzagz5EYXQGBaynT3R+hKYx9OREXNGedOVAOUAg22cQDu+yL2PqmYuc
         JC1AQmUYuqXwSL38reCGMjxNALqFQytR9twRdGvH768q6MzXMsc3pvU7d7yJH1IOHquB
         XVF0L1ilpF5ZRvK33thRbSU/miCJ+Bom4vpmOEzD0NKirZjggL4l8xeEcXLpSPPN87Ii
         ViYA==
X-Gm-Message-State: AFqh2kpGABl+DBO4xW24NWkhCyCyWsE3ULNYqCNjp1IoLLjLL3PSJ46T
        BtYZEO8MFAw0ervVQ9G80476Ow==
X-Google-Smtp-Source: AMrXdXsx+EXkd6COJHr9h/kPZW5zweiWKz4Wsfvp/OGcbhJMuA5X4G0yWz2vjpJw720RK590iR2o+w==
X-Received: by 2002:a5d:43cf:0:b0:2bb:dca3:b29 with SMTP id v15-20020a5d43cf000000b002bbdca30b29mr2279070wrr.36.1673954056055;
        Tue, 17 Jan 2023 03:14:16 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id p14-20020a05600c1d8e00b003db0673ea0asm1749607wms.15.2023.01.17.03.14.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jan 2023 03:14:15 -0800 (PST)
Message-ID: <cd2dc5bf-7609-341a-adb1-87471c41072f@linaro.org>
Date:   Tue, 17 Jan 2023 12:14:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [RESEND PATCH V4 2/5] arm64: tegra: Add dma-coherent property for
 Tegra194 XUDC
Content-Language: en-US
To:     Jon Hunter <jonathanh@nvidia.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-tegra@vger.kernel.org
References: <20230116151917.94193-1-jonathanh@nvidia.com>
 <20230116151917.94193-3-jonathanh@nvidia.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230116151917.94193-3-jonathanh@nvidia.com>
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
> DMA operations for XUSB device controller (XUDC) are coherent for
> Tegra194 and so add the 'dma-coherent' property for this device.
> 
> Fixes: bc8788b2f3a0 ("arm64: tegra: Add XUDC node on Tegra194")
> 

No blank line.

> Signed-off-by: Jon Hunter <jonathanh@nvidia.com>
> ---
> V4: This is new in this version

Best regards,
Krzysztof

