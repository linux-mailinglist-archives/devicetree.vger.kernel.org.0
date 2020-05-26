Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5C00B1BCDA0
	for <lists+devicetree@lfdr.de>; Tue, 28 Apr 2020 22:43:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726180AbgD1UnY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Apr 2020 16:43:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726318AbgD1UnX (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 28 Apr 2020 16:43:23 -0400
Received: from mail-vk1-xa42.google.com (mail-vk1-xa42.google.com [IPv6:2607:f8b0:4864:20::a42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B754FC03C1AD
        for <devicetree@vger.kernel.org>; Tue, 28 Apr 2020 13:43:23 -0700 (PDT)
Received: by mail-vk1-xa42.google.com with SMTP id b14so60363vkk.10
        for <devicetree@vger.kernel.org>; Tue, 28 Apr 2020 13:43:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=verdurent-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/OSHGWesGAjIQKdOPpoKsn+XeE0l9RMqKCT+tPNC2z4=;
        b=zX6Iakul0LkrFXuvvK6fla1W/wqCi4+6Vv0VkHkIeJuwdsqVxPwZCn+2bPbmUGyx3Y
         uYs65uOc8V43C8V26+c/UCnzteqOdMsTRnrxVnbkx3ZHHV9QnkIK781R6AkXe7E/Kbf0
         ldnBZ5ISzENYyaHpx0zxsAtR0fK/y8OvXL1S85GHBhf3wKSJC/tuBGpBQtuJNsK9Bn6E
         HEr3RomC/5KSQOWnug5HoXnpEJywQXpW3BMxvYaqrm0WkB5Fyxsd4oY9fAEQ4BF2n/6s
         igsVJwKx55OfcDMhhmHTE1jTAA0zImbzD4u4NmBTT3qPePwldQT09+gE9wFhTPowWYvt
         GJcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/OSHGWesGAjIQKdOPpoKsn+XeE0l9RMqKCT+tPNC2z4=;
        b=rmF1Fd7OVhpGWyyEbgKMcL+o0vnUGv3ZCeH8j8wJMT55OhPiAGlAdj4dOKW8d5dJm/
         GgIoiah7pTA0h0bS0ykGpJqv5++aJIM7+Q53o8scR4YeQC/j2ULesOa/FJ6eDAR4fk1e
         m6lUH10aHRFobYPxsHszceRZYz/vep8odRawQpNJ7r+kv/bgseYgYE+nNA7JOtAg+AAP
         +yREiDQ+14Paaf4zZljhNviR3A2+4KJZN9PsurW7ecGNiVplxWK9luCaVNETF4G98JYX
         c2DsODCg53JZXaq36EMo3wqEL8oNUheOaYivrSSNEhSvRv1sZU+4SESEUy4JjcCQbQ0F
         KVtQ==
X-Gm-Message-State: AGi0PuYlL4m2Md9yok/O+doGT0f5waXASALBDHo6T09eDdur/rfmsmu3
        7z5iVX8Fcc4QFvyPWH9ZOPGzMep/jised8S/Rl9qJg==
X-Google-Smtp-Source: APiQypKCUKt3jJ4sj9lTa6XBBwThMQqjqJzLuTpJ4h/WRkAacfQ6QQbfN6+a9FmS4vKfBKHCvunkUWb/88bEQfn0/Zw=
X-Received: by 2002:a1f:2a13:: with SMTP id q19mr10178790vkq.73.1588106602833;
 Tue, 28 Apr 2020 13:43:22 -0700 (PDT)
MIME-Version: 1.0
References: <1587477544-20052-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1587477544-20052-1-git-send-email-Anson.Huang@nxp.com>
From:   Amit Kucheria <amit.kucheria@verdurent.com>
Date:   Wed, 29 Apr 2020 02:12:47 +0530
Message-ID: <CAHLCerM0w=Zc0seb6u0f2=wpsObuv4O9fZiKaZJbS7ojDgx7EA@mail.gmail.com>
Subject: Re: [PATCH V3] dt-bindings: thermal: Convert i.MX8MM to json-schema
To:     Anson Huang <Anson.Huang@nxp.com>
Cc:     Zhang Rui <rui.zhang@intel.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>, kernel@pengutronix.de,
        Fabio Estevam <festevam@gmail.com>,
        Linux PM list <linux-pm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        lakml <linux-arm-kernel@lists.infradead.org>,
        LKML <linux-kernel@vger.kernel.org>,
        dl-linux-imx <Linux-imx@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Apr 21, 2020 at 7:37 PM Anson Huang <Anson.Huang@nxp.com> wrote:
>
> Convert the i.MX8MM thermal binding to DT schema format using json-schema
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Amit Kucheria <amit.kucheria@linaro.org>


> ---
> Changes since V2:
>         - drop unnecessary description for reg/clocks;
>         - improve compatible;
>         - use thermal-sensor as node name.
> ---
>  .../devicetree/bindings/thermal/imx8mm-thermal.txt | 15 ------
>  .../bindings/thermal/imx8mm-thermal.yaml           | 58 ++++++++++++++++++++++
>  2 files changed, 58 insertions(+), 15 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/thermal/imx8mm-thermal.txt
>  create mode 100644 Documentation/devicetree/bindings/thermal/imx8mm-thermal.yaml
>
> diff --git a/Documentation/devicetree/bindings/thermal/imx8mm-thermal.txt b/Documentation/devicetree/bindings/thermal/imx8mm-thermal.txt
> deleted file mode 100644
> index 3629d3c..0000000
> --- a/Documentation/devicetree/bindings/thermal/imx8mm-thermal.txt
> +++ /dev/null
> @@ -1,15 +0,0 @@
> -* Thermal Monitoring Unit (TMU) on Freescale i.MX8MM SoC
> -
> -Required properties:
> -- compatible : Must be "fsl,imx8mm-tmu" or "fsl,imx8mp-tmu".
> -- reg : Address range of TMU registers.
> -- clocks : TMU's clock source.
> -- #thermal-sensor-cells : Should be 0 or 1. See ./thermal.txt for a description.
> -
> -Example:
> -tmu: tmu@30260000 {
> -       compatible = "fsl,imx8mm-tmu";
> -       reg = <0x30260000 0x10000>;
> -       clocks = <&clk IMX8MM_CLK_TMU_ROOT>;
> -       #thermal-sensor-cells = <0>;
> -};
> diff --git a/Documentation/devicetree/bindings/thermal/imx8mm-thermal.yaml b/Documentation/devicetree/bindings/thermal/imx8mm-thermal.yaml
> new file mode 100644
> index 0000000..3885287
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/thermal/imx8mm-thermal.yaml
> @@ -0,0 +1,58 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/thermal/imx8mm-thermal.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NXP i.MX8M Mini Thermal Binding
> +
> +maintainers:
> +  - Anson Huang <Anson.Huang@nxp.com>
> +
> +description: |
> +  i.MX8MM has TMU IP to allow temperature measurement, there are
> +  currently two distinct major versions of the IP that is supported
> +  by a single driver. The IP versions are named v1 and v2, v1 is
> +  for i.MX8MM which has ONLY 1 sensor, v2 is for i.MX8MP which has
> +  2 sensors.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - fsl,imx8mm-tmu
> +      - fsl,imx8mp-tmu
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  "#thermal-sensor-cells":
> +    description: |
> +      Number of cells required to uniquely identify the thermal
> +      sensors, 0 for ONLY one sensor and 1 for multiple sensors.
> +    enum:
> +      - 0
> +      - 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - '#thermal-sensor-cells'
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/imx8mm-clock.h>
> +
> +    thermal-sensor@30260000 {
> +         compatible = "fsl,imx8mm-tmu";
> +         reg = <0x30260000 0x10000>;
> +         clocks = <&clk IMX8MM_CLK_TMU_ROOT>;
> +         #thermal-sensor-cells = <0>;
> +    };
> +
> +...
> --
> 2.7.4
>
