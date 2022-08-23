Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 358AA59E8F1
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 19:22:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233545AbiHWRSD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Aug 2022 13:18:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60842 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231295AbiHWRRW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Aug 2022 13:17:22 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82F6CA4B32
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 06:48:32 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id x25so13548374ljm.5
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 06:48:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=i6g1ytsthnfWXIku4aqH3xhdM/9Ri2X7FyfLWo9ROV8=;
        b=lnuCGHm/PTxz1gMjlh6EwYedDmDSkRIcLQu70CyscsSnw1bFVmYmwYZU7Vskw193FH
         /gaLFbR7JgbcnCLuvFKdex8r461kKWyBn1HdOLi9u6roSHpZKBEwrRM2Zsoh7+rdEsco
         v8unp4dpv0a5xISb/Cl3YsM/lPwz1OSib5tK2KJuRZtzNKu83K17rsTRcMvMU4pWvlOd
         1BLlHWHRD2evfPGxn+b8kZDL+cuUGoa9TdbdupPzwePky/8K2AdrQuEflNXthdxPp1YG
         kLPS2mKpS059ru57iN+9ziA78SGoI4dugzGm0MKb1EajM98qMzCzBGoxKZmSfoCzoFNa
         7UdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=i6g1ytsthnfWXIku4aqH3xhdM/9Ri2X7FyfLWo9ROV8=;
        b=uXChZsRIk7Z9kIrmsfgYu2NwGAQ/MsZW9/hko6udND7FX8Mh5VWep8u4y/4nt+C2rh
         A+1CxLyPuWICjWS5QVF27qLw7UrIvohEpLzfvGEEU8Ya7rL+N8n4hwEmptz7Kh+ojc1y
         tg88gXm5XAN/BxL71HOu67y7qTOcBKGxA9k1RXujkBPML/SrnL8oBxwdMYTC/kFUdCM7
         EEOjfodFZ6VJs1wOKkTSNADGIAdkS5whRrX+ZwC+BMR6dVfJVZf5FXfF7DbTbLMHbVy/
         uG61unZ/+iHj3GoGvEE3MRrFfMBSW0WcQ5R1SS6g6LY5Eif17WMoSM0spaYgtmXKydGf
         T0mQ==
X-Gm-Message-State: ACgBeo3ni+Q0wJ7OYHKuJgpudcVEt1Gf+N7iUZ5yLg3vF3srLLZ1mTNO
        +q2rULaypwubLpYgH9nkZk54wQ==
X-Google-Smtp-Source: AA6agR6/zduTpM8TBLJ4dYqpdr6hx69FMcRTHKzThqsgckEidignmxKxVwL0wGuNZc9gPHwW/XWewg==
X-Received: by 2002:a05:651c:509:b0:261:c6f5:59e2 with SMTP id o9-20020a05651c050900b00261c6f559e2mr3908472ljp.28.1661262510922;
        Tue, 23 Aug 2022 06:48:30 -0700 (PDT)
Received: from [192.168.0.11] (89-27-92-210.bb.dnainternet.fi. [89.27.92.210])
        by smtp.gmail.com with ESMTPSA id q13-20020a19430d000000b00492eb7205b0sm873422lfa.210.2022.08.23.06.48.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Aug 2022 06:48:29 -0700 (PDT)
Message-ID: <2bd97f8c-8613-1414-a185-9ef2e17925dd@linaro.org>
Date:   Tue, 23 Aug 2022 16:48:28 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 2/2] ASoC: mediatek: dt-bindings: modify machine bindings
 for SOF
Content-Language: en-US
To:     Chunxu Li <chunxu.li@mediatek.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, nfraprado@collabora.com,
        broonie@kernel.org
Cc:     lgirdwood@gmail.com, matthias.bgg@gmail.com,
        jiaxin.yu@mediatek.com, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        project_global_chrome_upstream_group@mediatek.com
References: <20220820075343.13993-1-chunxu.li@mediatek.com>
 <20220820075343.13993-3-chunxu.li@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220820075343.13993-3-chunxu.li@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/08/2022 10:53, Chunxu Li wrote:
> From: "chunxu.li" <chunxu.li@mediatek.com>
> 
> Add SOF related field.
> 1. Add a property "mediatek,adsp", Only when adsp phandle could be
> retrieved from DTS, the SOF related part of machine driver is executed.
> 2. Add a property "mediatek,dai-link" to support dai-links could be
> specified from DTS
> 
> Signed-off-by: chunxu.li <chunxu.li@mediatek.com>
> ---
>  .../bindings/sound/mt8186-mt6366-rt1019-rt5682s.yaml   | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/sound/mt8186-mt6366-rt1019-rt5682s.yaml b/Documentation/devicetree/bindings/sound/mt8186-mt6366-rt1019-rt5682s.yaml
> index 059a7629b2d3..0281984fc916 100644
> --- a/Documentation/devicetree/bindings/sound/mt8186-mt6366-rt1019-rt5682s.yaml
> +++ b/Documentation/devicetree/bindings/sound/mt8186-mt6366-rt1019-rt5682s.yaml
> @@ -43,6 +43,16 @@ properties:
>      required:
>        - sound-dai
>  
> +  mediatek,adsp:
> +    $ref: "/schemas/types.yaml#/definitions/phandle"

No need for quotes.

Best regards,
Krzysztof
