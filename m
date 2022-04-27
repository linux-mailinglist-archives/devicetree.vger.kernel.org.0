Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AC7B45110D8
	for <lists+devicetree@lfdr.de>; Wed, 27 Apr 2022 08:04:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346659AbiD0GHq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Apr 2022 02:07:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59950 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238574AbiD0GHo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Apr 2022 02:07:44 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6DD1D580FC
        for <devicetree@vger.kernel.org>; Tue, 26 Apr 2022 23:04:33 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id l18so1271935ejc.7
        for <devicetree@vger.kernel.org>; Tue, 26 Apr 2022 23:04:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=27SXQOPVAdANNQCQJ4C3V7A5t8g68xh0r46tyDVmRxQ=;
        b=Y+ClKEHd1wAog5IoYY3pf0agZCvamFvLJJRWh+63FD3Va4L/gV5bKPrXggA6CVBuc0
         CUQpuZ36BefavI40ZgfscqtRl/Os2+FhhjeQVYA7NnKj5xae7sGtbcehw/F6Tw8T4lL6
         6CBOoOB+cjLA8LFuMLUB+jhkY9WedHACo5PHIo71xio/tehD9/sqYoT+SlSgHkPGoNo0
         gAhj4jX0hbwalsFgWOtuyo3tMCG9qAqZ/BDKH2bWApnpvHMqShdaET0Pa91yiPbIGEQQ
         J95OijOLMO/iV+v1ne9spHnUForaXEpWnY/U6XoLH3DV1IYtXkJClbCiYZS9NHVt+sbK
         STww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=27SXQOPVAdANNQCQJ4C3V7A5t8g68xh0r46tyDVmRxQ=;
        b=LHRRYqFlzNFY6UJZyQvButq1+xeVN4Jp/twgeuqR7cmQVd1cZPZi1rXzCOEaKkpini
         XNMubAqJT/4GS5xfi3q4VLafi9btmRV01ncpjchThtLf91We1z8GQMTiUXEqYDLQ7iXT
         00n3FbWJgZEFFD2B244V6dEIpSiCr+1C8wXqOZrM9+ECBFO8HtgI9VzXqCz4rvmECoU0
         kt7oYCOTD/n7OgZc1Wsh6sTfZFU/eCvRL4KAqgUiGps6t48cf34M/weJmpOGeOOpr3Gw
         g8xONtnJQ3OID1lzJrA5FKypEpPjS6IsZdOdKKN3RLft+gK4/3wZ6Mpgp4E7eM+Fwgfm
         yuvQ==
X-Gm-Message-State: AOAM533WkhWlBJdkRwURKPEhHMo8eJ5JTr4kn+HHyFw6n+hIU+jS+pLQ
        pKhl7CgkaH9lZHAbPSIAayTjSA==
X-Google-Smtp-Source: ABdhPJwWDR9IhrmVQfKp1JkwSdivR59TpiJ9LC3ukLWrvDIX/tdF3PY94O0nR9+ygi9bDJsFjar41A==
X-Received: by 2002:a17:907:8a0b:b0:6f3:bbab:4ad1 with SMTP id sc11-20020a1709078a0b00b006f3bbab4ad1mr4453194ejc.135.1651039471996;
        Tue, 26 Apr 2022 23:04:31 -0700 (PDT)
Received: from [192.168.0.252] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id l3-20020aa7cac3000000b00422c961c8c9sm7564792edt.78.2022.04.26.23.04.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Apr 2022 23:04:31 -0700 (PDT)
Message-ID: <178b9310-a854-dfa6-a4f3-f971b608abe3@linaro.org>
Date:   Wed, 27 Apr 2022 08:04:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v4 1/7] dt-bindings: hwmon: Add nuvoton,nct6775
Content-Language: en-US
To:     Zev Weiss <zev@bewilderbeest.net>,
        Guenter Roeck <linux@roeck-us.net>,
        Jean Delvare <jdelvare@suse.com>, linux-hwmon@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Cc:     Renze Nicolai <renze@rnplus.nl>,
        Oleksandr Natalenko <oleksandr@natalenko.name>,
        openbmc@lists.ozlabs.org, linux-kernel@vger.kernel.org
References: <20220427010154.29749-1-zev@bewilderbeest.net>
 <20220427010154.29749-2-zev@bewilderbeest.net>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220427010154.29749-2-zev@bewilderbeest.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/04/2022 03:01, Zev Weiss wrote:
> These Super I/O chips have an i2c interface that some systems expose
> to a BMC; the BMC's device tree can now describe that via this
> binding.
> 
> Signed-off-by: Zev Weiss <zev@bewilderbeest.net>

I already reviewed it so I guess you did not include the tag because of
significant changes?

> ---
>  .../bindings/hwmon/nuvoton,nct6775.yaml       | 56 +++++++++++++++++++
>  1 file changed, 56 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/hwmon/nuvoton,nct6775.yaml
> 
> diff --git a/Documentation/devicetree/bindings/hwmon/nuvoton,nct6775.yaml b/Documentation/devicetree/bindings/hwmon/nuvoton,nct6775.yaml
> new file mode 100644
> index 000000000000..418477374fdb
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/hwmon/nuvoton,nct6775.yaml
> @@ -0,0 +1,56 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +
> +$id: http://devicetree.org/schemas/hwmon/nuvoton,nct6775.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Nuvoton NCT6775 and compatible Super I/O chips
> +
> +maintainers:
> +  - Zev Weiss <zev@bewilderbeest.net>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - nuvoton,nct6106
> +      - nuvoton,nct6116
> +      - nuvoton,nct6775
> +      - nuvoton,nct6776
> +      - nuvoton,nct6779
> +      - nuvoton,nct6791
> +      - nuvoton,nct6792
> +      - nuvoton,nct6793
> +      - nuvoton,nct6795
> +      - nuvoton,nct6796
> +      - nuvoton,nct6797
> +      - nuvoton,nct6798
> +
> +  reg:
> +    maxItems: 1
> +
> +  nuvoton,tsi-channel-mask:
> +    description:
> +      Bitmask indicating which TSI temperature sensor channels are
> +      active.  LSB is TSI0, bit 1 is TSI1, etc.

Need a type/ref.

> +    maximum: 0xff
> +    default: 0

Since by default it is disabled, doesn't it make a required property?
IOW, if you add a node without this mask, will the device operate
properly and usefully?




Best regards,
Krzysztof
