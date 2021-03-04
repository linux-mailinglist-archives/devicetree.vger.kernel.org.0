Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 26F2B32CE02
	for <lists+devicetree@lfdr.de>; Thu,  4 Mar 2021 09:02:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235126AbhCDICG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Mar 2021 03:02:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35624 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235137AbhCDIB4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Mar 2021 03:01:56 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D23BCC061574
        for <devicetree@vger.kernel.org>; Thu,  4 Mar 2021 00:01:15 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id m7so348824wmq.0
        for <devicetree@vger.kernel.org>; Thu, 04 Mar 2021 00:01:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=aOAxJBlKBYcN64lRAiG4sf6vUj/R/Ju5OzGJfr7r2WM=;
        b=gaQZC+ID7+pejJoHhflPtHEPNavxraFBogdPdNYeti1ZPmzj6NntxgPy7vsCDYP74D
         KTNvgEdjw3VgLlm4KNcvVT/WmfBUJa2o/f3jaRTrxyEAtKsvMVOKM8qEln+CQcOoEZNY
         Efq+5rwnKGazx0Q0aO/rNJWix7llJzyw6ZrLTatWbh3XUCk4h81xRcowcwqfPuNL0Bdc
         b3A8lWe52D5AiWkM5vP8R74sg7rY54rd1k2SwbDJiI+r4yn54jt0WsSJMDRT07tmkzn/
         N2YAUYcPbZ7I1BjOJfjmRM+SCX48iAfrUHszJUrRoV4hEIwoxgRG+niSWDOGmezhnR4E
         MhwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=aOAxJBlKBYcN64lRAiG4sf6vUj/R/Ju5OzGJfr7r2WM=;
        b=LHVTxSluvbJi9kEnUjssisSPkWHGKFzatc+TpINkSJ8lQ8/sJZk+xsTswmnA07yKXJ
         ybFUCvAAyBHfxYqOggBJn6JxuapdEa3eH/3zSEW+VDHuMRvlhaa7NyGmTFYpMHheV4LV
         arfoLCGUkNFsNvjFWjHD8JTpBooSh4KOdOCX9M3l20qSyLv0wZd63TxTyndNvjXr0w6W
         A2NWMxB8BrseoZFIjh9QYqBO7rZ1pOewmtXqcNN1hIYnwJaYfwekSLYtuKRAgXCaLay/
         GLOWyGvk4g2MdMBum/PZlK8AWmygODVqnJfJ/hl/tvkDKoZkU9O6Ze/lCcKvH8MzuwNu
         iweQ==
X-Gm-Message-State: AOAM533b0DfEWbRYidALTnZ4fXGQhM2k/j9wNIw3R4CUkyD/uP1bCEjO
        OASZh2blK1IRumNPGltOAw+im12AUaI8fQ==
X-Google-Smtp-Source: ABdhPJysNoDApSfkuB/eTC6zhtgU/zqA1iZ645P7qrkMZeZIEC2JPk7gNbQY0PYThf/UfjSryY7Z2A==
X-Received: by 2002:a7b:c084:: with SMTP id r4mr2582042wmh.166.1614844874345;
        Thu, 04 Mar 2021 00:01:14 -0800 (PST)
Received: from [192.168.0.41] (lns-bzn-59-82-252-144-192.adsl.proxad.net. [82.252.144.192])
        by smtp.googlemail.com with ESMTPSA id n6sm15567967wrt.1.2021.03.04.00.01.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Mar 2021 00:01:13 -0800 (PST)
Subject: Re: [PATCH v1 1/5] MAINTAINERS: Add Tegra CPUIDLE driver section
To:     Sowjanya Komatineni <skomatineni@nvidia.com>,
        thierry.reding@gmail.com, jonathanh@nvidia.com, robh+dt@kernel.org
Cc:     ksitaraman@nvidia.com, sanjayc@nvidia.com,
        linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org
References: <1614838092-30398-1-git-send-email-skomatineni@nvidia.com>
 <1614838092-30398-2-git-send-email-skomatineni@nvidia.com>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <f73021ed-77c4-8349-d079-e9038b4dd00b@linaro.org>
Date:   Thu, 4 Mar 2021 09:01:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <1614838092-30398-2-git-send-email-skomatineni@nvidia.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/03/2021 07:08, Sowjanya Komatineni wrote:
> Add Tegra CPUIDLE driver section with maintainers and mailing list
> entries.
> 
> Signed-off-by: Sowjanya Komatineni <skomatineni@nvidia.com>
> ---
>  MAINTAINERS | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index cac8429..277fcfd 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -4679,6 +4679,18 @@ S:	Supported
>  F:	drivers/cpuidle/cpuidle-psci.h
>  F:	drivers/cpuidle/cpuidle-psci-domain.c
>  
> +CPUIDLE DRIVER - TEGRA194
> +M:	Thierry Reding <thierry.reding@gmail.com>
> +M:	Jonathan Hunter <jonathanh@nvidia.com>
> +M:	Krishna Sitaraman <ksitaraman@nvidia.com>
> +M:	Sanjay Chandrashekara <sanjayc@nvidia.com>
> +M:	Sowjanya Komatineni <skomatineni@nvidia.com>

It does not make sense to have so many maintainers for a single file.


> +L:	linux-pm@vger.kernel.org
> +L:	linux-tegra@vger.kernel.org
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/arm/nvidia,tegra194-ccplex.yaml
> +F:	drivers/cpuidle/cpuidle-tegra194.c
> +
>  CRAMFS FILESYSTEM
>  M:	Nicolas Pitre <nico@fluxnic.net>
>  S:	Maintained
> 


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog
