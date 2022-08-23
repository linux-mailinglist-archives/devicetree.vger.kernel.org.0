Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3FF8659D860
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 12:03:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350555AbiHWJgi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Aug 2022 05:36:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44882 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351397AbiHWJfc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Aug 2022 05:35:32 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 436E195E64
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 01:39:36 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id u24so7261222lji.0
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 01:39:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=JKH4ft/HojJoLFaDDgeksLkaodkyHdDC/mjKTNTZhPs=;
        b=oEmXzyGTsY1Jm/8QDV/fL0tMWnA8/aqTqARmji/gwW4uTPzoaSR9ltEOjszs48LwHm
         zyX/2IkiLkYutSnRSWpOccw4/fVZC22paPUEgeX0TFhWjMkc3Eq31lWv0gtcXzhHctXf
         yo/hfbmujNbjQSELNCY9smsLaTfejwC11ajGhW+AvQqxRQgVPa2G/n7j3SOr1l0A5TiP
         mr1ekZIM6Ipy1b1AOHF/Xjlj6p8M4AQonkKqaiLQJhZcJhu4wO8rMbt8qed8m9jSjyf5
         z2XDb1tNAeBwxdP1JbNfNAYNi34zvD0AmyZ+Zf2rVyIj5J31nKNeZl/wWO2qgzSRjokk
         9dWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=JKH4ft/HojJoLFaDDgeksLkaodkyHdDC/mjKTNTZhPs=;
        b=rvCx2EudhGmw5c+VPjjhxF+9Pb+ix5sLzf5pF7oA+Jm77ry/38WEiWgWiyNpnEovTV
         j36W3W7xjlLw7U7TuU5PeNVEU3NJFo5aVoxMBHlODes+HF5vny/qRFimA7RnahufkS6N
         ZYYTn+3/Reaoqvpvc6ChadoU4LC8AE1no/eoiBUefaq1EJVcljd5gDZnDrruMWNT1RqK
         aQRTdWoV93iAQRaVr7oKGZBfIJBs0XUoIh4l78yM7DoYSZ5/bvGqDuhlWBTIA2DEKsFA
         MlPt0ncLPuTwbgetqbTvag/YX1xdHAY9FjpnVOiZn3S3gTK5VP7eSzmG2xmMuhAGuHgB
         08xA==
X-Gm-Message-State: ACgBeo0/a6d43D+YFk3oG772eXTDf9hE7YZESCwEIT57pteky3KUom2/
        n8nu+8U0Z20q0GRLSKEjWRInXQ==
X-Google-Smtp-Source: AA6agR4YBTjnWyro2PJsJoAncXN9rtMdAV8mFoIfbItwV+OsR3C7RYb9maJWlvJph7+5H40eCY+DFA==
X-Received: by 2002:a05:651c:210c:b0:25e:6a39:23ed with SMTP id a12-20020a05651c210c00b0025e6a3923edmr6546406ljq.43.1661243908301;
        Tue, 23 Aug 2022 01:38:28 -0700 (PDT)
Received: from [192.168.0.11] (89-27-92-210.bb.dnainternet.fi. [89.27.92.210])
        by smtp.gmail.com with ESMTPSA id n2-20020a2e7202000000b00261d619fb16sm329148ljc.82.2022.08.23.01.38.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Aug 2022 01:38:27 -0700 (PDT)
Message-ID: <2bbafb3f-3f69-c014-b86c-476f56d93659@linaro.org>
Date:   Tue, 23 Aug 2022 11:38:26 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 1/3] dt-bindings: mediatek: Add gamma compatible for
 mt8195
Content-Language: en-US
To:     "zheng-yan.chen" <zheng-yan.chen@mediatek.com>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     dri-devel@lists.freedesktop.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        "Jason-JH . Lin" <jason-jh.lin@mediatek.com>,
        Singo Chang <singo.chang@mediatek.com>,
        Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20220822091945.21343-1-zheng-yan.chen@mediatek.com>
 <20220822091945.21343-2-zheng-yan.chen@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220822091945.21343-2-zheng-yan.chen@mediatek.com>
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

On 22/08/2022 12:19, zheng-yan.chen wrote:
> mt8195 uses 10bit-to-12bit gamma-LUT, which is different from
> current 9bit-to-10bit gamma-LUT, so this patch add its own compatible
> for mt8195.

I am not sure if this explains the need for change. Is mt8195 still
compatible with mt8183 or not? Your driver change suggests that it is
and points that this commit is wrong.

> 
> Signed-off-by: zheng-yan.chen <zheng-yan.chen@mediatek.com>
> 
> ---
>  .../devicetree/bindings/display/mediatek/mediatek,gamma.yaml   | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,gamma.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,gamma.yaml
> index a89ea0ea7542..fbd7b9664a78 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,gamma.yaml
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,gamma.yaml
> @@ -25,11 +25,12 @@ properties:
>            - const: mediatek,mt8173-disp-gamma
>        - items:
>            - const: mediatek,mt8183-disp-gamma
> +      - items:
> +          - const: mediatek,mt8195-disp-gamma
>        - items:
>            - enum:
>                - mediatek,mt8186-disp-gamma
>                - mediatek,mt8192-disp-gamma
> -              - mediatek,mt8195-disp-gamma


Best regards,
Krzysztof
