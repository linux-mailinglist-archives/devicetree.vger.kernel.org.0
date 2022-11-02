Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4359B616630
	for <lists+devicetree@lfdr.de>; Wed,  2 Nov 2022 16:29:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230098AbiKBP3X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Nov 2022 11:29:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230493AbiKBP3I (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Nov 2022 11:29:08 -0400
Received: from mail-qv1-xf29.google.com (mail-qv1-xf29.google.com [IPv6:2607:f8b0:4864:20::f29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B92B1758C
        for <devicetree@vger.kernel.org>; Wed,  2 Nov 2022 08:29:07 -0700 (PDT)
Received: by mail-qv1-xf29.google.com with SMTP id ml12so12727581qvb.0
        for <devicetree@vger.kernel.org>; Wed, 02 Nov 2022 08:29:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HBUgvD/rqAGK+YRqMBW4phcXREVNhOcGxJwJ+qjyr1o=;
        b=yMiW5wZeRixIDVPx2S6wWqAENq9ui2w590VhU8Q82s5HlMw1OC/McuiTNplTDQerBZ
         nWSDgFKXMGPpg/Vyq4IBU/0iKFeXgMMLykjcp6vdiVFOquqA+fJcbfn5AAWesnG81kKZ
         bO4cPVShoBQEBgH7trb7ygaWpmPMvNlcboYQLzGgzr+RGX9EfdIcTGVgEhUMKKlkvykQ
         oMm4/hr4MrHbfs30mAY1ic8eqwEteKa1JdCpkRwFKznpPqC9QeXpNdUagSFIfHF/zkUq
         DHAeEFI/j6pC7+zh8+Hf8HQHTErRoyTZTDt4ak5Z19NIRN3DRpCM9gzD8sZV+JsvI3WT
         +j+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HBUgvD/rqAGK+YRqMBW4phcXREVNhOcGxJwJ+qjyr1o=;
        b=mKL5nGQ8SOCfO60GP9erRZ9+qaRJhMbA/ySADxycNua5GPS2k9xySplLKlEkSn6bnl
         6cjv6j7icDNamHv9MwLRAw02fKsCRnq78oZIUQ+8MqQplZO50ZAiEy1dX0NDSPoAaLaD
         lo2/s8hNtYxz0ozpE/DS5sWo2SkiwnbGMP8pzXHsG2rfvz71H7tJR3iQ0q0u/UntspGZ
         B0+mUYwh6U/9KcLvnKbaRLXBi0F2wVZo7KHfHVQD2hKRGf9+wqYbSLg7oUcGgVwyDjGQ
         x6IsR3jL7e5KjOzgsR9lyrkjTz3G2Cc2+UVauG0TExH2074KUR328TPzntl+viUjujVn
         Odzw==
X-Gm-Message-State: ACrzQf3qG0x0qtc2qqJza/UtykS4XsiO6IL8To4IfCpWHeXN63PoxlXH
        k3cCsBxai+4I64JEeOaejH70Dw==
X-Google-Smtp-Source: AMsMyM4utp2+ndIufDJeNK+726MD7dtGV59X/4aZ5wQsoENyuaC3TKzF03FZtl52mGndJQCeR3Y4dw==
X-Received: by 2002:ad4:5e8b:0:b0:4b9:98bf:92cc with SMTP id jl11-20020ad45e8b000000b004b998bf92ccmr21728371qvb.128.1667402946667;
        Wed, 02 Nov 2022 08:29:06 -0700 (PDT)
Received: from ?IPV6:2601:586:5000:570:28d9:4790:bc16:cc93? ([2601:586:5000:570:28d9:4790:bc16:cc93])
        by smtp.gmail.com with ESMTPSA id bm8-20020a05620a198800b006ed138e89f2sm8677531qkb.123.2022.11.02.08.29.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Nov 2022 08:29:06 -0700 (PDT)
Message-ID: <3e374a0e-ab17-432a-67c5-bf8f459193fd@linaro.org>
Date:   Wed, 2 Nov 2022 11:29:05 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 2/2] dt-bindings: mailbox: mediatek,gce-mailbox: add
 mt8188 compatible name
Content-Language: en-US
To:     "Elvis.Wang" <Elvis.Wang@mediatek.com>,
        Jassi Brar <jassisinghbrar@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Houlong Wei <houlong.wei@mediatek.com>,
        "jason-jh . lin" <jason-jh.lin@mediatek.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
References: <20221029105017.20734-1-Elvis.Wang@mediatek.com>
 <20221029105017.20734-3-Elvis.Wang@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221029105017.20734-3-Elvis.Wang@mediatek.com>
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

On 29/10/2022 06:50, Elvis.Wang wrote:
> From: Elvis Wang <Elvis.Wang@mediatek.com>
> 
> Add mt8188 compatible name.
> 
> Signed-off-by: Elvis Wang <Elvis.Wang@mediatek.com>
> ---
>  .../devicetree/bindings/mailbox/mediatek,gce-mailbox.yaml        | 1 +
>  1 file changed, 1 insertion(+)
> 

Looks ok, but you need to resend making it a proper patchset. Without
fake tags.

Best regards,
Krzysztof

