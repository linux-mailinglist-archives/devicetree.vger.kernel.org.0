Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1E947421D37
	for <lists+devicetree@lfdr.de>; Tue,  5 Oct 2021 06:23:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231495AbhJEEY4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Oct 2021 00:24:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229659AbhJEEYz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Oct 2021 00:24:55 -0400
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com [IPv6:2607:f8b0:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8886EC061745
        for <devicetree@vger.kernel.org>; Mon,  4 Oct 2021 21:23:05 -0700 (PDT)
Received: by mail-pf1-x42d.google.com with SMTP id m14so1323979pfc.9
        for <devicetree@vger.kernel.org>; Mon, 04 Oct 2021 21:23:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=FIDE+itK9PP/6qNSejIUv8DnzpCmOGBNCkTKxdd1fCo=;
        b=dfUf/Rh102+RBR6eL8TEn2XI22uyXoD9tI1sUkm8ZogEYUv2UhSuYuPNznT9WkpMYc
         TRyPkBBi9TtwKrVbtHrowzZ8zvbEAdP1LYfoAEyylRNQW3NZpV1jz5uG35Vf7C+RLuli
         NKv1kgrIczdpj4K1zEcIx7RQ/Kdc26MhVy0oNJzUx/Z9Mr3TSaRLqwKO2lhsN5ckdRzV
         wXlY3ixi/dAa+b4WLcP4mGcWr9JScrE0DgmEZpdykU/fzKdSVgY7zwRQbYXlA5IJxzy0
         vTsRFcmmjv3o8wsbGPsPtUAJ8s+YK4kUyzURe+egb7/kTBdLkJf8kUMX8dQvHki+HgXr
         ohLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=FIDE+itK9PP/6qNSejIUv8DnzpCmOGBNCkTKxdd1fCo=;
        b=5XVi8J1SMu7gkVWJ9k0lIHyFo8JAobnUVZD7T6VNNtFtyKQuduXtZykawB4PtVSpYV
         P9LfhDh4GyAx3cewxuhW7jY0Q0l6+gamvlGmIVwXF6B86jGHlovAyWKaXqAbAHWjP/Lt
         RmzjRUHRlkOUA+/pWfNa01NS1AmWWsc9hzsJjl/ATwE77iSAenQmwgCzf2dAtR5UIGTU
         9Jjl9b3B5NHrOEK/JVnq0/Q9L5K2P+79q1361ZrdrRDm2H5RMcCPoiOqfgwShoJNuT+i
         YrBgoUkatnDqey/f+Kxunw0rjgopHti1Y8+CpJIU/o7Ye/fhwHq25NQoFyT8WzLrc+Zq
         AxTQ==
X-Gm-Message-State: AOAM532zzbeQ+08hbO8LxIxUBg9CLjOj74mgoOfApDVwfdo/bdiFxPAb
        N8BFzUBqRTqU+mO3EAbM1LRA1H2v9A6oIg==
X-Google-Smtp-Source: ABdhPJxkYDU9Y16QOuD3/DRSSPEfzJcP6QJAOfFImHJArei3UlkfQzDDgy1bdvvaVWKwH089SyKA0Q==
X-Received: by 2002:a63:8f0e:: with SMTP id n14mr14093935pgd.75.1633407785102;
        Mon, 04 Oct 2021 21:23:05 -0700 (PDT)
Received: from localhost ([122.171.247.18])
        by smtp.gmail.com with ESMTPSA id q21sm15112936pgk.71.2021.10.04.21.23.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Oct 2021 21:23:04 -0700 (PDT)
Date:   Tue, 5 Oct 2021 09:53:00 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc:     rafael@kernel.org, robh+dt@kernel.org, bjorn.andersson@linaro.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: cpufreq: cpufreq-qcom-hw: Convert to YAML
 bindings
Message-ID: <20211005042300.ix46h3ceu7aiwrg7@vireshk-i7>
References: <20211004044317.34809-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211004044317.34809-1-manivannan.sadhasivam@linaro.org>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04-10-21, 10:13, Manivannan Sadhasivam wrote:
> Convert Qualcomm cpufreq devicetree binding to YAML.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---

I hope you will be resending this after fixing the DT warnings ?

-- 
viresh
