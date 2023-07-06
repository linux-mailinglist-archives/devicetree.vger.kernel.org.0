Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ECB657497CF
	for <lists+devicetree@lfdr.de>; Thu,  6 Jul 2023 10:58:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231703AbjGFI6R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Jul 2023 04:58:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54606 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230290AbjGFI6Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Jul 2023 04:58:16 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C68491BC9
        for <devicetree@vger.kernel.org>; Thu,  6 Jul 2023 01:58:15 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-9936b3d0286so55801866b.0
        for <devicetree@vger.kernel.org>; Thu, 06 Jul 2023 01:58:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688633894; x=1691225894;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fayqxLh/vco+SYInwt83ea7CX6FUWQU2usKrCQ013+k=;
        b=SUHGYVGhzR4ydLLC3EczqM7/h6WyxuOP9FR5zKpzrxTsJrLh66qKsFCYMxex/QcrLA
         NL1nUlWdl/RfC8wWgtBQ8KNBsAo260fgTZiWgFlMcI87P2w/8QIco1+PtLz/axGfoTm+
         eBfGmx37NrrgCwr5DHiABlwgUon4P+36PgEuG0ZrDSjrWRh1XmZsU76R9A0bQKCd6jPK
         46+5Y2uagL6AOS32r/MpE47o2Yfr0kJF+UPbjFWGtQs9apRKiwsjRvRP8AoCuJirPihn
         5/FRjQH7uPix9qG760X2c+BNfCqk8NyGfgotPYQ3W++7bMUU3RnKKPHZzMHDkioQhZj4
         YL3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688633894; x=1691225894;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fayqxLh/vco+SYInwt83ea7CX6FUWQU2usKrCQ013+k=;
        b=AimYS+1w2SLGLOzTT9SVcOvrcCkMrOYjyzsJIwN9y+2w0M2IohLWys/Ch+cHYIsT3d
         5B9fEuNlA5e1YCT4DB5m0vk9lT3MYWjVpwbFJJGD0hjg89LzVM1LIGWTETpGvJ7/dp14
         +AX7afOU+90irQ/rKtu5hd3AmLZtfU9W7tcxKGjmm48vIMnaJxJmbhZPuHaLRfXMsddF
         63p4RHGmCiZwEAKqXbgvfoLj+5qpFF8YPSpk2XmF1bjE+Ko0W7pdNClGtZvVPbqIYbKD
         O5v+WK9jO6/m18nmNVrZnPlSXj5ClpVfPqpO7rUhJZ6Ssot9UhzRnxevTDMLtKpkk4Is
         PgsA==
X-Gm-Message-State: ABy/qLbp/11aT7iMklJIu7VkHuEB56XvxSpA0TKnVcM3sEApg6XzHccW
        nLh4wfd4mJ6deZS3sktdcIsVzQ==
X-Google-Smtp-Source: APBJJlFNHTYQWRHtROnOOty5+ELFvyo8/ZudrjTKHz8SF9FuZHky+aDb2X3o5VvOCjMOU5wiKluKFg==
X-Received: by 2002:a17:906:7a5e:b0:992:b8b6:6bcd with SMTP id i30-20020a1709067a5e00b00992b8b66bcdmr979075ejo.16.1688633894307;
        Thu, 06 Jul 2023 01:58:14 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id e9-20020a1709067e0900b0099236e3f270sm542442ejr.58.2023.07.06.01.58.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Jul 2023 01:58:13 -0700 (PDT)
Message-ID: <464fdef5-f43c-a7b2-66d2-bf558a6ee2c7@linaro.org>
Date:   Thu, 6 Jul 2023 10:58:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v2,1/2] dt-bindings: display: mediatek: dp: Add compatible
 for MediaTek MT8188
Content-Language: en-US
To:     Shuijing Li <shuijing.li@mediatek.com>, chunkuang.hu@kernel.org,
        p.zabel@pengutronix.de, airlied@gmail.com, daniel@ffwll.ch,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, matthias.bgg@gmail.com,
        angelogioacchino.delregno@collabora.com, jitao.shi@mediatek.com
Cc:     dri-devel@lists.freedesktop.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20230706021425.31735-1-shuijing.li@mediatek.com>
 <20230706021425.31735-2-shuijing.li@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230706021425.31735-2-shuijing.li@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/07/2023 04:14, Shuijing Li wrote:
> Add dt-binding documentation of dp-tx for MediaTek MT8188 SoC.
> 
> Signed-off-by: Shuijing Li <shuijing.li@mediatek.com>
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> ---
> Changes in v2:
> add a mediatek,mt8188-edp-tx compatible per suggestion from the previous thread:
> https://lore.kernel.org/lkml/c4a4a900-c80d-b110-f10e-7fa2dae8b7b5@collabora.com/
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

