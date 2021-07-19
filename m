Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7E5083CD2D8
	for <lists+devicetree@lfdr.de>; Mon, 19 Jul 2021 13:00:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236939AbhGSKOa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jul 2021 06:14:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236929AbhGSKO2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jul 2021 06:14:28 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0742BC061762
        for <devicetree@vger.kernel.org>; Mon, 19 Jul 2021 03:03:39 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id y21-20020a7bc1950000b02902161fccabf1so12560626wmi.2
        for <devicetree@vger.kernel.org>; Mon, 19 Jul 2021 03:55:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=l0QVYm1L0TsgxqeOl01rWKD2Acicr42gpNqzbxnu5Es=;
        b=c3Hq43O28olk3Nw+K+T6beIb1Zn/Btxf5CzH7UyeehdlimcDtC7WQvfzlVAuOlc6vn
         QLdVi5A0mQ2En66thGuhxy6BS0sM5DC30w3oSpF4ox8YEPJGttuuiJ8b5p60vWGtrZal
         TT+XZh9d+XXIWDUX3HxyQ2Ked1iZghZsxrevJH/9CFXTa7RkGXvO4UocJWyUykfJLOcO
         5SOUsO/bAfLch4z138gWBvvN5QMQUuceSgsaSpr4ygEITxOU1f8nV6Z/6atD3YOn6cLe
         EffVAkfc7hs42bqBiYlFaoz6DZY/6uWPGdKCOYPsWAIjIzoOLzaNn9IIpyL3xm7xStZM
         kMcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=l0QVYm1L0TsgxqeOl01rWKD2Acicr42gpNqzbxnu5Es=;
        b=BtK8tK9MF7KTSZP3ho3MtN/s/xCBCXRBJp1S9XYHIth+YOxt4IBU899rcr7bFJFOar
         bSwn4Hnpfuv2Cgn8o4T5NHaX1715/43gmGd4fUPnWpGsuIjPvpB+jJJRPM+A4LaO8JG7
         58D8TfzJLVVCvnrmjR3shTzol1DL7pKUKXeAvFJR2m1xQQzOuPDsfXBoYZ0OQ0n3QEmb
         fiC21Pi4/ni49JoA+jQJk2BF32smJ6UxIEUEC2txDcHrsecPMNGkL6Y09QwoqrMp4vXg
         bC7tJ1ufXYYWD88wAacwPBHB0hJiQOPeE5UUVEOLSvhmYNx1p7mAwU/h5WQW3wzweCB8
         Q3aA==
X-Gm-Message-State: AOAM532tCLTRQPdPT2zJ+IaBKVmn1rTc5/Fa8nvYGrd43NNLm9/FuBQL
        kAke9OJ94i+Qqy3hlNdLJngjfw==
X-Google-Smtp-Source: ABdhPJzYO+5NerS3ENO0AAojnquKAkkeWFiPnpEHWHGPCkMF0XhXRijco9kIPnejKO7c2TR2adqIBA==
X-Received: by 2002:a05:600c:6d8:: with SMTP id b24mr31890229wmn.111.1626692106384;
        Mon, 19 Jul 2021 03:55:06 -0700 (PDT)
Received: from google.com ([31.124.24.141])
        by smtp.gmail.com with ESMTPSA id w9sm16745331wmc.19.2021.07.19.03.55.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jul 2021 03:55:05 -0700 (PDT)
Date:   Mon, 19 Jul 2021 11:55:04 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linuxarm@huawei.com, mauro.chehab@huawei.com,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev
Subject: Re: [PATCH v14 7/9] mfd: hi6421-spmi-pmic: move driver from staging
Message-ID: <YPVaCCu498lNY9a2@google.com>
References: <cover.1626515862.git.mchehab+huawei@kernel.org>
 <6c64fa6abae6c9fa78ace1bf240b33b47eccae52.1626515862.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6c64fa6abae6c9fa78ace1bf240b33b47eccae52.1626515862.git.mchehab+huawei@kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 17 Jul 2021, Mauro Carvalho Chehab wrote:

> This driver is ready for mainstream. So, move it out of staging.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>  .../mfd}/hisilicon,hi6421-spmi-pmic.yaml      |  0
>  MAINTAINERS                                   |  7 +++++++
>  drivers/mfd/Kconfig                           | 16 ++++++++++++++++
>  drivers/mfd/Makefile                          |  1 +
>  .../hikey9xx => mfd}/hi6421-spmi-pmic.c       |  0

I *still* can't review this without firstly seeing it.

>  drivers/staging/Kconfig                       |  2 --
>  drivers/staging/Makefile                      |  1 -
>  drivers/staging/hikey9xx/Kconfig              | 19 -------------------
>  drivers/staging/hikey9xx/Makefile             |  3 ---
>  drivers/staging/hikey9xx/TODO                 |  5 -----
>  10 files changed, 24 insertions(+), 30 deletions(-)
>  rename {drivers/staging/hikey9xx => Documentation/devicetree/bindings/mfd}/hisilicon,hi6421-spmi-pmic.yaml (100%)
>  rename drivers/{staging/hikey9xx => mfd}/hi6421-spmi-pmic.c (100%)
>  delete mode 100644 drivers/staging/hikey9xx/Kconfig
>  delete mode 100644 drivers/staging/hikey9xx/Makefile
>  delete mode 100644 drivers/staging/hikey9xx/TODO

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
