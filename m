Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C8E46610443
	for <lists+devicetree@lfdr.de>; Thu, 27 Oct 2022 23:19:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235028AbiJ0VTJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Oct 2022 17:19:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236040AbiJ0VS6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Oct 2022 17:18:58 -0400
Received: from mail-qt1-x836.google.com (mail-qt1-x836.google.com [IPv6:2607:f8b0:4864:20::836])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E61244F64D
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 14:18:57 -0700 (PDT)
Received: by mail-qt1-x836.google.com with SMTP id w29so2249326qtv.9
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 14:18:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AyXBa6ykDLTrVOwX6VHEAyki/oYnov9OaiYlYqb8IuQ=;
        b=pLbMqe+4UWVeCU6n0FJ9i9jlJOD+Bls99Si1E7DHDiqf8j6gvU35pTzDYLXp8xZdjh
         3BNJIBTjmye5HlRMm7uIgkTr10aZXEA3bs0huAZsaaz0zEfSAojDNueGwBjEcNS73hqh
         w5z8oSi0fbd6X9qnI2zf7lVucqm/pVOv31sSEDnnCDs7mrqfnpL9aBIscV1mK1DdhAU2
         oWPkP/zMnYDP6gdWqD7zVIx8x10RrKXhv1jpMeVfMJO9Lw5A+97RRbgcqvEDZElleWkC
         QZ15KeBuVnIi67gAneE/CfvS90cXMmZWVISethneoUojTxBQ9h0lipW1xl4B6IJIba50
         0Q1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AyXBa6ykDLTrVOwX6VHEAyki/oYnov9OaiYlYqb8IuQ=;
        b=UEFnrqwp6v2BayLOLZHNhpFXdg+2VSdoTDN2YVpKECG1+UNmLxAFlDQk5D9ULmYMxi
         83Hzj2K9hjYYNxkp9zGVxI+ubGUYRBXjK3aHmL+ENVDHw2put14TG431CxUAzNNbRtOa
         eIisNknvgZpLzUJS7VscATLfSUKh3B3uKqsDwvMU6M4FjcLSIUCXBPXe1eI4hr+LyMqe
         M82NtqRQdIxQ33Vw6NfPUanA2wAAQVx3nKxHarA6+zkgZVkNE/OtbBEDDvk6eh3EiMB2
         7rX/TzQbJmUqS9sLlL1ye9B8wzvMkOjIlWMUQiYuGphgCoY+aXokGpB7UqAWOMbKmwQZ
         JGPg==
X-Gm-Message-State: ACrzQf1cH1lZgzhykAydH1zFYp2cNtU4jDYTb2x/PekW/6XNtqF6E8yB
        sFxsYPp44boER2FutJD3ewSXiw==
X-Google-Smtp-Source: AMsMyM7qg/2i5QkK7AtijeQ9c5/J9SbLD38n65mxcQcdiryVkttLrlIpdZok1V/PQcQekw6KD8lc1g==
X-Received: by 2002:ac8:5981:0:b0:39c:e03e:86ed with SMTP id e1-20020ac85981000000b0039ce03e86edmr43673054qte.503.1666905535643;
        Thu, 27 Oct 2022 14:18:55 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id j8-20020a05620a288800b006fa00941e9dsm995562qkp.136.2022.10.27.14.18.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Oct 2022 14:18:55 -0700 (PDT)
Message-ID: <4579404d-b3f7-8342-6704-2644f5cd489d@linaro.org>
Date:   Thu, 27 Oct 2022 17:18:53 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH V1 1/2] dt-bindings: PCI: tegra234: Add ECAM support
Content-Language: en-US
To:     Vidya Sagar <vidyas@nvidia.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, thierry.reding@gmail.com,
        jonathanh@nvidia.com, mperttunen@nvidia.com
Cc:     devicetree@vger.kernel.org, linux-tegra@vger.kernel.org,
        linux-kernel@vger.kernel.org, kthota@nvidia.com,
        mmaddireddy@nvidia.com, sagar.tv@gmail.com
References: <20221027051214.22003-1-vidyas@nvidia.com>
 <20221027051214.22003-2-vidyas@nvidia.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221027051214.22003-2-vidyas@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/10/2022 01:12, Vidya Sagar wrote:
> Add support for ECAM aperture for Tegra234.
> 
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
>  .../devicetree/bindings/pci/nvidia,tegra194-pcie.yaml  | 10 ++++++++--
>  .../devicetree/bindings/pci/snps,dw-pcie.yaml          |  2 +-
>  2 files changed, 9 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.yaml b/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.yaml
> index 75da3e8eecb9..15cc2d2055bb 100644
> --- a/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.yaml
> @@ -27,6 +27,7 @@ properties:
>        - nvidia,tegra234-pcie
>  
>    reg:
> +    minItems: 4
>      items:
>        - description: controller's application logic registers
>        - description: configuration registers
> @@ -35,13 +36,17 @@ properties:
>            available for software access.
>        - description: aperture where the Root Port's own configuration
>            registers are available.
> +      - description: aperture to access the configuration space through ECAM.
> +          This is applicable only for Tegra234.

Then restrict it per compatible in allOf

>  

Best regards,
Krzysztof

