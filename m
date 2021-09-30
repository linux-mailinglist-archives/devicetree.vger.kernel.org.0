Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3EC8341D3A1
	for <lists+devicetree@lfdr.de>; Thu, 30 Sep 2021 08:54:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348395AbhI3G4G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Sep 2021 02:56:06 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:50694
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1348387AbhI3G4G (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 30 Sep 2021 02:56:06 -0400
Received: from mail-lf1-f70.google.com (mail-lf1-f70.google.com [209.85.167.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 306683F048
        for <devicetree@vger.kernel.org>; Thu, 30 Sep 2021 06:54:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632984863;
        bh=KCX4B1ULxSJnJGmYcLBUzwn6g7EB4GBQxWYASGCp2Is=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=UpDBBAr4N/54pMuWjeXBqd7aOV77Gxbln1Ic1lPXaTvBZzeruOOnlXldQaYj7QAx5
         S7nbznNSN8Fvm8jCYgSw8qb/ZZlzQGDOaz1Rwhk1QN4Zd1OQL+J91beHHJFAuIpgmL
         E6EsqpHNzjvzjx3e5N7st795Qwwz2k7hj0KwMkS13DdMBkjnQmnGM2/xURv9i4pIns
         RlMgRB9CxeBGCDy6drxV0+6NowFFpCSd6Fzkd1z1i4mImxFGFEkYysV+1pd8Lw7we+
         pyBJJHnPK1U2l3kQNJr3rdb6zIqkcyqHisptAnUoxj5uoUVFeeWxwNvTu4jDIS0+rA
         UuNB78F4A/FDQ==
Received: by mail-lf1-f70.google.com with SMTP id m2-20020ac24ac2000000b003f524eae63eso4689534lfp.10
        for <devicetree@vger.kernel.org>; Wed, 29 Sep 2021 23:54:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=KCX4B1ULxSJnJGmYcLBUzwn6g7EB4GBQxWYASGCp2Is=;
        b=2Y++R8GYXKJixMo13hFerUQ0awUcFX4Ovcm00E8ic3P+nYjIczbG+Ruw8c3y4S1d/p
         dgdzJlylH+RcpfQfXwUI1ysc9S+IpfV0wyAK5ATZ5yfOt5RPdUPdFBkWl1zfx7I5X9V9
         gzSwsTtHDY+48DoyApC5PDATXUM9aDy2+JyXSjLUtqPqjv3zUfls68qLVtCOUwngCULz
         ISmMBifuGUKoI0hI/FK9ZQTvsj/y1Fv0xAzvshjdodPhqT65/7X87v7QzgH780sySzjX
         qRSQhlEnbdko42q90I6aQ87lB08Zk0pxARTfNLyydtvtv5COIY3UtIUb6o66qTl4hsvX
         rKUQ==
X-Gm-Message-State: AOAM53214Uf2W4TFrQLka1c3/D0TrKI4gPrXubMhrj/8pgLH1DJx+LZC
        U5MroDkcxPblMEbfjZbp2SPiVVezrbBgHoJw618kzCvpA2ML1F0wT6DCZ5IL+Ffp0OaQppinsE1
        pfQ+t85QRNvzEBdlqLvm/4Ag37qW89eleeNv+dPU=
X-Received: by 2002:ac2:490d:: with SMTP id n13mr4259466lfi.185.1632984862538;
        Wed, 29 Sep 2021 23:54:22 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwrmRbYqXV+I780EDfAqCAWVZA/cjP5V5bydrNmIPMKftKUdBdaVNtZ1rYRknaoYPFzK5QKbg==
X-Received: by 2002:ac2:490d:: with SMTP id n13mr4259455lfi.185.1632984862370;
        Wed, 29 Sep 2021 23:54:22 -0700 (PDT)
Received: from [192.168.0.197] ([193.178.187.25])
        by smtp.gmail.com with ESMTPSA id d16sm263276lfv.164.2021.09.29.23.54.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Sep 2021 23:54:22 -0700 (PDT)
Subject: Re: [PATCH v1 1/2] dt-bindings: memory: tegra20: emc: Document
 optional LPDDR properties
To:     Dmitry Osipenko <digetx@gmail.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-tegra@vger.kernel.org
References: <20210929200305.4245-1-digetx@gmail.com>
 <20210929200305.4245-2-digetx@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <2df06f23-1a5e-f6e9-8e2c-0bb4c93fe23c@canonical.com>
Date:   Thu, 30 Sep 2021 08:54:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210929200305.4245-2-digetx@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/09/2021 22:03, Dmitry Osipenko wrote:
> Some Tegra20 boards don't use RAM code for the memory chip identification
> and the identity information should read out from LPDDR chip in this case.
> Document new optional generic LPDDR properties that will be used for the
> memory chip identification if RAM code isn't provided.

Please mention how they are going to be used. Naively I would assume
that these new properties describe the RAM you have. However it seems
you do not use them to configure the device but to compare with the
device. Why do you need them?

> 
> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> ---
>  .../nvidia,tegra20-emc.yaml                   | 43 +++++++++++++++++--
>  1 file changed, 40 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra20-emc.yaml b/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra20-emc.yaml
> index cac6842dc8f1..6d01b1bf6304 100644
> --- a/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra20-emc.yaml
> +++ b/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra20-emc.yaml
> @@ -158,6 +158,46 @@ patternProperties:
>          description:
>            Value of RAM_CODE this timing set is used for.
>  
> +      jedec,lpddr-manufacturer-id:
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        description:
> +          Unique manufacturer ID of SDRAM chip this timing set is used for.
> +          See MR5 description in JEDEC LPDDR2 specification (JESD209-2).
> +
> +      jedec,lpddr-revision-id1:
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        description:
> +          Revision 1 value of SDRAM chip this timing set is used for.
> +          See MR6 description in chip vendor specification.
> +
> +      jedec,lpddr-revision-id2:
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        description:
> +          Revision 2 value of SDRAM chip this timing set is used for.
> +          See MR7 description in chip vendor specification.
> +
> +      jedec,lpddr-density-mbits:
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        description:
> +          Density in megabits of SDRAM chip this timing set is used for.
> +          See MR8 description in JEDEC LPDDR2 specification.
> +
> +      jedec,lpddr-io-width-bits:
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        description:
> +          IO bus width in bits of SDRAM chip this timing set is used for.
> +          See MR8 description in JEDEC LPDDR2 specification.
> +
> +      jedec,lpddr-type:
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        description:
> +          LPDDR type which corresponds to a number of words SDRAM pre-fetches
> +          per column request that this timing set is used for.
> +          See MR8 description in JEDEC LPDDR2 specification.
> +        enum:
> +          - 4 # S4 (4 words prefetch architecture)
> +          - 2 # S2 (2 words prefetch architecture)

I think instead you should use generic lpddr{2,3} bindings - have a
separate node and reference it via a phandle.

Best regards,
Krzysztof
