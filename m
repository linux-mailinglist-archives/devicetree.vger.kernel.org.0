Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9D20B4AAEFE
	for <lists+devicetree@lfdr.de>; Sun,  6 Feb 2022 12:33:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234030AbiBFLdc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 6 Feb 2022 06:33:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34930 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232164AbiBFLdb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 6 Feb 2022 06:33:31 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41204C06173B
        for <devicetree@vger.kernel.org>; Sun,  6 Feb 2022 03:33:31 -0800 (PST)
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 035AB40039
        for <devicetree@vger.kernel.org>; Sun,  6 Feb 2022 11:33:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644147210;
        bh=ZiDU9Eu3x+M8fVHZBfeMoqgYec/dSCr3pkNCtmbnF0Y=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=vt9a0OJwHTP5YJBNR4cI0KJmrPJZbHdfA19zAi95Km9ElnUYKVrrVL46KhjP6GEzD
         tfpVKAuCyCl/qhRevWgtSb0DhuK1f0GyXO6+7v+maXLf35ITq3xVNotyWFptWRYMsk
         PEvM4K10M/NXOL2zuOxLziC30D3JHZBbPn3ErxRFGGYVFQzjKj0p8U8qHKvXP1vYgU
         uiMs4VBbppatnwo8jH1es0W5e9Rn2SxhuzVbIcCTyXaPT98r+y6KglKdDlTcg44Qwb
         CCZdzjXuAxHeVb5gN3IgSlBj0878CkqMj3vUacLXPhU0goC2nEnUQvZuioDMVVGSlJ
         k/DFhBfwoM9lg==
Received: by mail-ed1-f71.google.com with SMTP id 30-20020a508e5e000000b0040f6642e814so7441edx.19
        for <devicetree@vger.kernel.org>; Sun, 06 Feb 2022 03:33:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ZiDU9Eu3x+M8fVHZBfeMoqgYec/dSCr3pkNCtmbnF0Y=;
        b=xk9DsfnK023lkC6zYZRxyhjUGNTMKNATZI597ndVHX2sChBW9Jzv7USexYolqb2r1v
         ppaA7cVSYFnQnnXdja64ssgMLnO9TEXqIK2ziGvz57Vg8V1SWR1V93Vre3/cR9Yx4iQp
         r0RADGvhm0qA8nLeidguT7sjUS7SoA0wYgFv811U8x7EAJ1lW3lP0Hh4HeD+OIQCkdK7
         jqUVKjnyJb8+y4Iea6BqbvjuIkm1uW7L8bS+UtL8q4WRGjyldI5bpNnDyKDnscBxcehA
         eT0oJRwhF8MN+P63gdSg0IyjgMn5aSuT52l4MG3x3NMYA3X1pVItJ3IA20AZ2abid0dB
         Kmtg==
X-Gm-Message-State: AOAM531BwcybX3UaYuFgcjNfiWVKOUeEgr9iRYGlHopYnuPycCRzFHUu
        IE68NNHN8aPiaU+jpy4R5sGZzrHEj/JkP/Im4tFkOLCt+kgxXFhwRo+qpwowV7n8dMKckLD4naL
        3vsQp4cnrQUPLeM737ATSdoOxQ2HlL4NWk4HJ91I=
X-Received: by 2002:a50:fc06:: with SMTP id i6mr6183194edr.89.1644147209694;
        Sun, 06 Feb 2022 03:33:29 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwy3U1ftL3UccDBSq+2ALlKh+KNAz5yKkEnqRtTK4p/TCdyp5nH+nET54fdFXxmYZ3tk3uTmg==
X-Received: by 2002:a50:fc06:: with SMTP id i6mr6183183edr.89.1644147209552;
        Sun, 06 Feb 2022 03:33:29 -0800 (PST)
Received: from [192.168.0.83] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id ck7sm1294186ejb.44.2022.02.06.03.33.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Feb 2022 03:33:28 -0800 (PST)
Message-ID: <4e2bec9b-4759-b699-fa7b-974f5f43da9d@canonical.com>
Date:   Sun, 6 Feb 2022 12:33:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH V1 03/10] dt-bindings: memory: Add Tegra234 PCIe memory
Content-Language: en-US
To:     Vidya Sagar <vidyas@nvidia.com>, bhelgaas@google.com,
        lorenzo.pieralisi@arm.com, robh+dt@kernel.org,
        thierry.reding@gmail.com, jonathanh@nvidia.com
Cc:     kishon@ti.com, vkoul@kernel.org, kw@linux.com,
        p.zabel@pengutronix.de, mperttunen@nvidia.com,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, kthota@nvidia.com,
        mmaddireddy@nvidia.com, sagar.tv@gmail.com
References: <20220205162144.30240-1-vidyas@nvidia.com>
 <20220205162144.30240-4-vidyas@nvidia.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220205162144.30240-4-vidyas@nvidia.com>
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

On 05/02/2022 17:21, Vidya Sagar wrote:
> Add the memory client and stream ID definitions for the PCIe hardware
> found on Tegra234 SoCs.

I could not find dependencies or merging strategy in cover letter.
Please always describe it, so I don't have to go through all the patches
to figure this out.

> 
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
>  include/dt-bindings/memory/tegra234-mc.h | 64 ++++++++++++++++++++++++
>  1 file changed, 64 insertions(+)
> 
> diff --git a/include/dt-bindings/memory/tegra234-mc.h b/include/dt-bindings/memory/tegra234-mc.h
> index 2662f70c15c6..60017684858a 100644
> --- a/include/dt-bindings/memory/tegra234-mc.h
> +++ b/include/dt-bindings/memory/tegra234-mc.h
> @@ -7,15 +7,53 @@
>  #define TEGRA234_SID_INVALID		0x00
>  #define TEGRA234_SID_PASSTHROUGH	0x7f
>  
> +/* NISO0 stream IDs */
> +#define TEGRA234_SID_PCIE0	0x12U
> +#define TEGRA234_SID_PCIE4	0x13U
> +#define TEGRA234_SID_PCIE5	0x14U
> +#define TEGRA234_SID_PCIE6	0x15U
> +#define TEGRA234_SID_PCIE9	0x1FU
>  
>  /* NISO1 stream IDs */
>  #define TEGRA234_SID_SDMMC4	0x02
> +#define TEGRA234_SID_PCIE1	0x5U
> +#define TEGRA234_SID_PCIE2	0x6U
> +#define TEGRA234_SID_PCIE3	0x7U
> +#define TEGRA234_SID_PCIE7	0x8U
> +#define TEGRA234_SID_PCIE8	0x9U
> +#define TEGRA234_SID_PCIE10	0xBU

I don't see usage of these...

>  #define TEGRA234_SID_BPMP	0x10
>  
>  /*
>   * memory client IDs
>   */
>  
> +/* PCIE6 read clients */
> +#define TEGRA234_MEMORY_CLIENT_PCIE6AR 0x28

I see you use them in DTS but not in mc driver. Don't you miss anything
here?

> +/* PCIE6 write clients */
> +#define TEGRA234_MEMORY_CLIENT_PCIE6AW 0x29
> +/* PCIE7 read clients */
> +#define TEGRA234_MEMORY_

Best regards,
Krzysztof
