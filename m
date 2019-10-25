Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C3CE0E5451
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2019 21:25:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725954AbfJYTZU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Oct 2019 15:25:20 -0400
Received: from mail-ot1-f68.google.com ([209.85.210.68]:39822 "EHLO
        mail-ot1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725783AbfJYTZU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Oct 2019 15:25:20 -0400
Received: by mail-ot1-f68.google.com with SMTP id s22so2810498otr.6
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2019 12:25:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Hvp+6pcbAuhWD78ad7Hbl9tESo5LnkRCFZND+kn0p/8=;
        b=XA9mMVf12G7ScqgtoPLh1RN95hTDCOUIjr+FNRHM42K0iy7GeKfyV5C0xTbE7mxAkY
         GTVb5UrfSVnmRitd4mYyarf/qaQ7BRG5r/BAzdDlHer6Q0/7IUSOqzdxIPl0eGy5HpeK
         mR8NmeapiX1xLEyAz6Bz9gTuwNfN8UlNped+3ipov9GPryM5Wbp+nD/ouwbIpitYEGaX
         x4YbwciGeIehOI0mcVhleeJXDNkP5beFtcwEzWxnoCHrS8pwqN0KRu79KpYa1GrWhN4U
         cfzjnOMdI22abSpSl2hVbDJJrNvxlep+j04wEKWzPJl3ic6idstcTOWuWMblvmPH4L+g
         SOKg==
X-Gm-Message-State: APjAAAWpSwP3fpHW4ny7a8iFa4Fhz6/bGudbvi94q9TQPrpFoRgQy8eB
        6FV/dA8yiqM/jHuRfBIXbSrA7LE=
X-Google-Smtp-Source: APXvYqzMIR897eobjV14Fci7YCLpLBY9FpCOUumYwNM3rjseujxVArRe9sgOjUxouSEjyyC+cwGpAA==
X-Received: by 2002:a05:6830:2055:: with SMTP id f21mr3963388otp.26.1572031519782;
        Fri, 25 Oct 2019 12:25:19 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id s3sm1010825otk.64.2019.10.25.12.25.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Oct 2019 12:25:19 -0700 (PDT)
Date:   Fri, 25 Oct 2019 14:25:18 -0500
From:   Rob Herring <robh@kernel.org>
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/3 v4] drm/panel: Add DT bindings for Sony ACX424AKP
Message-ID: <20191025192518.GA19549@bogus>
References: <20191024114305.15581-1-linus.walleij@linaro.org>
 <20191024114305.15581-2-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191024114305.15581-2-linus.walleij@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Oct 24, 2019 at 01:43:04PM +0200, Linus Walleij wrote:
> This adds device tree bindings for the Sony ACX424AKP panel.
> Let's use YAML.

Also broken. Run 'make dt_binding_check'.

> 
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> ChangeLog v3->v4:
> - Adjust to adjusted DSI bindings.
> ChangeLog v2->v3:
> - Put the example inside a dsi-controller so we have a complete
>   example that verifies to the DSI panel generic binding.
> ChangeLog v1->v2:
> - Suggest a stand-alone YAML bindings file for DSI panels in
>   a separate patch, and use that to reference the
>   boolean "enforce-video-mode" attribute for DSI panels
> ---
>  .../display/panel/sony,acx424akp.yaml         | 49 +++++++++++++++++++
>  1 file changed, 49 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/sony,acx424akp.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/sony,acx424akp.yaml b/Documentation/devicetree/bindings/display/panel/sony,acx424akp.yaml
> new file mode 100644
> index 000000000000..a2f49b9a5958
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/sony,acx424akp.yaml
> @@ -0,0 +1,49 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/panel/sony,acx424akp.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Sony ACX424AKP 4" 480x864 AMOLED panel
> +
> +maintainers:
> +  - Linus Walleij <linus.walleij@linaro.org>
> +
> +allOf:
> +  - $ref: panel-common.yaml#
> +  - $ref: ../dsi-controller.yaml#

This is wrong now because it applies to the controller node, not the 
panel node. IOW, DSI controllers need to include it.

> +
> +properties:
> +  compatible:
> +    const: sony,acx424akp
> +  reg: true
> +  port: true
> +  reset-gpios: true
> +  vddi-supply:
> +     description: regulator that supplies the vddi voltage
> +  enforce-video-mode: true
> +
> +required:
> +  - compatible
> +  - reg
> +  - port
> +  - reset-gpios
> +  - power-supply
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    dsi-controller@0 {

unit-address without 'reg'...

> +        compatible = "foo";
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +        panel@0 {
> +            compatible = "sony,acx424akp";
> +            reg = <0>;
> +            vddi-supply = <&foo>;
> +            reset-gpios = <&foo_gpio 0 GPIO_ACTIVE_LOW>;
> +        };
> +    };
> +
> +...
> \ No newline at end of file

Should fix this...

> -- 
> 2.21.0
> 
