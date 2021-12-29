Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EA811481479
	for <lists+devicetree@lfdr.de>; Wed, 29 Dec 2021 16:29:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237126AbhL2P3W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Dec 2021 10:29:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47954 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233955AbhL2P3W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Dec 2021 10:29:22 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 219ABC061574
        for <devicetree@vger.kernel.org>; Wed, 29 Dec 2021 07:29:22 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id q16so45127576wrg.7
        for <devicetree@vger.kernel.org>; Wed, 29 Dec 2021 07:29:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=Esrph6oyYvc0PlFMTSVl4KFn0QN18H5CiN0RdTi0uho=;
        b=MMFE+DoHqzruyp0xhECuwx7sJylzgT7qQJk25ya0JZt84UlHHO7rwHNMhYGcKezNuW
         kblbkES+sHmyTCXrX8GozwV9kVGiRNxsC+dotZiA+JKD/6sR4MHiMJ9RbMc1OawZhM1P
         jGZIVE9DIX2haHgMeIJpjnOpgeXqPkTfqj67vJEHpYZT1Jo7GAopTyhVbenaXA7OrU63
         Y5x6nrvApffF97+u1LLP1bNB2vAPelywTl8bNln8BAXi0DWdUznbdk1WqrmLkL2g3Mug
         m2Gm4MOS0+gJ3u9sYnA0+yiaFLFGdZYUu5iId6JwmDJ+3FVoOyUoXb+ExIA4RzPu+Dfs
         r5AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=Esrph6oyYvc0PlFMTSVl4KFn0QN18H5CiN0RdTi0uho=;
        b=1w1UHTi4wUqXUN0Bt6gWHtxsb2602qNFwy0NfQtmE41C8lss/+WWuh05Jtr7yFGcNt
         XtjaGDUPtYjobY7CsKRL6c3IIz+kEoeyUoCIv5NzeUScVn8qVaGto0iVFu8KSTuxWBEW
         y8P0dmEMjgP+6HD9kDgT8m/bI36OnOuoGW3SwJFlkB/bJpYC7KS0PIJdZAfyu8CRjmin
         XaYCpxeNxWIqGnTtHKofzzZ7DYg0s5UC9qMo9xnX0XV2k3yrCfPOmfPw1oZDdRtzr+HA
         uwD8azzeR045syBQeJOdIpG2EhJQa1s9ojtJ2xuJNGBAUzNOu3luxSMEdrCDvqW6zVdb
         2bbQ==
X-Gm-Message-State: AOAM531GmPelOKvUXFwRAG9O+xXrvvR6ShOPezLI/cvm4RPUtwqT8N6j
        DafenWSPeierVNHs0NK64ajGpQ==
X-Google-Smtp-Source: ABdhPJxUDpVp537KUcAr3eZlvz2pSfSMqV482z3oVEwQYc07xlN9iaMwVsJ9ScvRwOc5YhKHGNrT8g==
X-Received: by 2002:adf:ef0b:: with SMTP id e11mr20665685wro.621.1640791760744;
        Wed, 29 Dec 2021 07:29:20 -0800 (PST)
Received: from google.com ([2.31.167.18])
        by smtp.gmail.com with ESMTPSA id e18sm25186071wrx.36.2021.12.29.07.29.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Dec 2021 07:29:20 -0800 (PST)
Date:   Wed, 29 Dec 2021 15:29:18 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     matthias.bgg@kernel.org
Cc:     robh+dt@kernel.org, bleung@chromium.org, groeck@chromium.org,
        matthias.bgg@gmail.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Matthias Brugger <mbrugger@suse.com>
Subject: Re: [PATCH] mfd: google,cros-ec: fix property name for MediaTek rpmsg
Message-ID: <Ycx+zpPZUAeScoIf@google.com>
References: <20211218081543.3851-1-matthias.bgg@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211218081543.3851-1-matthias.bgg@kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 18 Dec 2021, matthias.bgg@kernel.org wrote:

> From: Matthias Brugger <mbrugger@suse.com>
> 
> The MediaTek rpmsg-name is defined as mediatek,rpmsg-name in
> mtk,scp.yaml. Fix the binding documentation to match the new property
> 
> Signed-off-by: Matthias Brugger <matthias.bgg@gmail.com>
> ---
>  Documentation/devicetree/bindings/mfd/google,cros-ec.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
