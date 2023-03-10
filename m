Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3DBE26B3907
	for <lists+devicetree@lfdr.de>; Fri, 10 Mar 2023 09:42:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231379AbjCJImI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Mar 2023 03:42:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231361AbjCJIl3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Mar 2023 03:41:29 -0500
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 859E9108C0F
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 00:39:54 -0800 (PST)
Received: by mail-ed1-x532.google.com with SMTP id s11so17402230edy.8
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 00:39:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678437593;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cdseOTNh621EKmpqbEpL631jgufcpzaPsbaGb0u5w10=;
        b=gv1m73ZIi7XGNzWH+OmD64J0OzTplBXcQSocEEdL2QUmF0AXQ1/9bWH80ddM5j0x7Z
         KZ65c7plre85naGIZQLNQanh4M7XodTboeoJ9a8cIO6kGMVFzmj7eMFCM5pHb3Eqjo9t
         nu0fhxWpaj5gHZA+86rt1HmcZXmcfwcRlCN1whV+sTYxxeKikocOrbz0wY8kGawHHnP8
         BwyPuAzbyULYajWk9kjidsl282EpSPx1hdmdFpVx+vnWbKiZ31JY+JuwWKVACeM0eH/o
         PPz+6c0YpmBkSVsyvl/TEEoLjyBki/z9UkLQ7W6xptbhM2R00/OM0GFXuMuqf9QNSPLm
         Mrdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678437593;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cdseOTNh621EKmpqbEpL631jgufcpzaPsbaGb0u5w10=;
        b=rwfA6KXB7J7S0d+SKcj5xNm+nCearBvHNLtfEm2N1kmEq3k6gk33nejR2BcFoNvT5w
         BoN93mqNRTK3gknmDlhWPFULwEs31aqpjtSB1gg0fv51iDF7C6FpGfdrqzGvvxovRQrh
         vaWYLcBSW1Ok+opA1gEfTfqEXM8M0JOoCi+VBfYA5N57lHSdL2K6VrBvzeG2KGZJNnlj
         sM/8DEgrvRhZ2TMysXo/NylCjmfnm1dZ6MQc+5swi6j8rTok63DSOloHRRP6OLtTuOjZ
         7IrP78i+IsPvVybRP71GI2cEXGno4G64XFVLByEZaMpzwx050YOVyuTynnTK21ImFMUt
         VRpQ==
X-Gm-Message-State: AO0yUKWmR7Hzc68KlNxs0DxgtiQ+gjuW4UF3GcWmvLqQdcS7xlliTjef
        m6gPMUjBFPsXBawzbOIwFPZCcw==
X-Google-Smtp-Source: AK7set+lxQhevUPXYKqS7jtxNCvms4/+advMJ1dI2u0ZlQIAtqX95l06i6g/8T6Oo0vZH3lkYkCzfA==
X-Received: by 2002:a17:907:3f90:b0:878:711d:9310 with SMTP id hr16-20020a1709073f9000b00878711d9310mr27459148ejc.1.1678437592913;
        Fri, 10 Mar 2023 00:39:52 -0800 (PST)
Received: from ?IPV6:2a02:810d:15c0:828:2a59:841a:ebc:7974? ([2a02:810d:15c0:828:2a59:841a:ebc:7974])
        by smtp.gmail.com with ESMTPSA id dt22-20020a170906b79600b008d47cd2edfbsm684140ejb.60.2023.03.10.00.39.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Mar 2023 00:39:52 -0800 (PST)
Message-ID: <ea8aaec1-948d-832b-ff24-b35abd3a59a2@linaro.org>
Date:   Fri, 10 Mar 2023 09:39:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 15/21] dt-bindings: soc: mediatek: add display mutex for
 MT8365 SoC
Content-Language: en-US
To:     Alexandre Mergnat <amergnat@baylibre.com>,
        Daniel Vetter <daniel@ffwll.ch>, CK Hu <ck.hu@mediatek.com>,
        Jitao Shi <jitao.shi@mediatek.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Sam Ravnborg <sam@ravnborg.org>,
        Rob Herring <robh+dt@kernel.org>,
        =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        David Airlie <airlied@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Xinlei Lee <xinlei.lee@mediatek.com>
Cc:     Guillaume La Roque <glaroque@baylibre.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        dri-devel@lists.freedesktop.org,
        Fabien Parent <fparent@baylibre.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230220-display-v1-0-45cbc68e188b@baylibre.com>
 <20230220-display-v1-15-45cbc68e188b@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230220-display-v1-15-45cbc68e188b@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/03/2023 15:23, Alexandre Mergnat wrote:
> Add compatible for the MT8365 SoC.
> 
> Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
> ---
>  Documentation/devicetree/bindings/soc/mediatek/mediatek,mutex.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/soc/mediatek/mediatek,mutex.yaml b/Documentation/devicetree/bindings/soc/mediatek/mediatek,mutex.yaml
> index ca0ca549257d..931d66893dff 100644
> --- a/Documentation/devicetree/bindings/soc/mediatek/mediatek,mutex.yaml
> +++ b/Documentation/devicetree/bindings/soc/mediatek/mediatek,mutex.yaml
> @@ -34,6 +34,7 @@ properties:
>        - mediatek,mt8186-mdp3-mutex
>        - mediatek,mt8192-disp-mutex
>        - mediatek,mt8195-disp-mutex
> +      - mediatek,mt8365-disp-mutex

All these look compatible. Either make mt8635 compatible with something
or even rework entire list and make everything compatible.

Best regards,
Krzysztof

