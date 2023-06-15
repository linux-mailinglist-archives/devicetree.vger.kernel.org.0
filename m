Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0A3A873123A
	for <lists+devicetree@lfdr.de>; Thu, 15 Jun 2023 10:34:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244633AbjFOIeN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Jun 2023 04:34:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244982AbjFOIeA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Jun 2023 04:34:00 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E9A12973
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 01:33:54 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-978863fb00fso250702266b.3
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 01:33:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686818033; x=1689410033;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=y/StSIz3LXrXYAfMsT7Wswjumrx4wcVhOOtwie2lMMA=;
        b=fuPHxuUq0Cj30MyfQDJJ0hIE+whQ2fHLghFhoB0URfQHWxPQQ1aGu2ZNiunlVUcZUU
         x4H8oN+UEH4g830hLeTNiIJIghUwLxMrwHz+4zVL0FY5CK2uVuc6BIZ2dnshG6yt5J3a
         neu2szd7JPYziz/iiznJz6KhjYz35loNUZa/b+zW3pykPN62XAVN44fL8Ql1oEW7VwGT
         Zr7fHfWLo4degztRBkFiZIHhEi1pWZl58OcZAQ8j6cyLqz07AYNv2ywmUMZJ/nFycHZ0
         RWtlyWQy2Z7EvFyUpggJ5eLsmCibBt6JdCVhiEx1Slbcg+i/KbyxXv+Wkz+2N49jMwmR
         Fm5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686818033; x=1689410033;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=y/StSIz3LXrXYAfMsT7Wswjumrx4wcVhOOtwie2lMMA=;
        b=OgElQWPmDWGnOJYSnpC58xD6eY90IKDxnfejZvrpZtz8g/eDZrN2gYbiYaGFH9NgbN
         D896Mue1N3wl4FA5Nihbl2HEb5ehj5DsdoKKeBB+fBEPGzLCDbfn2GLJAS/wELYbfTQ1
         IC93oQgFZGbTjFbPhJ8qlGfJ7wVPHhLKDu2hoK/HHeVIBgHek5zEYy9GPM28ft3zvI8t
         X5P7sNsvFRdUaA0PqCLpq68+noL3/1+obvVlImZCEH3qhL2hcjFibexGHGTqBpALEJe4
         BgTPiItaoz9U9q23vhktn+2b9TyGJMUsbGdPpdQc+kE/kS/2/evZ/K1eFvuI5qwVF/tX
         pW7w==
X-Gm-Message-State: AC+VfDyuHd8HEot9+Vzl2TjD1RBBe9CFSQrSD65HbsfmJxu0ATbn8GA1
        yIvIcAzbZH0wdmIK1SnKjvu4zg==
X-Google-Smtp-Source: ACHHUZ6XygTQe+173jC6Dbrzs3cDFrS4Eu1utaBhyditYM/6Rlt3mhL4/xdJwmN5jDzW35u0BhoKhA==
X-Received: by 2002:a17:907:16a0:b0:978:4027:57eb with SMTP id hc32-20020a17090716a000b00978402757ebmr19588392ejc.47.1686818033089;
        Thu, 15 Jun 2023 01:33:53 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id y20-20020a170906471400b009663115c8f8sm9050162ejq.152.2023.06.15.01.33.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jun 2023 01:33:52 -0700 (PDT)
Message-ID: <3f43bda4-023b-3536-a9e8-318659a1f0cc@linaro.org>
Date:   Thu, 15 Jun 2023 10:33:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v2 02/15] dt-bindings: display: mediatek: mdp-rdma: Add
 compatible for MT8188
Content-Language: en-US
To:     Hsiao Chien Sung <shawn.sung@mediatek.com>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        Singo Chang <singo.chang@mediatek.com>,
        Nancy Lin <nancy.lin@mediatek.com>,
        Jason-JH Lin <jason-jh.lin@mediatek.com>
References: <20230614073125.17958-1-shawn.sung@mediatek.com>
 <20230614073125.17958-3-shawn.sung@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230614073125.17958-3-shawn.sung@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/06/2023 09:31, Hsiao Chien Sung wrote:
> Add compatible name for MediaTek MT8188 MDP-RDMA.
> 
> Signed-off-by: Hsiao Chien Sung <shawn.sung@mediatek.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

(Apologies if it comes twice)

Best regards,
Krzysztof

