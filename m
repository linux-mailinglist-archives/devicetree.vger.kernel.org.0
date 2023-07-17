Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 79C8D756DC5
	for <lists+devicetree@lfdr.de>; Mon, 17 Jul 2023 21:56:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231394AbjGQT4B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jul 2023 15:56:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46306 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230118AbjGQTzy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jul 2023 15:55:54 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2124B1FF1
        for <devicetree@vger.kernel.org>; Mon, 17 Jul 2023 12:55:28 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-9923833737eso592454366b.3
        for <devicetree@vger.kernel.org>; Mon, 17 Jul 2023 12:55:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689623720; x=1692215720;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zpIC/vheFt0sfkteBFunYkR3K/TvtDGb+njBwXb1bVw=;
        b=B0ly1khsPWB96zrFc7dyjFKzz+VKXdbdmOleSWMI9iPNVnQJ9BaryBnfDkWN1vlW9C
         qFSSeSyyLeZup1VbUMoFERdX+KS2zyerrB+4REY29FQVbJ7nYdGiLw0hq9i53CmAIJ1D
         DjV2mZy1X6V+dbJscHvd40lhUsd0z42cMbmLefuXI1Y9M668Wu68QY9tDUXMhg+NLKUa
         lawvu25/DOCqKm86OCV9hh0jjVACEQTPva599OrfrpTGm4T/G2936rqcgedBLJ0cY0Nc
         XtxP0Vb/qk+AakD8LSHG5C9uaLo641EIM87qYBQjjI1lUqIpQ0NwDD2CDCnZdYkYca1m
         xewg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689623720; x=1692215720;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zpIC/vheFt0sfkteBFunYkR3K/TvtDGb+njBwXb1bVw=;
        b=dtDCm35HxnuAGDSytWvZZ23wau2KzLnj9bLbZDh8Mekjf0J6XZhS8ppIHiMkAwWpSe
         PbstS7iM97ZYlUkGJoUaQXeag8JWsOj7R0g9yu73dI8VYe9aNrx5pEbBiNtV60/lyTjx
         8en12+1kEOhS/a3HoIlChBrYiXMn0YwaRK6KqyJs5h/OqqaQddyzwZRdmmxQIXp9bd7y
         ILXZrSbmRmnL0sc2FIVhBwu6AxeXAU7jWo1S+Uk1v+MNKzMmLTjfseAKSatFK17cEntS
         MAwoNOWRlxLDI5xHaXF87CWpt5jqzgsMWJBrCRnbBEYpP0A/OKtgga8dnqho4jkF6534
         akMg==
X-Gm-Message-State: ABy/qLYHHpv4GOXGfOMl6zeepGyOwrlzYBJQxI12PIjWcR4l+4LSuKLZ
        KyTrFl+bGUfUqG1+evtsPiuU+w==
X-Google-Smtp-Source: APBJJlH2ZBow7cATyCQicXDgX7fUHJgqQSPkaJq+UqX1f6NKkgZ6Mmi+m6jeuqTzgET/pn5dMaO6Dg==
X-Received: by 2002:a17:906:77cd:b0:993:d9a5:dafe with SMTP id m13-20020a17090677cd00b00993d9a5dafemr12994208ejn.14.1689623720587;
        Mon, 17 Jul 2023 12:55:20 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id y26-20020a170906471a00b0098e78ff1a87sm85676ejq.120.2023.07.17.12.55.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Jul 2023 12:55:19 -0700 (PDT)
Message-ID: <9e46c996-3e3b-b437-f2c4-2ca86a1c7e6c@linaro.org>
Date:   Mon, 17 Jul 2023 21:55:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v3 3/4] dt-bindings: soc: mediatek: pwrap: Add compatible
 for MT8188
Content-Language: en-US
To:     Jason-ch Chen <jason-ch.chen@mediatek.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     =?UTF-8?Q?N=c3=adcolas_F_=2e_R_=2e_A_=2e_Prado?= 
        <nfraprado@collabora.com>, Chen-Yu Tsai <wenst@chromium.org>,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org
References: <20230717120300.21388-1-jason-ch.chen@mediatek.com>
 <20230717120300.21388-4-jason-ch.chen@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230717120300.21388-4-jason-ch.chen@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/07/2023 14:02, Jason-ch Chen wrote:
> From: jason-ch chen <Jason-ch.Chen@mediatek.com>
> 
> Add MT8188 PMIC Wrapper compatible to binding document.

No improvements here - the compatible is already there. Subject has the
same issue. Explain what you are doing and why.

> 
> Signed-off-by: jason-ch chen <Jason-ch.Chen@mediatek.com>
> ---
>  .../devicetree/bindings/soc/mediatek/mediatek,pwrap.yaml    | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/soc/mediatek/mediatek,pwrap.yaml b/Documentation/devicetree/bindings/soc/mediatek/mediatek,pwrap.yaml
> index a06ac2177444..4737e5f45d54 100644
> --- a/Documentation/devicetree/bindings/soc/mediatek/mediatek,pwrap.yaml
> +++ b/Documentation/devicetree/bindings/soc/mediatek/mediatek,pwrap.yaml
> @@ -41,7 +41,6 @@ properties:
>                - mediatek,mt8173-pwrap
>                - mediatek,mt8183-pwrap
>                - mediatek,mt8186-pwrap
> -              - mediatek,mt8188-pwrap

Look, here ^^^^

>                - mediatek,mt8195-pwrap
>                - mediatek,mt8365-pwrap
>                - mediatek,mt8516-pwrap
> @@ -50,6 +49,11 @@ properties:
>                - mediatek,mt8186-pwrap
>                - mediatek,mt8195-pwrap
>            - const: syscon
> +      - items:
> +          - enum:
> +              - mediatek,mt8188-pwrap


Best regards,
Krzysztof

