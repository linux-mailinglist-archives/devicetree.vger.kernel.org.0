Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C4F6A2663E1
	for <lists+devicetree@lfdr.de>; Fri, 11 Sep 2020 18:26:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726505AbgIKQ0c (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Sep 2020 12:26:32 -0400
Received: from mail-lf1-f68.google.com ([209.85.167.68]:46820 "EHLO
        mail-lf1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726444AbgIKPWa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Sep 2020 11:22:30 -0400
Received: by mail-lf1-f68.google.com with SMTP id b22so2673528lfs.13
        for <devicetree@vger.kernel.org>; Fri, 11 Sep 2020 08:22:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=aOEss69u0HOf22P48MgZ3tBTFDKG/yZuI7WmzKdffDM=;
        b=COuKZVHuuY/cc8pc7svvdOlFkulnDkd5p17rKrMtn67PMSleenNwU6GDAKjdcSEJqb
         pYob0AW02xZj8YXzkZn8bwwxLEKnJQm/TYQFegsXSRtrB3YnILkv3yAeTA+ipsbY8eoV
         kgv4+eoIsJGG+BQFs60gCf0hKyg6wbwuVLiVDx9hPkwReNOfCo4SFmzq0TD00t3wVYM5
         jH2OFzkkQqOAuVRGZHGl0OvlYA3YficCGClLOprrXeyi/leTx0KI2nKtZkGfjaaOvhBm
         vGrmgx880aaDElR+1Vh0ish3LSt9w1SBeU0Bl/nqRpdlxa/j4Ss0tCY6cZezWQHlVD3L
         5Bgg==
X-Gm-Message-State: AOAM533Wwiwjtb8K5QTB4s12DgCEKUbUt81+E/bjaKCgzvo/05v7TKjo
        UzXD0sOdfVEvbPaJr40eG2x0/fXhYVVOkQ==
X-Google-Smtp-Source: ABdhPJwuI4pGTArYk3AIoPmW73BVQfttNnu3/IOhNJnwaeSyTKJzti6CLpR1dy2frjoSivz3v0G8TQ==
X-Received: by 2002:a17:906:4993:: with SMTP id p19mr2504434eju.277.1599836063629;
        Fri, 11 Sep 2020 07:54:23 -0700 (PDT)
Received: from kozik-lap ([194.230.155.174])
        by smtp.googlemail.com with ESMTPSA id e15sm1851929eds.5.2020.09.11.07.54.21
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 11 Sep 2020 07:54:22 -0700 (PDT)
Date:   Fri, 11 Sep 2020 16:54:20 +0200
From:   Krzysztof Kozlowski <krzk@kernel.org>
To:     Rob Herring <robh+dt@kernel.org>, Kukjin Kim <kgene@kernel.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Marek Szyprowski <m.szyprowski@samsung.com>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Sylwester Nawrocki <snawrocki@kernel.org>
Subject: Re: [PATCH v3 3/3] ARM: dts: exynos: Add clocks sound node in
 Exynos5422 Odroid XU4
Message-ID: <20200911145420.GD15290@kozik-lap>
References: <20200906142146.21266-1-krzk@kernel.org>
 <20200906142146.21266-3-krzk@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20200906142146.21266-3-krzk@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Sep 06, 2020 at 04:21:46PM +0200, Krzysztof Kozlowski wrote:
> The dtschema expects "clocks" property if "assigned-clocks" are used.
> Add reference to all parent clocks to silence the dtbs_check warnings.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> ---
> 
> Changes since v2:
> 1. Move clock properties to i2s, just like Sylwester Nawrocki did for
>    Odroid XU3.
> ---
>  arch/arm/boot/dts/exynos5422-odroidxu4.dts | 60 ++++++++++------------

Applied with reworked commit msg.

Best regards,
Krzysztof

