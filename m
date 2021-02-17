Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 84B9431D4BA
	for <lists+devicetree@lfdr.de>; Wed, 17 Feb 2021 05:51:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231383AbhBQEum (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Feb 2021 23:50:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231309AbhBQEuj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Feb 2021 23:50:39 -0500
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E26BBC0613D6
        for <devicetree@vger.kernel.org>; Tue, 16 Feb 2021 20:49:59 -0800 (PST)
Received: by mail-pj1-x102f.google.com with SMTP id l18so904753pji.3
        for <devicetree@vger.kernel.org>; Tue, 16 Feb 2021 20:49:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=LZb+d9m06HHICZn76e5LAG2jofpaShTxeaY5Qtk8seo=;
        b=R8zwqy2m+UfvCoU4D6sMpED8T5pBxeFNw4wi7GhAXPikDwW4J1VxLdILw0SKjPKdcd
         8crIEzqK/510F0d3r2nrgSaTxDh89nyeyZ93TbxAkqTXjcUbbPxFebKOyOrE3zyPJXyN
         3ht4yOHpJ3nTiGvjNNWmFEUwjdi+p1y+0eUdZNrNGjPfCTCZQvV93PO36om/NmUYwTFn
         PNnyhkzOj+vVbAC9WYF2pUDQmhjEGUULBB4T2ai6nRCuCAVqkLnmTkjTngfalQbm+b9I
         2iYyG7sDFYvtLK1HI4EAYBZtwThHJOjFvedRRQw/jtWwqmHSDVapG9BTTfHTgniV6hxM
         6Y2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=LZb+d9m06HHICZn76e5LAG2jofpaShTxeaY5Qtk8seo=;
        b=kMp9hSTZ8LUVsPedCIwlBR/d5veAulZPDA0AuPVINd8ZiXzIyg9MRPvlBqvqUq5Zu4
         TQYZFT5VqaG1l1VsYqS7tlt+gRokcUCXlbN8LdqjYD/tswcfH8JSGYWHcsKn6OhQt5TG
         BxS+k1puNbT1LU53i9mPDptjVYOq0qmmrDG1/6uNTZq5F9gwvAvDhmCmPeUKvdK/OC++
         /4PY+0gMU4+QahGti1ktBuNcU8b30THWh1KeEYcNP8t3DwjWA/SWecbNX4wxYxByoGbp
         jbXsnjDD0uKlzzlHTN0Dpk4xFRX0TucofMZ6oc9IfdSX2VBh6XI7stRsQ2WzvzgjY+Xh
         1Cww==
X-Gm-Message-State: AOAM533WIt1puUd0qStLYEVrK5GLzHntnARM0UqNtbE2nMYqcN/P8Lwn
        tt/Xjehj/xH4ugrBwzeZQnau1w==
X-Google-Smtp-Source: ABdhPJw+UxFSs2K+AX/FF0SVr5D//nxO0uI6h4a8Ky6fyBadf3zjRc2tF0lxrBwfweOQv8T383nG1Q==
X-Received: by 2002:a17:90b:a58:: with SMTP id gw24mr7531774pjb.143.1613537399316;
        Tue, 16 Feb 2021 20:49:59 -0800 (PST)
Received: from localhost ([122.172.59.240])
        by smtp.gmail.com with ESMTPSA id g68sm592349pfb.29.2021.02.16.20.49.57
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2021 20:49:58 -0800 (PST)
Date:   Wed, 17 Feb 2021 10:19:55 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Vinod Koul <vkoul@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        "Rafael J. Wysocki" <rjw@rjwysocki.net>,
        Rob Herring <robh+dt@kernel.org>, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: cpufreq: cpufreq-qcom-hw: Document SM8350
 CPUfreq compatible
Message-ID: <20210217044955.qmbpd43wis7xtjoj@vireshk-i7>
References: <20210216111251.1838149-1-vkoul@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210216111251.1838149-1-vkoul@kernel.org>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16-02-21, 16:42, Vinod Koul wrote:
> Add the CPUfreq compatible for SM8350 SoC along with note for using the
> specific compatible for SoCs
> 
> Signed-off-by: Vinod Koul <vkoul@kernel.org>
> ---
>  Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.txt | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.txt b/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.txt
> index 9299028ee712..3eb3cee59d79 100644
> --- a/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.txt
> +++ b/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.txt
> @@ -8,7 +8,9 @@ Properties:
>  - compatible
>  	Usage:		required
>  	Value type:	<string>
> -	Definition:	must be "qcom,cpufreq-hw" or "qcom,cpufreq-epss".
> +	Definition:	must be "qcom,cpufreq-hw" or "qcom,cpufreq-epss"
> +			along with SoC specific compatible:
> +			  "qcom,sm8350-cpufreq-epss", "qcom,cpufreq-epss"

And why is SoC specific compatible required here ? Is the implementation on
sm8350 any different than the ones using "qcom,cpufreq-epss" compatible ?

FWIW, the same compatible string must be reused until the time there is
difference in the hardware. The compatible string must be considered as a marker
for a particular version of the hardware.

-- 
viresh
