Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2064B60E3BF
	for <lists+devicetree@lfdr.de>; Wed, 26 Oct 2022 16:52:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234036AbiJZOwI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Oct 2022 10:52:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40444 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233445AbiJZOwH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Oct 2022 10:52:07 -0400
Received: from mail-qk1-x729.google.com (mail-qk1-x729.google.com [IPv6:2607:f8b0:4864:20::729])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D97D0B4480
        for <devicetree@vger.kernel.org>; Wed, 26 Oct 2022 07:52:06 -0700 (PDT)
Received: by mail-qk1-x729.google.com with SMTP id 8so10697698qka.1
        for <devicetree@vger.kernel.org>; Wed, 26 Oct 2022 07:52:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BRAVl/jwTcV9oATKPy/gFpDCwVtUOLelijvTTaSWnGg=;
        b=AjSJc8sbeB9AS4fvGTqF5hOSH88uRNxiEUF5cwc8f9rtlcA+g5xOJ96dOFLewJ8sg8
         zUIKdFb7J90tDQ+DtAV5ExRVljW7NOqNlKX0FFoy031GHB5Psunydm1h6jpp60PvuyNm
         /8I7o1Ql7yZHIPSp/KaWj65QQO6FB5WTgS2ZMng0KSNHlltE5wkrAbp76Y1p4GP9hPsH
         FklH1IiwWTSdfWTYPrs2XxLPnt/KMENpJ63JsNLayK2m27hW5iCwQcMdsnTsRzRa/swM
         an/gCOX2pr04x8U4hSLxWwQwzNOfT0yu+DM8WFb+ddYZT3N4D3coduusPPA5dmgzgrWC
         N5Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BRAVl/jwTcV9oATKPy/gFpDCwVtUOLelijvTTaSWnGg=;
        b=w8/7wuh21EMEkbUTLojBKhi17TXu3prZFFCalwGe8hMcE4SeOp+vfUIPzmW2Hp7l4M
         Y+KL5wOhQBcgq0J7dTX/0sJFmQvtgoX/L/jNqlXYdg3GOzKjk/9CgwIshCQQ1ryaKRGO
         fwTq5idfCXnpIUu19AMhokiEMMm29nCUIE6F/TVr7TbtzVT8Y47rrfsEFyBW39Dvsamp
         09TSFcy/LakxK4ujUuR/JjCRm1j33F3BmYkYmFEYuPaA1comg9sXqK8g7QeTwUF4ZMfV
         kqCAZP9ngVFPBW+08PWISy0xLuWW0Rr4ZZwwSYBhgFMbAHWY/SmZPoGWlnaB78DsTgQJ
         i+8w==
X-Gm-Message-State: ACrzQf3MHclS1FO553V1/L1ENNflhexhxpuf3KWm1uMBO5GvRHFmjgIw
        rk1CCYAG8ieVS43CGIBR2imMGA==
X-Google-Smtp-Source: AMsMyM5iwidwgAruSNa03zv/AGhLCmH/0fY2+r/Jj+TasH9LX4SwHYqK8c3EVcZjjuFFc5SdGMeeaw==
X-Received: by 2002:a05:620a:4385:b0:6ee:7b48:202e with SMTP id a5-20020a05620a438500b006ee7b48202emr31725350qkp.306.1666795926065;
        Wed, 26 Oct 2022 07:52:06 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id u6-20020a37ab06000000b006bb2cd2f6d1sm3885523qke.127.2022.10.26.07.52.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Oct 2022 07:52:05 -0700 (PDT)
Message-ID: <895ab493-dcf2-c9e9-7850-3a6aea9a97ee@linaro.org>
Date:   Wed, 26 Oct 2022 10:52:03 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH 1/4] ASoC: dt-bindings: rockchip: i2s-tdm: Make grf
 property optional
Content-Language: en-US
To:     Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>
Cc:     linux-rockchip@lists.infradead.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20221025124132.399729-1-frattaroli.nicolas@gmail.com>
 <20221025124132.399729-2-frattaroli.nicolas@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221025124132.399729-2-frattaroli.nicolas@gmail.com>
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

On 25/10/2022 08:41, Nicolas Frattaroli wrote:
> Turns out most things don't require the GRF, so making the property
> optional is the obvious move.
> 
> Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

