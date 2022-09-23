Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 583645E7732
	for <lists+devicetree@lfdr.de>; Fri, 23 Sep 2022 11:32:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230369AbiIWJcR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Sep 2022 05:32:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230282AbiIWJbk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Sep 2022 05:31:40 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D88A18B17
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 02:31:15 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id s6so18881091lfo.7
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 02:31:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date;
        bh=pdmbBxIKfPVGIvuSyHfzNHKsTrOXftxMrkx8VpxkfuE=;
        b=MmVPy+BbsyEQEtPKGE0gCC/oMi86oWkulGHBk9mTUfvQQ2u7fx7HddKW3fGMfHvNcN
         BCYQaTXvNSfTvpx84tW8zoDfNh1ADmMvkAX3oIyXY8abL5L4mC6XbQTKem32jLebSdDU
         qO9/x3akg+PXY+sDBN/nCRJDWY5t7rbo8X5axWsRedEhZ3bwOr2jKWNYSOTdSl9kKCDe
         CLHa9Je+SZAcPcFcLTSurzMRL6BUt4O6FxQc77FSm1kdIBrLfmj3IPtKM4ilheh96tw7
         /yw1H2HRBBjs+S69I/dl11Z+svLLg2U4X7pN5KjNcpZrXW7boAyAzFN8s02dXmFAvt1d
         2UfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=pdmbBxIKfPVGIvuSyHfzNHKsTrOXftxMrkx8VpxkfuE=;
        b=2bhnGWKHV4CiiLCqLD5MHWQg7+p2GFrFSbg4ngrqbj60fbrUQPH3gDJs0p85ojVeo7
         YS4giupoCW4lydiyeOQkM5N7ievD1qr6Ij29xQSTUuPW7ASSTHYzJxutEXOkulWwwRjC
         cJu6PCWTza2jLg04RsGY83Nxm3WXnceE/eYqYgZcrwe9sDvHyXsOnA7+KLgPCvnW0gVO
         7JvqwV33MlqUahkm8KXyIYlONjSWgJRwlQipf+kNZ7SvKAdDNaHeD7ssFsTfsXd8xJpm
         Z195aE/bvG+yjisO9oGCk2zbjMY5n64x+S13hAgICW4oFYx/F/4GY0Wg4ROpZxFpJDRj
         qfyg==
X-Gm-Message-State: ACrzQf2D/Yuf3JeV0lR18pKY1jhZdcNTkJgabd1r7xpDxIQ/tr/eVpR0
        6buijSQp11zhw+V03Ppn4GLGfA==
X-Google-Smtp-Source: AMsMyM7tAtJ8vv18oeB3qlro/q+cKcjbVkO5Mk1xYgz2O0y6QP/M/rUNJvEXAXdk0sewCksXNUw/Xg==
X-Received: by 2002:a05:6512:3b0a:b0:49a:7ce8:c450 with SMTP id f10-20020a0565123b0a00b0049a7ce8c450mr3146539lfv.231.1663925473982;
        Fri, 23 Sep 2022 02:31:13 -0700 (PDT)
Received: from krzk-bin (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id e12-20020a05651236cc00b00499b19f23e8sm1359083lfs.279.2022.09.23.02.31.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Sep 2022 02:31:13 -0700 (PDT)
Date:   Fri, 23 Sep 2022 11:31:11 +0200
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Matt Ranostay <mranostay@ti.com>
Cc:     devicetree@vger.kernel.org, vigneshr@ti.com,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] dt-bindings: PCI: ti,j721e-pci-host: add interrupt
 controller definition
Message-ID: <20220923093111.hutfiwvk6ky7yqwq@krzk-bin>
References: <20220922204434.74764-1-mranostay@ti.com>
 <20220922204434.74764-2-mranostay@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220922204434.74764-2-mranostay@ti.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 22 Sep 2022 13:44:33 -0700, Matt Ranostay wrote:
> Add missing 'interrupt-controller' property and related subnodes to resolve
> the following warning:

You did not Cc respective maintainers on your patch. Use
scripts/get_maintainers.pl.


> 
> arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dtb: pcie@2910000: Unevaluated properties are not allowed ('interrupt-conroller' was unexpected)
>         From schema: Documentation/devicetree/bindings/pci/ti,j721e-pci-host.yaml
> 
> Signed-off-by: Matt Ranostay <mranostay@ti.com>
> ---
>  .../devicetree/bindings/pci/ti,j721e-pci-host.yaml  | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 

Running 'make dtbs_check' with the schema in this patch gives the
following warnings. Consider if they are expected or the schema is
incorrect. These may not be new warnings.

Note that it is not yet a requirement to have 0 warnings for dtbs_check.
This will change in the future.

Full log is available here: https://patchwork.ozlabs.org/patch/1681334


pcie@2900000: Unevaluated properties are not allowed ('interrupt-names', 'interrupts' were unexpected)
	arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dtb
	arch/arm64/boot/dts/ti/k3-j721e-sk.dtb

pcie@2910000: Unevaluated properties are not allowed ('interrupt-names', 'interrupts' were unexpected)
	arch/arm64/boot/dts/ti/k3-j7200-common-proc-board.dtb
	arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dtb
	arch/arm64/boot/dts/ti/k3-j721e-sk.dtb

pcie@2920000: Unevaluated properties are not allowed ('interrupt-names', 'interrupts' were unexpected)
	arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dtb
	arch/arm64/boot/dts/ti/k3-j721e-sk.dtb

pcie@2930000: Unevaluated properties are not allowed ('interrupt-names', 'interrupts' were unexpected)
	arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dtb
	arch/arm64/boot/dts/ti/k3-j721e-sk.dtb

pcie@f102000: Unevaluated properties are not allowed ('interrupt-names', 'interrupts' were unexpected)
	arch/arm64/boot/dts/ti/k3-am642-evm.dtb
	arch/arm64/boot/dts/ti/k3-am642-sk.dtb
