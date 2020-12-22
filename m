Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E3EB02E05D3
	for <lists+devicetree@lfdr.de>; Tue, 22 Dec 2020 06:48:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725783AbgLVFsa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Dec 2020 00:48:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725811AbgLVFsa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Dec 2020 00:48:30 -0500
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com [IPv6:2607:f8b0:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB39FC0617A6
        for <devicetree@vger.kernel.org>; Mon, 21 Dec 2020 21:47:49 -0800 (PST)
Received: by mail-pg1-x536.google.com with SMTP id c22so7671734pgg.13
        for <devicetree@vger.kernel.org>; Mon, 21 Dec 2020 21:47:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=cCGMbIqC4XxP3YzkMZr/q4dVBJexuv/rEbrwR/RfRdY=;
        b=Srk+K+UPjswKkg/1tVgElwXk8iXMo12S4lotAPM6oNqJRfLX4Akb4jCzrEVhJFkNcN
         KwmEReFJdIBHT2WSRvLkd8i7wVFSz7dFKJm/2rVvjMB6ZGvTiX6hGy+DN4X/ZM868V00
         73HzbED5vDA3gtnluSyszbP9FxpDsO4c7ybd4Z2kxt3KPzrU9HDkl0eZjifyL6ThwXeR
         k0KGy+QQ3/ZEWuzY9D28U31GnJbEv+Z2ji2hUUETC1Z5OcgNUbZ9jIW5JLBjioaJAzAK
         jXto8mCy8uH+aG0s1Wrs8f12pwSFRlOMMfPi/A2aGQydtoLszXVJRV7ZUkW2dkIIR5ja
         0K2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=cCGMbIqC4XxP3YzkMZr/q4dVBJexuv/rEbrwR/RfRdY=;
        b=Khi5p99Dk/FXimvOIqYYh/g87TtrXPvufkQfMFS4O9GJeStZ7HbBpkm4FRnED5ksdP
         ILbDlAuoJ6udWGcEYoDCalbUGH/mCyfS2lsBIwtw7iMa/gSbgjkSB2TDrSBM/MqrwD64
         0XfOrwU3ZMJhYIDlcLNB++Rih1C3zmDGPTfmYSBTxpUktPr88zLQ8d/3Fd4SdCXyqoVC
         IonzqKgmdbqfLQGyevg2cAP06fMsqWbHI3WX7yNr9sgCDdsiZfUxX98aelkPLMmbiRWn
         a2SD8L6SYeozPNN8CRRdD7uHIKap8AJTt2pK5Oqgo5Mhf9nVx7yL/R6o4oKKLPU2NyS2
         1yrA==
X-Gm-Message-State: AOAM5315QbLNWw7//9HJp+s+5HWh7vtTAJtCFKy9a2qeVuAzeo7Py1jQ
        1Sn7gbOjnFM6kjZIQb3BPh6RcQ==
X-Google-Smtp-Source: ABdhPJwP8rj+wVobkUZDGozTZvrM4sLI7dbTq8nO4cY0ZzqShz5ME0L2t66M0IEjW5YQ3Z5zCN6kng==
X-Received: by 2002:a62:e30c:0:b029:19d:932b:a1e2 with SMTP id g12-20020a62e30c0000b029019d932ba1e2mr18342199pfh.78.1608616068942;
        Mon, 21 Dec 2020 21:47:48 -0800 (PST)
Received: from localhost ([122.172.20.109])
        by smtp.gmail.com with ESMTPSA id f29sm18854172pfk.32.2020.12.21.21.47.47
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Dec 2020 21:47:47 -0800 (PST)
Date:   Tue, 22 Dec 2020 11:17:45 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Dmitry Osipenko <digetx@gmail.com>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Peter Geis <pgwipeout@gmail.com>,
        Nicolas Chauvet <kwizart@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        "Rafael J. Wysocki" <rjw@rjwysocki.net>,
        Kevin Hilman <khilman@kernel.org>,
        Peter De Schrijver <pdeschrijver@nvidia.com>,
        Viresh Kumar <vireshk@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-media@vger.kernel.org, linux-tegra@vger.kernel.org,
        linux-clk@vger.kernel.org
Subject: Re: [PATCH v2 43/48] ARM: tegra: Add OPP tables and power domains to
 Tegra20 device-tree
Message-ID: <20201222054745.2am4bcbk5df5aqzj@vireshk-i7>
References: <20201217180638.22748-1-digetx@gmail.com>
 <20201217180638.22748-44-digetx@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201217180638.22748-44-digetx@gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17-12-20, 21:06, Dmitry Osipenko wrote:
> diff --git a/arch/arm/boot/dts/tegra20-peripherals-opp.dtsi b/arch/arm/boot/dts/tegra20-peripherals-opp.dtsi
> index b84afecea154..7e015cdfbc55 100644
> --- a/arch/arm/boot/dts/tegra20-peripherals-opp.dtsi
> +++ b/arch/arm/boot/dts/tegra20-peripherals-opp.dtsi
> @@ -1,6 +1,46 @@
>  // SPDX-License-Identifier: GPL-2.0
>  
>  / {
> +	core_opp_table: core-power-domain-opp-table {
> +		compatible = "operating-points-v2";
> +		opp-shared;
> +
> +		core_opp_950: opp@950000 {
> +			opp-microvolt = <950000 950000 1300000>;
> +			opp-level = <950000>;
> +		};

I am not sure I fully understand this, why does it have both microvolt and level
properties ?

-- 
viresh
