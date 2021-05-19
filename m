Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7183538956D
	for <lists+devicetree@lfdr.de>; Wed, 19 May 2021 20:32:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231494AbhESSeS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 May 2021 14:34:18 -0400
Received: from mail-oi1-f169.google.com ([209.85.167.169]:33592 "EHLO
        mail-oi1-f169.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230429AbhESSeR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 May 2021 14:34:17 -0400
Received: by mail-oi1-f169.google.com with SMTP id b25so14066249oic.0
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 11:32:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=p+5ZFWXaxs+MC5nrnTeGk4kpjXCu7FGy/QoTFckkm9M=;
        b=gh6T/RvkAuMqeTOTuN5aCyNTUJ6jKZkdkc9esPC5LcLR2XawnjWv+Svky8mTfYvCTj
         K0Yn/O15TnabsynTiK32VYd4psJjFz3EP73K7YNTZE8x3CBGXcE+NVtbfDWMlBXpavoZ
         ZIUi7q/BwTG9TAA8Mi+oeBGDv/KgPWMZe7NOHzxXEqcAuX8zbednJ34u2bQYilKLDXLG
         4SK9Y444k4lTWS7Y71MOyWjJLhytubTw9mbDND4kk86dI2W4MZL+1NmjKD3wUajbqAKu
         XHn/Vow+iu22AkurEn0zBzcdeaxZCkb4gc8MbTYyfpDbQ5yz+08GiP6a34twYk/WT+la
         06qA==
X-Gm-Message-State: AOAM532/aMVuRnETvXAsSDOY9ut+jQKqCRE1A+PPNmlp44z9/SmKxk9B
        SDOhXkqZvzdGo+IohpL9/w==
X-Google-Smtp-Source: ABdhPJw/ECcy+5pko+l/a7APlaVPqxeWHJQKFeTz6HM1fm85VduOAEacZn7WCJZwaI16nNh+9l99Uw==
X-Received: by 2002:aca:75c6:: with SMTP id q189mr541938oic.124.1621449177134;
        Wed, 19 May 2021 11:32:57 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id s17sm33986oog.31.2021.05.19.11.32.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 May 2021 11:32:55 -0700 (PDT)
Received: (nullmailer pid 3411525 invoked by uid 1000);
        Wed, 19 May 2021 18:32:54 -0000
Date:   Wed, 19 May 2021 13:32:54 -0500
From:   Rob Herring <robh@kernel.org>
To:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Lee Jones <lee.jones@linaro.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Florian Fainelli <f.fainelli@gmail.com>,
        Vivek Unune <npcomplete13@gmail.com>,
        bcm-kernel-feedback-list@broadcom.com,
        =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH V2 robh dt/next] dt-bindings: mfd: add Broadcom CRU
Message-ID: <20210519183254.GA3407521@robh.at.kernel.org>
References: <20210415062839.11713-1-zajec5@gmail.com>
 <20210519082049.30976-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210519082049.30976-1-zajec5@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 19, 2021 at 10:20:49AM +0200, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> CRU is a block used in e.g. Northstar devices. It can be seen in the
> bcm5301x.dtsi and this binding documents its proper usage.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
> V2: Use complete binding & change additionalProperties to false
> 
> NOTICE: this patch is based on top of the linux-next as it requires:
> ac5f8197d15c ("dt-bindings: pinctrl: convert Broadcom Northstar to the json-schema")
> 08e9fdfbb224 ("dt-bindings: thermal: brcm,ns-thermal: Convert to the json-schema")
> AND merged git@github.com:Broadcom/stblinux.git devicetree/next as it requires:
> 8f711f68cffd ("dt-bindings: clock: brcm, iproc-clocks: convert to the json-schema")
> 
> This is reworked version of the
> [PATCH robh next] dt-bindings: bus: add Broadcom CRU
> https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20210309142241.16259-1-zajec5@gmail.com/
> ---
>  .../devicetree/bindings/mfd/brcm,cru.yaml     | 89 +++++++++++++++++++
>  1 file changed, 89 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/brcm,cru.yaml
> 
> diff --git a/Documentation/devicetree/bindings/mfd/brcm,cru.yaml b/Documentation/devicetree/bindings/mfd/brcm,cru.yaml
> new file mode 100644
> index 000000000000..d92424cc8226
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mfd/brcm,cru.yaml
> @@ -0,0 +1,89 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mfd/brcm,cru.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Broadcom CRU
> +
> +maintainers:
> +  - Rafał Miłecki <rafal@milecki.pl>
> +
> +description: |
> +  Broadcom CRU ("Clock and Reset Unit" or "Central Resource Unit") is a hardware
> +  block grouping smaller blocks. On Broadcom Northstar platform it contains e.g.
> +  clocks, pinctrl, USB PHY and thermal.
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - brcm,ns-cru
> +      - const: simple-mfd
> +
> +  reg:
> +    description: CRU registers
> +
> +  ranges: true
> +
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 1
> +
> +  pinctrl:
> +    $ref: ../pinctrl/brcm,ns-pinmux.yaml
> +
> +patternProperties:
> +  '^lcpll0@[a-f0-9]+$':
> +    $ref: ../clock/brcm,iproc-clocks.yaml
> +
> +  '^genpll@[a-f0-9]+$':
> +    $ref: ../clock/brcm,iproc-clocks.yaml

clock-controller@... for both.

With that changed,

Reviewed-by: Rob Herring <robh@kernel.org>

> +
> +  '^thermal@[a-f0-9]+$':
> +    $ref: ../thermal/brcm,ns-thermal.yaml
> +
> +additionalProperties: false
> +
> +required:
> +  - reg
> +
> +examples:
> +  - |
> +    cru-bus@1800c100 {
> +        compatible = "brcm,ns-cru", "simple-mfd";
> +        reg = <0x1800c100 0x1d0>;
> +        ranges;
> +        #address-cells = <1>;
> +        #size-cells = <1>;
> +
> +        lcpll0@100 {
> +            #clock-cells = <1>;
> +            compatible = "brcm,nsp-lcpll0";
> +            reg = <0x100 0x14>;
> +            clocks = <&osc>;
> +            clock-output-names = "lcpll0", "pcie_phy", "sdio", "ddr_phy";
> +        };
> +
> +        genpll@140 {
> +            #clock-cells = <1>;
> +            compatible = "brcm,nsp-genpll";
> +            reg = <0x140 0x24>;
> +            clocks = <&osc>;
> +            clock-output-names = "genpll", "phy", "ethernetclk", "usbclk",
> +                                 "iprocfast", "sata1", "sata2";
> +        };
> +
> +        pinctrl {
> +            compatible = "brcm,bcm4708-pinmux";
> +            offset = <0x1c0>;
> +        };
> +
> +        thermal@2c0 {
> +            compatible = "brcm,ns-thermal";
> +            reg = <0x2c0 0x10>;
> +            #thermal-sensor-cells = <0>;
> +        };
> +    };
> -- 
> 2.26.2
> 
