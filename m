Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A1C6160058F
	for <lists+devicetree@lfdr.de>; Mon, 17 Oct 2022 05:06:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231812AbiJQDGf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 16 Oct 2022 23:06:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231805AbiJQDG3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 16 Oct 2022 23:06:29 -0400
Received: from esa6.hgst.iphmx.com (esa6.hgst.iphmx.com [216.71.154.45])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A8D44B4AE
        for <devicetree@vger.kernel.org>; Sun, 16 Oct 2022 20:06:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1665975980; x=1697511980;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=xdELnJJexhL8yWqz/OoEfdlgLu6DNFfGugQqaoZToj4=;
  b=Rp7f+SgWkKnEzWg05sIQbQdkewpTIO5SLgl4brT7RfTlnWcLoJ4PwUIY
   6CariG1DaadK6Jc6ewZCu82FYyYj19desTDFG/cT+EYeiAgFBstTUvHo4
   kU8HwPTU1ccCRPo2y7gx3mAneQlS3DFcYCHS2wPCnfVB0ivTNkOjRFm3u
   DTMjP3aRUgE4Hr9BlvInPgjnjnVhPOTnl6NZmPXt3/eVC+DiGv+nXjX8f
   kFHVKOCDXnWakAsIB3WZ8uwM6C3CTJXyFGu7K+WYDBOpHt6VKCcjAaTqJ
   Vkq+XgjGntnHAG40j84HHUSwT+m7Rb137PfipG+L9IOIwLdPS1olsuzPk
   w==;
X-IronPort-AV: E=Sophos;i="5.95,190,1661788800"; 
   d="scan'208";a="214364778"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 17 Oct 2022 11:06:18 +0800
IronPort-SDR: iTIFrhWrMlNgqDfmeslwgi8sngFAxEnDAZMrNhwMaE++Fc3U1k+gkdJ5SRQZ77V37o+rdBTi07
 hN7iZLX9ztTMzIntLzp56GCy9AINGU3oTAgt/tfdGfZCpHMGNIbKxGBn746sGCejBY0AW+V/da
 UpzyFrido4N3gaO2n1ASdBGlQx4BKeRHVS5B5m23uRMopK+s3oQYX8hzBj3hNRzwi8dMJDwF39
 NG69rzcnTsVcr+yjPbdr5uUeAed2Uz8LPzdIGEe5DsJTXRmaaK+28YrWB7OnCEetjDmSVZyYWh
 3VTmByu6zA9KCNW+JoLewkXS
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 16 Oct 2022 19:25:52 -0700
IronPort-SDR: iJFOBzaBJnowYU3WdCU17L+6YB79ft4Kgi38QeVVhbNaalSFe8rJVjCZ6V0Dhe7UKooy5KhcCu
 ZT2JfpfGLeCSVA6zs7V7ZNNfXwzO6+hKFcY0V/6lwvmGus+1wTBMqA1vORrrS6tUdre6XbQDp/
 UUMRQfTqnUpBjD/RsahmFMq4AQ8pVlp9lRyC9QZS+mMRxKr58/dTWYqwbT9vPWBUoCMPXwTyN+
 vLFn7hcM/EHEQDsLbp6EECt90xY4N2FmEKNCFteMI23Hu+H4H+hS2/jm535rGPpw8XFmalCp8M
 vQI=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 16 Oct 2022 20:06:19 -0700
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4MrMMZ520Qz1RwqL
        for <devicetree@vger.kernel.org>; Sun, 16 Oct 2022 20:06:18 -0700 (PDT)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
        reason="pass (just generated, assumed good)"
        header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
        opensource.wdc.com; h=content-transfer-encoding:content-type
        :in-reply-to:organization:from:references:to:content-language
        :subject:user-agent:mime-version:date:message-id; s=dkim; t=
        1665975977; x=1668567978; bh=xdELnJJexhL8yWqz/OoEfdlgLu6DNFfGugQ
        qaoZToj4=; b=nf/+WIfOJmIGT34VJe4fZbu3x41x2gg0O4XuWBxW+11laYN5+Gp
        sVQhK3tQC1I6liPCBj/p8suv2RPj9HDJX5ddxhPzuU8+pHgDD6tvMPi7EhWDG+o4
        JAoKPbFJQ2o1/9HnjtoPRr4jy1Dxn2zIS8/HwSPhrgbyxukuvdnp+xmXnU9f+eBK
        qetjtRuldiqbd+GtBxVm0Odl6fiAZzTnDblkPgFOHCnV/ABfWebjlg4y4yjPcyWf
        HFrNNG+VHOlnqKQRZjp/AmT6DD/fNrmhRiWFTei9Nh4yc/5UnEm3DY5alsy9ElSP
        boMtHV/ZrKIXZEU2a0Yp8v8yiw0tMHs+0WA==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
        by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id mTKZjiQzQk4F for <devicetree@vger.kernel.org>;
        Sun, 16 Oct 2022 20:06:17 -0700 (PDT)
Received: from [10.225.163.121] (unknown [10.225.163.121])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4MrMMX6VCsz1RvLy;
        Sun, 16 Oct 2022 20:06:16 -0700 (PDT)
Message-ID: <0f330b8a-b4c3-3dcb-2754-2c95d8c85037@opensource.wdc.com>
Date:   Mon, 17 Oct 2022 12:06:15 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH] dt-bindings: ata: Add 'ata-generic' binding
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>
Cc:     Alexander Shiyan <shc_work@mail.ru>, linux-ide@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221011135849.2785834-1-robh@kernel.org>
From:   Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <20221011135849.2785834-1-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/11/22 22:58, Rob Herring wrote:
> The 'ata-generic' binding has been around since 2008, but never
> documented.
> 
> Cc: Alexander Shiyan <shc_work@mail.ru>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
> AFAICT, the ata-generic,use16bit property has no effect in Linux. The
> 32-bit transfers fallback to 16-bit if ATA_PFLAG_PIO32 flag is not set
> which it doesn't appear to ever be set. Looking at the history, the
> driver always used 16-bit mode.
> 
> Linus, Okay with being maintainer here?

If Linus reply is positive, feel free to add:

Acked-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>

I can take this one through the libata tree also if you prefer.

> 
> ---
>  .../devicetree/bindings/ata/ata-generic.yaml  | 58 +++++++++++++++++++
>  1 file changed, 58 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/ata/ata-generic.yaml
> 
> diff --git a/Documentation/devicetree/bindings/ata/ata-generic.yaml b/Documentation/devicetree/bindings/ata/ata-generic.yaml
> new file mode 100644
> index 000000000000..0697927f3d7e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/ata/ata-generic.yaml
> @@ -0,0 +1,58 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/ata/ata-generic.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Generic Parallel ATA Controller
> +
> +maintainers:
> +  - Linus Walleij <linus.walleij@linaro.org>
> +
> +description:
> +  Generic Parallel ATA controllers supporting PIO modes only.
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - arm,vexpress-cf
> +          - fsl,mpc8349emitx-pata
> +      - const: ata-generic
> +
> +  reg:
> +    items:
> +      - description: Command interface registers
> +      - description: Control interface registers
> +
> +  reg-shift:
> +    enum: [ 1, 2 ]
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  ata-generic,use16bit:
> +    type: boolean
> +    description: Use 16-bit accesses instead of 32-bit for data transfers
> +
> +  pio-mode:
> +    description: Maximum ATA PIO transfer mode
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    maximum: 6
> +    default: 0
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    compact-flash@1a000 {
> +        compatible = "arm,vexpress-cf", "ata-generic";
> +        reg = <0x1a000 0x100>,
> +              <0x1a100 0xf00>;
> +        reg-shift = <2>;
> +    };
> +...

-- 
Damien Le Moal
Western Digital Research

