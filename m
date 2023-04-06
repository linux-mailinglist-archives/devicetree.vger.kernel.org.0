Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 83A496D9F97
	for <lists+devicetree@lfdr.de>; Thu,  6 Apr 2023 20:14:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239992AbjDFSO2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Apr 2023 14:14:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232809AbjDFSO2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Apr 2023 14:14:28 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB81D2D7F
        for <devicetree@vger.kernel.org>; Thu,  6 Apr 2023 11:14:26 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id l17so3479078ejp.8
        for <devicetree@vger.kernel.org>; Thu, 06 Apr 2023 11:14:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680804865;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NQFvfZFkeOJnSh0EU3SuNNSGFZ0WJWC9wsmtsGHV3KU=;
        b=mSBDTfx7HMaWc6G5iXzU290AW0Z7FMpYCEJoECzGzlcgd9j5ECi8pYLebEFq5DHbpr
         8FZ3LcRZlPNGThlgZrC3D86lSAUJQ8twIQ5R88wqRojzqHUMVLzGaW3NQaO2usdLZ/T9
         sk/NMv8Bb1jrHTC6GxICl3nZn6p4Va1VvPLs7HyMkMe94bttFeddgrlDxNFb1CtaEINU
         hwG4cEr52fU2Qh4GEhRCmg4i18rfR43PbKyAZNDnExIcbobFMaYdCDxM5HMG3PI+qARJ
         c8OAloMhp8vfu2zr8+D5zHVOYPrPZ/0d/3fs4M8/l3ofJHN8rpN2AsrAkK9aCh22xQRU
         5LDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680804865;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NQFvfZFkeOJnSh0EU3SuNNSGFZ0WJWC9wsmtsGHV3KU=;
        b=3igC78/2DZh3182/ptj8EDWHpTHJHaRYHig271wEw+PaGnV+jtHu0d8od7dh1saZoq
         1lIOqyqpc/sfEra5faVy05S7n9bgj+KnYGgcN8jpXhqxNd7tYtmB9EzbG53ONRACDQAj
         /6T2KZ7j7UmunyASIBpZcEPmXmK2mBdyVIBXaWqrwqVmjLfQDvvRxb6gOjWM7KoPioM7
         zb6VYMsT5ZSGqKLS711/qMP7xfvUIdh1Jk0zeU8qHElkiBX6DiNhG2b2QYXinvNYyTNk
         Gm/Hx3x5VzLpsiw4l/toVBjowG6yhQLnh1OQ92ZvNjQf27PthDNHcTtwKPTGdxgoqjRX
         MGZA==
X-Gm-Message-State: AAQBX9dgsC6bgG/Q8eDnxE4HXCuZW+JPqdnKkMKbOQ1lVqBBxv3HR5Ju
        3OcCUj3AF7kNO0zJn8Vp6WR7Cg==
X-Google-Smtp-Source: AKy350axloGhUMnoD0X4SMR1XgqCJg1aW4zfsx3ehg21Tkc3lHQt41y4w2E/+P44nJiWxQoj4q+3zQ==
X-Received: by 2002:a17:906:f88a:b0:932:dac6:3e46 with SMTP id lg10-20020a170906f88a00b00932dac63e46mr6854297ejb.7.1680804865218;
        Thu, 06 Apr 2023 11:14:25 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:49e6:bb8c:a05b:c4ed? ([2a02:810d:15c0:828:49e6:bb8c:a05b:c4ed])
        by smtp.gmail.com with ESMTPSA id ck19-20020a170906c45300b0094771bfca1csm1098194ejb.20.2023.04.06.11.14.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Apr 2023 11:14:24 -0700 (PDT)
Message-ID: <04d7dd35-6648-7ebb-4674-54c132294628@linaro.org>
Date:   Thu, 6 Apr 2023 20:14:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 1/8] regulator: dt-bindings: fcs,fan53555: Add support
 for RK860X
Content-Language: en-US
To:     Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Joseph Chen <chenjh@rock-chips.com>,
        Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        kernel@collabora.com
References: <20230406171806.948290-1-cristian.ciocaltea@collabora.com>
 <20230406171806.948290-2-cristian.ciocaltea@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230406171806.948290-2-cristian.ciocaltea@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/04/2023 19:17, Cristian Ciocaltea wrote:
> Add compatibles to support Rockchip RK860X regulators.
> 
> RK8600/RK8601 are pretty similar to the FAN53555 regulators, while
> RK8602/RK8603 are a bit different, having a wider voltage selection
> range.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  .../bindings/regulator/fcs,fan53555.yaml      | 22 ++++++++++++++-----
>  1 file changed, 16 insertions(+), 6 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/regulator/fcs,fan53555.yaml b/Documentation/devicetree/bindings/regulator/fcs,fan53555.yaml
> index c0dbba843f70..7547c130ff7d 100644
> --- a/Documentation/devicetree/bindings/regulator/fcs,fan53555.yaml
> +++ b/Documentation/devicetree/bindings/regulator/fcs,fan53555.yaml
> @@ -14,12 +14,22 @@ allOf:
>  
>  properties:
>    compatible:
> -    enum:
> -      - fcs,fan53555
> -      - fcs,fan53526
> -      - silergy,syr827
> -      - silergy,syr828
> -      - tcs,tcs4525
> +    oneOf:
> +      - items:

Drop items here. It's just an enum.

> +          - enum:
> +              - fcs,fan53555
> +              - fcs,fan53526
> +              - rockchip,rk8600
> +              - rockchip,rk8602
> +              - silergy,syr827
> +              - silergy,syr828
> +              - tcs,tcs4525
> +      - items:
> +          - const: rockchip,rk8601
> +          - const: rockchip,rk8600
> +      - items:
> +          - const: rockchip,rk8603
> +          - const: rockchip,rk8602
>  
>    reg:
>      maxItems: 1

Best regards,
Krzysztof

