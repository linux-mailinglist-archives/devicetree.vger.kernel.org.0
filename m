Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 82A8D48C1A9
	for <lists+devicetree@lfdr.de>; Wed, 12 Jan 2022 10:53:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238895AbiALJxI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jan 2022 04:53:08 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:57788
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S238656AbiALJxH (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 12 Jan 2022 04:53:07 -0500
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com [209.85.208.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 7566E3F31F
        for <devicetree@vger.kernel.org>; Wed, 12 Jan 2022 09:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1641981180;
        bh=o6vQwmWkbE7m6NRpujonNKYitI7mK8WcEOZQZgqHPFA=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=agM4DBVR+IpW8cTqwAJdTFoc43B3sGqFhr9LsV3SuiFiqcy6eJlBnD6TRw5yNnxq1
         UhhkdGVNZjLP2oYdetGKZpB5zShHYtsRqUKXT3MV+Ezl+nS/sJ8wTicb1W0Kr9m7bK
         auv2gWCgV8trwY9pMwUZPggSQ26f944s3Rjl9mAc/9o+q+OEN4NrBHGlaFZHijoVlL
         F+FY4zIrxfgPbEqek0gMd2GehBN1Wv9G4WvHs4XM3Ko8IM8w5AMsTCt2+IUnYxKkSg
         Lel3i0srQ4tw7p4rVAikUhJnXawrnL0otGR5n4vFFZQFnvx4KMfvLptm4NutUch23A
         oItuGVfoP76xg==
Received: by mail-ed1-f70.google.com with SMTP id y18-20020a056402271200b003fa16a5debcso1775661edd.14
        for <devicetree@vger.kernel.org>; Wed, 12 Jan 2022 01:53:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=o6vQwmWkbE7m6NRpujonNKYitI7mK8WcEOZQZgqHPFA=;
        b=GmJKgESXJlwxid1hZS6Unm1B+LE9rcdTvPcJbBlwrpIvsMZipPUy0RzAk0DtjX62k9
         zF/HoDRDISCMT5S3Zs7+LxZ1KwZFG8w7XZ4w8secRNQxS+WApij7dSg7Jl+3CSyWBZA9
         pnAwbomY3jDga8M/cvbRlKbaQROsSIP/3OUvtXd7M3Fv2acy1pWajs5OYG1skNR+2d9X
         49e1e6I8NNuOgJSLi5cyGqYIGzHsKX+Vcs/2F2bxchQlVaeV8VgQtRlqFj092m7RLDbV
         3r/hslK99BjFnH7pYKZbQz/mGydW7MNQM2vUFCDjEg7G8OrFkEoKIRVr8cYzImmBtL81
         PbJQ==
X-Gm-Message-State: AOAM530g3kdNU8hNm97ZOdSUxLV/NhGhpT0YlO6g9ysT3MGgtaTEO6a+
        UIP7dslOv5VOxQV01FCRFIrVN2btMmkAmkpDOBDcMcaqiLzpGX0MslrYthtXkvsxGm1/xuPBWXs
        0O0Py7O1mY2A+UIuxYJyDxme7FF3HZ3EUfDhByAI=
X-Received: by 2002:a17:907:3d94:: with SMTP id he20mr6882860ejc.339.1641981180069;
        Wed, 12 Jan 2022 01:53:00 -0800 (PST)
X-Google-Smtp-Source: ABdhPJw73W6Hv7xTEi4VqN7aojuUB7LhbxsU8KRU3mgyczSpz82IMXnJkqP3WxrP5v6XZRrXl5I1Lw==
X-Received: by 2002:a17:907:3d94:: with SMTP id he20mr6882848ejc.339.1641981179814;
        Wed, 12 Jan 2022 01:52:59 -0800 (PST)
Received: from [192.168.0.29] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id c9sm4347084ejf.170.2022.01.12.01.52.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Jan 2022 01:52:59 -0800 (PST)
Message-ID: <efcd2b6d-0565-47b2-87b6-ec1a356e6a47@canonical.com>
Date:   Wed, 12 Jan 2022 10:52:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH v2 2/4] spi: dt-bindings: samsung: convert to dtschema
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>
Cc:     Andi Shyti <andi@etezian.org>, Mark Brown <broonie@kernel.org>,
        Pratyush Yadav <p.yadav@ti.com>, linux-spi@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Sam Protsenko <semen.protsenko@linaro.org>
References: <20220111101338.58630-1-krzysztof.kozlowski@canonical.com>
 <20220111101338.58630-3-krzysztof.kozlowski@canonical.com>
 <Yd48C4pRH7tQz++f@robh.at.kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <Yd48C4pRH7tQz++f@robh.at.kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/01/2022 03:25, Rob Herring wrote:
> On Tue, Jan 11, 2022 at 11:13:36AM +0100, Krzysztof Kozlowski wrote:
>> Convert the Samsung SoC (S3C24xx, S3C64xx, S5Pv210, Exynos) SPI
>> controller bindings to DT schema format
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
>> Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>
>> ---
>>  .../spi/samsung,spi-peripheral-props.yaml     |  35 ++++
>>  .../devicetree/bindings/spi/samsung,spi.yaml  | 198 ++++++++++++++++++
>>  .../bindings/spi/spi-peripheral-props.yaml    |   1 +
>>  .../devicetree/bindings/spi/spi-samsung.txt   | 122 -----------
>>  MAINTAINERS                                   |   2 +-
>>  5 files changed, 235 insertions(+), 123 deletions(-)
>>  create mode 100644 Documentation/devicetree/bindings/spi/samsung,spi-peripheral-props.yaml
>>  create mode 100644 Documentation/devicetree/bindings/spi/samsung,spi.yaml
>>  delete mode 100644 Documentation/devicetree/bindings/spi/spi-samsung.txt
>>
>> diff --git a/Documentation/devicetree/bindings/spi/samsung,spi-peripheral-props.yaml b/Documentation/devicetree/bindings/spi/samsung,spi-peripheral-props.yaml
>> new file mode 100644
>> index 000000000000..aa5a1f48494b
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/spi/samsung,spi-peripheral-props.yaml
>> @@ -0,0 +1,35 @@
>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/spi/samsung,spi-peripheral-props.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Peripheral-specific properties for Samsung S3C/S5P/Exynos SoC SPI controller
>> +
>> +maintainers:
>> +  - Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
>> +
>> +description:
>> +  See spi-peripheral-props.yaml for more info.
>> +
>> +properties:
>> +  controller-data:
>> +    type: object
>> +    additionalProperties: false
>> +
>> +    properties:
>> +      samsung,spi-feedback-delay:
>> +        description: |
>> +          The sampling phase shift to be applied on the miso line (to account
>> +          for any lag in the miso line). Valid values:
>> +           - 0: No phase shift.
>> +           - 1: 90 degree phase shift sampling.
>> +           - 2: 180 degree phase shift sampling.
>> +           - 3: 270 degree phase shift sampling.
>> +        $ref: /schemas/types.yaml#/definitions/uint32
>> +        enum: [0, 1, 2, 3]
>> +
>> +    required:
>> +      - samsung,spi-feedback-delay
>> +
>> +additionalProperties: true
>> diff --git a/Documentation/devicetree/bindings/spi/samsung,spi.yaml b/Documentation/devicetree/bindings/spi/samsung,spi.yaml
>> new file mode 100644
>> index 000000000000..da4533feb946
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/spi/samsung,spi.yaml
>> @@ -0,0 +1,198 @@
>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/spi/samsung,spi.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Samsung S3C/S5P/Exynos SoC SPI controller
>> +
>> +maintainers:
>> +  - Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
>> +
>> +description:
>> +  All the SPI controller nodes should be represented in the aliases node using
>> +  the following format 'spi{n}' where n is a unique number for the alias.
>> +
>> +properties:
>> +  compatible:
>> +    oneOf:
>> +      - enum:
>> +          - samsung,s3c2443-spi # for S3C2443, S3C2416 and S3C2450
>> +          - samsung,s3c6410-spi
>> +          - samsung,s5pv210-spi # for S5PV210 and S5PC110
>> +          - samsung,exynos5433-spi
>> +      - const: samsung,exynos7-spi
>> +        deprecated: true
>> +
>> +  clocks:
>> +    minItems: 2
>> +    maxItems: 3
>> +
>> +  clock-names:
>> +    minItems: 2
>> +    maxItems: 3
>> +
>> +  cs-gpios: true
>> +
>> +  dmas:
>> +    minItems: 2
>> +    maxItems: 2
>> +
>> +  dma-names:
>> +    items:
>> +      - const: tx
>> +      - const: rx
>> +
>> +  interrupts:
>> +    maxItems: 1
>> +
>> +  no-cs-readback:
>> +    description:
>> +      The CS line is disconnected, therefore the device should not operate
>> +      based on CS signalling.
>> +    type: boolean
>> +
>> +  num-cs:
>> +    minimum: 1
>> +    maximum: 4
>> +    default: 1
>> +
>> +  samsung,spi-src-clk:
>> +    description:
>> +      If the spi controller includes a internal clock mux to select the clock
>> +      source for the spi bus clock, this property can be used to indicate the
>> +      clock to be used for driving the spi bus clock. If not specified, the
>> +      clock number 0 is used as default.
>> +    $ref: /schemas/types.yaml#/definitions/uint32
>> +    default: 0
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +patternProperties:
>> +  "^.*@[0-9a-f]+$":
>> +    type: object
>> +    allOf:
>> +      - $ref: spi-peripheral-props.yaml
>> +
>> +    required:
>> +      - controller-data
>> +
>> +    unevaluatedProperties: false
> 
> This is wrong because the child nodes will certainly have device 
> specific properties.
> 
> The whole child node schema can be dropped.

The controller-data at this point is still required (this is merely
existing bindings conversion), but I guess we can skip it since next
commit will remove it anyway, right?


Best regards,
Krzysztof
