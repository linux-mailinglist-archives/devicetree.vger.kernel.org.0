Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 256B65E67FB
	for <lists+devicetree@lfdr.de>; Thu, 22 Sep 2022 18:01:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230402AbiIVQBD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Sep 2022 12:01:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56708 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230260AbiIVQBB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Sep 2022 12:01:01 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2D6BB0B3C
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 09:00:58 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id f14so15458352lfg.5
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 09:00:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=81pL7DGs9HD5w7I37cpuZ7MXwqHOECwJdeVMBgzAlQw=;
        b=p9HhITvAiTLIOA9Xo9RkPoH1sLpf0YyHjNBG9YCwwqIrBHvl401CFBSWoEt1sVFO+7
         ymzYQY5i35KlA6q+G6SBXoLHML5N4MtO0DVQwt7qDLviEtR6HVss78HJK7NOGHBgLNI/
         Mpj3KN9khXDzOMP9REWxPpa7QusEkgXmTa/9tzQxHHNpnEVPKZsyAlH4c2TgBZfZNsTi
         yiBjg56FL4PsxXbBeNYwljk2EDScJqL3zkEJuOia1Pb2YRxvsCUYuh1us9eMIFEXvswP
         z/0zWWf5V0DhlkgA18+c1dK9JZ5cxblbt7d/a0ljJNov97Bp6PUEm7hrR7NYkDqUcsFJ
         hy8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=81pL7DGs9HD5w7I37cpuZ7MXwqHOECwJdeVMBgzAlQw=;
        b=Ww4Xr5iKJ5Sep0xHMH2L8K4DaxYbMTv7hDxHCS4VTqsHyj73ZHLfXmaTSOZvgl9mLX
         pB4OZGsvjYIxN5fosjWw4PNk9yVFK6kSLKnDBnrv2CeAj2Y9wGsM5dTgaNywcfbfqUTa
         hd1tQbpnp7wGnBSGRP/NfSOMfJxrWmbTwji1TC+wZCejEX+vFcq/oMhDz4svX98Ipuuj
         cMKkOYaLD8qpInkNqv2JaoXy83TJ/1kmbxm/t8hYksB+UW/DmeguG4OBXnT5UP0/7Zlz
         J0AYOtweJ99bRF2abnm4R2cF21DI9S9L6pIp7KyTRy3wxBXYz0QuqQpCSHYkhON1iBeZ
         dx5A==
X-Gm-Message-State: ACrzQf06b0t8pnnPgZvF1mCBGyvBNSCshuBKDIEm5xnOdvliRLF/zIVs
        7rUhFq4w02DgoNOC+vJbm8gmyA==
X-Google-Smtp-Source: AMsMyM7zp82NHkC7Tv6Mqv+9LGkxDK/DsUhOCxklWQbvOP7x7UlHQe656cZRo7e1NfMasN7HH9hIng==
X-Received: by 2002:a05:6512:2621:b0:491:10ba:321a with SMTP id bt33-20020a056512262100b0049110ba321amr1407331lfb.187.1663862456786;
        Thu, 22 Sep 2022 09:00:56 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id k3-20020a2eb743000000b0026c5bc6ed1asm952108ljo.69.2022.09.22.09.00.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 09:00:56 -0700 (PDT)
Message-ID: <c66e2bbe-4758-4d8e-f8aa-5b7bd1b7c2e3@linaro.org>
Date:   Thu, 22 Sep 2022 18:00:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH v6 2/8] dt-bindings: phy: Add Lynx 10G phy binding
Content-Language: en-US
To:     Sean Anderson <sean.anderson@seco.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        linux-phy@lists.infradead.org
Cc:     linuxppc-dev@lists.ozlabs.org,
        linux-arm-kernel@lists.infradead.org,
        Madalin Bucur <madalin.bucur@nxp.com>,
        Ioana Ciornei <ioana.ciornei@nxp.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org,
        Camelia Alexandra Groza <camelia.groza@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org
References: <20220920202356.1451033-1-sean.anderson@seco.com>
 <20220920202356.1451033-3-sean.anderson@seco.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220920202356.1451033-3-sean.anderson@seco.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/09/2022 22:23, Sean Anderson wrote:
> This adds a binding for the SerDes module found on QorIQ processors.
> Each phy is a subnode of the top-level device, possibly supporting
> multiple lanes and protocols. This "thick" #phy-cells is used due to
> allow for better organization of parameters. Note that the particular
> parameters necessary to select a protocol-controller/lane combination
> vary across different SoCs, and even within different SerDes on the same
> SoC.
> 
> The driver is designed to be able to completely reconfigure lanes at
> runtime. Generally, the phy consumer can select the appropriate
> protocol using set_mode.
> 
> There are two PLLs, each of which can be used as the master clock for
> each lane. Each PLL has its own reference. For the moment they are
> required, because it simplifies the driver implementation. Absent
> reference clocks can be modeled by a fixed-clock with a rate of 0.
> 
> Signed-off-by: Sean Anderson <sean.anderson@seco.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
> 
> Changes in v6:
> - fsl,type -> phy-type
> 
> Changes in v4:
> - Use subnodes to describe lane configuration, instead of describing
>   PCCRs. This is the same style used by phy-cadence-sierra et al.
> 
> Changes in v3:
> - Manually expand yaml references
> - Add mode configuration to device tree
> 
> Changes in v2:
> - Rename to fsl,lynx-10g.yaml
> - Refer to the device in the documentation, rather than the binding
> - Move compatible first
> - Document phy cells in the description
> - Allow a value of 1 for phy-cells. This allows for compatibility with
>   the similar (but according to Ioana Ciornei different enough) lynx-28g
>   binding.
> - Remove minItems
> - Use list for clock-names
> - Fix example binding having too many cells in regs
> - Add #clock-cells. This will allow using assigned-clocks* to configure
>   the PLLs.
> - Document the structure of the compatible strings
> 
>  .../devicetree/bindings/phy/fsl,lynx-10g.yaml | 236 ++++++++++++++++++
>  1 file changed, 236 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml b/Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml
> new file mode 100644
> index 000000000000..ce9afdbf33f4
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml
> @@ -0,0 +1,236 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/fsl,lynx-10g.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NXP Lynx 10G SerDes
> +
> +maintainers:
> +  - Sean Anderson <sean.anderson@seco.com>
> +
> +description: |
> +  These Lynx "SerDes" devices are found in NXP's QorIQ line of processors. The
> +  SerDes provides up to eight lanes. Each lane may be configured individually,
> +  or may be combined with adjacent lanes for a multi-lane protocol. The SerDes
> +  supports a variety of protocols, including up to 10G Ethernet, PCIe, SATA, and
> +  others. The specific protocols supported for each lane depend on the
> +  particular SoC.
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - fsl,ls1046a-serdes
> +          - fsl,ls1088a-serdes
> +      - const: fsl,lynx-10g
> +
> +  "#address-cells":

If there is going to be resend, use only one type of quotes: ' or ".

FWIW (Rob's reviewed it):

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

