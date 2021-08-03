Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0B7123DF59A
	for <lists+devicetree@lfdr.de>; Tue,  3 Aug 2021 21:28:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239727AbhHCT3D (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Aug 2021 15:29:03 -0400
Received: from mail-io1-f51.google.com ([209.85.166.51]:33302 "EHLO
        mail-io1-f51.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230376AbhHCT3C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Aug 2021 15:29:02 -0400
Received: by mail-io1-f51.google.com with SMTP id n19so25649172ioz.0
        for <devicetree@vger.kernel.org>; Tue, 03 Aug 2021 12:28:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=KijutuyKjQhyCPReYrYottzbsrsP6UQJpji0JfhX/zc=;
        b=BOLkp3KkBHmAMaejWUpX6bn8QjoQOJjIp8jGj7/mT+dw7cMxdiwkxdPXQ6Sc3SmmOU
         Qza1SdvcNtnnwyY2HYaOwdLKW9u5ZLpAHYD4slxjwkPGYFnuoeOAFyDX0mLFPtTKYrAO
         93jKqMdZA//vgAW8YIt1I8yfyLJNfiLcvDAYJ++hExEIWRN0tbUNVjmc31djfq0m7qRH
         7vPysXjU6hYzI/f9kbof1OSw45O+2K43uBatVmHfCS7Trjvj0moH9pfJrOFgxZW165tF
         q60uIIpaMckDYN2fwZ77heGatyOlgW5O9/b7aQu8AgmxkohAukUah7nK39t8LfCOsSTF
         vcgQ==
X-Gm-Message-State: AOAM530UOOG6tH3t6c4i43CNV1q8/ADfIbDb34ulGVVy7UwwS1oMagZ8
        xDpAhInjpNr9D/BLslkDvQ==
X-Google-Smtp-Source: ABdhPJwckxp6GO1lJfhysr6Nj5GmskVjkwEKpkrHDzkZz3Zf+94QtKRzL+ssasHtN9YWz8teL9Keig==
X-Received: by 2002:a05:6602:2057:: with SMTP id z23mr691316iod.29.1628018930273;
        Tue, 03 Aug 2021 12:28:50 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id b8sm7367543ilh.74.2021.08.03.12.28.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Aug 2021 12:28:49 -0700 (PDT)
Received: (nullmailer pid 3601939 invoked by uid 1000);
        Tue, 03 Aug 2021 19:28:47 -0000
Date:   Tue, 3 Aug 2021 13:28:47 -0600
From:   Rob Herring <robh@kernel.org>
To:     Suman Anna <s-anna@ti.com>
Cc:     Santosh Shilimkar <ssantosh@kernel.org>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Grzegorz Jaszczyk <grzegorz.jaszczyk@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: soc: ti: pruss: Add dma-coherent property
Message-ID: <YQmY7/OSHJxRkM5m@robh.at.kernel.org>
References: <20210730031901.26243-1-s-anna@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210730031901.26243-1-s-anna@ti.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 29, 2021 at 10:19:01PM -0500, Suman Anna wrote:
> Update the PRUSS schema file to include the dma-coherent property
> that indicates the coherency of the IP. The PRUSS IPs on 66AK2G
> SoCs do use this property.
> 
> Signed-off-by: Suman Anna <s-anna@ti.com>
> ---
> Hi Santosh,
> 
> This patch updates the PRUSS binding in preparation for adding the
> PRUSS nodes for 66AK2G SoCs. Without this, the dtbs_check would
> complain about the undefined dma-coherent property. Patch is top
> of the AM64 ICSSG binding update patch [1].

New required properties are not backwards compatible. You are kind of 
saying that here (not used yet?), but make that clear in the commit msg.

With that fixed,

Reviewed-by: Rob Herring <robh@kernel.org>

> 
> regards
> Suman
> 
> [1] https://patchwork.kernel.org/project/linux-arm-kernel/patch/20210623165032.31223-2-s-anna@ti.com/
> 
>  .../devicetree/bindings/soc/ti/ti,pruss.yaml  | 37 +++++++++++++------
>  1 file changed, 25 insertions(+), 12 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml b/Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml
> index 47d7fd24bc56..9d128b9e7deb 100644
> --- a/Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml
> +++ b/Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml
> @@ -85,6 +85,8 @@ properties:
>    dma-ranges:
>      maxItems: 1
>  
> +  dma-coherent: true
> +
>    power-domains:
>      description: |
>        This property is as per sci-pm-domain.txt.
> @@ -324,18 +326,29 @@ additionalProperties: false
>  # - interrupt-controller
>  # - pru
>  
> -if:
> -  properties:
> -    compatible:
> -      contains:
> -        enum:
> -          - ti,k2g-pruss
> -          - ti,am654-icssg
> -          - ti,j721e-icssg
> -          - ti,am642-icssg
> -then:
> -  required:
> -    - power-domains
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - ti,k2g-pruss
> +              - ti,am654-icssg
> +              - ti,j721e-icssg
> +              - ti,am642-icssg
> +    then:
> +      required:
> +        - power-domains
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - ti,k2g-pruss
> +    then:
> +      required:
> +        - dma-coherent
>  
>  examples:
>    - |
> -- 
> 2.32.0
> 
> 
