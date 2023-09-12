Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0E09779D3C2
	for <lists+devicetree@lfdr.de>; Tue, 12 Sep 2023 16:33:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236006AbjILOda (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Sep 2023 10:33:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36892 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235974AbjILOd3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Sep 2023 10:33:29 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A2A0118
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 07:33:25 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-401f68602a8so62241545e9.3
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 07:33:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694529204; x=1695134004; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LiKlMoAbzNv/jwxWuBGezkhJzPt6gMgWCE6KRRsV3Zo=;
        b=JuMUNthWDbgozexkiXDbaqrpxe1Sk/G/9u6lnq06FoED5bSj2kvYxHIJMJCtw6O6iM
         s+ekpDSRvZzo4Wt23VXgXrBnj7AAHbXS2vz2IUldDxCoXxgAthb1G6x09EYNzPhpFwVf
         xGnyiDOu01GkihZXphdrmmJHTeLgNOX2FdNsYugLaVPSouYjv2ETSCFbil8fceNyLEVo
         lAjfnAoPzXXU66GmkvPsoof20QCK1KBVuYaWe49UKfcev6OniMGuUpVAcqokaF1xVm9c
         KGWerby2O8CSpQQ8VuYj7OzdGcv9kDBR/1PeXwBx8pTeH1EONk72kDRGiGclJzQADY/D
         xH6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694529204; x=1695134004;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LiKlMoAbzNv/jwxWuBGezkhJzPt6gMgWCE6KRRsV3Zo=;
        b=oGRJsu0otPV5XLzVYmLd1idOPPZzbTZJsgOXQt/cHlDLxaXv0L3alMgk6hE2CVXdOp
         SPQIntEdcprBMGdJeQBvStSaiIxVONX4pYAdsBf/VZbOAfipVpk5IstR981xQbrriNrq
         As3bbCnKNcFS+UOLcWnYlJ992jB5n3Uu0jWSPG17gtE7cofpXqz+PQhCpowERgwxHd2Q
         Tq1AANEmSd+SpQxJaz2mSo//UuGihGf9UYJJCoTlmWWoOaVfG/wazgFzD4Rq2EZaR+Zt
         A3Z1qqNXTAqb5CRnBQOMshqBOgVZ2Vp1o5PpZxmxMMzwU/zSCGmgA2JDdyDm5XM//MJS
         RAkg==
X-Gm-Message-State: AOJu0Yz4pqUODEMIlyDfqOMPcNAPhTbJf8tjLr4fY7Yy9N1rfkhXgHIg
        0iKYF/sTQZ2f3jNCphzxfOO41Q==
X-Google-Smtp-Source: AGHT+IGw692kG+QBF3m4iVqEW6FH1FHekmcPGIKplMaHGmXbveDHTo2sU4XYlmMbvG4i4uM+e/g6Vg==
X-Received: by 2002:a7b:c3d6:0:b0:401:7d3b:ccaf with SMTP id t22-20020a7bc3d6000000b004017d3bccafmr11239201wmj.4.1694529203993;
        Tue, 12 Sep 2023 07:33:23 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id x5-20020a1c7c05000000b003fef5402d2dsm16347408wmc.8.2023.09.12.07.33.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Sep 2023 07:33:23 -0700 (PDT)
Message-ID: <bb639e87-a86a-27ef-0d0c-1dd6cbc2178c@linaro.org>
Date:   Tue, 12 Sep 2023 16:33:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v4 1/2] dt-bindings: arm64: dts: mediatek: add mt8395-evk
 board
Content-Language: en-US
To:     Macpaul Lin <macpaul.lin@mediatek.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        =?UTF-8?Q?Bernhard_Rosenkr=c3=a4nzer?= <bero@baylibre.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Cc:     Bear Wang <bear.wang@mediatek.com>,
        Pablo Sun <pablo.sun@mediatek.com>,
        Macpaul Lin <macpaul@gmail.com>
References: <20230907131630.28346-1-macpaul.lin@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230907131630.28346-1-macpaul.lin@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/09/2023 15:16, Macpaul Lin wrote:
> 1. Add compatible for MT8395.
> 2. Add bindings for the MediaTek mt8395-evk board, also known
> as the "Genio 1200-EVK".
> 
> The MT8195 and MT8395 belong to the same SoC family,
> with only minor differences in their physical characteristics.
> They utilize unique efuse values for differentiation.
> 
> The booting process and configurations are managed by boot
> loaders, firmware, and TF-A. Consequently, the part numbers
> and procurement channels vary.
> 
> Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  Documentation/devicetree/bindings/arm/mediatek.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> Changes for v2:
>  - add more detail description for mt8395.
>  - add bindings for mt8395, and mt8395-evk.
> 
> Changes for v3:
>  - add back bindings for mt8195 compatible.
> 
> Changes for v4:
>  - No change, update Reviewed-by tag only. Thanks.
> 
> diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
> index ae12b1cab9fb..2e8ad49c3479 100644
> --- a/Documentation/devicetree/bindings/arm/mediatek.yaml
> +++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
> @@ -248,6 +248,12 @@ properties:
>            - enum:
>                - mediatek,mt8365-evk
>            - const: mediatek,mt8365
> +      - description: MediaTek Genio 1200 Boards (Genio 1200 EVK)

Drop description. This is an entry for multiple boards, not this one.

Best regards,
Krzysztof

