Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D78CC79C9C3
	for <lists+devicetree@lfdr.de>; Tue, 12 Sep 2023 10:23:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232335AbjILIXp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Sep 2023 04:23:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55028 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231725AbjILIXo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Sep 2023 04:23:44 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A96B10C3
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 01:23:40 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-9ad8d47ef2fso27650766b.1
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 01:23:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694507019; x=1695111819; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NecnTNhEs6mk/7xS4+yPxPBE+Iq+otCfvP8k/SUlgdY=;
        b=cTUE7eaKTYcped+fkAc0xrMYniEqxAnfsNugnVq3k0uR0MrE4x+a9d+HCe9BnyIq0s
         lT7JHB0TpdIO4AnaB6p7efaHEX2MXC0MwkSESYSZ1Ld831bSwKpy6O0z65V/ivyqe3Kd
         WxkA6ljlWNUN4/fWnZB0l3qPM/s4vjC9SY5RJTOVUhluyvfMXv9EMB6WStVUmIUXUi1f
         LbM7u5mDaR4RIZmMHzdqbcXff8qlpuyTS9/KJlae50NqXwRLWy5rZpJV8EgxL3LDGkyf
         Ebvxg/b9wwAxMYADVS/fcHXHMneV4q/8GLxCyUm5zZQl5u7l51oHAg8IROUVExaBACcp
         MDAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694507019; x=1695111819;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NecnTNhEs6mk/7xS4+yPxPBE+Iq+otCfvP8k/SUlgdY=;
        b=fydcJtNGhlDEFBs7NhjFDntTBjqBBWheGhlDmsL6gDRiumjSycfGFlnkf7l53rnBIR
         mz0QVdIrs6z0BJAsdiAQkyKADxJk+5CBAH5Z3UJiJbcKMf1iF1HjsXOitrTS1rDAFT1B
         UVmB3Ja9cY47Rh6H4L30aLrr4cDNkNVzZDNn2zmNN/Lzv8Zd9rnYY4uxVJQbfg7NgvW1
         xE0pEuMUByHz4UvT5boHgYhuhZLaYWvObqG6sXTpQrK/oH5v4HIYFkangywPupKFKYAY
         aDBkRmPAJUHJN179etMvggxg0kHy3D3aaS3T4ErI+jhNWjh6wz9IcWOwlU8+g1DC2Ft8
         Gx0A==
X-Gm-Message-State: AOJu0YzQJS7HMUvFpTquld/ulpMInnKsneCv0L+c1gbESFdclPmxWyO/
        fbIvNsivy88huBRWgsYjq4aYog==
X-Google-Smtp-Source: AGHT+IFUhAhviWgQLFU03MSAKRTyIaNN7fIQ2Ll6cz8uur8tvWrxceUtpGTQvZh5kUvI/HNWPpsu2g==
X-Received: by 2002:a17:907:a0c6:b0:9a2:86a:f9b7 with SMTP id hw6-20020a170907a0c600b009a2086af9b7mr9091015ejc.59.1694507018283;
        Tue, 12 Sep 2023 01:23:38 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id rh16-20020a17090720f000b0098e0a937a6asm6416288ejb.69.2023.09.12.01.23.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Sep 2023 01:23:37 -0700 (PDT)
Message-ID: <c64efa17-704d-0bb0-da91-5658bc0bf34e@linaro.org>
Date:   Tue, 12 Sep 2023 10:23:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v5 02/14] arm64: dts: mediatek: mt8195: add MDP3 nodes
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
References: <20230912075805.11432-1-moudy.ho@mediatek.com>
 <20230912075805.11432-3-moudy.ho@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230912075805.11432-3-moudy.ho@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/09/2023 09:57, Moudy Ho wrote:
> Add device nodes for Media Data Path 3 (MDP3) modules.
> 
> Signed-off-by: Moudy Ho <moudy.ho@mediatek.com>
> ---
>  arch/arm64/boot/dts/mediatek/mt8195.dtsi | 378 +++++++++++++++++++++++
>  1 file changed, 378 insertions(+)

Why is this targeting media? No, don't. DTS goes via SoC, not media.
Don't mix patches.

Best regards,
Krzysztof

