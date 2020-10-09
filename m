Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 838262885C6
	for <lists+devicetree@lfdr.de>; Fri,  9 Oct 2020 11:09:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732962AbgJIJJu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Oct 2020 05:09:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732712AbgJIJJt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Oct 2020 05:09:49 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8361C0613D2
        for <devicetree@vger.kernel.org>; Fri,  9 Oct 2020 02:09:48 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id v12so9100822wmh.3
        for <devicetree@vger.kernel.org>; Fri, 09 Oct 2020 02:09:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:autocrypt:organization:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=0diUZyIWrlpDInnIBTYnEcY5Vdz8vfK3oyf2EVl+x2A=;
        b=VtQEed5woKHzGfP381RxtZfPTc5B/GROFH6rLWKGJT+SRcKgeXP+ymNIHHPpieF1E/
         M9sAgR9dPx9AF7lUROTkBce8zLdOqucF6R38BM79niL73Izb5MuXX9ul7aknK9jX4SjV
         hJoipyIdjoINHTmnadC0lFa2ZYNrgEu4cJXIz438LgD6Bzr6SAdzXoZwAaHCjI/zW2ON
         i4Cic62o6XShDVJpAbK3/IwSYIPEK2/dY9Vo0HjrI5y8kBpVdlzncJUR8cpZ6HFediLH
         ryqYQSDOnFYDqXenfgPYJphilECHk/DzFJrqK7cYeG2QLKTWAUV5y8o3sUSxjnA85FJ6
         uqsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=0diUZyIWrlpDInnIBTYnEcY5Vdz8vfK3oyf2EVl+x2A=;
        b=eIbHd2oZA3dW0J+vrTY+hOrttXbdKEg9s9JXhlX/l6vbrFao+0ul6CMQZRbkeAbdD+
         BWqYurdqOW8ReF2IUFXBoPMHc6oR5Sgw2nGeHU3LgrixZYzo9Z80tGppqe7ibOjNfIrh
         U0mxqmMXe2aZEycpDp526GsP+uarlXXFnbYnSC9Jdwg17efSzuThS/1jmjrJCuk2RUus
         sZfC+UUC4GpMAbFkIIhQSODSbbqKQrL1LEIlzOnalSTngiqVIiZCQz/B+q3gQDeUNhUk
         fJFOPc9cLqCfwTVgIw91BnhvI2MqVv9d3J6+pRY260oAH2f9Kd2LUe7f29ibauDdG4Vp
         sRXw==
X-Gm-Message-State: AOAM532dZ211HTGkX4ptVUXxYa29DQ9IQ9qyYlkElWHrRLYTuK8ZugZs
        hby/yOorb50tSmW1QJZ5/cRlwg==
X-Google-Smtp-Source: ABdhPJzLaK7cWgR6xYlk3eA+YGh9KPP/b064BFznJ38/1jr8QgggVxq8KiN9QU96Rvb2d1Z9BLzxBw==
X-Received: by 2002:a1c:ddc2:: with SMTP id u185mr13534894wmg.21.1602234587124;
        Fri, 09 Oct 2020 02:09:47 -0700 (PDT)
Received: from ?IPv6:2a01:e35:2ec0:82b0:5561:8784:a82c:c500? ([2a01:e35:2ec0:82b0:5561:8784:a82c:c500])
        by smtp.gmail.com with ESMTPSA id r1sm9897389wro.18.2020.10.09.02.09.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Oct 2020 02:09:46 -0700 (PDT)
Subject: Re: [PATCH v9 1/5] dt-bindings: display: Add support for Intel
 KeemBay Display
To:     Anitha Chrisanthus <anitha.chrisanthus@intel.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        daniel.vetter@intel.com
Cc:     edmund.j.dea@intel.com, sam@ravnborg.org
References: <1602205443-9036-1-git-send-email-anitha.chrisanthus@intel.com>
 <1602205443-9036-2-git-send-email-anitha.chrisanthus@intel.com>
