Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 81C2A6AB448
	for <lists+devicetree@lfdr.de>; Mon,  6 Mar 2023 02:22:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229593AbjCFBWu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Mar 2023 20:22:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229437AbjCFBWt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Mar 2023 20:22:49 -0500
Received: from esa1.hgst.iphmx.com (esa1.hgst.iphmx.com [68.232.141.245])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2E99C642
        for <devicetree@vger.kernel.org>; Sun,  5 Mar 2023 17:22:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1678065765; x=1709601765;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=+UBsgFul/gnlObaUdTeS/GF2DQOsnvh6MnUcmRDGKa4=;
  b=R5Qx6ex5aRMsZK5zPL6GW/FeAYmIoDdRCdZVHQjI+gbNmMozhHzUXzZt
   rZ5qk6qzNg/piWHwshani1zlrihX79Tyq7QHaUzqIOAYjYKZ8Q1ygbAHg
   Pf9sqXuJ84QgQV2+NqGWC4lskvN6SXvC7yevZNEe9QDOAiAne9ueHcpGl
   VZ8EahLRwQEEA36rwD0rt3kwGVGWMG+AjVmPcDvmGzbyvg32qfxyL2kSe
   pDiSJmPsA+egvYK0c0Vagn94PIs9nYETWYGRp+8LyXJE83oRDqlHxz7Ih
   N+az2t/FXZNvt/8KIBS40OOnocLAvJmsfhQy3goOhpZGFkzG7IeTWE0ne
   A==;
X-IronPort-AV: E=Sophos;i="5.98,236,1673884800"; 
   d="scan'208";a="336848530"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 06 Mar 2023 09:22:45 +0800
IronPort-SDR: BhAtRIZ6icz5INHF60jA14mPiCS+1KTZHQGt9VJXycriJzUvK4oLYQ5PKGZu96C7TZZs+Pn2cu
 C24S5MM+M+i9Nv2WxQQT2iNy0vxOPtxS6i5VCxl8yhYFOQ+iYRzpbq5z8EDjF7NSsTiDNZ7dWm
 rnLkYZHmAPdCMnCyg65VqSKgbIOHkdjRm0HS5EL1e+PJSI3p1tWZthM22EduHXPMuyP9sNQ/bu
 5yNGUTM5oOdhnxd6v8uZ7U6Kyb0Hm65dg9uCQDnIeEvpbS9KM+CjwPf+cZFX8ValGoYnAunrg7
 GTs=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 05 Mar 2023 16:33:45 -0800
IronPort-SDR: iDY8JM9bx4qzsqGT7zTnS3rT6DeGPlZanHdUsHI8C1+BQNe4g4WM3RawBg/HD+yfuq+N9G57PO
 UDaSvo06b4WYxkTcKBAq/S8XpTW79FmAiexTRYm6kxLQ180stL2mQiG+E1tDYvRvxPM1Hr/tPE
 F43R2nMMa5nsuz3N+bnPCHmrY5mwMaNG81DYIpJIHjMRG2unP3ejTWCuqOsQm3JE4LyzxCodut
 eCnjLn0NUi2GV5x+yGgAWAUSP0e9Tcl2nxwSctEjv1GF1Dj2dcmBGN/vQfDIX0vrwPkG4r89cC
 034=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 05 Mar 2023 17:22:45 -0800
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4PVLRS6dBCz1RvTr
        for <devicetree@vger.kernel.org>; Sun,  5 Mar 2023 17:22:44 -0800 (PST)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
        reason="pass (just generated, assumed good)"
        header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
        opensource.wdc.com; h=content-transfer-encoding:content-type
        :in-reply-to:organization:from:references:to:content-language
        :subject:user-agent:mime-version:date:message-id; s=dkim; t=
        1678065764; x=1680657765; bh=+UBsgFul/gnlObaUdTeS/GF2DQOsnvh6MnU
        cmRDGKa4=; b=ZLxlbxpbiuLYX++fMiO79vAJ7zHD+gdk5zefjfDceAkUVItck5Q
        QR3TR2MG4QOcIQLeKzODOY43gfrSimxO3h0K5noBv8j4+FJPm/YHvRU2UM47D5m9
        MA9TDVKrSFeKLr4WzbqElNgbQG3jD4rzU4z0F90E/svSuvriqsxdglk9wiw/lgCc
        NRlrgXSW+MfLKnJ0LKi6piS1sCxSszVLPR/kvtmSN+5OOdqpRDEI9BrBE9ofeA4V
        vybAD5DFacPweDxKuzggRCzoWrQXSWf9NrJrhLRsSx8jBfgLoqG3H0F/Zw07vAq6
        1f2t5+NZcIAlMiP+ti/uAtOGr0e4XRz3Shg==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
        by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id gYexL_IdOoXk for <devicetree@vger.kernel.org>;
        Sun,  5 Mar 2023 17:22:44 -0800 (PST)
Received: from [10.225.163.56] (unknown [10.225.163.56])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4PVLRR09hGz1RvLy;
        Sun,  5 Mar 2023 17:22:42 -0800 (PST)
Message-ID: <9d36818f-3ce3-0fb6-1a3e-85e3879af08c@opensource.wdc.com>
Date:   Mon, 6 Mar 2023 10:22:41 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v4] dt-bindings: ata: Add UniPhier controller binding
Content-Language: en-US
To:     Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Hans de Goede <hdegoede@redhat.com>,
        Jens Axboe <axboe@kernel.dk>
Cc:     linux-ide@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230222155906.19403-1-hayashi.kunihiko@socionext.com>
From:   Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <20230222155906.19403-1-hayashi.kunihiko@socionext.com>
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

On 2/23/23 00:59, Kunihiko Hayashi wrote:
> Add UniPhier SATA controller compatible string to the platform binding.
> This controller needs three reset controls for Pro4 SoC, or two reset
> controls for PXs2 and PXs3 SoCs.
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>

Rob,

Are you OK with this patch ? I can take it for 6.4.

> ---
>  .../bindings/ata/ahci-platform.yaml           | 49 +++++++++++++++++--
>  1 file changed, 45 insertions(+), 4 deletions(-)
> 
> Changes since v3:
> - Fix the position of resets and allOf properties
> - Add reset descriptions
> - Separate if conditions for two resets, three resets, and others
> 
> Changes since v2:
> - Add compatible strings to select property
> - Add minItems and change maxItems for resets
> - Move condition schema under allOf property
> - Change resets to "required" for uniphier-*-ahci
> 
> Changes since v1:
> - Restrict resets property changes with compatible strings
> - Fix maxItems from two to three
> 
> diff --git a/Documentation/devicetree/bindings/ata/ahci-platform.yaml b/Documentation/devicetree/bindings/ata/ahci-platform.yaml
> index 7dc2a2e8f598..358617115bb8 100644
> --- a/Documentation/devicetree/bindings/ata/ahci-platform.yaml
> +++ b/Documentation/devicetree/bindings/ata/ahci-platform.yaml
> @@ -30,12 +30,12 @@ select:
>            - marvell,armada-3700-ahci
>            - marvell,armada-8k-ahci
>            - marvell,berlin2q-ahci
> +          - socionext,uniphier-pro4-ahci
> +          - socionext,uniphier-pxs2-ahci
> +          - socionext,uniphier-pxs3-ahci
>    required:
>      - compatible
>  
> -allOf:
> -  - $ref: "ahci-common.yaml#"
> -
>  properties:
>    compatible:
>      oneOf:
> @@ -45,6 +45,9 @@ properties:
>                - marvell,armada-8k-ahci
>                - marvell,berlin2-ahci
>                - marvell,berlin2q-ahci
> +              - socionext,uniphier-pro4-ahci
> +              - socionext,uniphier-pxs2-ahci
> +              - socionext,uniphier-pxs3-ahci
>            - const: generic-ahci
>        - enum:
>            - cavium,octeon-7130-ahci
> @@ -74,7 +77,8 @@ properties:
>      maxItems: 1
>  
>    resets:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 3
>  
>  patternProperties:
>    "^sata-port@[0-9a-f]+$":
> @@ -91,6 +95,43 @@ required:
>    - reg
>    - interrupts
>  
> +allOf:
> +  - $ref: ahci-common.yaml#
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: socionext,uniphier-pro4-ahci
> +    then:
> +      properties:
> +        resets:
> +          items:
> +            - description: reset line for the parent
> +            - description: reset line for the glue logic
> +            - description: reset line for the controller
> +      required:
> +        - resets
> +    else:
> +      if:
> +        properties:
> +          compatible:
> +            contains:
> +              enum:
> +                - socionext,uniphier-pxs2-ahci
> +                - socionext,uniphier-pxs3-ahci
> +      then:
> +        properties:
> +          resets:
> +            items:
> +              - description: reset for the glue logic
> +              - description: reset for the controller
> +        required:
> +          - resets
> +      else:
> +        properties:
> +          resets:
> +            maxItems: 1
> +
>  unevaluatedProperties: false
>  
>  examples:

-- 
Damien Le Moal
Western Digital Research

