Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 64D29296B44
	for <lists+devicetree@lfdr.de>; Fri, 23 Oct 2020 10:35:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S460671AbgJWIfo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Oct 2020 04:35:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S460668AbgJWIfn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Oct 2020 04:35:43 -0400
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com [IPv6:2607:f8b0:4864:20::544])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 55772C0613CE
        for <devicetree@vger.kernel.org>; Fri, 23 Oct 2020 01:35:42 -0700 (PDT)
Received: by mail-pg1-x544.google.com with SMTP id b23so671312pgb.3
        for <devicetree@vger.kernel.org>; Fri, 23 Oct 2020 01:35:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=f+1AbkQy0A87BtmUgjwi9U43PkE6jzonKJ0Vu1is7Vo=;
        b=h4icBj/TmDHkcs+rhSs8XB2RNfjMBq5yYqyS0YSnDGSwFXPCqoDP/lxPP8V+vXHR8r
         oRQI1RxYVegeWAVl0m0H7iKa99OsNGct9JAcqom9WRHZ6ul4RvUUnui+KvrWXnWS/pHN
         /Kk2lGLpT63GC0MunDRXmZVti00Fi73wxul5FY/lrR1bqB46daudyNUZbVACVIszm9ic
         cG0wKRKoIEMLtDl/MX4kFyJqIdwWsUmLtsYy7B+8ROEp8UImTx/y5NkFgdGWkoZt1nwB
         4WosCkRK9/JTL638s0CA4Vs6eONP0Ynr4um/xvHySi6roD8V01T+/rXTJXOyNiRgEVSs
         eF0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=f+1AbkQy0A87BtmUgjwi9U43PkE6jzonKJ0Vu1is7Vo=;
        b=Ys5BcuCWevFktPYzgMCbzuwi3cHinuX2xNDAPTr0V2RMr8PXI8slERWqJrrIjCmjpg
         FbOIadyu8qsHfaoIHSToysCnsENFpY7T/K43lpGVEkYUTMScTw7h5UmaG8O+A6rFr6T0
         cpl4965kOepD4HkMPfiyduQtROyU0mCQdGh7caV4pwcHxlRq617Wizm/ihsPUA5Cl25X
         jc1TYdjOEZCfqJ7SMuWNPRXegbX2cUMym+MkHrB5iaJm79ADhwWZ52RhLogk446eRsrr
         60aEHWUaZ1pTbOIZ24LyTJT0pxVmht7n71nPQab2QD75sXrHAJv3SQWDnFGDN43xqR/c
         pjzA==
X-Gm-Message-State: AOAM533O7T0W9C8e5EZufZO08SM/6FK/IwAH96UxasN6NKA158w26u2e
        G6suXNNd2vFgQWy2EyhbHV4eVw==
X-Google-Smtp-Source: ABdhPJxCa+aIUzR7XJtvhWGZdJtyvpTOifCyidYzBuGnz3Csh06sevyXOFdA7OARjrkuXKzbqORTaQ==
X-Received: by 2002:a65:6243:: with SMTP id q3mr1227075pgv.154.1603442141794;
        Fri, 23 Oct 2020 01:35:41 -0700 (PDT)
Received: from localhost ([122.181.54.133])
        by smtp.gmail.com with ESMTPSA id w19sm1267173pff.6.2020.10.23.01.35.40
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2020 01:35:40 -0700 (PDT)
Date:   Fri, 23 Oct 2020 14:05:38 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Hector Yuan <hector.yuan@mediatek.com>
Cc:     linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        "Rafael J. Wysocki" <rjw@rjwysocki.net>,
        Maxime Ripard <mripard@kernel.org>,
        Santosh Shilimkar <ssantosh@kernel.org>,
        Amit Kucheria <amit.kucheria@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Dave Gerlach <d-gerlach@ti.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Robin Murphy <robin.murphy@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        wsd_upstream@mediatek.com
Subject: Re: [PATCH v1 3/6] dt-bindings: cpufreq: add bindings for MediaTek
 cpufreq HW
Message-ID: <20201023083538.f6hhcyizvlf2ufjr@vireshk-i7>
References: <1603441493-18554-1-git-send-email-hector.yuan@mediatek.com>
 <1603441493-18554-4-git-send-email-hector.yuan@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1603441493-18554-4-git-send-email-hector.yuan@mediatek.com>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23-10-20, 16:24, Hector Yuan wrote:
> From: "Hector.Yuan" <hector.yuan@mediatek.com>
> 
> Add devicetree bindings for MediaTek HW driver.
> 
> Signed-off-by: Hector.Yuan <hector.yuan@mediatek.com>
> ---
>  .../bindings/cpufreq/cpufreq-mediatek-hw.yaml      |   46 ++++++++++++++++++++
>  1 file changed, 46 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/cpufreq/cpufreq-mediatek-hw.yaml
> 
> diff --git a/Documentation/devicetree/bindings/cpufreq/cpufreq-mediatek-hw.yaml b/Documentation/devicetree/bindings/cpufreq/cpufreq-mediatek-hw.yaml
> new file mode 100644
> index 0000000..a99f44f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/cpufreq/cpufreq-mediatek-hw.yaml
> @@ -0,0 +1,46 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/cpufreq/cpufreq-mediatek-hw.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: MediaTek's CPUFREQ Bindings
> +
> +maintainers:
> +  - Hector Yuan <hector.yuan@mediatek.com>
> +
> +description:
> +  CPUFREQ HW is a hardware engine used by MediaTek
> +  SoCs to manage frequency in hardware. It is capable of controlling frequency
> +  for multiple clusters.
> +
> +properties:
> +  compatible:
> +    const: mediatek,cpufreq-hw
> +
> +  reg:
> +    minItems: 1
> +    maxItems: 2
> +    description: |
> +      Addresses and sizes for the memory of the HW bases in each frequency domain.
> +
> +required:
> +  - compatible
> +  - reg
> +
> +examples:
> +  - |
> +    soc {
> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +
> +        cpufreq_hw: cpufreq@11bc00 {
> +            compatible = "mediatek,cpufreq-hw";
> +            reg = <0 0x11bc10 0 0x8c>,
> +               <0 0x11bca0 0 0x8c>;
> +        };
> +    };

You still need to keep the CPU specific part here and explain how this
block is going to get used using the other binding you added.

-- 
viresh
