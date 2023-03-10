Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A42E76B38DB
	for <lists+devicetree@lfdr.de>; Fri, 10 Mar 2023 09:36:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231296AbjCJIgD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Mar 2023 03:36:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231243AbjCJIfc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Mar 2023 03:35:32 -0500
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34B7F1009E7
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 00:35:19 -0800 (PST)
Received: by mail-ed1-x533.google.com with SMTP id ay14so17274559edb.11
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 00:35:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678437317;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SFsIUvQhnh2wbwHqMLG7mN4Mz01L3GW7UAQC2+jEkIo=;
        b=fYVytIbt0kRF0tnnLPcwQ7EF7XcCYv8OYZL5/yoNCRnv8tAcHblkanGpQ6JgV540qy
         WTNSxJfv8NIfoWNrswkv8xcwveQt7yMHOP1s+ei/Y1ocjefH37NAuC5JvViV8j8v3B7P
         pXbFsWMp8NFOeQOSBznsU208r6uF2UP2EyGv1Z6H8YCU17FOy5ja6t9TtuvLGnEaO5gq
         i/HzF9WKrQhg5ZcXC7dSpeJZrkSZfKGhQq5V/OL8HE7CqamcOR1WNRHUV7JnpeX+2p11
         vUNpFu4PHTU2z7DD5E13TkmCLb/1JM1gzQ4mY/VDbPwTxjfg5y/MkZl9Ce2W8iC0Ii2P
         ReOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678437317;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SFsIUvQhnh2wbwHqMLG7mN4Mz01L3GW7UAQC2+jEkIo=;
        b=JaEHb3Xjprx/Ocn5Pv8SVQJ8kV+tUOjTo/2W1rS670htr6IxgtoAt1o3+lH3Tcnh8P
         BgkvAUeiAFv+X4ucNXHSB+LCRcnmT+w0w3hUiaxzyQSuxc9SzieuXdzYRezhNovg8nIP
         oZ+jnlaelQ7IFKTWjB9A6RzKaFNnmfAYogQDCx3LTbsmfP9ZcfKFUaZs+BLOp8lPlTeH
         2IkoMhGG0gIELtbc4avmiDvK+2l/y7XdpOiXRa1xsFz3pna2wtgtvuSiKHLBcP6ttvsZ
         wTPiwNLhJb/Br0LB9rbLMRKhd80u2UK+O0NCuWVtpxymNg9SJeOOJgfLS/WmHZVYwvFs
         6ebg==
X-Gm-Message-State: AO0yUKUaXrad9SOEU6qLkd1ZM2PE/x1UoEzYqRD8M3ti2iFk8UdjBIWW
        9Jjyo4ZP2vOZuBazHhHjRrtbww==
X-Google-Smtp-Source: AK7set9I5xoClWzOboxhwkIqcXcQKYAuUC4Krc6brpIBR2aX71Y2At8rBXzZdBkd+8bMsc88kMSK1g==
X-Received: by 2002:aa7:c153:0:b0:4ac:b614:dcfc with SMTP id r19-20020aa7c153000000b004acb614dcfcmr24012037edp.9.1678437317709;
        Fri, 10 Mar 2023 00:35:17 -0800 (PST)
Received: from ?IPV6:2a02:810d:15c0:828:2a59:841a:ebc:7974? ([2a02:810d:15c0:828:2a59:841a:ebc:7974])
        by smtp.gmail.com with ESMTPSA id y94-20020a50bb67000000b004d47ce55e57sm541331ede.10.2023.03.10.00.35.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Mar 2023 00:35:17 -0800 (PST)
Message-ID: <81466b52-826f-b4ab-5a1d-d4d49381d7f7@linaro.org>
Date:   Fri, 10 Mar 2023 09:35:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 03/21] dt-bindings: display: mediatek: color: add binding
 for MT8365 SoC
Content-Language: en-US
To:     Alexandre Mergnat <amergnat@baylibre.com>,
        Daniel Vetter <daniel@ffwll.ch>, CK Hu <ck.hu@mediatek.com>,
        Jitao Shi <jitao.shi@mediatek.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Sam Ravnborg <sam@ravnborg.org>,
        Rob Herring <robh+dt@kernel.org>,
        =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        David Airlie <airlied@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Xinlei Lee <xinlei.lee@mediatek.com>
Cc:     Guillaume La Roque <glaroque@baylibre.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        dri-devel@lists.freedesktop.org,
        Fabien Parent <fparent@baylibre.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230220-display-v1-0-45cbc68e188b@baylibre.com>
 <20230220-display-v1-3-45cbc68e188b@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230220-display-v1-3-45cbc68e188b@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/03/2023 15:22, Alexandre Mergnat wrote:
> Display Color for MT8365 is compatible with another SoC.
> Then, add MT8365 binding along with MT8183 SoC.
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