From:   Neil Armstrong <narmstrong@baylibre.com>
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <dc12f5ea-60bc-8a09-9b93-a4472183adc4@baylibre.com>
Date:   Fri, 9 Oct 2020 11:09:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <1602205443-9036-2-git-send-email-anitha.chrisanthus@intel.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 09/10/2020 03:03, Anitha Chrisanthus wrote:
> This patch adds bindings for Intel KeemBay Display
> 
> v2: review changes from Rob Herring
> 
> Signed-off-by: Anitha Chrisanthus <anitha.chrisanthus@intel.com>
> ---
>  .../bindings/display/intel,keembay-display.yaml    | 99 ++++++++++++++++++++++
>  1 file changed, 99 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/intel,keembay-display.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/intel,keembay-display.yaml b/Documentation/devicetree/bindings/display/intel,keembay-display.yaml
> new file mode 100644
> index 0000000..a38493d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/intel,keembay-display.yaml
> @@ -0,0 +1,99 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/intel,keembay-display.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Devicetree bindings for Intel Keem Bay display controller
> +
> +maintainers:
> +  - Anitha Chrisanthus <anitha.chrisanthus@intel.com>
> +  - Edmond J Dea <edmund.j.dea@intel.com>
> +
> +properties:
> +  compatible:
> +    const: intel,kmb_display
> +
> +  reg:
> +    items:
> +      - description: Lcd registers range
> +      - description: Mipi registers range

Looking at the registers, the MIPI transceiver seems to be a separate IP,
same for D-PHY which should have a proper PHY driver instead of beeing handled
here.

> +      - description: Msscam registers range

MSScam here seems to be a clock and reset controller for the LCD and MIPI IPs,
thus should be handler out of DRM.

> +
> +  reg-names:
> +    items:
> +      - const: lcd
> +      - const: mipi
> +      - const: msscam
> +
> +  clocks:
> +    items:
> +      - description: LCD controller clock
> +      - description: Mipi DSI clock
> +      - description: Mipi DSI econfig clock
> +      - description: Mipi DSI config clock
> +      - description: System clock or pll0 clock
> +
> +  clock-names:
> +    items:
> +      - const: clk_lcd
> +      - const: clk_mipi
> +      - const: clk_mipi_ecfg
> +      - const: clk_mipi_cfg
> +      - const: clk_pll0
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  encoder-slave:
> +    description: bridge node entry for mipi to hdmi converter
> +
> +  port:
> +    type: object
> +    description: >
> +          Port node with one endpoint connected to mipi to hdmi converter node.
> +
> +required:
> +  - compatible
> +  - reg
> +  - reg-names
> +  - clocks
> +  - clock-names
> +  - interrupts
> +  - encoder-slave
> +  - port
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #define MOVISOC_KMB_MSS_AUX_LCD
> +    #define MOVISOC_KMB_MSS_AUX_MIPI_TX0
> +    #define MOVISOC_KMB_MSS_AUX_MIPI_ECFG
> +    #define MOVISOC_KMB_MSS_AUX_MIPI_CFG
> +    #define MOVISOC_KMB_A53_PLL_0_OUT_0
> +    display@20900000 {
> +      compatible = "intel,keembay-display";
> +      reg = <0x20930000 0x3000>,
> +            <0x20900000 0x4000>,
> +            <0x20910000 0x30>;
> +      reg-names = "lcd", "mipi", "msscam";
> +      interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
> +      clocks = <&scmi_clk MOVISOC_KMB_MSS_AUX_LCD>,
> +               <&scmi_clk MOVISOC_KMB_MSS_AUX_MIPI_TX0>,
> +               <&scmi_clk MOVISOC_KMB_MSS_AUX_MIPI_ECFG>,
> +               <&scmi_clk MOVISOC_KMB_MSS_AUX_MIPI_CFG>,
> +               <&scmi_clk MOVISOC_KMB_A53_PLL_0_OUT_0>;
> +      clock-names = "clk_lcd", "clk_mipi", "clk_mipi_ecfg",
> +                    "clk_mipi_cfg", "clk_pll0";
> +
> +      encoder-slave = <&adv7535>;
> +
> +      port {
> +            dsi_output: endpoint {
> +                remote-endpoint = <&adv7535_input>;
> +            };
> +      };
> +    };
> 

Anitha, Daniel, this keembay driver should be architectured like other ARM-like display
controllers, with separate drivers for MIPI DSI bridge and msscam clock & reset controller.

Neil
