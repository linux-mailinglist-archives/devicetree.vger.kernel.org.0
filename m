Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 76F3C62777B
	for <lists+devicetree@lfdr.de>; Mon, 14 Nov 2022 09:24:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236275AbiKNIY3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Nov 2022 03:24:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236330AbiKNIY2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Nov 2022 03:24:28 -0500
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7356A446
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 00:24:27 -0800 (PST)
Received: by mail-lf1-x12e.google.com with SMTP id s8so926075lfc.8
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 00:24:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mX7K+g1+HW/CWwyDEKxY//PTFx3zv2qtto+vRJUIuOI=;
        b=dXI7heLthe0Tjl8jMmcyg784Yytf6YYvtMaeIbuzD82wNx4ULfsqv5nRAbLJ4aE2nn
         wxqeiiG1gd74M5Jb1FEa2Esbtm2Q0FKG8RtRozlhHReZfK3gldgF+jC9cNHrWqQIXeE/
         5ZpnmSXG3VH1uMdjAtmHQx5jvFS/MUSZ57D2j9ysBSFJUVDI9ODVux78D/TlxsHCxD0E
         PG8XEwuBEP3p0oF4BagAoyqAKYAcK2bHEj47mVA0FaZ3Yf9U3GpxqZZDG4V9ejyxYMLS
         xp9PAAO1w/2jB0VDOn5gZEQjqEWkeFgx4YKUGR5xIt66aLKmVAMq8lspuuwuN7PLeMNJ
         zomw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mX7K+g1+HW/CWwyDEKxY//PTFx3zv2qtto+vRJUIuOI=;
        b=pwZT08FNYOLXzMW9tJ2EAkpfyVVCNHdlklGcvjLfI8PQS7Ps2g+d/43W40hd8O2azf
         E60gXjQVbSgP30fyR/djGy2aCZGgg8zfbPlAe+x8WkGJnqIwt/J2tf1nN83uP6peo/nq
         GU7A8YLIrEdBbdX9bhytiPg4gXu32jdarAtV/7IV//WGhEjemTpLSZQyYgd3sM49RB0j
         Ell5iVekZq3ig9YL+0ongJAJef6xacDJSwucmhngZ1SO2ck7l+hrEqkfIVpRMLQkRk6J
         yrlHJ0EuMCxbTjCiKpRxepywzJwTwgDjeWT1wStyyTOma8G/h+xYDG11vNvDI9YY9wW/
         PH9Q==
X-Gm-Message-State: ANoB5pmvPmIVXaBAf4rydUSdqxMKmJP/LhIVvqpToLE04SFY+Osa26sX
        t98pRE7iAW2DKU7IcrOM8wPsrQ==
X-Google-Smtp-Source: AA0mqf7iLNCZJ2eZU6SC3h0KAiScdNro51pki8wDvgKdcvb5ClGjeyXxYBJj4rX0NXA/q962vvLqMg==
X-Received: by 2002:a19:915a:0:b0:4a9:e691:9232 with SMTP id y26-20020a19915a000000b004a9e6919232mr3506273lfj.182.1668414266192;
        Mon, 14 Nov 2022 00:24:26 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id i17-20020a2e6d11000000b0027709706194sm1886628ljc.49.2022.11.14.00.24.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Nov 2022 00:24:25 -0800 (PST)
Message-ID: <040e00e1-00ea-32ca-09ff-ba3a35631a31@linaro.org>
Date:   Mon, 14 Nov 2022 09:24:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2 1/8] dt-bindings: sun6i-a31-mipi-dphy: Add the
 interrupts property
Content-Language: en-US
To:     Samuel Holland <samuel@sholland.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Vinod Koul <vkoul@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maxime Ripard <mripard@kernel.org>
Cc:     Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-sunxi@lists.linux.dev
References: <20221114022113.31694-1-samuel@sholland.org>
 <20221114022113.31694-2-samuel@sholland.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221114022113.31694-2-samuel@sholland.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/11/2022 03:21, Samuel Holland wrote:
> The sun6i DPHY can generate several interrupts, mostly for reporting
> error conditions, but also for detecting BTA and UPLS sequences.
> Document this capability in order to accurately describe the hardware.
> 
> The DPHY has no interrupt number provided in the vendor documentation
> because its interrupt line is shared with the DSI controller.
> 
> A trivial interrupt handler was used to verify that interrupts were in
> fact generated by the DPHY and not the DSI controller.
> 
> Signed-off-by: Samuel Holland <samuel@sholland.org>
> ---
> 
> Changes in v2:
>  - Add the interrupts property to the binding example


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

