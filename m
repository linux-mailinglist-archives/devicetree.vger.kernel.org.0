Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 39A2450E5F7
	for <lists+devicetree@lfdr.de>; Mon, 25 Apr 2022 18:38:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243497AbiDYQlc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 12:41:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33892 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243464AbiDYQlc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 12:41:32 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 975881E3D4
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 09:38:27 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id y3so10358519ejo.12
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 09:38:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=aPIdQDIRukorX+rlQLQNCJb/WszJPQvBSKE5sVXWYN4=;
        b=fbR1JzPqmZKNvCsfnNWshb0XEU/ukODftW0ies9hNL6PaLwLu4qF6DSbJFL3KfOoif
         Xuv7AjWoQm7X8gY52UCSg/Dc2hQcIYqftnwf6qfsdYJHrFp4kgrUBO/xx+3b7iUxPiEU
         MbvHOXn/e8q93N+8JqYbmR9iXw2BvD5/TI/HzcWXctOtqMArFtAZW+E809iPd+pcdA0R
         MZJODrU/uYdLIemsLXFInMFypBw9vmGbFM0RSFrh4vPxijKwEA3dnwij/5hcWNJkqb54
         GgF2GHVypNJBSxpYcEuUaOmlsJ3G9vNJLydfet8lNsmsrG9DzQnjGPIcof5FmwJ0tI7g
         +12w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=aPIdQDIRukorX+rlQLQNCJb/WszJPQvBSKE5sVXWYN4=;
        b=pj+z2jkTvQ5+9YO/cyAVDweuETPWMGDggE2rXtLH1B47qXtqJSfXvXenCNOuITehE6
         38Iw0Gjdi+QY6NTOUdTmJu32oqaSKyssw1LhJwhzffO9CMF65iva3JKiFGwEcH+IwRhG
         c6zat02TsytZINMy81MGzLNeWchQjqsWEGAsa+JXtRjMADtXXK0PPzEAoYS+EQVpUp1d
         KJY4XgZBknmuqA3Vzo5uUMyF0zqPYCw1592Kvi4pB5hzyGWfDGYsdEfUtD1ggZ1nC//M
         thasHfwtF2YUb0xdUu1+Y0P3Us3Wy8llzvnfww8Pc5H5wNqfVHNgtG+HlojckHrc6i1h
         O4jg==
X-Gm-Message-State: AOAM530fZyiQCvdCdMePu6cajI8Cu41mdIozcDJB+rjRm+J97A1aecwX
        0kVh+VIpszpRs95KvtMgYK2Nmg==
X-Google-Smtp-Source: ABdhPJwCUzEyh0LHXM0mYXKMWIrNUTFSn/nyYquzFOMXcEhU44wwTvdEXPif6xQXhwXi5575pMD13A==
X-Received: by 2002:a17:907:6ea7:b0:6df:c5a2:89ca with SMTP id sh39-20020a1709076ea700b006dfc5a289camr16948170ejc.18.1650904706114;
        Mon, 25 Apr 2022 09:38:26 -0700 (PDT)
Received: from [192.168.0.244] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id kt24-20020a170906aad800b006f37988318esm2478155ejb.48.2022.04.25.09.38.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Apr 2022 09:38:25 -0700 (PDT)
Message-ID: <e64bdca8-7b18-b450-830c-ca07946a73fb@linaro.org>
Date:   Mon, 25 Apr 2022 18:38:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 1/1] dt-bindings: nvmem: mediatek: Convert mtk-efuse
 binding to YAML
Content-Language: en-US
To:     Allen-KH Cheng <allen-kh.cheng@mediatek.com>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     Lala Lin <lala.lin@mediatek.com>,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
        Chen-Yu Tsai <wenst@chromium.org>,
        Ryder Lee <ryder.lee@kernel.org>
References: <20220425084800.2021-1-allen-kh.cheng@mediatek.com>
 <20220425084800.2021-2-allen-kh.cheng@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220425084800.2021-2-allen-kh.cheng@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/04/2022 10:48, Allen-KH Cheng wrote:
> Convert MediaTek eFuse devicetree binding to YAML.
> 
> Signed-off-by: Allen-KH Cheng <allen-kh.cheng@mediatek.com>
> ---
>  .../devicetree/bindings/nvmem/mtk,efuse.yaml  | 70 +++++++++++++++++++

The vendor prefix is mediatek. Quoting my previous reply:

  Same comments as usual, so "vendor,device-name", e.g. "mediatek,efuse"
  if this is going to match all possible future MediaTek chips or
  "mediatek,mt7622-efuse"

so keep it mediatek,efuse.yaml.

>  .../devicetree/bindings/nvmem/mtk-efuse.txt   | 43 ------------
>  2 files changed, 70 insertions(+), 43 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/nvmem/mtk,efuse.yaml
>  delete mode 100644 Documentation/devicetree/bindings/nvmem/mtk-efuse.txt
> 
> diff --git a/Documentation/devicetree/bindings/nvmem/mtk,efuse.yaml b/Documentation/devicetree/bindings/nvmem/mtk,efuse.yaml
> new file mode 100644
> index 000000000000..d056bc61dd5b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/nvmem/mtk,efuse.yaml
> @@ -0,0 +1,70 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/nvmem/mtk,efuse.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: MediaTek eFuse device tree bindings

No changes here. Please read my comments from your v1, don't ignore them.

> +
> +maintainers:
> +  - Lala Lin <lala.lin@mediatek.com>
> +  - Allen-KH Cheng <allen-kh.cheng@mediatek.com>
> +
> +allOf:
> +  - $ref: "nvmem.yaml#"
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - enum:
> +          - mediatek,mt8173-efuse
> +          - mediatek,efuse

Still no changes...

> +      - items:
> +          - enum:
> +              - mediatek,mt7622-efuse
> +              - mediatek,mt7623-efuse
> +              - mediatek,mt8183-efuse
> +              - mediatek,mt8192-efuse
> +              - mediatek,mt8195-efuse
> +              - mediatek,mt8516-efuse
> +          - const: mediatek,efuse
> +
> +  reg:
> +    maxItems: 1
> +
> +patternProperties:
> +  "^.*@[0-9a-f]+$":
> +    type: object
> +
> +    properties:
> +      reg:
> +        maxItems: 1
> +        description:
> +          Offset and size in bytes within the storage device.
> +
> +    required:
> +      - reg
> +
> +    additionalProperties: false

Still no changes.

> +
> +required:
> +  - compatible
> +  - reg
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +

Still no changes.


Best regards,
Krzysztof
