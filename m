Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 192975BF6E1
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 09:00:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229996AbiIUHAi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 03:00:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39896 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229729AbiIUHAh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 03:00:37 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 027087CAAF
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 00:00:34 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id f9so7668323lfr.3
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 00:00:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date;
        bh=N77a7ZWZLVSzuEs9PfFRQdKlqEhHQDfD8cUFuVw8P4g=;
        b=Xyx8LqSh3dS1UwjyAGKdGrxG3D5EFtUBqE++LL8PRxyFHtUTeucKdJFSNRUt/JZb3r
         Jl8cGDdEVjo+XRI9j3JGtmQGBBT8S9lHhiytA+XIP4Hp9Qm8884kEKjxgfEjFnpTfV1/
         lIu3VT7EAWLIbJWx2sHvkaXu045Touf9TBmWKzMb/Z6ydAaRTeBFV/+X4kac0UHXB6Xv
         mfpnxcn0xEPiqZJ3ysPiu9UKRMxADYsFk0MmX3IlP4zcqVD1YUDiASrMM3ROCEP1acks
         siFrsnE2va3zAWVJxKFJdYXcZilC39ZsJcXZVeijlaGh11OXkHXOZ70zhum1j0ceNrCX
         CbOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=N77a7ZWZLVSzuEs9PfFRQdKlqEhHQDfD8cUFuVw8P4g=;
        b=EgiCQSFmFNJ+avLXCDvjhcEZIVlc3tk0PUIpn9pGQIohJD+aqFw4RR0BiAeVlb1yob
         9AdYPnPCXWi6i2MaqbfM8kbdgJD4EVquDLWh6c/5bghapODFQLfleDUs63yGhLdsNVjO
         /HnFTjzaJpRy3XIPQUVMTmLUgJ7d0aGxJQvCTivAU70G6HoA3itGocnRdIvpfaqVL/H3
         bZBTikhQmtdj4p1RaCu8Pvx7rXKiK3VTnIXMw3qeFZStbmQAUqXliD7a346diHEwtU8P
         iV3JI6uqskNVxj/I7/cH3PqldFGEaMh5AYAMxq5mQD2EieYFDXKLEAMQnGJdr27TjFkg
         eomg==
X-Gm-Message-State: ACrzQf1IIaIXhTb1PW5UiHaGdCT7oZZUrim8+RSbfCV+C0ijCqN2Q7UQ
        MwFEQf+mJVOJXuDyikaTPdmBP0FpqfUMlg==
X-Google-Smtp-Source: AMsMyM6YXjbglb47123EEs+0O1+bBUj4UyJq6W40nB5nsY1TNa7SX9g/bDI5Ncskx5QFc2gfNOf8EQ==
X-Received: by 2002:a05:6512:1088:b0:49f:c019:a3ae with SMTP id j8-20020a056512108800b0049fc019a3aemr4120639lfg.332.1663743632337;
        Wed, 21 Sep 2022 00:00:32 -0700 (PDT)
Received: from krzk-bin (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id c11-20020a056512074b00b0049aa7a56715sm301294lfs.267.2022.09.21.00.00.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Sep 2022 00:00:31 -0700 (PDT)
Date:   Wed, 21 Sep 2022 09:00:29 +0200
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Konstantin Aladyshev <aladyshev22@gmail.com>
Cc:     Arnd Bergmann <arnd@arndb.de>, Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>,
        Rob Herring <robh+dt@kernel.org>, soc@kernel.org,
        Olof Johansson <olof@lixom.net>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] ARM: dts: aspeed: Add AMD DaytonaX BMC
Message-ID: <20220921070029.a5beb5ug6jb2jex3@krzk-bin>
References: <20220920165404.14099-1-aladyshev22@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220920165404.14099-1-aladyshev22@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 20 Sep 2022 19:54:02 +0300, Konstantin Aladyshev wrote:
> Add initial version of device tree for the BMC in the AMD DaytonaX
> platform.
> 
> AMD DaytonaX platform is a customer reference board (CRB) with an
> Aspeed ast2500 BMC manufactured by AMD.
> 
> Signed-off-by: Konstantin Aladyshev <aladyshev22@gmail.com>
> ---
>  .../bindings/arm/aspeed/aspeed.yaml           |   1 +
>  arch/arm/boot/dts/Makefile                    |   1 +
>  arch/arm/boot/dts/aspeed-bmc-amd-daytonax.dts | 319 ++++++++++++++++++
>  3 files changed, 321 insertions(+)
>  create mode 100644 arch/arm/boot/dts/aspeed-bmc-amd-daytonax.dts
> 

Running 'make dtbs_check' with the schema in this patch gives the
following warnings. Consider if they are expected or the schema is
incorrect. These may not be new warnings.

Note that it is not yet a requirement to have 0 warnings for dtbs_check.
This will change in the future.

Full log is available here: https://patchwork.ozlabs.org/patch/


/: compatible: 'oneOf' conditional failed, one must be fixed:
	arch/arm/boot/dts/aspeed-bmc-qcom-dc-scm-v1.dtb
