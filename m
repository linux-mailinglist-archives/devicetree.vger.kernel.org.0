Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4927F19E351
	for <lists+devicetree@lfdr.de>; Sat,  4 Apr 2020 09:31:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726395AbgDDHba (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 4 Apr 2020 03:31:30 -0400
Received: from mail-vs1-f65.google.com ([209.85.217.65]:46572 "EHLO
        mail-vs1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726386AbgDDHb3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 4 Apr 2020 03:31:29 -0400
Received: by mail-vs1-f65.google.com with SMTP id z125so6425464vsb.13
        for <devicetree@vger.kernel.org>; Sat, 04 Apr 2020 00:31:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=verdurent-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=PM54+TAF+g/S8Jdu48v4vdALgU1uHmqD41DlN+nN2GQ=;
        b=U/z7FaYgCxrifjRMbUMuNc48xDQkG1azVQ1qAqD5C7gQ2BC0+SFLokHqrseBZoS9BZ
         HhrCnBVjIlsNzTSk4g9jfL9JJz+m5CKI+s5CrxslyKnjLoTsEBG8QO2itdwefQVPu7Sh
         RWs2OJabHZCg++IlG5djjUt5kNFHWUOxPGGHY1AUmooXc5/Kvu95qNG/RJNI1bp408I1
         rv4YucMhPRAVJiiew6KxAcltBjYQn1wwVVPeylGsfx2YHhAuDgZgIaV+C9Eq+6VzjDvp
         i2sBU69P9pmQehnOz4LSQCQfw45G1MRqFniKV+pNE9TYCEJv2jY/nLd6aPv16oy5YDpy
         UvZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PM54+TAF+g/S8Jdu48v4vdALgU1uHmqD41DlN+nN2GQ=;
        b=cUP6H3LS+1wT5e7Uarp9rt0HWB4sLEZtCFa45UkrXbmQxONUijEnAa9gTxvjqJ9JBF
         //ykhQlGbMjTvH0cPI9cekDmpMdPgZFJNDBzdFizYbjV6bm3L4QLIwFRihs8gNDIx60K
         eiR1yMSWpp/bPB2zWMOkHXIy/gxp0k9apI83BCcDNmnB7/12PiJXNKzg3+k9C36/5rwu
         bYXJxsAAeUis1o3Hwxr0rEHLRFS72Y/DqxDnJPFJTkUEZUBjW5u+KJua62YZIO4ytvnb
         09Df6KuAFVYdKau+yFXcQfZZMcYdl2jXThgklXAkI+JpDrEn/ojij+ELERgh+NF4CXbj
         F1VQ==
X-Gm-Message-State: AGi0PuYVB2dy4wB5WESRpG8tTwzobONR5IMmMGqY6D6ONablFZBhKaXd
        KDaJsYlL6joO918AYHgq9eh4JPoAcZLUQSQr66V8Ig==
X-Google-Smtp-Source: APiQypIu/alTBXDgKITDXBctny47stbSvo55Own/Vu8y0I7bxK1KHmvt7pgNCgb+JQCSxYjPHiy+3AH9i6i2tnOhjmE=
X-Received: by 2002:a67:69d5:: with SMTP id e204mr8446240vsc.159.1585985488361;
 Sat, 04 Apr 2020 00:31:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200331075356.19171-1-j-keerthy@ti.com> <20200331075356.19171-2-j-keerthy@ti.com>
In-Reply-To: <20200331075356.19171-2-j-keerthy@ti.com>
From:   Amit Kucheria <amit.kucheria@verdurent.com>
Date:   Sat, 4 Apr 2020 13:00:00 +0530
Message-ID: <CAHLCerPrmsMU3uVwQGXfZAsWkgxiG+1M136f6uuWgwB4EF2uGg@mail.gmail.com>
Subject: Re: [PATCH v5 1/4] dt-bindings: thermal: k3: Add VTM bindings documentation
To:     Keerthy <j-keerthy@ti.com>
Cc:     Zhang Rui <rui.zhang@intel.com>, Rob Herring <robh+dt@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>, t-kristo@ti.com,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        lakml <linux-arm-kernel@lists.infradead.org>,
        Linux PM list <linux-pm@vger.kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Mar 31, 2020 at 1:24 PM Keerthy <j-keerthy@ti.com> wrote:
>
> Add VTM bindings documentation. In the Voltage Thermal
> Management Module(VTM), K3 AM654 supplies a voltage
> reference and a temperature sensor feature that are gathered in the band
> gap voltage and temperature sensor (VBGAPTS) module. The band
> gap provides current and voltage reference for its internal
> circuits and other analog IP blocks. The analog-to-digital
> converter (ADC) produces an output value that is proportional
> to the silicon temperature.
>
> Signed-off-by: Keerthy <j-keerthy@ti.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
>
> Changes in v5:
>
>   * Added Reviewed-by: Rob Herring <robh@kernel.org>
>
>  .../bindings/thermal/ti,am654-thermal.yaml    | 56 +++++++++++++++++++
>  1 file changed, 56 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/thermal/ti,am654-thermal.yaml
>
> diff --git a/Documentation/devicetree/bindings/thermal/ti,am654-thermal.yaml b/Documentation/devicetree/bindings/thermal/ti,am654-thermal.yaml
> new file mode 100644
> index 000000000000..d241b65d6072
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/thermal/ti,am654-thermal.yaml
> @@ -0,0 +1,56 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/thermal/ti,am654-thermal.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Texas Instruments AM654 VTM (DTS) binding
> +
> +maintainers:
> +  - Keerthy <j-keerthy@ti.com>
> +
> +properties:
> +  compatible:
> +    const: ti,am654-vtm
> +
> +  reg:
> +    maxItems: 1
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  "#thermal-sensor-cells":
> +    const: 1
> +
> +required:
> +  - "#thermal-sensor-cells"
> +  - compatible
> +  - reg
> +  - power-domains
> +

A nit-pick: arrange the required properties in order they're listed above.

> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/soc/ti,sci_pm_domain.h>
> +    vtm: thermal@42050000 {
> +        compatible = "ti,am654-vtm";
> +        reg = <0x0 0x42050000 0x0 0x25c>;
> +        power-domains = <&k3_pds 80 TI_SCI_PD_EXCLUSIVE>;
> +        #thermal-sensor-cells = <1>;
> +    };
> +
> +    mpu0_thermal: mpu0_thermal {
> +        polling-delay-passive = <250>; /* milliseconds */
> +        polling-delay = <500>; /* milliseconds */
> +        thermal-sensors = <&vtm0 0>;
> +
> +        trips {
> +                mpu0_crit: mpu0_crit {
> +                        temperature = <125000>; /* milliCelsius */
> +                        hysteresis = <2000>; /* milliCelsius */
> +                        type = "critical";
> +                };
> +        };
> +    };
> +...
> --
> 2.17.1
>
