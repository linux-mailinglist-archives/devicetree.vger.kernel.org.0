Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C86536E1E2B
	for <lists+devicetree@lfdr.de>; Fri, 14 Apr 2023 10:26:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229598AbjDNI0n (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Apr 2023 04:26:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229615AbjDNI0g (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Apr 2023 04:26:36 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C1B283F6
        for <devicetree@vger.kernel.org>; Fri, 14 Apr 2023 01:26:14 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-94eee951c70so9458166b.3
        for <devicetree@vger.kernel.org>; Fri, 14 Apr 2023 01:26:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681460772; x=1684052772;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rSkWZezR+vqkZFp6+fgJXWtGYjSC31F616DHHfTgnbs=;
        b=YbpxrlJEO6rJpM13esqj9YpbRhqodoJNkqeHSgCOD332x7y5N0fPCSTQ0yLvD5wenb
         GLt4Evexto+bOd2Ah/+XykMEkoTlLoAK57hXgV5mfc208HHMz0JqN1BPL5PY2tmX2bJs
         NrClGKQDdWbWmrnPcjqYlaR/hKf4dL8WNWpmgEKJz5QWxxXfqqZ76H4mPHpuCOI+HPSq
         tjSHUqhvDGAyXz32AyTnQSvB7vdVlgdhtPKaXZr7OSy6T6D3xA2fvA273ZjJLlR2Ibtq
         DWxjJ5V92lT5z8R6ntSM5EtYmt7uCmET3AwGlt1JTBBoC3f6/8OIXQpZvHRhbeg2xyvs
         NG8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681460772; x=1684052772;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rSkWZezR+vqkZFp6+fgJXWtGYjSC31F616DHHfTgnbs=;
        b=YGi6RxhE88egdPRvKWLyj6KqAx8xQdbja6t4jnTcnNIOtnZ/XLlmA/cEgpF8eytCfH
         bqQdA0kTnrZ8oVGozLsDkE6kxes1s6yR7iJ8aKJTqJyesn6kwV/iTdih0VQ988Nu9CBy
         2G5KJWZWWcfUaSwDaXh1/J0gWdQM8nGDIRUCHazlMXjLhDrkiVJGk7DM2ILx+QlN983R
         vxtuaSw2E+MLl6wFwoNh9YJwoj4o8zvFsjyUHN0u/4VJcqwrKX/GIu5k+SUpX7Y+r2wx
         IYDYSoH/VgggeQ4u5GzWF3+I/p/XILKgXjXJ6KLSPJthZSXWFSlFiniR3jRdevZV48Nz
         skfw==
X-Gm-Message-State: AAQBX9eGPzw+i2ti2mnknGfYJhy9YzAukistc8nwO+C5nQEp+A3E+uVG
        WJOz59t2dru+APg3GOBdGnHvgA==
X-Google-Smtp-Source: AKy350Zl5EsPrYWjWc2BV+2p02ac4Z5+rHGkCzS5hfLqWTDjM0k1AIqkHnhpqhIPnH9CGZC2xb8oiA==
X-Received: by 2002:aa7:c957:0:b0:504:b228:878d with SMTP id h23-20020aa7c957000000b00504b228878dmr4943365edt.25.1681460772047;
        Fri, 14 Apr 2023 01:26:12 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:8a60:6b0f:105a:eefb? ([2a02:810d:15c0:828:8a60:6b0f:105a:eefb])
        by smtp.gmail.com with ESMTPSA id w17-20020aa7cb51000000b004aeeb476c5bsm1804975edt.24.2023.04.14.01.26.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Apr 2023 01:26:11 -0700 (PDT)
Message-ID: <3d3b1717-00eb-c27c-ee34-0255ee71d0da@linaro.org>
Date:   Fri, 14 Apr 2023 10:26:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 07/27] dt-bindings: display: mediatek: rdma: Add
 compatible for MediaTek MT6795
Content-Language: en-US
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, matthias.bgg@gmail.com
Cc:     p.zabel@pengutronix.de, airlied@gmail.com, daniel@ffwll.ch,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        jassisinghbrar@gmail.com, chunfeng.yun@mediatek.com,
        vkoul@kernel.org, kishon@kernel.org, thierry.reding@gmail.com,
        u.kleine-koenig@pengutronix.de, chunkuang.hu@kernel.org,
        ck.hu@mediatek.com, jitao.shi@mediatek.com,
        xinlei.lee@mediatek.com, houlong.wei@mediatek.com,
        dri-devel@lists.freedesktop.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-phy@lists.infradead.org, linux-pwm@vger.kernel.org,
        kernel@collabora.com, phone-devel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht
References: <20230412112739.160376-1-angelogioacchino.delregno@collabora.com>
 <20230412112739.160376-8-angelogioacchino.delregno@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230412112739.160376-8-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/04/2023 13:27, AngeloGioacchino Del Regno wrote:
> Add a compatible string for MediaTek Helio X10 MT6795's RDMA block: this
> is the same as MT8173.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  .../devicetree/bindings/display/mediatek/mediatek,rdma.yaml   | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

