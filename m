Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 65FA52A1AD0
	for <lists+devicetree@lfdr.de>; Sat, 31 Oct 2020 22:41:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726309AbgJaVlX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 31 Oct 2020 17:41:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726262AbgJaVlX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 31 Oct 2020 17:41:23 -0400
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com [IPv6:2607:f8b0:4864:20::d43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A4F0CC0617A6
        for <devicetree@vger.kernel.org>; Sat, 31 Oct 2020 14:41:21 -0700 (PDT)
Received: by mail-io1-xd43.google.com with SMTP id y20so11212066iod.5
        for <devicetree@vger.kernel.org>; Sat, 31 Oct 2020 14:41:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=iIc4v82rLJYOL5h6poMR3Hs/QIFMLKtkeaL9qYvtaMM=;
        b=In7+3k+jaXl0Uc7xnJoxZxSu6zkNU3PN3DGo2uRwvdEw30LKiNrmuNOfebg/kNIUGp
         eaWG15fKU4NwcmaJjkR5IM/dMBpFmTLXazTeT1+OLYZVFelRg/8Caj2sPNI/H+Y0091C
         ps4xShX/OLZnUR9EHVLd668u0gGX8UR01kiCM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=iIc4v82rLJYOL5h6poMR3Hs/QIFMLKtkeaL9qYvtaMM=;
        b=neeXXvlbtBsI741Nwru2UAT2h9JqT9LL4jZ2Dd8de8PxFOPhXRvjzCT5s1JHIO1QSE
         giWYC+03l6bNQCXZkfrWexAQyXtQ83zoQWXHeweVgd3FQJjaQUyXGXym6UrBpyzycMfO
         ck5OjVilM6wT4/RErClhO4L3i+Scoauyx4wzyBc65lUa+L00z4taTcu7r3RrcLrPUC7T
         VcbZqAwjsRAw1Ff3UcZj0QO9wmLCq1y6UQ56bvZDq+dh4pEec18iO3vKnqJUhhCElN0s
         P4jHjKtGwNE8vTpcH3dPxYmySs3GR2NemQaUpfzuJQopG4UtjmXOvNJ2zouStwT3NFnx
         HLbg==
X-Gm-Message-State: AOAM531DOzRFlNSd4ru607ke6GwgYi3iNr0o8dfiaho4dzTw8lrb4Arr
        7jCQ/W9cyqXVS0dzkCTClCTl5ooY9seEBT1NPbpMRQ==
X-Google-Smtp-Source: ABdhPJz6PCJo2MwU9FMPNLEGUY7awvzVlxBaH4gjXlcZgHbcDgo4MX4MtPOIvDGkt27o8YCY0MrxKIu8d8DfQBKSR+I=
X-Received: by 2002:a02:234f:: with SMTP id u76mr6582851jau.117.1604180481031;
 Sat, 31 Oct 2020 14:41:21 -0700 (PDT)
MIME-Version: 1.0
References: <20201031181242.742301-1-jic23@kernel.org> <20201031181242.742301-11-jic23@kernel.org>
In-Reply-To: <20201031181242.742301-11-jic23@kernel.org>
From:   Matt Ranostay <matt.ranostay@konsulko.com>
Date:   Sat, 31 Oct 2020 14:41:10 -0700
Message-ID: <CAJCx=gmWRa4Q_zZZG=f37ZeuifCjmJZ5gnuuc1ZBFGa6bdmGrQ@mail.gmail.com>
Subject: Re: [PATCH 10/10] dt-bindings:iio:potentiostat:ti,lmp91000: txt to
 yaml conversion.
To:     Jonathan Cameron <jic23@kernel.org>
Cc:     "open list:IIO SUBSYSTEM AND DRIVERS" <linux-iio@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Jonathan Cameron <Jonathan.Cameron@huawei.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Oct 31, 2020 at 11:15 AM Jonathan Cameron <jic23@kernel.org> wrote:
>
> From: Jonathan Cameron <Jonathan.Cameron@huawei.com>
>
> There were a few parts of the example that did not conform to the
> binding description and would not have worked with the Linux driver
> as a result.  Fixed them whilst doing this conversion.
>
> Signed-off-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> Cc: Matt Ranostay <matt.ranostay@konsulko.com>

Acked-by: Matt Ranostay <matt.ranostay@konsulko.com>

> ---
>  .../bindings/iio/potentiostat/lmp91000.txt    | 33 ---------
>  .../iio/potentiostat/ti,lmp91000.yaml         | 68 +++++++++++++++++++
>  2 files changed, 68 insertions(+), 33 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/iio/potentiostat/lmp91000.txt b/Documentation/devicetree/bindings/iio/potentiostat/lmp91000.txt
> deleted file mode 100644
> index f3ab02b0dd41..000000000000
> --- a/Documentation/devicetree/bindings/iio/potentiostat/lmp91000.txt
> +++ /dev/null
> @@ -1,33 +0,0 @@
> -* Texas Instruments LMP91000 series of potentiostats
> -
> -LMP91000: https://www.ti.com/lit/ds/symlink/lmp91000.pdf
> -LMP91002: https://www.ti.com/lit/ds/symlink/lmp91002.pdf
> -
> -Required properties:
> -
> -  - compatible: should be one of the following:
> -                 "ti,lmp91000"
> -                 "ti,lmp91002"
> -  - reg: the I2C address of the device
> -  - io-channels: the phandle of the iio provider
> -
> -  - ti,external-tia-resistor: if the property ti,tia-gain-ohm is not defined this
> -    needs to be set to signal that an external resistor value is being used.
> -
> -Optional properties:
> -
> -  - ti,tia-gain-ohm: ohm value of the internal resistor for the transimpedance
> -    amplifier. Must be 2750, 3500, 7000, 14000, 35000, 120000, or 350000 ohms.
> -
> -  - ti,rload-ohm: ohm value of the internal resistor load applied to the gas
> -    sensor. Must be 10, 33, 50, or 100 (default) ohms.
> -
> -Example:
> -
> -lmp91000@48 {
> -       compatible = "ti,lmp91000";
> -       reg = <0x48>;
> -       ti,tia-gain-ohm = <7500>;
> -       ti,rload = <100>;
> -       io-channels = <&adc>;
> -};
> diff --git a/Documentation/devicetree/bindings/iio/potentiostat/ti,lmp91000.yaml b/Documentation/devicetree/bindings/iio/potentiostat/ti,lmp91000.yaml
> new file mode 100644
> index 000000000000..e4b5d890e8d5
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/potentiostat/ti,lmp91000.yaml
> @@ -0,0 +1,68 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/potentiostat/ti,lmp91000.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Texas Instruments LMP91000 series of potentiostats with I2C control
> +
> +maintainers:
> +  - Matt Ranostay <matt.ranostay@konsulko.com>
> +
> +description: |
> +  Typically used as a signal conditioner for chemical sensors.
> +  LMP91000: https://www.ti.com/lit/ds/symlink/lmp91000.pdf
> +  LMP91002: https://www.ti.com/lit/ds/symlink/lmp91002.pdf
> +
> +properties:
> +  compatible:
> +    enum:
> +      - ti,lmp91000
> +      - ti,lmp91002
> +
> +  reg:
> +    maxItems: 1
> +
> +  io-channels:
> +    maxItems: 1
> +
> +  ti,external-tia-resistor:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      If the property ti,tia-gain-ohm is not defined this needs to be set to
> +      signal that an external resistor value is being used.
> +
> +  ti,tia-gain-ohm:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [2750, 3500, 7000, 14000, 35000, 120000, 350000]
> +    description:
> +      Internal resistor for the transimpedance amplifier.
> +
> +  ti,rload-ohm:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [10, 33, 50, 100]
> +    description:
> +      Internal resistor load applied to the gas sensor.
> +      Default 100 Ohms.
> +
> +required:
> +  - compatible
> +  - reg
> +  - io-channels
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +        lmp91000@48 {
> +            compatible = "ti,lmp91000";
> +            reg = <0x48>;
> +            ti,tia-gain-ohm = <7000>;
> +            ti,rload-ohm = <100>;
> +            io-channels = <&adc>;
> +        };
> +    };
> +...
> --
> 2.28.0
>
