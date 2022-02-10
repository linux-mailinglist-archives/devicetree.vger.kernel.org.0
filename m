Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 97E574B1269
	for <lists+devicetree@lfdr.de>; Thu, 10 Feb 2022 17:12:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243950AbiBJQMj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Feb 2022 11:12:39 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:34940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244068AbiBJQMh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Feb 2022 11:12:37 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9AF66EB
        for <devicetree@vger.kernel.org>; Thu, 10 Feb 2022 08:12:38 -0800 (PST)
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com [209.85.218.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 14B7440048
        for <devicetree@vger.kernel.org>; Thu, 10 Feb 2022 16:12:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644509552;
        bh=UqplXcK8UtxJT/txE7jNL0wD1nuJxIhREgfiQibRdZg=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=pOQiH47eDRECjzkN9Vjrx9oQEQTU90Q1nrTlYmltnE42DzGbCAPA/kQ1bYlvuo1Tk
         IDpLj9YUwEN6hoFv3LuGTEXsISBn8H+6T0kOckiahq6EDEXlK8Fe1H6/6RwmprSamn
         n/IuS1o3aoC+t5k2oNZ0JMZV/eLe7HOGx+KwyKebnARC9c6X8Ejulaae3VyKUYb2QB
         KZatcZBuz2/2RSimvkWzG4a7uHXzHCgAfqx0JmD0mmFpzsjLQGbI8J9W2en9SJgawm
         T8XjmKjcVvZkQr0PBOK2a2fpfGzaA0wtVLyd3ynlNVPrr0n5J+tmvCp91biFEISGw5
         s8p0SGjOLX3CQ==
Received: by mail-ej1-f69.google.com with SMTP id hq19-20020a1709073f1300b006cdd7712c2cso300625ejc.11
        for <devicetree@vger.kernel.org>; Thu, 10 Feb 2022 08:12:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=UqplXcK8UtxJT/txE7jNL0wD1nuJxIhREgfiQibRdZg=;
        b=FxU3YAwEY7HHdZpajGg3SkHRwdyCn+mtspPGYUMIXvBT2qrDvKmsEYsUMXVjYE3zlq
         CvmY9XdNksrQ8FheHdwU01rN3PLNY+vg0o3wllTKeLABMfimcHa6qpMq26kEwfYl9sb+
         BGVgFQrRBBIems1NdsFQ9tcLCGwEhjPPHiKSgflHObcPQQZqd/scS9XpniXpU6QHhVfE
         ACTIXlpGBJTdWQ1pjRC8rb4rL4YbgYtmYWKVBkGfIeb33u4ptv/YpHbhGyYaK3NfdOCS
         kxk6gQ7Wf5svazV/2BW9/LHo5Sxn/HyTEcMEzfq/fty48JLAKuDiCMncRwRHVBrgFHj1
         0bkw==
X-Gm-Message-State: AOAM5319I8QjmQ3Yzum9eTwBfPwef5vE6N2msExGi8jQUIMUUqiLekFW
        2NHgjwZDB7wAA8ztkLHkHH1GV9jgj/pQnt6U2llv5/Dvi7EcjjAlDUX5nEZ2BgPfI622DCEbl1a
        5AZ3+uurysmIXTWgOOpjy0/mtc2dAe813f/pGerU=
X-Received: by 2002:aa7:c04e:: with SMTP id k14mr9006659edo.131.1644509550934;
        Thu, 10 Feb 2022 08:12:30 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzWpMYTLzQraEPVvwNMVUaVC0aP/A+UTcgF1OpK8OGFsd9WgRVlZDhDMlFIxuCpnawuKs8OkQ==
X-Received: by 2002:aa7:c04e:: with SMTP id k14mr9006643edo.131.1644509550680;
        Thu, 10 Feb 2022 08:12:30 -0800 (PST)
Received: from [192.168.0.99] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id cn15sm4513144edb.37.2022.02.10.08.12.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Feb 2022 08:12:30 -0800 (PST)
Message-ID: <838394d2-bc47-1a8b-56dd-320d0df39dfe@canonical.com>
Date:   Thu, 10 Feb 2022 17:12:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v4] dt-bindings: convert ata/cortina,gemini-sata-bridge to
 yaml
Content-Language: en-US
To:     Corentin Labbe <clabbe@baylibre.com>,
        damien.lemoal@opensource.wdc.com, robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, linux-ide@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Linus Walleij <linus.walleij@linaro.org>
