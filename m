Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E15E86E2B34
	for <lists+devicetree@lfdr.de>; Fri, 14 Apr 2023 22:40:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229749AbjDNUkn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Apr 2023 16:40:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229820AbjDNUkm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Apr 2023 16:40:42 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C8985B9E
        for <devicetree@vger.kernel.org>; Fri, 14 Apr 2023 13:40:40 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id dm2so48750692ejc.8
        for <devicetree@vger.kernel.org>; Fri, 14 Apr 2023 13:40:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681504838; x=1684096838;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UBTBZBV3j3XB818AQf6y4VMhCZ7BnWynW+AV/+QQYBo=;
        b=tp0VjrVfgR1zQjAQH+CD1I/8euDbaKkRk9I76jq+BQpOOkHe8U4KC2T2/MDNJmVE1H
         9E0c/3UEZKeHN4fXTQFuoQWcVjyEYPk6NlMI7Dufg1YwIH3i41eUoydNEie4evhWbnoA
         kMIfibomcSlZ2z3OEM1xpdj/zAQkjrj0iGOgv2mNYI7e4f3J2VcJQ2Tfn7oaanLvMksu
         s8mwTNFlyOJKxehn26TiJLcprJYYRAFQil3YROQIVikzdBEqmks5C45h5ZX74VEd2XjV
         1wjQJWYX7PatO/YcO2qLPUhzDM1wB6KAgLsphV3YlBPvWSiXV5M28eNzylUAuHDchfc4
         FBTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681504838; x=1684096838;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UBTBZBV3j3XB818AQf6y4VMhCZ7BnWynW+AV/+QQYBo=;
        b=CVoHLj2eecnqjD4az4AKpGTsixc8ovsbzkglKZ8HAc/gaHpkNBIT0DzIpcoztp5ZNV
         2/z01YrwCclkoMJTCPtYWF2PxBwfs6NuE+1hrsf+ufwEdSgopH3v/RS7PzMOvh8AU6Un
         fnTGPF8OTCmNKuJ6+MpgwzyNQKBkPIznEkgkngJdI8T/bJgAFH1Id5faxdb5H4Y4ztSq
         0X1HgTuVgZc3WryMP6B91Ex8StJbTEzulBWlioFR4LBgHy3aA45p+O1q75N+DUYGt/bT
         1LZKgFW4c95OQ5cV3qDmFtSsLZOUw0s7FLhipWDh4Zb2WQP5NaAs765k+D6bQVRsy8yY
         uDeg==
X-Gm-Message-State: AAQBX9d9bTXGjmmlZxYV1nBVSHduOS41FIoPrzkS/bsbDJ83AlIWxXal
        nXv8sJj+j5UQmZURJEmLUmcntg==
X-Google-Smtp-Source: AKy350YWtYEZbla3D055wcBJGgPIjcQpUqqBDPJcyqq+YttwcjwgN5hzwEo067Hfi0VH3CmPoKV7Nw==
X-Received: by 2002:a17:906:8602:b0:94a:a1e2:ce29 with SMTP id o2-20020a170906860200b0094aa1e2ce29mr408724ejx.23.1681504838502;
        Fri, 14 Apr 2023 13:40:38 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:ffae:8aab:ae5a:4688? ([2a02:810d:15c0:828:ffae:8aab:ae5a:4688])
        by smtp.gmail.com with ESMTPSA id fh8-20020a1709073a8800b0094f0f0de1bcsm168733ejc.200.2023.04.14.13.40.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Apr 2023 13:40:38 -0700 (PDT)
Message-ID: <d577bc44-780f-f25d-29c6-ed1d353b540c@linaro.org>
Date:   Fri, 14 Apr 2023 22:40:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v2 1/1] dt-bindings: iio: pressure: Support Honeywell
 mprls0025pa sensor
Content-Language: en-US
To:     Andreas Klinger <ak@it-klinger.de>, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Angel Iglesias <ang.iglesiasg@gmail.com>,
        linux-kernel@vger.kernel.org
References: <ZDlLmCIiKSMa7Hah@arbad>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <ZDlLmCIiKSMa7Hah@arbad>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/04/2023 14:48, Andreas Klinger wrote:
> Honeywell mpr is a pressure sensor series. There are many different models with different pressure
> ranges, units and transfer functions.
> 
> The range and transfer function need to be set up in the dt. Therefore new properties
> honeywell,pmin-pascal, honeywell,pmax-pascal, honeywell,transfer-function are introduced.

Please wrap commit message according to Linux coding style / submission
process (neither too early nor over the limit):
https://elixir.bootlin.com/linux/v5.18-rc4/source/Documentation/process/submitting-patches.rst#L586

> 
> Add dt-bindings.
> 
> Signed-off-by: Andreas Klinger <ak@it-klinger.de>

Patches 2 and 3 are missing. At least they were mentioned in the
changelog but this is 1/1.

> ---
>  .../iio/pressure/honeywell,mprls0025pa.yaml   | 93 +++++++++++++++++++
>  1 file changed, 93 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iio/pressure/honeywell,mprls0025pa.yaml
> 
> diff --git a/Documentation/devicetree/bindings/iio/pressure/honeywell,mprls0025pa.yaml b/Documentation/devicetree/bindings/iio/pressure/honeywell,mprls0025pa.yaml
> new file mode 100644
> index 000000000000..c0eb3c4be16f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/pressure/honeywell,mprls0025pa.yaml
> @@ -0,0 +1,93 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/pressure/honeywell,mprls0025pa.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Honeywell mpr series pressure sensor
> +
> +maintainers:
> +  - Andreas Klinger <ak@it-klinger.de>
> +
> +description: |
> +  Honeywell pressure sensor of model mprls0025pa.
> +
> +  This sensor has an I2C and SPI interface. Only the I2C interface is implemented.
> +
> +  There are many models with different pressure ranges available. The vendor calls them "mpr
> +  series". All of them have the identical programming model and differ in the pressure range, unit

Wrap according to Linux coding style, so at 80.

> +  and transfer function.
> +
> +  To support different models one need to specify the pressure range as well as the transfer
> +  function. Pressure range needs to be converted from its unit to pascal.
> +
> +  The transfer function defines the ranges of numerical values delivered by the sensor. The minimal
> +  range value stands for the minimum pressure and the maximum value also for the maximum pressure
> +  with linear relation inside the range.
> +
> +  Specifications about the devices can be found at:
> +    https://prod-edam.honeywell.com/content/dam/honeywell-edam/sps/siot/en-us/products/sensors/
> +      pressure-sensors/board-mount-pressure-sensors/micropressure-mpr-series/documents/
> +      sps-siot-mpr-series-datasheet-32332628-ciid-172626.pdf
> +
> +properties:
> +  compatible:
> +    const: honeywell,mprls0025pa

So this is one compatible for entire family of 96 separate devices.
Looks like reasonable compromise, although I will wait for Rob's
approval on that.

Anyway you need to fix the coding style.

Best regards,
Krzysztof

