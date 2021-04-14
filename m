Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A235A35EFCF
	for <lists+devicetree@lfdr.de>; Wed, 14 Apr 2021 10:46:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350089AbhDNIiH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Apr 2021 04:38:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344276AbhDNIiG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Apr 2021 04:38:06 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F1CAC06175F
        for <devicetree@vger.kernel.org>; Wed, 14 Apr 2021 01:37:45 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id x12so9357181ejc.1
        for <devicetree@vger.kernel.org>; Wed, 14 Apr 2021 01:37:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=dg8FS+bLDkB10N5Z5KnKd2eYRzDk9ID1rsN2vEPTbU4=;
        b=GGOjZ7BVkPzalD3FUyVu39H4QrFG5tUQc1m1z9OkiFvXJSHHOUtcbZFJ2RMrgoL+M+
         t/E5EH1PteIEwws9YYapeHD4xmlg+U+MSAJj8hbHRA1a+5XrbsECm7PJdbIZhcYmtzty
         7ieyTaCKb5OfbrUuK1zqlam1HFoGG77x+btIa0uusnk5ImMtuWbcYqlyhYHDGl2CYj+b
         KIDf5KtR/hqzWDo51x7EVHRbr9qaf0iYKTo4MvtfExqrx5FgJrBMrZIAi35Jgvz7v+By
         wTK9LgjFUY/rZwvqg7GoCzMi2fStbj3qN3d12cb/GJumBG4kmscI5N3HG5B+bM0dm7Ld
         sg3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=dg8FS+bLDkB10N5Z5KnKd2eYRzDk9ID1rsN2vEPTbU4=;
        b=Iz6Smhj5eoMfqj/3S2HPbhIZvi+m987zHbqcyTITK8pA96sa/mFZAcrnkGbmUO+/0N
         fIlV/QkcKpuHvcf1POXkr45ovx3aYRGxMikxoBfziyJ8eN+tmlwi6L+w+RAshaiF+aOc
         e0P6zQwKeD5Qh7FWGH2Z+Tb3vn0AIeEcGUpRlv2hB15mbE2zICy/MoIIRGMFn/C77VAB
         3bBQ8jDZj0J42oXFTkt5H2LrZUJIxlzf6JemO/B7qXlDgmfEE480e+tJLQhArayaVA/V
         YjF4v+8DYZQdHa/EOmGPXKa2gXFte/cASDCnstGDlbcSk42Crs3QA+7noNF5LX5JA4L+
         8Tbg==
X-Gm-Message-State: AOAM533kG6hWeCqF4gE/KMjq06sq67PYAw4dlXg1kl/lLWYJe1jUJs/O
        JJ+FQm/s+GcNeI1pRU4crXimRg==
X-Google-Smtp-Source: ABdhPJzcX935JREkGggRLRsEljVM25IyhSty1cnoTr37gYdkGR5gD6pU1kOHq7KK12mn7gdmhJ8Mnw==
X-Received: by 2002:a17:906:6789:: with SMTP id q9mr37394692ejp.295.1618389463848;
        Wed, 14 Apr 2021 01:37:43 -0700 (PDT)
Received: from dell ([91.110.221.215])
        by smtp.gmail.com with ESMTPSA id n14sm6148221ejy.90.2021.04.14.01.37.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Apr 2021 01:37:43 -0700 (PDT)
Date:   Wed, 14 Apr 2021 09:37:41 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     satya priya <skakit@codeaurora.org>
Cc:     Alessandro Zummo <a.zummo@towertech.it>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        linux-rtc@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        kgunda@codeaurora.org
Subject: Re: [PATCH V2 2/4] dt-bindings: mfd: Add compatible for pmk8350 rtc
Message-ID: <20210414083741.GG4869@dell>
References: <1617976766-7852-1-git-send-email-skakit@codeaurora.org>
 <1617976766-7852-3-git-send-email-skakit@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1617976766-7852-3-git-send-email-skakit@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 09 Apr 2021, satya priya wrote:

> Add compatible string for pmk8350 rtc support.
> 
> Signed-off-by: satya priya <skakit@codeaurora.org>
> Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---
> Changes in V2:
>  - Moved this patch before conversion patches.
> 
>  Documentation/devicetree/bindings/mfd/qcom-pm8xxx.txt | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
