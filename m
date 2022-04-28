Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CE95B512BB7
	for <lists+devicetree@lfdr.de>; Thu, 28 Apr 2022 08:37:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244175AbiD1Gku (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Apr 2022 02:40:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244158AbiD1Gkt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Apr 2022 02:40:49 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 867BD97BBB
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 23:37:34 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id l18so7528808ejc.7
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 23:37:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=vQuJemEQZtOClpOcehCv8HwJ99NWWFLzVezPd8GOsHU=;
        b=SQfA/qWnxaXhMdzN8fwO8LJSkhrZCgPApUc0W26KbVtHa1/bbo0ViFX+ofQKfo+5K/
         DFVWIQYwoenoZq+bVHlU6015EMsluuxImU3vbKX1j71idFjW61GaANiq9LKtROHzWGE0
         IH1XbG4wXxRNEv1zby59TG+Wqh1myUW5SPt3BPOQAAbxcOHXK4yIzZl0B5qEUCZmSSbf
         PJnKcvbwbmDhH/eRu9KMo+Fxz7IpZAKy7jC484/zJ0N2Lgka0SLfQBdc2yUgfqRy+8RJ
         74O33hF9OKmq0x/p5VikCLJbyKvxOhqn2heymD7ZFkT8DD0voR6Rmn/b3KViDePpg6Gf
         dbrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=vQuJemEQZtOClpOcehCv8HwJ99NWWFLzVezPd8GOsHU=;
        b=xYVoIBN3iXL17LjzrcdSmw6ikK4MFx9mxkt5esy8qJX7FwSeLRZvqvMA/DhcqJxTUe
         q+xmfy3w1RdQBKVxKxCfITqDazdXXtQzzfOPHPpio3WS5+8tX8ZqvMOd64fstwKZVL0N
         +oRT4KnBBF16BbbdJcN5em7gLxTQ2t8Ky8mc+PhbG7VihrnA0VtMa3PyLD6vWPB0ML34
         c5OvJBB2X23NhnLBPMnogLesjgJyVqPPiCisRqHEUo+4z5KXwBNoXVpCrhLBrUlasYOe
         NWV0ZI77lu1bmX44omv2WrhTKY7MtEu1eMPtUeq0KOy+muBzwo8HpJPzbmmNhnlst3nD
         dhRw==
X-Gm-Message-State: AOAM5316ixgDDBoJvuW6hjpWX7rSGN9sMeYV0RxN+P8DY5FnRfeWRfil
        h3u+z0PHXirWySKBHO7CzLFAQw==
X-Google-Smtp-Source: ABdhPJwIDG6JJQkX2j+dOnGWCEo3T5++ulatebavZxvudL1ZgszkW2TlVKRE4wi1f/ha07iHzj1kJQ==
X-Received: by 2002:a17:907:9482:b0:6da:8ad6:c8b5 with SMTP id dm2-20020a170907948200b006da8ad6c8b5mr29709648ejc.372.1651127853141;
        Wed, 27 Apr 2022 23:37:33 -0700 (PDT)
Received: from [192.168.0.159] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id u10-20020a1709060b0a00b006f38412b2d0sm6224668ejg.171.2022.04.27.23.37.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Apr 2022 23:37:32 -0700 (PDT)
Message-ID: <ea6ccec6-81a3-b22d-46db-c31a9f1e85f3@linaro.org>
Date:   Thu, 28 Apr 2022 08:37:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [RFC/RFT v2 05/11] dt-bindings: pci: add bifurcation option to
 Rockchip DesignWare binding
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
 <20220426132139.26761-6-linux@fw-web.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220426132139.26761-6-linux@fw-web.de>
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
> Add bifurcation property for splitting PCIe lanes.
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
>  Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> index bc0a9d1db750..a992970e8b85 100644
> --- a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> @@ -74,6 +74,8 @@ properties:
>    reset-names:
>      const: pipe
>  
> +  bifurcation: true
> +

Does not look like standard property. Is it already defined somewhere?
All non-standard properties need vendor, type and description.


Best regards,
Krzysztof
