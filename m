Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2793E376945
	for <lists+devicetree@lfdr.de>; Fri,  7 May 2021 19:07:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238507AbhEGRId (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 May 2021 13:08:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235840AbhEGRIc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 May 2021 13:08:32 -0400
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 587F2C061761
        for <devicetree@vger.kernel.org>; Fri,  7 May 2021 10:07:31 -0700 (PDT)
Received: by mail-pj1-x1033.google.com with SMTP id gj14so5414194pjb.5
        for <devicetree@vger.kernel.org>; Fri, 07 May 2021 10:07:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=RiGyUlYAW1u/8xTEb2M57YXe98Wsy6SGD0Ef+9dzg2k=;
        b=zXQbNUSKr6WntaFyoibLr+KI6HA/xr8Y8FL4frv3mk1pziMaor2RgvdJxyXYG+V2u+
         0o37nxLDo6ReRvnYGpdFzA4iSIAYvvzPHXqqbs6ahWb1WVMgDPHfaFI304x2txId9w1m
         1n+cimEpErDy+cXQ6MBj2W7m3VLC9nxKcHSBiBVPsmj3ZuLbjHASw7tiCO2IWzBJhCFc
         fT5sEFMPT3buMA4fyMIv0YO3lgPXVR8Q1G86XU4oGhS3ElYr3rnjGuEcoBs7+Xsf6WGL
         bBbH60nl7ziBQbnBdhIO7opxW1beGWPhOahXcKrgDRQUHpmFjteuHbEskM+vYsg5s+6F
         XPKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=RiGyUlYAW1u/8xTEb2M57YXe98Wsy6SGD0Ef+9dzg2k=;
        b=msRPUTAX3lEHXmm92WjLRnQnajIhRjjeb9roAFMTAlpJlUZFrBmkKDXayP2X+Qg8zr
         m06VwFShW6xoffo/L1MFoYiZdzcrqxTdLBaCFRW0CF0IjQDGG8jHT9f1ZcrpJxQFyPlt
         a+uiLs8rKmjiEQaSn2iv67zu7TXat418D/eNcWO8bK9P/pca13V9HOyErZLdtWZAXD6D
         fYv/+ygQ2YqIle3gB4TRRZFxzOnpb5wSdM46z/+oKQkxAfzccUZcB5EqN+J3o//VOhT4
         i4ZhcFL6SQaXbVxY0NR0vJeAPZ+WGEWugBzLr6MPpBclrJpxc/9SVI+OuLbhZFhn8rwT
         F/KQ==
X-Gm-Message-State: AOAM533akTAT0/BtUedWjsrNtXeXYKyt08hZQ20P6IP71sRYcnaXm7Qj
        GWHz6ZxZu8+dp0XGUVNU174u
X-Google-Smtp-Source: ABdhPJyuPKTcZCWMAOt39RYL09MRviRjAJXantrTkcrhT5nEDL3ejQXsOJOUnbZ/LZQFdAgX5bckWg==
X-Received: by 2002:a17:90b:3615:: with SMTP id ml21mr24188974pjb.28.1620407250646;
        Fri, 07 May 2021 10:07:30 -0700 (PDT)
Received: from thinkpad ([2409:4072:e94:6cb6:4728:f123:8d88:45e9])
        by smtp.gmail.com with ESMTPSA id n189sm3415486pfn.10.2021.05.07.10.07.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 May 2021 10:07:30 -0700 (PDT)
Date:   Fri, 7 May 2021 22:37:22 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Konrad Dybcio <konrad.dybcio@somainline.org>
Cc:     Yassine Oudjana <y.oudjana@protonmail.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Ohad Ben-Cohen <ohad@wizery.com>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH 1/3] remoteproc: qcom: pas: Use the same init resources
 for MSM8996 and MSM8998
Message-ID: <20210507170722.GB3919@thinkpad>
References: <zbAB2sceYHmsYeraZUi4YUKL7lgFMu13w3vHQQYUQ4@cp3-web-020.plabs.ch>
 <20210507164045.GA3622@thinkpad>
 <22accfef-a629-b483-f93f-820030ff5189@somainline.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <22accfef-a629-b483-f93f-820030ff5189@somainline.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 07, 2021 at 06:56:22PM +0200, Konrad Dybcio wrote:
> Hi,
> 
> 
> > NACK.
> >
> > I see that the "slpi_resource_init" and "msm8998_{slpi/adsp}_resource" are
> > completely different, even the firmware name. How can you get it to work?
> 
> one of us must be looking at some knock-off source code, as they are identical say for the presence or absence of proxy_pd_names, which are required for 8996 and weren't really an exposed thing on old SoCs like 8974.
> 

Actually "msm8998_adsp_resource" is what different from "slpi_resource_init" and
"msm8998_slpi_resource" looks good. So you can just add the proxy votes to
"slpi_resource_init".

Thanks,
Mani

> 
> Konrad
> 
