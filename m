Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9A9D059D3A0
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 10:22:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242645AbiHWIWF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Aug 2022 04:22:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54714 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243539AbiHWIVU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Aug 2022 04:21:20 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B3C46EF3E
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 01:12:41 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id q7so14941156lfu.5
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 01:12:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=/vigK6qq/VSnMGZD3qvyiRFz8b38AOySEVAg6pDNhBA=;
        b=RFBCAdoHZ9YMv6feZw2p+dKXHvS7VJyXLJAC37FpoFugc8t9U4xGQjxoxdGw/n84rT
         4hsUDanlR9I/nNG7Ke+u3mNarDeMfo2pIjETOghqK4hSKlXeEw1YTlTTANT/8fvWKxXI
         XdtzRBwuGqmKBim27k3bvhn8UzfuqHSwYl50LsPWvAK/PGPD7dV9vyXZLWB2v7nm2G85
         bCsT7RdUS6YTsVi6EYz0exRDvsamvo7KQCBtYgUnsk/s72pxbjtSB6TsJzyhKk5AEGFG
         TqeWtODrCPeiQfZXZfcpVljh2bp0DtlkzDtYGyQJvDgJoijDYO0lWMY+IizCnvd1xZY3
         zApQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=/vigK6qq/VSnMGZD3qvyiRFz8b38AOySEVAg6pDNhBA=;
        b=uYI4h6qyHFXonlqnSh7N2/Ok92MjeD4Ab3JLOjop83F2zWONWHSGg6ZTaLqHQh/xKP
         FFcbtfVLHmvUpID5YIjgCXAnRr5e+Ow50H2lL7wNktqwo5doBNHkNxVIfXSqUt4Vmwfg
         pQq8eCLPsPtp1mOD951JYfMpNS8f2ZGJ4+KTxVWzEIWYy3UU9ckaqPfPK8+zTiZta6nW
         vhM1p3UQeKGeDSmL2zM1NERarLZFoUdu25dSU/EFkltft1Wzqq6sf8nAu9ofELeAVb1s
         GgMVFFiS20HOFmy/Z/9z64GmZr8hQwuSAnO/CKGIFZJNyook+usuXz15BGtPoiu58Wx6
         XFiw==
X-Gm-Message-State: ACgBeo2Yh8Ix52JAf1r91H5ZyODJUs3K+mxb64nwlHl1mfmvB5ExTjcq
        U9Exysq8z2HuZ841fzwXJXGwFQ==
X-Google-Smtp-Source: AA6agR79DsmlUZ/9xAycaPCXqchxKk4wNWA1oJ8FWND3kImoOKO9kguepVXP62pxY0gsiRfTp2LNoA==
X-Received: by 2002:a05:6512:6c4:b0:491:c8f9:1994 with SMTP id u4-20020a05651206c400b00491c8f91994mr7719673lff.179.1661242350511;
        Tue, 23 Aug 2022 01:12:30 -0700 (PDT)
Received: from [192.168.0.11] (89-27-92-210.bb.dnainternet.fi. [89.27.92.210])
        by smtp.gmail.com with ESMTPSA id g6-20020a2ea4a6000000b0025e5631194dsm2240520ljm.21.2022.08.23.01.12.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Aug 2022 01:12:29 -0700 (PDT)
Message-ID: <0bda4ff9-fc08-77f2-0e06-7469dcaec6d8@linaro.org>
Date:   Tue, 23 Aug 2022 11:12:28 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 02/13] dt-bindings: memory: snps: Add Baikal-T1 DDRC
 support
Content-Language: en-US
To:     Serge Semin <Sergey.Semin@baikalelectronics.ru>,
        Michal Simek <michal.simek@xilinx.com>,
        Borislav Petkov <bp@alien8.de>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Tony Luck <tony.luck@intel.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Manish Narani <manish.narani@xilinx.com>
Cc:     Serge Semin <fancer.lancer@gmail.com>,
        Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>,
        Michail Ivanov <Michail.Ivanov@baikalelectronics.ru>,
        Pavel Parkhomenko <Pavel.Parkhomenko@baikalelectronics.ru>,
        Punnaiah Choudary Kalluri 
        <punnaiah.choudary.kalluri@xilinx.com>,
        Dinh Nguyen <dinguyen@kernel.org>,
        James Morse <james.morse@arm.com>,
        Robert Richter <rric@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-edac@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220822191957.28546-1-Sergey.Semin@baikalelectronics.ru>
 <20220822191957.28546-3-Sergey.Semin@baikalelectronics.ru>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220822191957.28546-3-Sergey.Semin@baikalelectronics.ru>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/08/2022 22:19, Serge Semin wrote:
> Baikal-T1 DDR controller is based on the DW uMCTL2 DDRC IP-core v2.51a
> with up to DDR3 protocol capability and 32-bit data bus + 8-bit ECC. There
> are individual IRQs for each ECC and DFI events.The dedicated scrubber

Missing space before "The".

> clock source is absent since it's fully synchronous to the core clock.

You need allOf:if-then restricting this per variant.

> In addition to that the DFI-DDR PHY CSRs can be accessed via a separate
> registers space.
> 
> Signed-off-by: Serge Semin <Sergey.Semin@baikalelectronics.ru>
> ---
>  .../memory-controllers/snps,dw-umctl2-ddrc.yaml        | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/memory-controllers/snps,dw-umctl2-ddrc.yaml b/Documentation/devicetree/bindings/memory-controllers/snps,dw-umctl2-ddrc.yaml
> index 8db92210cfe1..899a6c5f9806 100644
> --- a/Documentation/devicetree/bindings/memory-controllers/snps,dw-umctl2-ddrc.yaml
> +++ b/Documentation/devicetree/bindings/memory-controllers/snps,dw-umctl2-ddrc.yaml
> @@ -26,6 +26,7 @@ properties:
>      enum:
>        - snps,ddrc-3.80a
>        - xlnx,zynqmp-ddrc-2.40a
> +      - baikal,bt1-ddrc

Messed order. Don't add stuff at the end, but in alphabetical order.

>  
>    interrupts:
>      description:
> @@ -49,7 +50,14 @@ properties:
>            enum: [ ecc_ce, ecc_ue, ecc_ap, ecc_sbr, dfi_e ]
>  
>    reg:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 2
> +
> +  reg-names:
> +    minItems: 1
> +    items:
> +      - const: umctl2
> +      - const: phy

You need allOf:if-then restricting this per variant.

Best regards,
Krzysztof
