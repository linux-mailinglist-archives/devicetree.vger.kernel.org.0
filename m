Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CA34126C65C
	for <lists+devicetree@lfdr.de>; Wed, 16 Sep 2020 19:47:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727339AbgIPRqi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Sep 2020 13:46:38 -0400
Received: from mail-lf1-f68.google.com ([209.85.167.68]:40138 "EHLO
        mail-lf1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727388AbgIPRq1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Sep 2020 13:46:27 -0400
Received: by mail-lf1-f68.google.com with SMTP id m5so7900854lfp.7
        for <devicetree@vger.kernel.org>; Wed, 16 Sep 2020 10:46:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=zyl8TJrhVfTe2TXHn1Ylm3CaGAI0Eut0vrDhMWKREwU=;
        b=at2VyJHsXEq5Bc6aArsPN4aQVzILL9m02TUMe1Oj6t4+l4vEZpBM8ttf8yHQObbFjo
         TaX7Y8oLq5q/xWT1ONkvZkcag6ycVVbpepqg+e1TAFp/FQjLmZjp+eP7zhGLKgEl1yZp
         3Z39JXW3J4VOo+9vD+l0t7t3iSEjHnyAfRoRiA623ZJd4VxSkGqB6Nx1HPhQxI8Z3fqB
         oCgnAKSLdMIgVIv1HMwkdTDJB8pUXxILNQjN1JBb481xOrU/d8h0jTVZQTpmz6gHA+KN
         LbhvZQNGUcbfNGOQyXP4HsftE5Q7/Xf7dbd41x9z2YHolO+qBbtvNkf0mBhJYXyoI4Z0
         J++w==
X-Gm-Message-State: AOAM532+mp/k7HUpNe4SPl1PfxxXUldCaU7fHtv+3sGHiQSCcnFuLfSS
        xGk8df1lZFtCQgroRBUTjCVFK78+VxmdLqkO
X-Google-Smtp-Source: ABdhPJzxTPnq22IWDSWfZN82ctZiAHt+M7IbEHPa2jzbRm5lvwD+4JIY7doBYk52EE6ZV+4m3nYEgw==
X-Received: by 2002:adf:cd05:: with SMTP id w5mr27473177wrm.62.1600276396656;
        Wed, 16 Sep 2020 10:13:16 -0700 (PDT)
Received: from kozik-lap ([194.230.155.191])
        by smtp.googlemail.com with ESMTPSA id k8sm33846128wrl.42.2020.09.16.10.13.14
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 16 Sep 2020 10:13:15 -0700 (PDT)
Date:   Wed, 16 Sep 2020 19:13:13 +0200
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
Subject: Re: [PATCH v2 6/6] arm64: dts: exynos: Align OPP table name with
 dt-schema
Message-ID: <20200916171313.GD19427@kozik-lap>
References: <20200903191438.12781-1-krzk@kernel.org>
 <20200903191438.12781-6-krzk@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20200903191438.12781-6-krzk@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Sep 03, 2020 at 09:14:38PM +0200, Krzysztof Kozlowski wrote:
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
>  arch/arm64/boot/dts/exynos/exynos5433.dtsi | 2 +-

Applied.

Best regards,
Krzysztof

