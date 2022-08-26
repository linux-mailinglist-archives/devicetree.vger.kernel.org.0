Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BF8335A20FC
	for <lists+devicetree@lfdr.de>; Fri, 26 Aug 2022 08:42:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245040AbiHZGmS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Aug 2022 02:42:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41426 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230178AbiHZGmR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Aug 2022 02:42:17 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89C4DD1257
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 23:42:16 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id z25so809909lfr.2
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 23:42:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=ueoTGwY/0H3S/LkCQ7QKX7DyM9l3vUpVne2KUbgCQ8s=;
        b=FqHgbVmbz08fmk5nLtnvnVKyQpnBsFeY10Falno6/3CncqPSlTLpQZkPvPgyY9BERA
         uRhZAqJlt53oBRQMD3/A/ueWq/jnh/z/t+3VaxLja7zwEzXerUtKxyCr8BwI5W4RSLEA
         D0g4eIlH6APhmCw7eKj+R86VlOmJSMrPzi21OekqClSahMHgC/LRXQ/nFEhAlA72UC9F
         Ju2AIKgnAxvAXGzSrBj22m1KVriwrVFTseMLwUF4KJ+iL5u6hMoSZnn5a4AgXp55E/Ac
         HXsSxaq4A6WqVQ4LnJvCDVwNn5sSSHTw8PBR+ew9tvQTjZz4t/auoku4HjP+3AwAJAvO
         T0UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=ueoTGwY/0H3S/LkCQ7QKX7DyM9l3vUpVne2KUbgCQ8s=;
        b=7mSsD9FImBuymCYzBVW/pt1Fzh7Crkl+EqHA5yJ59fYsz+2Rz74mqxS3p2V/g00tCe
         rYXcsfu6hded/S5zTsfaiRh1IVI4NQWyRGHZJikl4jt6lhgDLWqkbjkV74ZqK66pDuNh
         IqjbgwDGSczbLuBYsw7JcV6sYf/xvwVuL48M0M3EBTPlmSJZ6KdfUKjCUc06oNpKY304
         v/ZyiJOBXmGMAttMQkCjFUJY/u60MciGMNLKl6hjfnm6WZ0gfi+a7Fcf35rAv0Mh3/4H
         +YNxVgHcKDZ4jNhQackE4u3Jp9TovGPaxKFVOEbtuYSpbzqf6eO//LSegsxrGxjH2E2O
         GHKA==
X-Gm-Message-State: ACgBeo1G6o0g616Zf3vDJv/n17RF5+J0tFo5i0Symd8ymyfemEzduBD4
        qMKmKirgpLn0E9Sm8SDY4C5+QrvHNDmj5JeP
X-Google-Smtp-Source: AA6agR4i80VF5mqKYFWHOmRblqKczIJcJ4PYASUuNl2SQU2qVIEKYUyFjAQfDW9wnTCHY3BT1qjqqg==
X-Received: by 2002:a05:6512:6d6:b0:492:b3df:a71 with SMTP id u22-20020a05651206d600b00492b3df0a71mr2315354lff.117.1661496134815;
        Thu, 25 Aug 2022 23:42:14 -0700 (PDT)
Received: from [192.168.0.71] (82.131.98.15.cable.starman.ee. [82.131.98.15])
        by smtp.gmail.com with ESMTPSA id p20-20020a2eb994000000b00261aecd1c53sm330344ljp.71.2022.08.25.23.42.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Aug 2022 23:42:14 -0700 (PDT)
Message-ID: <96da4897-7b55-84d5-8f1d-892e116153df@linaro.org>
Date:   Fri, 26 Aug 2022 09:42:13 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v2 1/2] dt-bindings: lan9662-otpc: document Lan9662 OTPC
Content-Language: en-US
To:     Horatiu Vultur <horatiu.vultur@microchip.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     srinivas.kandagatla@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, UNGLinuxDriver@microchip.com
References: <20220825204041.1485731-1-horatiu.vultur@microchip.com>
 <20220825204041.1485731-2-horatiu.vultur@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220825204041.1485731-2-horatiu.vultur@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/08/2022 23:40, Horatiu Vultur wrote:
> Document Lan9662 OTP controller.
> 
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> ---
>  .../nvmem/microchip,lan9662-otpc.yaml         | 42 +++++++++++++++++++
>  1 file changed, 42 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/nvmem/microchip,lan9662-otpc.yaml
> 
> diff --git a/Documentation/devicetree/bindings/nvmem/microchip,lan9662-otpc.yaml b/Documentation/devicetree/bindings/nvmem/microchip,lan9662-otpc.yaml
> new file mode 100644
> index 000000000000..3307f6a7a373
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/nvmem/microchip,lan9662-otpc.yaml
> @@ -0,0 +1,42 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/nvmem/microchip,lan9662-otpc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Microchip LAN9662 OTP Controller (OTPC)
> +
> +maintainers:
> +  - Horatiu Vultur <horatiu.vultur@microchip.com>
> +
> +description: |
> +  OTP controller drives a NVMEM memory where system specific data
> +  (e.g. hardware configuration settings, chip identifiers) or
> +  user specific data could be stored.
> +
> +allOf:
> +  - $ref: nvmem.yaml#
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: microchip,lan9662-otpc
> +      - const: microchip,lan9668-otpc

Does not look like you tested the bindings. Please run `make
dt_binding_check` (see
Documentation/devicetree/bindings/writing-schema.rst for instructions).

This won't work...

Best regards,
Krzysztof
