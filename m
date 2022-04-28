Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F2656512BA1
	for <lists+devicetree@lfdr.de>; Thu, 28 Apr 2022 08:33:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244024AbiD1Ggo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Apr 2022 02:36:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244059AbiD1Ggn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Apr 2022 02:36:43 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 021BF8D6BD
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 23:33:29 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id j6so7483756ejc.13
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 23:33:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=rozerKyB/C5qipfTZh/u0vAMNYveH4wCpbPpnEpmk5I=;
        b=jID8SkbjZdvNaCihTEHL+AMMFHP8eC2RUy+QYH0Cg2l71tQhaM/iWrNs7C5o3qDqxn
         bTv0i80aWbxxhIhvo6sNhYWidErZNyr0Bl/0H3H3TrZU28SyaXVryV8u/yrRMoz2f1iU
         O+WdtZPfP1+TyhT74jiQXnp8JZ1SQiklm9FxMG4QOoFPLPYoDBWtJ72jj9V+PormGVKK
         22OZ/GCpaIrPvsQFU6ORR2C5qmbnmsDRkTPfYDmdhXKnzVpx30c+TMcFv8mxeNvQ6xqe
         FGR9qcp8WNEBl9yAS7LyYOGBXZoQVziny4iH/LB/EpP0ut8Z+PNGfSYBVmUhSAcctIri
         SYPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=rozerKyB/C5qipfTZh/u0vAMNYveH4wCpbPpnEpmk5I=;
        b=2CP8l0s/M7j0bObXCINoW4Taxhvxv8VHbrx2MNx48BTiVM8c9/+ijOL45ZSqzRPwUA
         YMmyURB/+up78RoPByclxTIOd9JrWbjR/1GIrfTNHH9HNprxYtKqDOd7Adeiupq+yqvj
         fkkYSPJUak5oStywbvrABfhSTvfBG6B5RLd5J8nJy4WNbpsF3excHdZZcOSGLwZr3Y59
         GuTLRear/3G4uuFuOgDGZJixIIy4aoMwYfDb25mxrq7IvRKZO4jpticEp9g0R8fU0vzP
         VqQLkYsxJ6YVqyhMaCa05XQ/uTD7txdWuTQCw4pibPTBiMLFH+ROWwEfyEgELhY5Ur1M
         9rug==
X-Gm-Message-State: AOAM531M2ZgipalPYbV/VXzuo4ACzOZrzqjAy3rAPdPhONRgmzZbzVho
        +cmrCPaVk0CRLC6p27lJzTi5ZA==
X-Google-Smtp-Source: ABdhPJx80NdRMCudydCbEj21NDTT0qWVklkeluJPZzk7stNXaL45hh7VHzsiVKCWV2mZ3JL3lXSYaA==
X-Received: by 2002:a17:907:6d83:b0:6f3:adf4:9817 with SMTP id sb3-20020a1709076d8300b006f3adf49817mr12821838ejc.491.1651127607580;
        Wed, 27 Apr 2022 23:33:27 -0700 (PDT)
Received: from [192.168.0.159] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id s8-20020aa7cb08000000b0042617ba638csm966354edt.22.2022.04.27.23.33.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Apr 2022 23:33:26 -0700 (PDT)
Message-ID: <fc26c920-2eb1-3324-227d-d347304002d2@linaro.org>
Date:   Thu, 28 Apr 2022 08:33:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [RFC/RFT v2 02/11] dt-bindings: soc: grf: add
 pcie30-{phy,pipe}-grf
Content-Language: en-US
To:     Frank Wunderlich <linux@fw-web.de>,
        linux-rockchip@lists.infradead.org
Cc:     Frank Wunderlich <frank-w@public-files.de>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Johan Jonker <jbx6244@gmail.com>,
        Peter Geis <pgwipeout@gmail.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org
References: <20220426132139.26761-1-linux@fw-web.de>
 <20220426132139.26761-3-linux@fw-web.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220426132139.26761-3-linux@fw-web.de>
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

On 26/04/2022 15:21, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Add compatibles for PCIe v3 General Register Files.
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> 
> ---
> changes in v2:
> - add soc-part to pcie3-phy-grf
> ---
>  Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> index 3be3cfd52f7b..4564ff0bfd7a 100644
> --- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> +++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> @@ -14,6 +14,9 @@ properties:
>      oneOf:
>        - items:
>            - enum:
> +              - rockchip,rk3568-pcie3-phy-grf
> +              - rockchip,rk3588-pcie3-phy-grf
> +              - rockchip,rk3588-pcie3-pipe-grf

Order is now messed up.

>                - rockchip,rk3288-sgrf
>                - rockchip,rk3566-pipe-grf
>                - rockchip,rk3568-usb2phy-grf


Best regards,
Krzysztof
