Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C07A2525D92
	for <lists+devicetree@lfdr.de>; Fri, 13 May 2022 10:38:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1378312AbiEMIa6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 May 2022 04:30:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55346 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352940AbiEMIa5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 May 2022 04:30:57 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB525F3E
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 01:30:41 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id i19so14752517eja.11
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 01:30:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=rIdMXWo1r64Y4/FoS4X9RpN/HRh3/syFTT7xnGA6T5c=;
        b=kYn9THiEvjgdOi0srB9gv0TQcb1JT6AXp6rZ7l1PrnDHo9qkMGlSwm7w8VteNAoqP2
         I1hQw5r+p9CvNNrd+cbvslCXTbQhhWoY+/b8VMs8SRlRmlPGmUtUZxPH/BAnN8ZShquT
         i+Deg6SKr82BxkgfXu7yGOXRtCVnE/butUAWCAXyDy/QP2xl+DFxPiGqGeAYrLU5kZxK
         2OD5B8XN2qmudqjk/H1QcleJQzIZ2ZsA/l9eEx+gFhXAyFSjDIG/6ZZLj411OxtRbG5x
         86y43GfWeayMPZbFTNXzs9A4ag06Z9uxI5N7+mSk4coGdp5Kv7xQiHljskPrXxntCpQU
         7YHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=rIdMXWo1r64Y4/FoS4X9RpN/HRh3/syFTT7xnGA6T5c=;
        b=Qnr2w0swAdQ8YI/n0MUYjQWt/rzzUzq889GPkxoTVyHwG4KgTad1BM5HW/HMgOQ0HO
         dZ3zOLCqxNtFopC+SfFsjdnvrk/kZT+C65BpYH3ARcK2CSD1ht7VkNguG99o8waaJ7vp
         f4TTNqfQDPTT3HN3qBxoJzaFxTy+kZoFJlAnX81LxfmJYs/UeTGxnGdTipJH1X+YjqIS
         tpdhRGHCCONKiCF5XKJ46QDm4G6u/9gdenkq21jbjyzUQcjwBD9m26j1zOHoMfbKeF9v
         c3vEhtKsCUoVz8GRqXpPP1vutUu4AJ3yK/lP9LcqqhxjzE8OAOke9acf7hRx6fjx/GBZ
         gflw==
X-Gm-Message-State: AOAM530UuTSPtCjpb7fZ9A7r6lfteA5ixYg/Hr8FE+6ijTivhQIbDuUX
        PD1u4OypWspgIwc5o7/XJUyThg==
X-Google-Smtp-Source: ABdhPJyJ2MbVQT4SxCH65r033Zpdd9f9AOE/v8ahHMI//oxZ3uzkmD0d6awASJrIeLl4rZ47+JH2TQ==
X-Received: by 2002:a17:907:2da7:b0:6f4:801c:6c3d with SMTP id gt39-20020a1709072da700b006f4801c6c3dmr3119325ejc.310.1652430640281;
        Fri, 13 May 2022 01:30:40 -0700 (PDT)
Received: from [192.168.0.169] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id f19-20020a50a6d3000000b0042617ba6392sm655223edc.28.2022.05.13.01.30.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 May 2022 01:30:39 -0700 (PDT)
Message-ID: <c4278f18-359a-d658-7b42-0a701dd15270@linaro.org>
Date:   Fri, 13 May 2022 10:30:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v3 1/3] dt-bindings: mediatek: add vdosys1 RDMA definition
 for mt8195
Content-Language: en-US
To:     Rex-BC Chen <rex-bc.chen@mediatek.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, chunkuang.hu@kernel.org,
        p.zabel@pengutronix.de
Cc:     airlied@linux.ie, matthias.bgg@gmail.com,
        angelogioacchino.delregno@collabora.com, jason-jh.lin@mediatek.com,
        nancy.lin@mediatek.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20220512080523.25082-1-rex-bc.chen@mediatek.com>
 <20220512080523.25082-2-rex-bc.chen@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220512080523.25082-2-rex-bc.chen@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/05/2022 10:05, Rex-BC Chen wrote:
> From: "Nancy.Lin" <nancy.lin@mediatek.com>
> 
> Add vdosys1 RDMA definition.
> 
> Signed-off-by: Nancy.Lin <nancy.lin@mediatek.com>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof
