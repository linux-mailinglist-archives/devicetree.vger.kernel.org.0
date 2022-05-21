Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2366752FD78
	for <lists+devicetree@lfdr.de>; Sat, 21 May 2022 16:54:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349081AbiEUOyy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 21 May 2022 10:54:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37582 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234986AbiEUOyx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 21 May 2022 10:54:53 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7ECC47A466
        for <devicetree@vger.kernel.org>; Sat, 21 May 2022 07:54:52 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id p22so18707036lfo.10
        for <devicetree@vger.kernel.org>; Sat, 21 May 2022 07:54:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=yn6GM8YC4at4apwkmsAaz+qykkWhY/lONZlHvlsp1dQ=;
        b=moEappeT2eaGHlq6uVdacAt4RqDY2VmRmWOPyazxw1F4+U0RwMzllt3jJQ+CboaINs
         H1zvvRaO6WSf7bmeldHkaszOJzhFGGzKb7nSXmFa7WMO/0mtYe8WbP02QaqPrL5tNr4L
         4e68QHG7HiREkxHyHAYBvpZIydsiDwKAReMA5hEZMq5N9u9Es+fL7rvh6oZQgcorTBpp
         SUeUiG7fJk2nvPw4plNGahNfhUiF5kTGlVT7znwtHkoDqaJAlaUlcy0/NEQdd/s+95si
         wcALlluRuXm58wEw5qzJGJOZKYAyKcpG9yrMxlaT/oIBNFnJsA8Gw6CI10tsw5dtnnr0
         H8xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=yn6GM8YC4at4apwkmsAaz+qykkWhY/lONZlHvlsp1dQ=;
        b=6cAyw2UKF83ZlCKDsqkiS7xeYGlwYQimtiEfSDl3T1P0jiURSEbhwig39hygEDGom2
         mfeZrjINcTZFjENcMXkwWRLyjwP8QPuRu93e7kOBWXPSlmbLsdhby1wcztNnZmOoAx4t
         xnAoL6STPxO9HELpYNXoC+IL1wagBqPKNcU5kjdD7/qnt0kQ29PG8mPS4l0juIVz9onW
         RJji40xUSQYlmmD4eJ0cjM2ZbmfiMaU68jHINpVIYUAeFRMJacgJSnfAe3b2bDbr5CBu
         rMHAA72Dm43Mfm5S0KssW60MUQlUxHnysB6tV3uV1Fi8Wh6mpvosFDv7ilSueOitdJEx
         xqUw==
X-Gm-Message-State: AOAM5326xGQ5UW451PgL7zWEhVgKKPY0jPvY+V3ugtjwi/x2rwjpdWVZ
        /lq8ARA1HnG1p7NUJxtz0BJmXA==
X-Google-Smtp-Source: ABdhPJziD7p5qbR0BrOtimlL6OK89yBMxM0pzyjaOlo79nfvj3tIX4LpKOe1HaUgI/Fgm5rb++WXCQ==
X-Received: by 2002:a05:6512:1691:b0:46f:1e0:d0 with SMTP id bu17-20020a056512169100b0046f01e000d0mr10051158lfb.91.1653144890831;
        Sat, 21 May 2022 07:54:50 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id a11-20020a2e980b000000b00253df2d526asm615073ljj.77.2022.05.21.07.54.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 May 2022 07:54:50 -0700 (PDT)
Message-ID: <f2073815-3302-d092-5a94-61dcaf72e29c@linaro.org>
Date:   Sat, 21 May 2022 16:54:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH 1/2] dt-bindings: arm: Convert CoreSight bindings to DT
 schema
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Mike Leach <mike.leach@linaro.org>,
        Leo Yan <leo.yan@linaro.org>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20220520214416.302127-1-robh@kernel.org>
 <20220520214416.302127-2-robh@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220520214416.302127-2-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/05/2022 23:44, Rob Herring wrote:
> Each CoreSight component has slightly different requirements and
> nothing applies to every component, so each CoreSight component has its
> own schema document.
> 

(...)

> +        const: arm,coresight-dynamic-funnel
> +  required:
> +    - compatible
> +
> +allOf:
> +  - $ref: /schemas/arm/primecell.yaml#
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: arm,coresight-dynamic-funnel
> +      - const: arm,primecell
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 1
> +    maxItems: 2
> +
> +  clock-names:
> +    minItems: 1
> +    items:
> +      - const: apb_pclk
> +      - const: atclk
> +
> +  in-ports:
> +    $ref: /schemas/graph.yaml#/properties/ports

Shouldn't this be with unevaluatedProperties:false?

> +
> +    patternProperties:
> +      '^port(@[0-7])?$':
> +        description: Input connections from CoreSight Trace bus
> +        $ref: /schemas/graph.yaml#/properties/port
> +
> +  out-ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +    additionalProperties: false
> +
> +    properties:
> +      port:
> +        description: Output connection to CoreSight Trace bus
> +        $ref: /schemas/graph.yaml#/properties/port
> +

(...)

> +title: Arm CoreSight Static Trace Bus Replicator
> +
> +maintainers:
> +  - Mathieu Poirier <mathieu.poirier@linaro.org>
> +  - Mike Leach <mike.leach@linaro.org>
> +  - Leo Yan <leo.yan@linaro.org>
> +  - Suzuki K Poulose <suzuki.poulose@arm.com>
> +
> +description: |
> +  CoreSight components are compliant with the ARM CoreSight architecture
> +  specification and can be connected in various topologies to suit a particular
> +  SoCs tracing needs. These trace components can generally be classified as
> +  sinks, links and sources. Trace data produced by one or more sources flows
> +  through the intermediate links connecting the source to the currently selected
> +  sink.
> +
> +  The Coresight replicator splits a single trace stream into two trace streams
> +  for systems that have more than one trace sink component.
> +
> +properties:
> +  compatible:
> +    const: arm,coresight-static-replicator
> +
> +  in-ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +    additionalProperties: false
> +
> +    properties:
> +      port:
> +        description: Input connection from CoreSight Trace bus
> +        $ref: /schemas/graph.yaml#/properties/port
> +
> +  out-ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    patternProperties:
> +      '^port@[01]$':
> +        description: Output connections to CoreSight Trace bus
> +        $ref: /schemas/graph.yaml#/properties/port
> +

Same question.

(...)

> +title: Arm CoreSight Trace Memory Controller
> +
> +maintainers:
> +  - Mathieu Poirier <mathieu.poirier@linaro.org>
> +  - Mike Leach <mike.leach@linaro.org>
> +  - Leo Yan <leo.yan@linaro.org>
> +  - Suzuki K Poulose <suzuki.poulose@arm.com>
> +
> +description: |
> +  CoreSight components are compliant with the ARM CoreSight architecture
> +  specification and can be connected in various topologies to suit a particular
> +  SoCs tracing needs. These trace components can generally be classified as
> +  sinks, links and sources. Trace data produced by one or more sources flows
> +  through the intermediate links connecting the source to the currently selected
> +  sink.
> +
> +  Trace Memory Controller is used for Embedded Trace Buffer(ETB), Embedded Trace
> +  FIFO(ETF) and Embedded Trace Router(ETR) configurations. The configuration
> +  mode (ETB, ETF, ETR) is discovered at boot time when the device is probed.
> +
> +# Need a custom select here or 'arm,primecell' will match on lots of nodes
> +select:
> +  properties:
> +    compatible:
> +      contains:
> +        const: arm,coresight-tmc
> +  required:
> +    - compatible
> +
> +allOf:
> +  - $ref: /schemas/arm/primecell.yaml#
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: arm,coresight-tmc
> +      - const: arm,primecell
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 1
> +    maxItems: 2
> +
> +  clock-names:
> +    minItems: 1
> +    items:
> +      - const: apb_pclk
> +      - const: atclk
> +
> +  arm,buffer-size:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    deprecated: true
> +    description:
> +      Size of contiguous buffer space for TMC ETR (embedded trace router). The
> +      buffer size can be configured dynamically via buffer_size property in
> +      sysfs instead.
> +
> +  arm,scatter-gather:
> +    type: boolean
> +    description:
> +      Indicates that the TMC-ETR can safely use the SG mode on this system.
> +
> +  arm,max-burst-size:
> +    description:
> +      The maximum burst size initiated by TMC on the AXI master interface. The
> +      burst size can be in the range [0..15], the setting supports one data
> +      transfer per burst up to a maximum of 16 data transfers per burst.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    maximum: 15
> +
> +

Just one blank line

Best regards,
Krzysztof
