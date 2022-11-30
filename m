Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E23B263D84C
	for <lists+devicetree@lfdr.de>; Wed, 30 Nov 2022 15:34:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229633AbiK3OeZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Nov 2022 09:34:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60616 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230161AbiK3OeD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Nov 2022 09:34:03 -0500
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA72681D8F
        for <devicetree@vger.kernel.org>; Wed, 30 Nov 2022 06:33:18 -0800 (PST)
Received: by mail-lj1-x231.google.com with SMTP id b9so21073876ljr.5
        for <devicetree@vger.kernel.org>; Wed, 30 Nov 2022 06:33:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=w35jd49HPhO+Jqkn0712oB2y+7R5nYXhRRJ8iiiiBus=;
        b=sQf9QPXHnJLO5ms9yq3mJa19QPCRxDiHgkuCupOOOnVwn/hNs5DO/urR3joJkyBpky
         Vvr8NxI8potWAj+yauWxbTn7o/eBvAWkDYd7Bv7+lKbk7rlqBjaFR9vK2J6I/Jjz9w4l
         Ok1f5qxKhUDqXlFpHTswJlz7tnBK+QTpVna6h1OESNxClbPQv7AmNc+S+HfpqQ008csF
         d1fbLtpUQafRh03JUyoZHo8CNVytb7fZV3Uu9IWs0+6tPkHcDsRbo4UZcnsTvUvy1/L/
         4d5JWGHdX4qENUsreyoMeL9cJd2Qd3I/Ca1d11VbwJeKBiQRTBV21OwEmS37XZuujvzY
         dL/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=w35jd49HPhO+Jqkn0712oB2y+7R5nYXhRRJ8iiiiBus=;
        b=4RtddjklW73PbTu2NT9VzVB0Q90FEjAODYpmk01Mzn2qjTNwe53YX3l/GCq/yeNeau
         uSateSZjgXQNNqCNA7jW0xFVg9ZTUgrjMjs5DD6m7tpu9+pNchibPzO0kHfh36t98i7D
         UWkT3OmyBG5mbqd9mZnJiFPSOKKsrxiekyR1ZbPBVOdLPEfUAlQ+orVKy/HzEfgfDdZQ
         TvOH2VkeLLLyU0+0XzmJfxdbMqSjY8IWPQzma7c5ar5Qu/f9W/5tQiqcb3lu5lO3iYiv
         gJKO/i1+fN2Cdp+GZBTmLmjSreH4woIHV2Ao5AZ3knOsZNUYEgfBH0lq2xFlaegXwwsc
         89Pw==
X-Gm-Message-State: ANoB5pnVsCiG4fp0eTPoPFFbdYAz4nJForQMxayQRxAL0ybCI2s9KKUN
        MP9fCwCyFLBoprDKnYgPuum6Tg==
X-Google-Smtp-Source: AA0mqf5EuFHOvQQ+d29A0qJ/hg77DBRn0DLxyzPRKkxCGimdR2KB25/MA7ihtCKVDWU6yit8fGpjdg==
X-Received: by 2002:a05:651c:904:b0:277:210:41d1 with SMTP id e4-20020a05651c090400b00277021041d1mr14659593ljq.507.1669818797203;
        Wed, 30 Nov 2022 06:33:17 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id b28-20020a19645c000000b004a100c21eaesm279073lfj.97.2022.11.30.06.33.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Nov 2022 06:33:16 -0800 (PST)
Message-ID: <f7eb06a5-9c2d-568a-d363-4f70ffd0c581@linaro.org>
Date:   Wed, 30 Nov 2022 15:33:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v2 2/2] dt-bindings: thermal: mediatek: add compatible
 string for MT7986 and MT7981 SoC
Content-Language: en-US
To:     Daniel Golle <daniel@makrotopia.org>, linux-pm@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Amit Kucheria <amitk@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Steven Liu <steven.liu@mediatek.com>,
        Henry Yen <Henry.Yen@mediatek.com>
References: <Y4dYpoVBmKZSaX2q@makrotopia.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Y4dYpoVBmKZSaX2q@makrotopia.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/11/2022 14:20, Daniel Golle wrote:
> Document compatible string 'mediatek,mt7986-thermal' for V3 thermal
> unit found in MT7986 SoCs.
> 'mediatek,mt7981-thermal' is also added as it is identical with the
> thermal unit of MT7986.
> 
> Signed-off-by: Daniel Golle <daniel@makrotopia.org>
> ---
> Changes since v1: Properly document both supported SoCs


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

