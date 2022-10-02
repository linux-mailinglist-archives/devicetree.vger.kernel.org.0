Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 75E585F21DB
	for <lists+devicetree@lfdr.de>; Sun,  2 Oct 2022 10:06:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229591AbiJBIGh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Oct 2022 04:06:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60356 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229461AbiJBIGf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Oct 2022 04:06:35 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7232B39BBD
        for <devicetree@vger.kernel.org>; Sun,  2 Oct 2022 01:06:34 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id b2so1744484lfp.6
        for <devicetree@vger.kernel.org>; Sun, 02 Oct 2022 01:06:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=Ih52Hlx+eX56tVspyaU7zHlpharxBn/SjHWmXDB6OKk=;
        b=Q3tr2avwURfk+SpVFC96h+4s6UEMfxTfFM4X1ZCQ6OVt4cWO0uTH53x9EFrf6POj5M
         j9CbhhELYz5WkjY8dabptdCLh4HFHDLoVYWlxH1F+/phJ7I8GzQKY3nyZKQstLc39Cyo
         wQdjmt7InEpVv713co5gUtvRGxpjJiYoBvLZAj3fyPU8XfRfZzUnzvFrZ91+JivwQsTa
         w9ZWUdq/7ofLWUBMxfwk+9wSfWcUXMW6jp6zzHZNeQuD2xJlzeloQxkRD6FrnFVt2DtC
         Ju3tMt4FtKr46BcFoa49APPR7O5qrGLAlczuh2U8XDwhGxENFvg8jMp64RyeGZC+eNGb
         /5Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=Ih52Hlx+eX56tVspyaU7zHlpharxBn/SjHWmXDB6OKk=;
        b=j6vzy8xnuAVvS5Q48viUCFwvpy72TGwI3qiTejteuhOOk4WMiKU6sdi2uc3Y6kYbZN
         GuLrLM33rT060moQZctBbniiG248sOKBox3XZ4QGY8QojbuKVReBoUifH6bI+nONp/L4
         Pcfe989bJo4oh+EEp81TwbRNB2x5j2r9e2ve59g7igEhALz2dhpp9XAu5zMDiIb+8N94
         ezAtaEZmhvWFb6bo2nmscim6wwstdq8tgEYn8GmLXFnsIuDZvlDkWoQqqA5dMXa8MPO6
         5uxrvsG16XiN3/zb0yFaAMuBotLvB7iTpMCyJ2eSGuCn3x7FjI5fn3+hGELnC9rUXjmU
         Hf2w==
X-Gm-Message-State: ACrzQf0XxMpw10ixMWPB6xUTaZh3DsN0l/ZNlDnp867wbgq0wvmdfdoU
        RKZo3UqeizMZ6n1R59x+MMmUOlsXTwx3Ww==
X-Google-Smtp-Source: AMsMyM5OYdz5lO107vNdyJJf2kCeIrP4T47B3QliEARnAsvn/uTGZmx2R2gLTJ212FHyB/Ar0wsGSQ==
X-Received: by 2002:a05:6512:533:b0:4a2:f36:bba5 with SMTP id o19-20020a056512053300b004a20f36bba5mr4015391lfc.224.1664697992837;
        Sun, 02 Oct 2022 01:06:32 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id a18-20020a05651c031200b0026c5579c64csm579375ljp.89.2022.10.02.01.06.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 02 Oct 2022 01:06:32 -0700 (PDT)
Message-ID: <dc2f73e4-5c8a-5018-f507-8e04d86fc6d5@linaro.org>
Date:   Sun, 2 Oct 2022 10:06:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH 1/2] ASoC: dt-bindings: add schema for WM8961
Content-Language: en-US
To:     Doug Brown <doug@schmorgal.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>
Cc:     Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        patches@opensource.cirrus.com, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org
References: <20221001200039.21049-1-doug@schmorgal.com>
 <20221001200039.21049-2-doug@schmorgal.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221001200039.21049-2-doug@schmorgal.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/10/2022 22:00, Doug Brown wrote:
> Create a simple DT schema for the existing Wolfson WM8961 driver so that
> DT support can be added to the driver.
> 
> Signed-off-by: Doug Brown <doug@schmorgal.com>
> ---
>  .../devicetree/bindings/sound/wlf,wm8961.yaml | 40 +++++++++++++++++++
>  1 file changed, 40 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/wlf,wm8961.yaml
> 
> diff --git a/Documentation/devicetree/bindings/sound/wlf,wm8961.yaml b/Documentation/devicetree/bindings/sound/wlf,wm8961.yaml
> new file mode 100644
> index 000000000000..73166cf0fdcf
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/wlf,wm8961.yaml
> @@ -0,0 +1,40 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/wlf,wm8961.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Wolfson WM8961 Ultra-Low Power Stereo CODEC
> +
> +maintainers:
> +  - patches@opensource.cirrus.com
> +
> +properties:
> +  '#sound-dai-cells':
> +    const: 0
> +
> +  compatible:
> +    const: wlf,wm8961

Please put compatible first in list of properties (and follow same order
in "required"). It's the most important piece, so we want it to be the
first to see. It also follows the convention of DTS, where compatible is
expected to be first.

> +
> +  reg:
> +    maxItems: 1
> +
> +required:
> +  - '#sound-dai-cells'
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    i2c {
> +          #address-cells = <1>;
> +          #size-cells = <0>;
> +
> +          wm8961: codec@4a {
> +                  #sound-dai-cells = <0>;
> +                  compatible = "wlf,wm8961";

Here compatible first, reg second, then the rest.

> +                  reg = <0x4a>;
> +          };
> +    };

Best regards,
Krzysztof

