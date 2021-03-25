Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0259F3496ED
	for <lists+devicetree@lfdr.de>; Thu, 25 Mar 2021 17:37:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229764AbhCYQhD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Mar 2021 12:37:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229728AbhCYQgq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Mar 2021 12:36:46 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CFFEDC06175F
        for <devicetree@vger.kernel.org>; Thu, 25 Mar 2021 09:36:44 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id h13so3138988eds.5
        for <devicetree@vger.kernel.org>; Thu, 25 Mar 2021 09:36:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=uXd5Ow0/uJ5mXjMJvh9jivyPxRRRFA5VIMBQ46EmYlM=;
        b=csmMR+L3k/cbvJ3BuvNZ3CouXADMZ9mCEcDoy2mb+2qaPVjb5BlS3ZxJaAHw3EfdLW
         M9m4rluqneyRFWRotScen0sB/tRGL891ULBhvNFfaH9lY+kru2QIF2zc8eFvti1U68nl
         ZsH7Hp0yYtYgVqfCJlAk/G4gf5LC4S2PLDwHi1/7OuJ3SoE65R9c2AEOA9pqahoDBaDW
         XgBAcy8koxHbFVADmVM6IrSco2AJAXTxeSMIP5vy1tjYKOTL7SjAMLm1YvJIwoWzQZpM
         jJ0XFri3j0qdFXZSltpaPBqIjvX9ag5jpsKp/wFZoQy64u24F3vD5NrgN8DCcSxisk0s
         2cDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=uXd5Ow0/uJ5mXjMJvh9jivyPxRRRFA5VIMBQ46EmYlM=;
        b=nKz41DvBPSMoOQGdbYqiz+9xIDgQtWRKTu3uuJdwb+IfIl2bOc9mMQDHFBwj7O+eeq
         BvJHVktqIg9unJq9xqM8SVv1Akqj1p+Z3wAlw0VB042QzutQJIogFKFVSKfRM8n/jy5Z
         T0WKa1saT/M9OeRypGN2PPm2S+D7CI8O2N3tnawsJxFWJEd0+xkm2+zgI0ezk8afp7dS
         kgpVwCrYUOvyVV91XuJFmvz5L8MHClkEUrZ+hoaGsdUE/Dxpno+G5XmoXo9l5AM6sywX
         fkc2M5MxXcKyNCvh2VGaGqhR99M/F3ZM3gwCaIEERfQ13IWPvnXqjInQI1Qvwo93crS2
         L6DA==
X-Gm-Message-State: AOAM5326EtkIB8VUqaSQBdC1LTNKJcKBcbT4uStp9QQWeZd78/VMykqp
        MuAGmMQokfJbiaLZKeICzrr//g==
X-Google-Smtp-Source: ABdhPJwLaTBpmxnyhQuTnDmJZUjutO7B+LzwRSVvdeHopFxAbvmRiJfMROXWUVQWsuOIvl7S1o4SIA==
X-Received: by 2002:aa7:ce16:: with SMTP id d22mr9968918edv.95.1616690203508;
        Thu, 25 Mar 2021 09:36:43 -0700 (PDT)
Received: from dell ([91.110.221.180])
        by smtp.gmail.com with ESMTPSA id t15sm2984968edc.34.2021.03.25.09.36.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Mar 2021 09:36:43 -0700 (PDT)
Date:   Thu, 25 Mar 2021 16:36:41 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev
Subject: Re: [PATCH v5 4/7] mfd: hi6421-spmi-pmic: move driver from staging
Message-ID: <20210325163641.GV2916463@dell>
References: <cover.1616686958.git.mchehab+huawei@kernel.org>
 <de3603a366c172923771d3f01aa83b70cbba2199.1616686958.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <de3603a366c172923771d3f01aa83b70cbba2199.1616686958.git.mchehab+huawei@kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 25 Mar 2021, Mauro Carvalho Chehab wrote:

> This driver is ready for mainstream. So, move it out of staging.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>  .../mfd}/hisilicon,hi6421-spmi-pmic.yaml       |  0
>  MAINTAINERS                                    |  7 +++++++
>  drivers/mfd/Kconfig                            | 16 ++++++++++++++++
>  drivers/mfd/Makefile                           |  1 +
>  .../hikey9xx => mfd}/hi6421-spmi-pmic.c        |  0
>  drivers/staging/hikey9xx/Kconfig               | 18 ------------------
>  drivers/staging/hikey9xx/Makefile              |  1 -
>  7 files changed, 24 insertions(+), 19 deletions(-)
>  rename {drivers/staging/hikey9xx => Documentation/devicetree/bindings/mfd}/hisilicon,hi6421-spmi-pmic.yaml (100%)
>  rename drivers/{staging/hikey9xx => mfd}/hi6421-spmi-pmic.c (100%)

Could you please resend this with out using the -M flag.

I can't review a driver I can't see.

Thanks.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