References: <20220210160712.2962810-1-clabbe@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220210160712.2962810-1-clabbe@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/02/2022 17:07, Corentin Labbe wrote:
> This patch converts ata/cortina,gemini-sata-bridge binding to yaml
> 
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> Acked-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
> Change since v1:
> - fixed cosmetic nits reported by Damien Le Moal
> Changes since v2:
> - Added blank lines between properties
> - Removed useless quotes and label
> - Re-indented description
> Change since v3:
> - fixed all min/maxitems reported by Krzysztof Kozlowski
> 
>  .../ata/cortina,gemini-sata-bridge.txt        |  55 ---------
>  .../ata/cortina,gemini-sata-bridge.yaml       | 109 ++++++++++++++++++
>  2 files changed, 109 insertions(+), 55 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/ata/cortina,gemini-sata-bridge.txt
>  create mode 100644 Documentation/devicetree/bindings/ata/cortina,gemini-sata-bridge.yaml
> 
> diff --git a/Documentation/devicetree/bindings/ata/cortina,gemini-sata-bridge.txt b/Documentation/devicetree/bindings/ata/cortina,gemini-sata-bridge.txt
> deleted file mode 100644
> index 1c3d3cc70051..000000000000
> --- a/Documentation/devicetree/bindings/ata/cortina,gemini-sata-bridge.txt
> +++ /dev/null
> @@ -1,55 +0,0 @@
> -* Cortina Systems Gemini SATA Bridge
> -
> -The Gemini SATA bridge in a SoC-internal PATA to SATA bridge that
> -takes two Faraday Technology FTIDE010 PATA controllers and bridges
> -them in different configurations to two SATA ports.
> -
> -Required properties:
> -- compatible: should be
> -  "cortina,gemini-sata-bridge"
> -- reg: registers and size for the block
> -- resets: phandles to the reset lines for both SATA bridges
> -- reset-names: must be "sata0", "sata1"
> -- clocks: phandles to the compulsory peripheral clocks
> -- clock-names: must be "SATA0_PCLK", "SATA1_PCLK"
> -- syscon: a phandle to the global Gemini system controller
> -- cortina,gemini-ata-muxmode: tell the desired multiplexing mode for
> -  the ATA controller and SATA bridges. Values 0..3:
> -  Mode 0: ata0 master <-> sata0
> -          ata1 master <-> sata1
> -          ata0 slave interface brought out on IDE pads
> -  Mode 1: ata0 master <-> sata0
> -          ata1 master <-> sata1
> -          ata1 slave interface brought out on IDE pads
> -  Mode 2: ata1 master <-> sata1
> -          ata1 slave  <-> sata0
> -          ata0 master and slave interfaces brought out
> -               on IDE pads
> -  Mode 3: ata0 master <-> sata0
> -          ata0 slave  <-> sata1
> -          ata1 master and slave interfaces brought out
> -               on IDE pads
> -
> -Optional boolean properties:
> -- cortina,gemini-enable-ide-pins: enables the PATA to IDE connection.
> -  The muxmode setting decides whether ATA0 or ATA1 is brought out,
> -  and whether master, slave or both interfaces get brought out.
> -- cortina,gemini-enable-sata-bridge: enables the PATA to SATA bridge
> -  inside the Gemnini SoC. The Muxmode decides what PATA blocks will
> -  be muxed out and how.
> -
> -Example:
> -
> -sata: sata@46000000 {
> -	compatible = "cortina,gemini-sata-bridge";
> -	reg = <0x46000000 0x100>;
> -	resets = <&rcon 26>, <&rcon 27>;
> -	reset-names = "sata0", "sata1";
> -	clocks = <&gcc GEMINI_CLK_GATE_SATA0>,
> -		 <&gcc GEMINI_CLK_GATE_SATA1>;
> -	clock-names = "SATA0_PCLK", "SATA1_PCLK";
> -	syscon = <&syscon>;
> -	cortina,gemini-ata-muxmode = <3>;
> -	cortina,gemini-enable-ide-pins;
> -	cortina,gemini-enable-sata-bridge;
> -};
> diff --git a/Documentation/devicetree/bindings/ata/cortina,gemini-sata-bridge.yaml b/Documentation/devicetree/bindings/ata/cortina,gemini-sata-bridge.yaml
> new file mode 100644
> index 000000000000..77af2559b097
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/ata/cortina,gemini-sata-bridge.yaml
> @@ -0,0 +1,109 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/ata/cortina,gemini-sata-bridge.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Cortina Systems Gemini SATA Bridge
> +
> +maintainers:
> +  - Linus Walleij <linus.walleij@linaro.org>
> +
> +description: |
> +    The Gemini SATA bridge in a SoC-internal PATA to SATA bridge that
> +    takes two Faraday Technology FTIDE010 PATA controllers and bridges
> +    them in different configurations to two SATA ports.
> +
> +properties:
> +  compatible:
> +    const: cortina,gemini-sata-bridge
> +
> +  reg:
> +    maxItems: 1
> +
> +  resets:
> +    minItems: 2
> +    maxItems: 2
> +    description: phandles to the reset lines for both SATA bridges
> +
> +  reset-names:
> +    items:
> +      - const: sata0
> +      - const: sata1
> +
> +  clocks:
> +    minItems: 2
> +    maxItems: 2
> +    description: phandles to the compulsory peripheral clocks
> +
> +  clock-names:
> +    items:
> +      - const: SATA0_PCLK
> +      - const: SATA1_PCLK
> +
> +  syscon:
> +    maxItems: 1

My bad, I am sorry for misleading you earlier, this is just a phandle,
so should be without any min/maxItems.

> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description: a phandle to the global Gemini system controller
> +

With maxItems removed:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
