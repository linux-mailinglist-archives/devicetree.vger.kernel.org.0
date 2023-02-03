Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7B5B968910A
	for <lists+devicetree@lfdr.de>; Fri,  3 Feb 2023 08:40:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232363AbjBCHkD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Feb 2023 02:40:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55918 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230180AbjBCHkB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Feb 2023 02:40:01 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 114E593AF3
        for <devicetree@vger.kernel.org>; Thu,  2 Feb 2023 23:40:00 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id j29-20020a05600c1c1d00b003dc52fed235so3188279wms.1
        for <devicetree@vger.kernel.org>; Thu, 02 Feb 2023 23:39:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eDG+Tq9iDGbHsf5EgNu0sPH0oktHNFK56axN09nipps=;
        b=yptLRVcqgMEv8JFQdUEfePL7JJZ5m6e8TTX6WXgdibOU5Xgo43x2mz1dEM1ustKfPV
         TojcrLeEU06LWS9QaEqyVsJF9DvFP/uM5FBnYICrJmklLai385IRWMYCye7Q8e00aqko
         5cNF/XAhVJ44XEB0TIFQm0lLj0SxLQyVPuCQRyMu/oEwnY34X+gboWZOJV0hb/Xg+tV0
         Ozv3lTqxqQHZcGKMU/7E/dA8YKdioh1tx23nD6Ndr+nbIwXcq30e1/RxsWZ3KZXh0f/1
         7rxeAf/947EThE7vujkmhADU7gxp3YmZDFASuX6fP54AQWqdq7oYBCIu9TWzd+GjBTDc
         9mBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eDG+Tq9iDGbHsf5EgNu0sPH0oktHNFK56axN09nipps=;
        b=7sP0dN/ReRSTNm6N/+k+5E8W1PmLSzjAskjbk3M9yUPAHhj9k+rOGEN5PA+lZzrVKJ
         Ai5f1qgtcttGWg/LGY3qcKWSzrpE+mZGgNxIRvJMqJPdEiz9a4XNRCfozekSZxSGrvfg
         M02Bd6WMlLh937jCycpcHlziUEhrRnSYEbRXHi9G/kxDUCwLf5Gk9K5HIyVyu2jjVHRj
         qiymiLcWTsmaveFju7tlVDPFex4AWa2U43a1MhuWitapfvSf+wG/llTAihxrdpSxcHMG
         uXdX8rMTf9Bu5+NYeT4GkCBS4ywK+I2TC/ijSo2D9TUwp2aU7bDa+CRbAhQ9XHDzh9ts
         IoFQ==
X-Gm-Message-State: AO0yUKWdUqCq2g6zMnKNzd0mL8n2S6TkLNhdX/Kzs+IdbQXMGzZUYum1
        GtB5Klm7z2rX1RFlfYK4LHk8kw==
X-Google-Smtp-Source: AK7set+WVSL5lEE03IKAtRDn0G9GQ2gh7h7Cg2Buma4kwR1Id2znaqCke5/4PO5RGEDw3TtaU0/xNw==
X-Received: by 2002:a05:600c:5389:b0:3dc:557f:6126 with SMTP id hg9-20020a05600c538900b003dc557f6126mr10773527wmb.4.1675409998149;
        Thu, 02 Feb 2023 23:39:58 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id q14-20020a7bce8e000000b003dc49e0132asm6747405wmj.1.2023.02.02.23.39.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Feb 2023 23:39:57 -0800 (PST)
Message-ID: <0012a2d8-ef4c-400d-7236-a2afbcdddf47@linaro.org>
Date:   Fri, 3 Feb 2023 08:39:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 2/9] ASoC: dt-bindings: meson: fix gx-card codec node
 regex
Content-Language: en-US
To:     Jerome Brunet <jbrunet@baylibre.com>,
        Mark Brown <broonie@kernel.org>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org
Cc:     linux-amlogic@lists.infradead.org,
        Kevin Hilman <khilman@baylibre.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org
References: <20230202183653.486216-1-jbrunet@baylibre.com>
 <20230202183653.486216-3-jbrunet@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230202183653.486216-3-jbrunet@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/02/2023 19:36, Jerome Brunet wrote:
> 'codec' is a valid node name when there is a single codec
> in the link. Fix the node regular expression to apply this.
> 
> Fixes: fd00366b8e41 ("ASoC: meson: gx: add sound card dt-binding documentation")
> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

