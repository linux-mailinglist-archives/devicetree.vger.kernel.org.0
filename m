Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 461646A1AC0
	for <lists+devicetree@lfdr.de>; Fri, 24 Feb 2023 11:58:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229734AbjBXK6s (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Feb 2023 05:58:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55796 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229693AbjBXK6S (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Feb 2023 05:58:18 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F342234D3
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 02:58:17 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id l1so13204311wry.10
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 02:58:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UxT9FvHaPhscbfESj3x0Ux9E1/gu3fQSaddPYs/H2Hw=;
        b=pkSDpRPNfOn9j5B7JLq6oB+YolUwofphUahCjYotC5/zcNg+W6lKUwh5QWY3BYN1oR
         Gj1jdTuiZftrUBREWDqpORisvEZBVn9C2k5v9pWY85/XXkWnXUm0uSYfw3wLCFwjujMs
         Zl16tD7QX6gfR1oPj9qS3V2HAmUyZ+3PQmqwyagTmYUtjr96Ly8aoS7/6JpbdoiB2Dyy
         hQJK5+w4ANFxENTCR3wIoHqFs1EAghWnunjb9IPuLuyhaIF48ZJVoob+7f9ODMOetTAx
         VWGcYJgfkzFkH4QdZs9sc2XepmVEZ/LZpxR9qgjae3Zht2Js/OqwmXVN0Mq+PqYCzyNq
         o7dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UxT9FvHaPhscbfESj3x0Ux9E1/gu3fQSaddPYs/H2Hw=;
        b=aLThr0dOAe5L6NTq5mxDNM1kVB66xRI7TO/wgn/96RMgyLwRuE2cPHpGrmekGX2LUj
         m1ZVP0BtszQux3SQwi3k0AaVaMn7NIQORBIzwX6oT0Ryko0EG6ySTeoWB2PwjDvht2ma
         INZsfmpqd8M2Etv21tZd+NXhgAfm3sAEj6YUBEQypF9qZgHiKJEf8C48DLaGWIqgiIMW
         5U6jy2KkvN/BNT9iq6D0ctZXfqfFWViUlkA2ggQLVCxNCk1SHrATXjpxKb919KUqPggW
         qKxguq5u7rIEBB+nBtMTekNVIhXjsSS1EJ6NqU4EpRwon9+cp0TPQqjMm5v3ctTj+qzf
         anrA==
X-Gm-Message-State: AO0yUKW4UMKLnJXyUpLu6BbKTdEAL9EDizohQmzVJ4C+vwiKM9FMBGwp
        Xa/54OJi9vxaJ5SgLsgi8gKJuw==
X-Google-Smtp-Source: AK7set+7RhqsPgSckFc9YeBO3C0XfgcgNt80h0N7RD356kt/ThYv7bc6ee/ItorJfO2nByqDumA7Bg==
X-Received: by 2002:adf:ea07:0:b0:2c7:420:5d52 with SMTP id q7-20020adfea07000000b002c704205d52mr10876348wrm.62.1677236295491;
        Fri, 24 Feb 2023 02:58:15 -0800 (PST)
Received: from [192.168.1.20] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id y6-20020a056000108600b002c53f6c7599sm11157554wrw.29.2023.02.24.02.58.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Feb 2023 02:58:15 -0800 (PST)
Message-ID: <d0ca7b78-1fa6-d999-e010-e633ee3dbf19@linaro.org>
Date:   Fri, 24 Feb 2023 11:58:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v3 06/11] dt-bindings: gpu: mali-bifrost: Add support for
 MediaTek MT8186
Content-Language: en-US
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, airlied@gmail.com
Cc:     daniel@ffwll.ch, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, steven.price@arm.com,
        alyssa.rosenzweig@collabora.com, matthias.bgg@gmail.com,
        robh@kernel.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, wenst@chromium.org
References: <20230223133440.80941-1-angelogioacchino.delregno@collabora.com>
 <20230223133440.80941-7-angelogioacchino.delregno@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230223133440.80941-7-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/02/2023 14:34, AngeloGioacchino Del Regno wrote:
> MT8186 has a Mali-G52 MC2 2EE GPU (two cores): add a binding with
> two power domains (one per core) for it.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  .../bindings/gpu/arm,mali-bifrost.yaml         | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> index be18b161959b..b9424f3ebd5f 100644
> --- a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> +++ b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> @@ -20,6 +20,7 @@ properties:
>                - amlogic,meson-g12a-mali
>                - mediatek,mt8183-mali
>                - mediatek,mt8183b-mali
> +              - mediatek,mt8186-mali
>                - realtek,rtd1619-mali
>                - renesas,r9a07g044-mali
>                - renesas,r9a07g054-mali
> @@ -159,6 +160,7 @@ allOf:
>                enum:
>                  - mediatek,mt8183-mali
>                  - mediatek,mt8183b-mali
> +                - mediatek,mt8186-mali
>                  - mediatek,mt8192-mali
>      then:
>        properties:
> @@ -204,6 +206,22 @@ allOf:
>        required:
>          - power-domains
>          - power-domain-names
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: mediatek,mt8186-mali
> +    then:
> +      properties:
> +        power-domains:
> +          minItems: 2

as well:
maxItems: 2



Best regards,
Krzysztof

