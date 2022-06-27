Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9FC3A55C439
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 14:49:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237576AbiF0Opc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jun 2022 10:45:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57418 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236702AbiF0Opb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jun 2022 10:45:31 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31FE5DFE7
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 07:45:30 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id o16-20020a05600c379000b003a02eaea815so4992767wmr.0
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 07:45:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=IWftomwLpTiMw5geHf9NLR9Uy1YW4MKMGZNLZyCJ+bc=;
        b=u58UnEiLCenA3bkmghyAMBZIb86SCyentNc7dQ60BekrjXgleen868tcyhopyZYiZ9
         bnEl2TCSt53+J8VPJ/nhK2qrtAWWyhl+IHC+1g10BKZ0qE/ThORTfQtraJpM3Ws7ttPu
         w87P/a2ClHh9YFEqB6sHhtd7ce/m3qj8LajwRgkyKutYiPuxkE8dXF2pepzbHaahr6IT
         6mDSUtHC5qUYZ7uai++Xyxle2mVfaqg7T4wQx/jcyyhY1sC/ZUhZKnZF48VR/VZ6r6Ar
         tjIRXb1mL5BkNNwkYffH4KURKN/0fTc+kZHEj2AVX3+N2DymnDdrQwQsRaeLpArVarS3
         oMUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=IWftomwLpTiMw5geHf9NLR9Uy1YW4MKMGZNLZyCJ+bc=;
        b=pKtXibDuyVNkVCOHsSsVlnasFSf6msm4OU2To58+BZc8H1pwap58mEog3B7AhYWTEY
         1TJPAYAFRp94K0QOmzDhZIYg1yHTldMIZxBUTAjEfy4YFay4JYdjJscdoBw0HvHFaFJ6
         9AKiDw3/oXxCxnNTTL9uXJEcH2hXuXn08V1v1TwQVkQVd2QAenmb+cJ4Gm3xCl+YCDxm
         /3oOA1gVLd2XiSk5ZvBquvMGvmvtgaqgw9PopGReGk03fBQg+rKaA87q7Wg6yO4//Wrr
         gyzEBOtcpU2KFCsStPQXFCllYOOjKpLcJCxWpfFLD6nQFpF/GatGahc6a0/ojXKJkKJN
         fIVw==
X-Gm-Message-State: AJIora+pCpWIWhH6c+ABLMzLmekJp9Al4fk7nqvYXCTKBhBu1RqS+YIf
        jiFUxzC2xqLg+JguMyoVN3+DYA==
X-Google-Smtp-Source: AGRyM1sfNhSDiCgHA/3p6XuvTHhCHDdov0mWMWx5YqxERfwth6tRMz3r/f32ul0NmJFgm8TKdtMPKg==
X-Received: by 2002:a05:600c:2207:b0:3a0:4659:a0b0 with SMTP id z7-20020a05600c220700b003a04659a0b0mr10689793wml.48.1656341128793;
        Mon, 27 Jun 2022 07:45:28 -0700 (PDT)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id t18-20020a1c7712000000b0039749b01ea7sm16304940wmi.32.2022.06.27.07.45.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jun 2022 07:45:28 -0700 (PDT)
Date:   Mon, 27 Jun 2022 15:45:26 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Saravanan Sekar <sravanhome@gmail.com>
Cc:     sre@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, jic23@kernel.org,
        lars@metafoo.de, andy.shevchenko@gmail.com,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-iio@vger.kernel.org
Subject: Re: [PATCH v3 2/6] dt-bindings: mfd: Add mp2733 compatible
Message-ID: <YrnChlCiyzgcyyxl@google.com>
References: <20220615145357.2370044-1-sravanhome@gmail.com>
 <20220615145357.2370044-3-sravanhome@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220615145357.2370044-3-sravanhome@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 15 Jun 2022, Saravanan Sekar wrote:

> Add new compatible for mp2733 mfd driver.
> 
> Signed-off-by: Saravanan Sekar <sravanhome@gmail.com>
> ---
>  Documentation/devicetree/bindings/mfd/mps,mp2629.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)

Applied in place of v1, thanks.

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
