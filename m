Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 897C56FBF17
	for <lists+devicetree@lfdr.de>; Tue,  9 May 2023 08:15:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234806AbjEIGP4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 May 2023 02:15:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33462 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234786AbjEIGPz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 May 2023 02:15:55 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68DB49EE1
        for <devicetree@vger.kernel.org>; Mon,  8 May 2023 23:15:54 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-965cc5170bdso757155366b.2
        for <devicetree@vger.kernel.org>; Mon, 08 May 2023 23:15:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683612953; x=1686204953;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LvJcSRnUzaGT3dLyK/BLEswfy0TIU9GObB2FGkLqtxU=;
        b=jKfZU4OZMP27eCfHg5X2wsqWUjw5sDq308ydl+/MJCuI6b7j/aGrDZ1Lm8hUF66MNo
         fXvs+E2BvKJ2qQfY+IM8MMlkn7/ipWLpKID/Bo9Xxrv4n6xlsrm36qVESh/Q7RpmOgP9
         Mtsltri6zTfof9V+d/azXYEBCGKKXzjumOow9xUh+pP83E+VxGY/7xJuf2udLzCVUhgP
         4e9TgoXs/CE3y2Et1KWieG35TJlmkJimjlCZWaZFPArotVgQ9ltrWWJWSueOxVB16lF+
         56S3jzIUwfSZR22rHz8uqWp4M6GHuMjPHF+0ZIaRnqVikE1TGZXNTexPIAwdC0OV54VB
         Wr4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683612953; x=1686204953;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LvJcSRnUzaGT3dLyK/BLEswfy0TIU9GObB2FGkLqtxU=;
        b=UXjbkx7RNFGWyAZWQuxDdO5cDXg0yYI5HsJzSsYD8h7Uko4ha/moLpv4V/yEt4Hpjr
         EpPP1fP1/86TFE7OsON7stY1PLglqPQsf7oAnWU7E7/n01fIYvyt/Qxj3ptj+d2JM0ut
         OxVTGk/Ke3QT78AT1n7tZjISL8x4712HNnMmDikw43dIixgEvCXKRn/REmicU2ghb4Bc
         v63nZVkqvTsijAYPkWIokyDT51QgFSFlspWDANcpjgsmRmtpoKHBEz7SUUzFAYUGED8R
         tS8OonWuwG+k9gzbCJDenKDLhd2S08urGjocIrHdWPrO6nCwsHisHQrMiIPtAksKevG5
         YI3w==
X-Gm-Message-State: AC+VfDyynwDHuUOL/TaYu2Xvzbrz0S+yGgxKnQhctw4nRA+H36z3aE6t
        Zgni5gTvGITGzpNHAChPzKEGvQ==
X-Google-Smtp-Source: ACHHUZ5CIJTRHkGbt1U7L6E+3/CBYoIMc7dD1VZ77HAxjGuNl+HNtDcuHjk6+G61nvjQi2GnyEo3XQ==
X-Received: by 2002:a17:907:31c7:b0:960:c5fe:a36a with SMTP id xf7-20020a17090731c700b00960c5fea36amr10551101ejb.61.1683612952850;
        Mon, 08 May 2023 23:15:52 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:d0d5:7818:2f46:5e76? ([2a02:810d:15c0:828:d0d5:7818:2f46:5e76])
        by smtp.gmail.com with ESMTPSA id pk25-20020a170906d7b900b00965d9892bafsm891190ejb.111.2023.05.08.23.15.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 May 2023 23:15:52 -0700 (PDT)
Message-ID: <c111c429-81a9-cb38-d5ee-b1051c244aab@linaro.org>
Date:   Tue, 9 May 2023 08:15:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 3/7] ASoC: dt-bindings: Add Google Chameleon v3 i2s
 device
Content-Language: en-US
To:     =?UTF-8?Q?Pawe=c5=82_Anikiel?= <pan@semihalf.com>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, lgirdwood@gmail.com,
        broonie@kernel.org
Cc:     perex@perex.cz, tiwai@suse.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, dinguyen@kernel.org,
        lars@metafoo.de, nuno.sa@analog.com, upstream@semihalf.com,
        amstan@chromium.org
References: <20230508113037.137627-1-pan@semihalf.com>
 <20230508113037.137627-4-pan@semihalf.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230508113037.137627-4-pan@semihalf.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/05/2023 13:30, Paweł Anikiel wrote:
> Add binding for google,chv3-i2s device.
> 
> Signed-off-by: Paweł Anikiel <pan@semihalf.com>
> ---
>  .../bindings/sound/google,chv3-i2s.yaml       | 44 +++++++++++++++++++
>  1 file changed, 44 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/google,chv3-i2s.yaml
> 
> diff --git a/Documentation/devicetree/bindings/sound/google,chv3-i2s.yaml b/Documentation/devicetree/bindings/sound/google,chv3-i2s.yaml
> new file mode 100644
> index 000000000000..3ce910f44d39
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/google,chv3-i2s.yaml
> @@ -0,0 +1,44 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/google,chv3-i2s.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Google Chameleon v3 I2S device
> +
> +maintainers:
> +  - Paweł Anikiel <pan@semihalf.com>
> +
> +description: |

If there is going to be resend:
Do not need '|' unless you need to preserve formatting.

Anyway:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

