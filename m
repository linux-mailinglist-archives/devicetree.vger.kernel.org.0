Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B92BD423BD4
	for <lists+devicetree@lfdr.de>; Wed,  6 Oct 2021 12:57:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237984AbhJFK64 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Oct 2021 06:58:56 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:59640
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S237843AbhJFK64 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Oct 2021 06:58:56 -0400
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com [209.85.167.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id C85203F077
        for <devicetree@vger.kernel.org>; Wed,  6 Oct 2021 10:57:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1633517823;
        bh=lyiS2gzwV3aL5tiUb/AbiuQ32zpcsPqknffpCI5B3YU=;
        h=To:Cc:References:From:Subject:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=ATDU6MWfzfpV9WfjhcpspSUHpO/oRwJC5HwElr7LN+Wga55w2xm33/Uq7gjwCEalG
         nmkrZ5z5SXsnSvikWXmvu0roSF5pYUd/6GqWd7tHQHjIoIkUo5vCe+XFvluajI9qCb
         y+rAYYDKnpa0T/OLA//TO/ABy5WMaRQrMHaNqKRO2aOuB+uqtmWwoaLkpPVWmscew/
         kAIj25GPg0wYHoacPfctN2jAS6gNtE+bkEQ2OBx1GXvUnfXkFoP1P0gUiLSD+gAJiN
         iPB/VXszNJ3v4tDnVeU6Dspoj8gfbwW78ZRvmOMGyppmlk83SCjlkgAVGCeigOFcLI
         Rs/ShD+HFjgrQ==
Received: by mail-lf1-f69.google.com with SMTP id x7-20020a056512130700b003fd1a7424a8so1681239lfu.5
        for <devicetree@vger.kernel.org>; Wed, 06 Oct 2021 03:57:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:to:cc:references:from:subject:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=lyiS2gzwV3aL5tiUb/AbiuQ32zpcsPqknffpCI5B3YU=;
        b=xRlDhtaQ1NBmIj0gzPiVM7IOlWr4wJFU8NKM7NUo9QFTyn+h277Ys5RoeIfmec97Dk
         ji0O6e8SgEEXtVbAHhW7RE3A5zVedJxlKQJttHPgLzxzNQS4MWtdM+Ajlh5XKbKTi4gr
         Lt7wjXqYE1FlID3KvrElZ0Xqm5kz4PD66AY7J02evQ82OFczle3zlQ0xAJDUFsUsvjHg
         5qAAXxjfY7gaGIa80h0OQ6YAm74+o9I5AQv7YL3rVTFkRVUyFlXTBURLvu6S/Nk8Fn9g
         O28qIRoVv2OUv7G6KOx0A6DARLG+u918WBixOn0FSoX5y+6fuTU6ogpHObMStBiQ/e5+
         2Y0w==
X-Gm-Message-State: AOAM532OS+en0HaEgtFPiOM8voNhKe3nA8QbEeJdy74hzyYVBk9oDR7k
        Gg0ijZExFE19VwJyIu9GFHIHRkUw6GaselOHMRyfEdPFSUWSMQh7Ds1WQK5KlwQOC1h7r8bSfVN
        4D7ADvoTWA6ZofN/SWIon0qZQQPowhaf2amNC+xM=
X-Received: by 2002:a2e:a367:: with SMTP id i7mr29225021ljn.435.1633517823223;
        Wed, 06 Oct 2021 03:57:03 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy0ybYQ7M5dUd0pO4EK9DU+QoPo9Dd8A/gKrWWPoQzw+dP3SEbSn9uqn0MbLXq/NaPnshLEPw==
X-Received: by 2002:a2e:a367:: with SMTP id i7mr29225005ljn.435.1633517823047;
        Wed, 06 Oct 2021 03:57:03 -0700 (PDT)
Received: from [192.168.0.20] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id e5sm2248255ljj.129.2021.10.06.03.57.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Oct 2021 03:57:02 -0700 (PDT)
To:     Dmitry Osipenko <digetx@gmail.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-tegra@vger.kernel.org
References: <20211005230009.3635-1-digetx@gmail.com>
 <20211005230009.3635-3-digetx@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: Re: [PATCH v4 2/7] dt-bindings: memory: lpddr2: Convert to schema
Message-ID: <6b8f6ef7-cfc5-3a8b-d44d-f4080a85ecf3@canonical.com>
Date:   Wed, 6 Oct 2021 12:57:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211005230009.3635-3-digetx@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/10/2021 01:00, Dmitry Osipenko wrote:
> Convert LPDDR2 binding to schema. I removed obsolete ti,jedec-lpddr2-*
> compatibles since they were never used by device-trees and by the code.
> 
> Suggested-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> ---
>  .../memory-controllers/ddr/jedec,lpddr2.yaml  | 195 ++++++++++++++++++
>  .../memory-controllers/ddr/lpddr2.txt         | 102 ---------
>  2 files changed, 195 insertions(+), 102 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr2.yaml
>  delete mode 100644 Documentation/devicetree/bindings/memory-controllers/ddr/lpddr2.txt
> 
> diff --git a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr2.yaml b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr2.yaml
> new file mode 100644
> index 000000000000..d99ccad54938
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr2.yaml
> @@ -0,0 +1,195 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/memory-controllers/ddr/jedec,lpddr2.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: LPDDR2 SDRAM compliant to JEDEC JESD209-2
> +
> +maintainers:
> +  - Krzysztof Kozlowski <krzk@kernel.org>

My Canonical address please, so:
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:
> +          - enum:
> +              - Elpida,ECB240ABACN
> +          - enum:
> +              - jedec,lpddr2-s4
> +      - items:
> +          - enum:
> +              - jedec,lpddr2-s2
> +      - items:
> +          - enum:
> +              - jedec,lpddr2-nvm
> +
> +  density:
> +    description: |
> +      Density in megabits of SDRAM chip. Obtained from device datasheet.

You need here a type/ref, so uint32.

> +    enum:
> +      - 64
> +      - 128
> +      - 256
> +      - 512
> +      - 1024
> +      - 2048
> +      - 4096
> +      - 8192
> +      - 16384
> +      - 32768
> +
> +  io-width:
> +    description: |
> +      IO bus width in bits of SDRAM chip. Obtained from device datasheet.

You need here a type/ref, so uint32.

> +    enum:
> +      - 32
> +      - 16
> +      - 8
> +
> +  tRRD-min-tck:
> +    maximum: 16

Here and further type is needed.


> +    description: |
> +      Active bank a to active bank b in terms of number of clock cycles.
> +      Obtained from device datasheet.
> +
> +  tWTR-min-tck:
> +    maximum: 16
> +    description: |
> +      Internal WRITE-to-READ command delay in terms of number of clock cycles.
> +      Obtained from device datasheet.
> +

Best regards,
Krzysztof
