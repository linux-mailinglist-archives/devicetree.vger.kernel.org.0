Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4592E77B39E
	for <lists+devicetree@lfdr.de>; Mon, 14 Aug 2023 10:14:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232593AbjHNINz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Aug 2023 04:13:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45608 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234681AbjHNINm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Aug 2023 04:13:42 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85B54170D
        for <devicetree@vger.kernel.org>; Mon, 14 Aug 2023 01:13:37 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-99bf1f632b8so568720766b.1
        for <devicetree@vger.kernel.org>; Mon, 14 Aug 2023 01:13:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692000816; x=1692605616;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Wvb8Jkv3J+oNs66t8Yx9z5Y7q7M7JNVrrq8RMv+vd9M=;
        b=hBsdZKP9f11dWLVMJ4VyGRYvcnEeCd6nFLb/ORpmX2KZ+Yxsd1HoYBKY3wMvi7l405
         c1ajSANmnIRQn07Bh2LmwfCiwpU7IweOZmQVeh7uDA69YL1waE9LF4KJsFVqvLIoeKTw
         Z9rcMhIkdsSjXpBbJU32phj/BmG2ZygwnDNs3W7op4CGPC19qNbhD6ZOIZ14qHayPhkt
         T6y0fWFtwAimXEbmnGSqerjWD6/S4YdL71zDzZJ5r8TIcjx83XJgxg863EkD1YxEA7Ym
         lVrhrTZa5sq/CuhmP8lYuGCEzSFX8NFALUvHMSH6Jgcvgp2t0corczQ9UPBbHoXeHHbD
         7STA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692000816; x=1692605616;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Wvb8Jkv3J+oNs66t8Yx9z5Y7q7M7JNVrrq8RMv+vd9M=;
        b=MBW0reVtggWfsr8pqwRHzWqiyY1NIPfrRnejXW2oeol7kQ18UZW3cqZQn843AxLTGk
         qcWwoJVCe++3djnnmQhIiDmTHZeNDVyaAXyxVoIVMq7e5qXdPyDsmq7NIZ014FVVmCq5
         1esCfqhO0mRBHWE1dQc1hp8bfoBkl0c2sMwJtNh0wFQv0cY8KV/7YVI1S+HQRNEiiqk7
         /C14WlxpvnuSw/lEk48aeP46RbZ5Ky3XAt9hatIYK59hj/QG16dDWrD2qhktbFe+zXiO
         jF8K1hxddG1xT5TYEHGaXrXc/ChK8B8MFEE1/dqYEW0yaGA6ppKWmMc1iSx5kIWoekPw
         nYwg==
X-Gm-Message-State: AOJu0YzcFsh1y//j2FGY2CO3Nc7Giur6H7TjK3PvfLt7g2XKVqczn9uf
        KHg0X36jmqKX87bcEjCVQp7aZA==
X-Google-Smtp-Source: AGHT+IE/Z0IGhU1w0zDzYalDM80kCBcIoKgc63S5NtKAvB/fg9wB8lscrAXcPlNCpdQCmG2cn8P0Hg==
X-Received: by 2002:a17:907:7634:b0:992:6064:f32b with SMTP id jy20-20020a170907763400b009926064f32bmr7187120ejc.46.1692000816047;
        Mon, 14 Aug 2023 01:13:36 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id d18-20020a170906345200b0099297c99314sm5437700ejb.113.2023.08.14.01.13.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Aug 2023 01:13:35 -0700 (PDT)
Message-ID: <ab33f7c1-c488-ae3d-e968-23d8c04d18b3@linaro.org>
Date:   Mon, 14 Aug 2023 10:13:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v2 2/6] dt-bindings: perf: Add Marvell PEM performance
 monitor unit
Content-Language: en-US
To:     Gowthami Thiagarajan <gthiagarajan@marvell.com>, will@kernel.org,
        mark.rutland@arm.com, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org
Cc:     sgoutham@marvell.com, bbhushan2@marvell.com, lcherian@marvell.com
References: <20230812142518.778259-1-gthiagarajan@marvell.com>
 <20230812142518.778259-3-gthiagarajan@marvell.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230812142518.778259-3-gthiagarajan@marvell.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/08/2023 16:25, Gowthami Thiagarajan wrote:
> Add binding documentation for Marvell PEM performance monitor unit.
> 
> Signed-off-by: Linu Cherian <lcherian@marvell.com>
> Signed-off-by: Gowthami Thiagarajan <gthiagarajan@marvell.com>
> ---
> 
> v1->v2
> - Changed DT binding file name to match with compatible
> - Added respective document in MAINTAINERS
> 
>  .../perf/marvell,odyssey-pem-pmu.yaml         | 38 +++++++++++++++++++
>  MAINTAINERS                                   |  1 +
>  2 files changed, 39 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/perf/marvell,odyssey-pem-pmu.yaml
> 
> diff --git a/Documentation/devicetree/bindings/perf/marvell,odyssey-pem-pmu.yaml b/Documentation/devicetree/bindings/perf/marvell,odyssey-pem-pmu.yaml
> new file mode 100644
> index 000000000000..a761fc09565b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/perf/marvell,odyssey-pem-pmu.yaml
> @@ -0,0 +1,38 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/perf/marvell,odyssey-pem-pmu.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Marvell PCIe interface performance monitor
> +
> +maintainers:
> +  - Linu Cherian <lcherian@marvell.com>
> +  - Gowthami Thiagarajan <gthiagarajan@marvell.com>
> +
> +properties:
> +  compatible:
> +    items:

Drop items, you have just enum.


> +      - enum:
> +          - marvell,odyssey-pem-pmu

Neither commit msg nor description in the binding (there is none!) helps
me to understand what is the SoC here. Remember: compatibles are
specific to SoCs, not families.


Best regards,
Krzysztof

