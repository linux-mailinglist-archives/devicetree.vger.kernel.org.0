Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B3E88515640
	for <lists+devicetree@lfdr.de>; Fri, 29 Apr 2022 23:00:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1381142AbiD2VDX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Apr 2022 17:03:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235017AbiD2VDW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Apr 2022 17:03:22 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E155BBDF
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 14:00:02 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id l18so17573298ejc.7
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 14:00:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=Do/g5QMdAtl98rHVTq2xIqPEJqkCyA4fP1f+ylw/eqk=;
        b=EF6qOKputMgD0IZFycvxJwN+R4VZEbRXVebLIEcsMZoOpexnwLPc6bFOBOsbsFnRgb
         cIMiPnPsgRdOdIMvXZyjMN2wzCfdB/+FXSTglwrd+o/2JjREmt8ccVx1euJ/DuV3wDqI
         Q9OgZtdp8WNM0sQ/N0rdVYxODxuDLFYLND7xXUJWGpzAmOBfBDrvFDs+xEnj5qv2LTfx
         K7+EVPJMaW4odSGIHM2MvLE/UJaxmmmP24eNXGcncLnRqXUloagIiOfC1/hZ1G0lkLHI
         56UfRmsgVpaEouYR5HnXiD9eXjkHxlW9+JpUeVrmZuu0vVlV8bMuefHKfc0yMVoK90k8
         ez2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Do/g5QMdAtl98rHVTq2xIqPEJqkCyA4fP1f+ylw/eqk=;
        b=HIjg51sSSJW9YdJ0DGsYTv0URXmvLru91OKKV0dNm6Vlnt/fFBNT0KN2kxaozt4U4E
         8UttotW3Bz5Urf8YTBdb1e9aBcextBDkn6FDOzOf2IPJMpXDUQezemKuY85b3tKw6BoZ
         3BSAruFNR2fmrERSmJSVHKuMWlL0WpiiOSEswa8tnP5kYPZu6cBH0lBGXegnYJEezACX
         FFtenfUWGPYEcrY/c1+zw5hjT/1p/q6hDWWMqoUgyoK0lUYtXmu8i1SC903P2pClJuXl
         YemWcrm+slDDps4bY2kjbQv+JYsbFTIypzSnQDqb1X0P1PbwV0mRvSqEbSF9+XXVnGk9
         iWrQ==
X-Gm-Message-State: AOAM533SnBDqt0Q/m3KrTXgxyEgmTI/xR/9p9bNr85sZn/eQuInG74QX
        oXqqVYTsGSy49kDxyB/Pkz1mbg==
X-Google-Smtp-Source: ABdhPJzqlq8UgeGohOe1HyyN6u6LL1soeNHr0EDPcvh5R7//tAd0Dwc+MEBmd5tt/SS296qmwEat7Q==
X-Received: by 2002:a17:907:960a:b0:6f4:91d:3652 with SMTP id gb10-20020a170907960a00b006f4091d3652mr1138680ejc.44.1651266001357;
        Fri, 29 Apr 2022 14:00:01 -0700 (PDT)
Received: from [192.168.0.176] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id jz28-20020a17090775fc00b006f3ef214e40sm973973ejc.166.2022.04.29.14.00.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Apr 2022 14:00:00 -0700 (PDT)
Message-ID: <47202648-bd65-cbba-8674-aed7eb0c46d2@linaro.org>
Date:   Fri, 29 Apr 2022 23:00:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 2/2] dt-bindings: phy: Add bindings doc for Sunplus
 USB2 PHY driver
Content-Language: en-US
To:     Vincent Shih <vincent.sunplus@gmail.com>, kishon@ti.com,
        vkoul@kernel.org, p.zabel@pengutronix.de,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        wells.lu@sunplus.com
References: <1651215656-19024-1-git-send-email-vincent.sunplus@gmail.com>
 <1651215656-19024-3-git-send-email-vincent.sunplus@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1651215656-19024-3-git-send-email-vincent.sunplus@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/04/2022 09:00, Vincent Shih wrote:
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/sunplus,sp7021-usb2-phy.yaml
> @@ -0,0 +1,73 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright (C) Sunplus Co., Ltd. 2021
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/phy/sunplus,sp7021-usb2-phy.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Sunplus SP7021 USB 2.0 PHY Controller Device Tree bindings

Drop Device Tree bindings

> +
> +maintainers:
> +  - Vincent Shih <vincent.sunplus@gmail.com>
> +
> +properties:
> +  compatible:
> +    const: sunplus,sp7021-usb2-phy
> +
> +  reg:
> +    items:
> +      - description: UPHY register region
> +      - description: MOON4 register region
> +
> +  reg-names:
> +    items:
> +      - const: phy
> +      - const: moon4
> +
> +  clocks:
> +    maxItems: 1
> +
> +  resets:
> +    maxItems: 1
> +
> +  "#phy-cells":
> +    const: 0
> +
> +  nvmem-cell-names:
> +    description: names corresponding to the nvmem cells of disconnect voltage
> +    const: disc_vol
> +
> +  nvmem-cells:
> +    description: nvmem cell address of disconnect voltage
> +    maxItems: 1
> +
> +  sunplus,disc-vol-addr-off:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: the otp address offset of disconnect voltage
> +
> +required:
> +  - compatible
> +  - reg
> +  - reg-names
> +  - clocks
> +  - resets
> +  - "#phy-cells"
> +  - nvmem-cell-names
> +  - nvmem-cells
> +  - sunplus,disc-vol-addr-off
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    sp_uphy0: uphy@9c004a80 {

Generic node name, so either phy or usb-phy.


Best regards,
Krzysztof
