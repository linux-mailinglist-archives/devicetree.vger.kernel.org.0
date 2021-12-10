Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7446C46F9B0
	for <lists+devicetree@lfdr.de>; Fri, 10 Dec 2021 04:53:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236486AbhLJD4m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Dec 2021 22:56:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51782 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236478AbhLJD4m (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Dec 2021 22:56:42 -0500
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6533FC0617A2
        for <devicetree@vger.kernel.org>; Thu,  9 Dec 2021 19:53:08 -0800 (PST)
Received: by mail-pj1-x1031.google.com with SMTP id w33-20020a17090a6ba400b001a722a06212so7371562pjj.0
        for <devicetree@vger.kernel.org>; Thu, 09 Dec 2021 19:53:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=BzSbfZd4JQBrY56BTZ7Ukbk+6z7XGMbbqjBNLXp9q7o=;
        b=UHFsxs1Qanuf6rGkoZ0V/xVRoh9AFiGYUrAsN32lvoaESAlJj78UgYYPbF5vdPL3Bk
         KtVW3YtfGpkBjSpoksdlvQYscYisY6IH/di0J/uQNG3BDGvnY/m8LmuvoBEEFBk/YnIF
         2Tq8LeJWpft5cpTDPJAesyQkERwlynZMDPxlSNUqiTEZgZoCOb5zP54GlSVYZQsZ87dj
         +Sso4/pGzUoeBcWwqToiUeYbiB53AR0hds3lrl1kltJd8c0bqkINPVLqRStgt5o5gC+C
         TzHDzuBGuAZSQY8WYOF67DQc8b2dvJY6XBQVLxc2Xmrn+Qdz7QU87vY3MKifOuGrKs4+
         fN6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=BzSbfZd4JQBrY56BTZ7Ukbk+6z7XGMbbqjBNLXp9q7o=;
        b=lAIG3AWFIurY28eiCrD03magrYIHV0NmRopANzbyEq2GA9Lum6wnJjyAuvn57ps3LJ
         71DbPrRgqdY2Pmsv6Ft+b59gWOJtzhK7XOV0rsGmjCe6+hlY9ByKWw0obh5pBSQfeVpy
         xBn4R10pzW1CV3NOOHEc1GbO9xG5V7bbJ+k5TZpjF+XKuHNk5HRipFZZ2gn3W1KLyR4j
         kLM3xyE81fuG3OZ3OKqnat7IE4SNFw+ZizDv1NX7k/IGKpfAfOmVqrPUMbkzpq1/JY9z
         qYcPYjA3YSyFfq2nEqUPZWakUihXYtXClEw5rktvwFaFHO087CXcjwuH9LisSrCVeYQD
         rVeg==
X-Gm-Message-State: AOAM530aQwK9fVOvremKWg9aaMhLWjfi78XnOnVpo5aEs0LuxBhi4BU+
        YVVNBoJJE+amfokkbehzhjarB5niCy9sXA==
X-Google-Smtp-Source: ABdhPJz1NGw0NPJFcUffa8z/0UBVpMhqf1ZVaIjsYAonkfNcQGbolrZHg/tdq7hiD4WTlFandL5Y1w==
X-Received: by 2002:a17:90b:11c1:: with SMTP id gv1mr20848816pjb.208.1639108387855;
        Thu, 09 Dec 2021 19:53:07 -0800 (PST)
Received: from localhost ([106.201.42.111])
        by smtp.gmail.com with ESMTPSA id p124sm1151703pfg.110.2021.12.09.19.53.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Dec 2021 19:53:07 -0800 (PST)
Date:   Fri, 10 Dec 2021 09:23:05 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Thierry Reding <thierry.reding@gmail.com>
Cc:     =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
        Tony Lindgren <tony@atomide.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Viresh Kumar <vireshk@kernel.org>,
        Shiraz Hashim <shiraz.linux.kernel@gmail.com>,
        kernel@pengutronix.de, linux-imx@nxp.com,
        linux-omap@vger.kernel.org, devicetree@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org, linux-tegra@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: Remove unsupported properties for STMPE MFD
Message-ID: <20211210035305.35hhxovruk5otqpg@vireshk-i7>
References: <20211209173009.618162-1-thierry.reding@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211209173009.618162-1-thierry.reding@gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09-12-21, 18:30, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> Some users of the STMPE MFD bindings use unsupported properties such as
> "id", "blocks" and "irq-trigger". These look like they may have been
> under discussion at some point but never made it into the bindings that
> were accepted upstream.
> 
> Remove these unknown properties from the device trees to avoid errors
> during validation against the DT schema.
> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
>  arch/arm/boot/dts/spear1310-evb.dts        | 1 -
>  arch/arm/boot/dts/spear1340-evb.dts        | 2 --
>  arch/arm/boot/dts/spear320-hmi.dts         | 3 ---

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh
