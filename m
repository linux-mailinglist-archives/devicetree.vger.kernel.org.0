Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A46AA293067
	for <lists+devicetree@lfdr.de>; Mon, 19 Oct 2020 23:22:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732877AbgJSVWg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Oct 2020 17:22:36 -0400
Received: from mail-ot1-f65.google.com ([209.85.210.65]:45304 "EHLO
        mail-ot1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732858AbgJSVWg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Oct 2020 17:22:36 -0400
Received: by mail-ot1-f65.google.com with SMTP id f37so1149884otf.12
        for <devicetree@vger.kernel.org>; Mon, 19 Oct 2020 14:22:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=kb2FOP10/CSY2+K+fOQqeeT9YIluintmnWiaKshoetI=;
        b=D7ARa6zHSarES5ebgqC1DX/p6Z3qKHjv4MbRLS1vdMN1kPAOCB8cKxeqIBxhWvWFOz
         TjDSv29NC7Y4dWyEm1tCUDtscWs8n9xqJhvSV7XPA2jeUuIhlkakwriI6rfeGHDMBWMX
         7xNYK2m1i+gFG8GMDDZb7EieDqxI+mTmicbbdD5H6yhCzlyAMExO3IK1RQfT5pTDlKLb
         ZajmJZE3Ok/JjtL0b4fKA1JBcQHv6FYX1Ml/kzaEdJE8QZW//UBsA8V3GnFkb5yKt2c6
         SGzcNn/E1cxnCH2M35uMaHFGl7eU/AyuT6EdG2jIyxzw0WO/jwl9ukKii/wgcDEUB81Q
         7ZOw==
X-Gm-Message-State: AOAM532rM4DuPLWYZE7vdAy/j04kj0yx9geTHWMzO8aCZPJEIg0eaE0L
        ven6foG/qkYgfx1sUfTkzFfEQ90NCw==
X-Google-Smtp-Source: ABdhPJyIWuzhsUB3Qe9Fh0vC/maeBOYyf2zyXdqtFSd95qu5nrMOWMpgVAvxAWWAnOy1okFxqHYCKA==
X-Received: by 2002:a05:6830:1de6:: with SMTP id b6mr1360403otj.37.1603142553829;
        Mon, 19 Oct 2020 14:22:33 -0700 (PDT)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id k13sm307564ooi.41.2020.10.19.14.22.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Oct 2020 14:22:33 -0700 (PDT)
Received: (nullmailer pid 3624234 invoked by uid 1000);
        Mon, 19 Oct 2020 21:22:32 -0000
Date:   Mon, 19 Oct 2020 16:22:32 -0500
From:   Rob Herring <robh@kernel.org>
To:     Billy Tsai <billy_tsai@aspeedtech.com>
Cc:     joel@jms.id.au, andrew@aj.id.au, jae.hyun.yoo@linux.intel.com,
        haiyue.wang@linux.intel.com, james.feist@linux.intel.com,
        vernon.mauery@linux.intel.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, BMC-SW@aspeedtech.com
Subject: Re: [PATCH 3/3] dt-bindings: Change the meaning of clock-frequency
Message-ID: <20201019212232.GA3619458@bogus>
References: <20201016062602.20014-1-billy_tsai@aspeedtech.com>
 <20201016062602.20014-4-billy_tsai@aspeedtech.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201016062602.20014-4-billy_tsai@aspeedtech.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Oct 16, 2020 at 02:26:02PM +0800, Billy Tsai wrote:
> Integration of the usage of msg-timing and addr-timing to clock-frequency.
> User can just set it to adjust the peci work efficient.

You're breaking the ABI changing this.

> 
> Signed-off-by: Billy Tsai <billy_tsai@aspeedtech.com>
> ---
>  .../devicetree/bindings/peci/peci-aspeed.yaml | 56 +++++++++----------
>  1 file changed, 28 insertions(+), 28 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/peci/peci-aspeed.yaml b/Documentation/devicetree/bindings/peci/peci-aspeed.yaml
> index 0f5c2993fe9b..7c6c895784af 100644
> --- a/Documentation/devicetree/bindings/peci/peci-aspeed.yaml
> +++ b/Documentation/devicetree/bindings/peci/peci-aspeed.yaml
> @@ -40,31 +40,33 @@ properties:
>      maxItems: 1
>  
>    clock-frequency:
> -    # Operation frequency of PECI controller in units of Hz.
> -    minimum: 187500
> -    maximum: 24000000
> -
> -  msg-timing:
> -    description: |
> -      Message timing negotiation period. This value will determine the period
> -      of message timing negotiation to be issued by PECI controller. The unit
> -      of the programmed value is four times of PECI clock period.
> -    allOf:
> -      - $ref: /schemas/types.yaml#/definitions/uint32
> -      - minimum: 0
> -        maximum: 255
> -        default: 1
> -
> -  addr-timing:
> -    description: |
> -      Address timing negotiation period. This value will determine the period
> -      of address timing negotiation to be issued by PECI controller. The unit
> -      of the programmed value is four times of PECI clock period.
> -    allOf:
> -      - $ref: /schemas/types.yaml#/definitions/uint32
> -      - minimum: 0
> -        maximum: 255
> -        default: 1
> +    # The bit frequency of PECI negotiation stage in units of Hz.
> +    # Driver will calculate the best divisor setting of msg-timing and
> +    # addr-timing to meet the value.

Use 'description' rather than comments.

> +    minimum: 2000
> +    maximum: 2000000
> +
> +  # msg-timing:
> +  #   description: |
> +  #     Message timing negotiation period. This value will determine the period
> +  #     of message timing negotiation to be issued by PECI controller. The unit
> +  #     of the programmed value is four times of PECI clock period.
> +  #   allOf:
> +  #     - $ref: /schemas/types.yaml#/definitions/uint32
> +  #     - minimum: 0
> +  #       maximum: 255
> +  #       default: 1

Why is this commented out?

> +
> +  # addr-timing:
> +  #   description: |
> +  #     Address timing negotiation period. This value will determine the period
> +  #     of address timing negotiation to be issued by PECI controller. The unit
> +  #     of the programmed value is four times of PECI clock period.
> +  #   allOf:
> +  #     - $ref: /schemas/types.yaml#/definitions/uint32
> +  #     - minimum: 0
> +  #       maximum: 255
> +  #       default: 1
>  
>    rd-sampling-point:
>      description: |
> @@ -114,9 +116,7 @@ examples:
>              interrupts = <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>;
>              clocks = <&syscon ASPEED_CLK_GATE_REF0CLK>;
>              resets = <&syscon ASPEED_RESET_PECI>;
> -            clock-frequency = <24000000>;
> -            msg-timing = <1>;
> -            addr-timing = <1>;
> +            clock-frequency = <2000000>;
>              rd-sampling-point = <8>;
>              cmd-timeout-ms = <1000>;
>          };
> -- 
> 2.17.1
> 
