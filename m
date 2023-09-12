Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 985FA79C993
	for <lists+devicetree@lfdr.de>; Tue, 12 Sep 2023 10:16:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232237AbjILIQY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Sep 2023 04:16:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33296 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232702AbjILIQX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Sep 2023 04:16:23 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3435710C3
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 01:16:19 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-98377c5d53eso667186766b.0
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 01:16:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694506577; x=1695111377; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IQQyuvgw2Ih8CCznL4czbdJi4u/aUR5st1Zl8jdFdis=;
        b=dLGZqD3wDITomFvFKqxhKdyEZcHC4NxHzQ9QMqagju9HbFsECAeW6WfzitYLpV34Df
         SCBnb2zv9TvJ7bALVwEi8z8AAcEMXl+keKp9sZHrq5PLz+WkSClAdgeCnVLMKjWVk7PY
         B6CTx3OjsAGKKFRpeCs2WPx3hlppsjtFwFQhRx4WmhBqi9e06kboN4IfkXxAtisndtqA
         gKrTJ+f9O4+Tmzq/ydPLuQyrF8HAw7LIyHwTO9evoZZyDmoTcN360bVy6lIxvs+/UJx8
         oj34/BNz+iphiQc9b3M9tWt69nzQ2fgXMHUUOtJ+Oztx1Cc1LGU4CWwyDRw3NUhXMC1f
         x8mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694506577; x=1695111377;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IQQyuvgw2Ih8CCznL4czbdJi4u/aUR5st1Zl8jdFdis=;
        b=K+fZTqIPOfi2n9/U/oRBNLB9M2Fx5hjQhUY6Xs6STmqSlzw891aZoPKCXOdh7Srt/R
         7rQpDcT73tp9XsasvDzdpHpN2eOfjoRjIGEdB5piSPGs57YZPMgCKN50h8HS4duxLWas
         MtYaUCvEEcRFZNtzgES5zGOOWAM0GPzow/LTzlhvWvSLPuar1WxcLJMpmBJwO92SqBCM
         RRxvVjFqtXkhjeVI8IfvhV4Leg7lidjEjC/ez8nrF7UGD2kgghWagqaSP3v0bflr5VH2
         BPCnhuv9osXNcrJLrJRJBoRLaXZYBnzQsE+tyFGHa9zyEtKvXPrD2nxQH9BbRUaQC5Fb
         h0lA==
X-Gm-Message-State: AOJu0Yw88eTfRnGElCZapONXbQe4MG+j+XkspRRGouI4XbuB4kar39ic
        UAQAMpKedEn1d3CBvDg6uO+Tlw==
X-Google-Smtp-Source: AGHT+IGnDIjB1E0+PM78RIHPjXSnqOuV7g/f+t4r79vgK/6WUopYnar+OQmHMaOMcvof7mrFdmwNsQ==
X-Received: by 2002:a17:906:8469:b0:9aa:165:aefc with SMTP id hx9-20020a170906846900b009aa0165aefcmr9205509ejc.33.1694506577602;
        Tue, 12 Sep 2023 01:16:17 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id i19-20020a170906851300b0099297782aa9sm6357666ejx.49.2023.09.12.01.16.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Sep 2023 01:16:16 -0700 (PDT)
Message-ID: <83b3f2eb-84e3-2daa-c63c-14b6792a1db5@linaro.org>
Date:   Tue, 12 Sep 2023 10:16:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v5 2/3] dt-binding: mediatek: integrate MDP RDMA to one
 binding
Content-Language: en-US
To:     Moudy Ho <moudy.ho@mediatek.com>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Hans Verkuil <hverkuil-cisco@xs4all.nl>
Cc:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        dri-devel@lists.freedesktop.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20230912075651.10693-1-moudy.ho@mediatek.com>
 <20230912075651.10693-3-moudy.ho@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230912075651.10693-3-moudy.ho@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/09/2023 09:56, Moudy Ho wrote:
> Due to the same hardware design, MDP RDMA needs to
> be integrated into the same binding.
> 

Please use subject prefixes matching the subsystem. You can get them for
example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
your patch is touching.

This applies to entire patchset. It is not dt-binding, but dt-bindings.

> Signed-off-by: Moudy Ho <moudy.ho@mediatek.com>
> ---
>  .../display/mediatek/mediatek,mdp-rdma.yaml   | 88 -------------------
>  .../bindings/media/mediatek,mdp3-rdma.yaml    |  5 +-
>  2 files changed, 3 insertions(+), 90 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,mdp-rdma.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,mdp-rdma.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,mdp-rdma.yaml
> deleted file mode 100644
> index dd12e2ff685c..000000000000
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,mdp-rdma.yaml
> +++ /dev/null
> @@ -1,88 +0,0 @@
> -# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> -%YAML 1.2
> ----
> -$id: http://devicetree.org/schemas/display/mediatek/mediatek,mdp-rdma.yaml#
> -$schema: http://devicetree.org/meta-schemas/core.yaml#
> -
> -title: MediaTek MDP RDMA
> -
> -maintainers:
> -  - Chun-Kuang Hu <chunkuang.hu@kernel.org>
> -  - Philipp Zabel <p.zabel@pengutronix.de>
> -
> -description:
> -  The MediaTek MDP RDMA stands for Read Direct Memory Access.
> -  It provides real time data to the back-end panel driver, such as DSI,
> -  DPI and DP_INTF.
> -  It contains one line buffer to store the sufficient pixel data.
> -  RDMA device node must be siblings to the central MMSYS_CONFIG node.
> -  For a description of the MMSYS_CONFIG binding, see
> -  Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.yaml for details.
> -
> -properties:
> -  compatible:
> -    const: mediatek,mt8195-vdo1-rdma
> -
> -  reg:
> -    maxItems: 1
> -
> -  interrupts:
> -    maxItems: 1
> -
> -  power-domains:
> -    maxItems: 1
> -
> -  clocks:
> -    items:
> -      - description: RDMA Clock

This is different and you did not explain it in commit msg.

Another difference - mboxes. Looks like you did not test your DTS...

Best regards,
Krzysztof

