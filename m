Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3521F629B9D
	for <lists+devicetree@lfdr.de>; Tue, 15 Nov 2022 15:11:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229990AbiKOOLU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Nov 2022 09:11:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229821AbiKOOLT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Nov 2022 09:11:19 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC6355F75
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 06:11:17 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id a29so24593942lfj.9
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 06:11:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZmLKUGLqokfps8GJiCgaTlP2Y9BKzDEkzABOvID/vlU=;
        b=JzJ9i59F0v10dL3aEv5XJzin87ddzgfggJa7d4CBmCZHpBZygoMfHnhygqY6kyeyzg
         DfPOPnbmUG0nhsR1O8iRZI3akiRRl7Z1QRI14XBpojSpWIGQmi2hWJTc5WEVN3I98El2
         hB7DPo5SMTBY+vcumXnYhwZ2Evmvqx7Z/3fLEEipOn8QGjAUh9GtACiUHxLqqZ+Tezkh
         1zpUwvDACTS29IiBFPFo4ZpoCUHFHjQuovtDpci591suRETZWkr0SKNnRipYGMoQi4gk
         dbqQOjLUHavwBjsXvXLmPS40aDdn8XUq/KfZ0uVafxnPS9VzEAzYj5ix1bb6dXkI+/u8
         sJCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZmLKUGLqokfps8GJiCgaTlP2Y9BKzDEkzABOvID/vlU=;
        b=Ski61JjZzjdsZzNeXrzeigHDJz5BbjP6TFp3tSujayAQsCb+asEtiyovnLwrkZfNR2
         5C+Bt1g2OGztVCmzVwtId9tOwQhq5cV5Uq5fj/l5bdamlEGJsv+ADj8ZLNWz2XQBu2BH
         9X0nY1cjXIJFzp+IYsY0W1ynzK9WxNOS+Xlujrlq2hi9v5aCOBP/YfgtSyJiIRcv8Qm7
         GV0IcQJk7ECMmBQGbfKKMSkilvmjuMlQbzBIWw0iUyHOa9PAP7yV2+UlMo4aK2Prbco0
         m611dgq/UsSmMTcd/nThuTOKWkclyjTqbYyuLEhnfg1cbTkQT47J0lkJQTlLpLvtMd4g
         YeYA==
X-Gm-Message-State: ANoB5pmH3sc7Ao7xOnWIG185Datroi/T+nzD/lZNhtMtBz6W3fR18Hto
        xSphn6TQxu19iWBD9OrAGbR2djBc4VApGIX9
X-Google-Smtp-Source: AA0mqf6PbaokXOZgQbbzApe+IA/ePQ8zAARWw2EQc8G7b6iXLBLww0bVtbLP3c890JwEBa+g1KCxnQ==
X-Received: by 2002:a05:6512:3f8d:b0:4af:f58e:a7a0 with SMTP id x13-20020a0565123f8d00b004aff58ea7a0mr5476878lfa.507.1668521476356;
        Tue, 15 Nov 2022 06:11:16 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id x11-20020a056512130b00b004a608ec6d8csm2228993lfu.27.2022.11.15.06.11.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Nov 2022 06:11:15 -0800 (PST)
Message-ID: <b7936281-fae3-97af-e480-539d2675aa35@linaro.org>
Date:   Tue, 15 Nov 2022 15:11:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 1/2] media: dt-bindings: allwinner: h6-vpu-g2: Add IOMMU
 reference property
Content-Language: en-US
To:     Chen-Yu Tsai <wenst@chromium.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Hans Verkuil <hverkuil-cisco@xs4all.nl>
Cc:     linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
        linux-kernel@vger.kernel.org
References: <20221115090644.3602573-1-wenst@chromium.org>
 <20221115090644.3602573-2-wenst@chromium.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221115090644.3602573-2-wenst@chromium.org>
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

On 15/11/2022 10:06, Chen-Yu Tsai wrote:
> The Hantro G2 video decoder block sits behind an IOMMU. The device tree
> binding needs a property to reference it. Without a reference for the
> implementation to properly configure the IOMMU, it will fault and cause
> the video decoder to fail.
> 
> Add an "iommus" property for referring to the IOMMU port. The master ID
> in the example is taken from the IOMMU fault error message on Linux,
> and the number seems to match the order in the user manual's IOMMU
> diagram.
> 
> Fixes: fd6be12716c4 ("media: dt-bindings: allwinner: document H6 Hantro G2 binding")
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

