Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ADEAF52FD67
	for <lists+devicetree@lfdr.de>; Sat, 21 May 2022 16:41:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238494AbiEUOlZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 21 May 2022 10:41:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355296AbiEUOlE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 21 May 2022 10:41:04 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0551412AAA
        for <devicetree@vger.kernel.org>; Sat, 21 May 2022 07:40:58 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id u7so11739621ljd.11
        for <devicetree@vger.kernel.org>; Sat, 21 May 2022 07:40:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=LxFUgiNVciv/W8ZtHs9d3GAs5Rmd048FQ4zmny+B+pw=;
        b=AkjMk7cfzFpy/3MkLjibCyOtBl4UKyhVM5iB638FNB0COGIpbyXJ9lmtH1KP0rGLcN
         cJ4iFUb554Pfq77EW3zguqhNuVJTKOf2OcLg18rMEPuY59WdxNe1Oo9W6YjKGKmGPDve
         0nh3nx4vunHE5KmquxmiC4tqCARZL24FD/Dz+0SY9wKeujOVvBDX4nDR7IjFNQgDXKBN
         JS24Yvupjj9oo8AUsbQ0f6x/1UNXDLs+jkymMV25UQOWVP+PGGfNynh6BiyjEnTeSbmY
         Wqa+PQh8DMbRKgToN+d2NRhNbdH7VTtKPR0lnfVBC2HPMmqjz/A0eamxMKK203kNYJrm
         6P0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=LxFUgiNVciv/W8ZtHs9d3GAs5Rmd048FQ4zmny+B+pw=;
        b=mndPcpA0r4vyx1xG1DeViRcgyl6sHW0mWuAPt12VqZgq+q9vdbBcFWWMgx5ZQfv8n8
         Gad5qNcP970fd3mow/MkqdDeKYr581pMTZyKgTbkM3YgqiQW40tjKxAddBZVIG7X3ruX
         AyvGzPUYJjzi0npjQ1cZhWXUClDgWjsGa1soS7DaWlAabRPKvmi2Jcij744Df2FEvIZY
         vM0qLf/Ht4xHSCVY6+8g4H+cjvflCdR+kJ8GevNZLjz4BNLOPs36vM54wi18fnY71TYr
         6NulCqsPnfNs7gRJ7QFbtkb8oQ620xuWtNExQTB1LyO6Lc08tn8gWPJ2DiTxyBv9/KQR
         i+fQ==
X-Gm-Message-State: AOAM533ffNCXTaCsPgtWUPcFTBxEcIk7PQkOnUPlHrW75hypbU7/OcO9
        xzFhDQ22ZyPCRAbJQGBO13rKGA==
X-Google-Smtp-Source: ABdhPJxps9GV+yRWGawxgG+Pz6I2lgGdZiPB+Mj7qyuiM5JY7RRCBXJ6BbqfIh9EzhnSj6om1UUuYg==
X-Received: by 2002:a2e:97da:0:b0:253:c987:cb43 with SMTP id m26-20020a2e97da000000b00253c987cb43mr8381829ljj.473.1653144056354;
        Sat, 21 May 2022 07:40:56 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id m4-20020a056512358400b0047255d21137sm1081811lfr.102.2022.05.21.07.40.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 May 2022 07:40:55 -0700 (PDT)
Message-ID: <f5982143-bca5-79c8-7e0a-f37dd098d481@linaro.org>
Date:   Sat, 21 May 2022 16:40:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH 3/4] dt-bindings: regulator: Add bindings for MT6332
 regulator
Content-Language: en-US
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, lgirdwood@gmail.com
Cc:     broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
References: <20220520133305.265310-1-angelogioacchino.delregno@collabora.com>
 <20220520133305.265310-4-angelogioacchino.delregno@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220520133305.265310-4-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/05/2022 15:33, AngeloGioacchino Del Regno wrote:
> Add devicetree bindings for the regulators found in the MT6332 PMIC.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  .../bindings/regulator/mt6332-regulator.yaml  | 111 ++++++++++++++++++
>  1 file changed, 111 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/regulator/mt6332-regulator.yaml
> 
> diff --git a/Documentation/devicetree/bindings/regulator/mt6332-regulator.yaml b/Documentation/devicetree/bindings/regulator/mt6332-regulator.yaml
> new file mode 100644
> index 000000000000..51077a865dbe
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/regulator/mt6332-regulator.yaml

Same comments as your other patch,

> @@ -0,0 +1,111 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/regulator/mt6332-regulator.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: MT6332 Regulator from MediaTek Integrated
> +
> +maintainers:
> +  - AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> +
> +description: |
> +  List of regulators provided by this controller. It is named


Best regards,
Krzysztof
