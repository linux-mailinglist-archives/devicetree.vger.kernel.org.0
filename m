Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EAA2266CF48
	for <lists+devicetree@lfdr.de>; Mon, 16 Jan 2023 20:03:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230465AbjAPTDb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Jan 2023 14:03:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33010 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233431AbjAPTD2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Jan 2023 14:03:28 -0500
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD676233CD
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 11:03:26 -0800 (PST)
Received: by mail-ej1-x62d.google.com with SMTP id vw16so7057553ejc.12
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 11:03:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sDyuoBEYwebh/93ogb9M54nLKqVdPDRWQ3iHmFPRQcs=;
        b=GfisdXIe/9EdtQwLuHAxi68cs5gRUrr8vx/VI0VXjwsLoMuA9LREv8NLSELRzWyIcJ
         IcGZ0T92vCYBwW2jvMzNTAKgaxWkUntc/DUHG59d4sNjAkdvWVVRpJYHK2e3rKHtND+D
         pzA+xkqIVGnerLO5uobhcSsH+tVK64SsyxAgz+d6vEy+hnrJ20sd9D3psG7Ka7iLySbv
         sizQ6/cj1ZgToJtd/eVIZnTPFGVxs1igIARVAQ2VWSMcgueDhdm6QHoYC9HMPh1Nz5EI
         bBMrP5oajBB3DEegGGe5RkDXfv46pocR2HUhdQ8mb42bIr0U1laa0fnuzKSDUkzC9s/s
         YB4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sDyuoBEYwebh/93ogb9M54nLKqVdPDRWQ3iHmFPRQcs=;
        b=GtLFBZEzvdQINXNCRYexNrK/BdUDqMRD7GHtoCmzEiR5r+/igG8nBMtpOL7zxtd79e
         Kxeqrpappxc771V/wUHaV4Cek3htvV4Mfcp2UYIzPe5Vmp+BV28xKsWUjFJo3dX4rAQj
         rGDRDiszzuIlUooMv0DnHqtLssAYbEKgbbw5t1ESCwDKHzRL5B18yuivwckIks9fTFbB
         5Bc4TOkOUySVLUyu/oJW5N2Lmgvk5bspQkEJ7O3GgR+PLTiSQIhIRR8FXSyuNiJlS/H/
         r+acefUJdjU+rhHdabEFK4yE/tnxL3dMmB0UuVtUbvEpnZpB4BFXueVKilVR3h4Pf8iz
         RGUA==
X-Gm-Message-State: AFqh2kpo2Qs10auslUwIYqKSp7jX92bT8VpGdQSfyo13pGiHQwAwz8zI
        4xAQOIQ8YVaggAH3yLv+2NbFTg==
X-Google-Smtp-Source: AMrXdXsniDhonk7zjiqFPZ/XpASkSMoqLifQCRs4OKL4T/+WU/nYP91R+wfrOhdmWiGfoesbq3Ap+Q==
X-Received: by 2002:a17:906:dfda:b0:871:e9a0:ebaa with SMTP id jt26-20020a170906dfda00b00871e9a0ebaamr67352ejc.31.1673895805456;
        Mon, 16 Jan 2023 11:03:25 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id 8-20020a170906328800b00871cb1b8f63sm702167ejw.26.2023.01.16.11.03.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Jan 2023 11:03:25 -0800 (PST)
Message-ID: <de5cb562-e45e-aed4-508f-2d23f114a01e@linaro.org>
Date:   Mon, 16 Jan 2023 20:03:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH V4 1/5] dt-bindings: usb: Add binding for Cypress cypd4226
 I2C driver
Content-Language: en-US
To:     Jon Hunter <jonathanh@nvidia.com>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>
Cc:     Wayne Chang <waynec@nvidia.com>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-tegra@vger.kernel.org
References: <20230116155045.100780-1-jonathanh@nvidia.com>
 <20230116155045.100780-2-jonathanh@nvidia.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230116155045.100780-2-jonathanh@nvidia.com>
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

On 16/01/2023 16:50, Jon Hunter wrote:
> From: Wayne Chang <waynec@nvidia.com>
> 
> add device-tree binding documentation for Cypress cypd4226 type-C
> controller's I2C interface. It is a standard i2c slave with GPIO
> input as IRQ interface.
> 
> Signed-off-by: Wayne Chang <waynec@nvidia.com>
> Signed-off-by: Jon Hunter <jonathanh@nvidia.com>
> ---
> V3 -> V4: no changes
> V2 -> V3: fix additionalProperties warning on new schema
> V1 -> V2: based on the review comments. Fix some addressed issues on
> 
>  .../bindings/usb/cypress,cypd4226.yaml        | 86 +++++++++++++++++++
>  1 file changed, 86 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/usb/cypress,cypd4226.yaml
> 
> diff --git a/Documentation/devicetree/bindings/usb/cypress,cypd4226.yaml b/Documentation/devicetree/bindings/usb/cypress,cypd4226.yaml
> new file mode 100644
> index 000000000000..5ac28ab4e7a1
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/usb/cypress,cypd4226.yaml
> @@ -0,0 +1,86 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/usb/cypress,cypd4226.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Cypress cypd4226 UCSI I2C Type-C Controller
> +
> +maintainers:
> +  - Wayne Chang <waynec@nvidia.com>
> +
> +description: |
> +  The Cypress cypd4226 UCSI I2C type-C controller is a I2C interface type-C
> +  controller.
> +
> +properties:
> +  compatible:
> +    const: cypress,cypd4226
> +
> +  '#address-cells':
> +    const: 1
> +
> +  '#size-cells':
> +    const: 0
> +
> +  reg:
> +    const: 0x08
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  cypress,firmware-build:
> +    enum:
> +      - nv
> +      - gn
> +    description: |
> +      the name of the CCGx firmware built for product series.
> +      should be set one of following:
> +      - "nv" for the RTX product series
> +      - "gn" for the Jetson product series

This is a friendly reminder during the review process.

It seems my previous comments were not fully addressed. Maybe my
feedback got lost between the quotes, maybe you just forgot to apply it.
Please go back to the previous discussion and either implement all
requested changes or keep discussing them.

Thank you.

Best regards,
Krzysztof

