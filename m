Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 160B626C5B6
	for <lists+devicetree@lfdr.de>; Wed, 16 Sep 2020 19:17:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726871AbgIPRPM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Sep 2020 13:15:12 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:35683 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726919AbgIPRO7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Sep 2020 13:14:59 -0400
Received: by mail-wr1-f68.google.com with SMTP id e16so7741767wrm.2;
        Wed, 16 Sep 2020 10:12:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=7K53KnV3RB0dBmHomdKTRhU0IiLbQ4+LVNa0ye9IqpI=;
        b=MmRJ1A6OzggEvpu4rztnFuSeaeFfU4FD5upFCNDsGoWRhWypkLF4RAjQnwYaJCReHx
         q2NmkP/y3Tsg5bBqUkLi+RgAwvnFm4AKJe5sCHUoFNIw6kcgC8HQs39hrfl3EZOaLVWO
         EgZ+/mVEFuiWvMkg6hgpL/f4y1BzNLwXs54DCHbUj9TEF5NmD4ZqRnqbjwyfTacH/L/n
         gGrkdJTO+JmP4oUUllf7TG4Z8M5zJjCBoVnRO6R0blaBrPQ1/q33WEkw+hHRzuOtT8Oj
         fs56mjFj7HGMQiETQc04bN4rIBJotmjqyw2VQUtrmeGlx4KtWtDw3f3ZpP7YF8N8yHMN
         31xw==
X-Gm-Message-State: AOAM533AcDpVit/sWzpSrOCZW/rAntLJJWCcNr1W2kotcsoLqK6zOWYy
        AXyDBRMugXWuPFWyBQBtM7+2xcPqS2my1wV3
X-Google-Smtp-Source: ABdhPJxBtful0Z+qE+L5pXwSxbO+yea+lOU0v+qNQxTnSCG1x8dx7LmcGHJsv0G0v/GE5JcpanqZ4A==
X-Received: by 2002:adf:f084:: with SMTP id n4mr4551624wro.26.1600276345057;
        Wed, 16 Sep 2020 10:12:25 -0700 (PDT)
Received: from kozik-lap ([194.230.155.191])
        by smtp.googlemail.com with ESMTPSA id n11sm34074076wrx.91.2020.09.16.10.12.23
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 16 Sep 2020 10:12:24 -0700 (PDT)
Date:   Wed, 16 Sep 2020 19:12:21 +0200
From:   Krzysztof Kozlowski <krzk@kernel.org>
To:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Kukjin Kim <kgene@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Inki Dae <inki.dae@samsung.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH v2 5/6] ARM: dts: exynos: Align OPP table name with
 dt-schema
Message-ID: <20200916171221.GC19427@kozik-lap>
References: <20200903191438.12781-1-krzk@kernel.org>
 <20200903191438.12781-5-krzk@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20200903191438.12781-5-krzk@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Sep 03, 2020 at 09:14:37PM +0200, Krzysztof Kozlowski wrote:
> Device tree nodes should have hyphens instead of underscores.  This is
> also expected by the bindings.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> ---
> 
> Changes since v1:
> 1. New patch
> ---
>  arch/arm/boot/dts/exynos4412.dtsi | 16 ++++++++--------
>  arch/arm/boot/dts/exynos5250.dtsi |  2 +-
>  2 files changed, 9 insertions(+), 9 deletions(-)

Applied.

Best regards,
Krzysztof

