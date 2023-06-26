Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E70D173D8A5
	for <lists+devicetree@lfdr.de>; Mon, 26 Jun 2023 09:36:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229612AbjFZHgy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jun 2023 03:36:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34550 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229578AbjFZHgs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Jun 2023 03:36:48 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D360EE
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 00:36:47 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-51d804c7d14so2126179a12.3
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 00:36:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687765005; x=1690357005;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=g32nP1QLfDJeYDMctwmCGM9lFurdMtNiOQvgUHmW7j4=;
        b=t+edhplh/zMSi0p3lIjlGet/TZI20VTCuGlHDId4JMBSXoEIAsIJokUNoFSdsoY6So
         uDoddZZ5HCc+4sxK6A6duuXzb1KdyomjPtmINErHzNABwk3PMCb6rjOx3Sqb9oXvHrG5
         StR7eTLuySakEs4UbfeXEOUyXObHJSKnxyfwtyXSxOxkqpt+t/0M1I8yRXGuKyUdQEPh
         bOF6zQDS9Cas77cSjCvMbThO5zdvy/CilRombhJ0A5Ndf4M+3W88nBaYDtHCvgQOIWEj
         xB6Kc3/xTh2B/YiKECd2K99AzyU8WdVP/wFnMQfR0dF4vvoAzXiiBVwO0j9PJQ5FPb7N
         /1Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687765005; x=1690357005;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=g32nP1QLfDJeYDMctwmCGM9lFurdMtNiOQvgUHmW7j4=;
        b=l7VFrHFIUYmIA30FX+aWNsfsh82SBL3hc/f1RuiWc2FyaVzDSpKKP1iQ6KZLMrD5et
         WY52BneUj4eDVwL4h96TuLdCLFjTxq6zOvHa+CKSwq8Y6269heqbECQCHN7/Vu/oO/vr
         68WNUNzp0QZ/KOqbsad+2zTz0ilV+ab9IxM5KxfXUmHfM2ayYOF4qncnkCxjLZEtTeps
         0Ve6bckZoG++lhIdaTpmj+GwcDPkPWoA0mx3nGDXTKLIj4KAhBPR9sDjjZ76J9Rk4JdS
         LmS1EP9icCubZMm/o+3XyzA7yuhXSR3Z+KuXVLlTEoiEWVEdiC9J6bOcg1PnV+IQlI4K
         j9Dw==
X-Gm-Message-State: AC+VfDzGmtahzr7+z4qDfY+H7FpU69xzYLa2+GPpJrrVWedyXcupHlIW
        R0cichlvP0meu2vxVgLEzGSCAQ==
X-Google-Smtp-Source: ACHHUZ48yMwg7cIFAuy5JolwNOf5XDoT9UCulIRCuSVDeD0QgeXytMtaWsMR7rKPSIlKf9bngOQExw==
X-Received: by 2002:aa7:d9d7:0:b0:51d:914a:9f43 with SMTP id v23-20020aa7d9d7000000b0051d914a9f43mr2896633eds.36.1687765005473;
        Mon, 26 Jun 2023 00:36:45 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id l4-20020aa7c3c4000000b0051879e2505bsm2511680edr.40.2023.06.26.00.36.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jun 2023 00:36:44 -0700 (PDT)
Message-ID: <326cc8a4-3366-e8af-8051-7284bfb6dfaa@linaro.org>
Date:   Mon, 26 Jun 2023 09:36:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v1 3/3] dt-bindings: hwmon: add sht3x devicetree binding
To:     JuenKit_Yip@hotmail.com, jdelvare@suse.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        corbet@lwn.net
Cc:     linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
        linux-doc@vger.kernel.org
References: <20230626072923.340544-1-JuenKit_Yip@hotmail.com>
 <DB4PR10MB6261859DA1087597DDC3CCB39226A@DB4PR10MB6261.EURPRD10.PROD.OUTLOOK.COM>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <DB4PR10MB6261859DA1087597DDC3CCB39226A@DB4PR10MB6261.EURPRD10.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/06/2023 09:29, JuenKit_Yip@hotmail.com wrote:
> From: JuenKit Yip <JuenKit_Yip@hotmail.com>
> 
> add sht3x devicetree binding files
> 
> Signed-off-by: JuenKit Yip <JuenKit_Yip@hotmail.com>
> ---
> v1:
>   - fix semantics error

How first release can have already fixes? Against what? Is it truly v1?

What is a "semantics error"?

A nit, subject: drop second/last, redundant "devicetree binding". The
"dt-bindings" prefix is already stating that these are bindings.


> 
>  .../bindings/hwmon/sensirion,sht3x.yaml       | 35 +++++++++++++++++++
>  1 file changed, 35 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/hwmon/sensirion,sht3x.yaml
> 
> diff --git a/Documentation/devicetree/bindings/hwmon/sensirion,sht3x.yaml b/Documentation/devicetree/bindings/hwmon/sensirion,sht3x.yaml
> new file mode 100644
> index 000000000000..71a50bd57af2
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/hwmon/sensirion,sht3x.yaml
> @@ -0,0 +1,35 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/hwmon/sensirion,sht3x.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Sensirion SHT3x-DIS humidity and temperature sensor
> +
> +maintainers:
> +  - JuenKit Yip <JuenKit_Yip@hotmail.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - sensirion,sht3x

The actual devices are SHT30, 31 and 35. I understand they don't differ
in programming interface, but still don't use wildcard, so just
sensirion,sht30

> +      - sensirion,sts3x

Similarly - no wildcards.

Missing blank line.


> +  reg:
> +    maxItems: 1

Missing vdd-supply (required) and reset-gpios (optional).

> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +


Best regards,
Krzysztof

