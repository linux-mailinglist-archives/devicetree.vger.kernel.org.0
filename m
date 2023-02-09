Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DBFF969026A
	for <lists+devicetree@lfdr.de>; Thu,  9 Feb 2023 09:47:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229701AbjBIIrc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Feb 2023 03:47:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57600 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229473AbjBIIrc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Feb 2023 03:47:32 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C7CC11EB3
        for <devicetree@vger.kernel.org>; Thu,  9 Feb 2023 00:47:31 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id z13so912166wmp.2
        for <devicetree@vger.kernel.org>; Thu, 09 Feb 2023 00:47:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eaK+2qeKRokXWQl5mn437c6754IzjGrCTscudDsBbrM=;
        b=wxOckj5zk1jda4m5L7NCQQPLiv2S5SD379SS9t3jkT02N9Cm/kimOWl/SYUgBeORZ7
         MXFw/VUb6ETAVpIZ87vnYO5b+1g1NXoX/WFN0ZQD104/9SJKvdPf27zZiE5DS4JQyM9Q
         ucVDIUGWpURMQ6ITfYZx5xCQkax6DVgzDBomPAOxa7Qc78fKh3S5eJs0o1jhd4ddqtcY
         uxXX/CUqVIuJnPQEN1/q1PEWna3ZbU+MNCRafyu9ZjqSh/NzitLRoAF0jnnDxN2hfeKS
         L7j7IEcEVHkHT2/NNwf76SG+YbTIRomDhcQTPMw20R/JBjoLbOn3XohhPbKxNLr8vrX6
         jWiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eaK+2qeKRokXWQl5mn437c6754IzjGrCTscudDsBbrM=;
        b=EcHD0fTonzNfq7/XtsP+ftJfFrN9Ngp1313pPUm0jcB7cz4ZAS9Te7ociiDsiZvD+R
         52+YZdtqClWBH2b7UHBjQFt1/QgoRtepu5zDoGVl6ax7TW5p1gJR23CGoPQHamjMn4Wa
         QwrEzM6HOdmZ8JoV5o1wLzi+a8Rw9WiOoLf+4/Sf1m+7fvCY9dY0cnmfc+bXB8itoQE2
         J7jWEdNzm5bRo2mEQIbI4gq7FrBtHkdiocH8WQLhJpew+xZDswqqfBdu1LEBLCII5V5V
         42PyH2EQNmeQPMTvkUM5onyP0p016rSUBFvY0woqVvd6utHid3QPb3sygHNrVGpqA9K/
         93Ug==
X-Gm-Message-State: AO0yUKX0Akg7FqjSm+mpLWQeYx49QuTdKH+44oY3auB4wpfyKo4gRGFC
        bHznYKkX+mSbWqEi7GN5yvDMTQ==
X-Google-Smtp-Source: AK7set+S0UZDOh701Frc43HZorIIvziF7+E4y6qM8tus2tR2sCO3vpZzSVO5bjB/EyrFyZ6q8TkTxA==
X-Received: by 2002:a05:600c:2eca:b0:3e0:ffd4:bfab with SMTP id q10-20020a05600c2eca00b003e0ffd4bfabmr5360460wmn.13.1675932449684;
        Thu, 09 Feb 2023 00:47:29 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id bi5-20020a05600c3d8500b003d9aa76dc6asm4559029wmb.0.2023.02.09.00.47.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Feb 2023 00:47:29 -0800 (PST)
Message-ID: <d189ae55-b3f5-a3bd-f0ec-1ab326c9107f@linaro.org>
Date:   Thu, 9 Feb 2023 09:47:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 1/2] ASoC: dt-bindings: renesas,rsnd.yaml: drop
 "dmas/dma-names" from "rcar_sound,ssi"
Content-Language: en-US
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        Rob Herring <robh@kernel.org>, Mark Brown <broonie@kernel.org>
Cc:     Linux-DT <devicetree@vger.kernel.org>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        Geert Uytterhoeven <geert@linux-m68k.org>
References: <87y1p7bpma.wl-kuninori.morimoto.gx@renesas.com>
 <87wn4rbplc.wl-kuninori.morimoto.gx@renesas.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <87wn4rbplc.wl-kuninori.morimoto.gx@renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/02/2023 02:21, Kuninori Morimoto wrote:
> From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> 
> SSI is supporting both "PIO mode" and "DMA mode", thus "dmas/dma-names"
> are not mandatory property. Drop these from rcar_sound,ssi's required:.
> See more details on Link

Still no improvements.

> 
> Link: https://lore.kernel.org/all/87zg9vk0ex.wl-kuninori.morimoto.gx@renesas.com/#r
> Link: https://lore.kernel.org/all/87r0v2uvm7.wl-kuninori.morimoto.gx@renesas.com/#r
> Link: https://lore.kernel.org/all/87r0v1t02h.wl-kuninori.morimoto.gx@renesas.com/#r
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>

Best regards,
Krzysztof

