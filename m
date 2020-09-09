Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 41ACD262830
	for <lists+devicetree@lfdr.de>; Wed,  9 Sep 2020 09:15:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726976AbgIIHPw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Sep 2020 03:15:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725826AbgIIHPv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Sep 2020 03:15:51 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E842C061573
        for <devicetree@vger.kernel.org>; Wed,  9 Sep 2020 00:15:51 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id w2so1216811wmi.1
        for <devicetree@vger.kernel.org>; Wed, 09 Sep 2020 00:15:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=/JsVsp8FI1KMy1pkXT80pqpRR7DYsy44AH3/acP066U=;
        b=iFdh41Z5zYmKwG/W+rCcHcrRIP8Q3EONyrh6Wceurjj6y5s6aH6xcX/VYEv367+MRt
         m+OFy6jVhz2Y64Da0GYm1+CInnjVrdwdz3MHrS29V0u2hbQ0QzsoxfPPUQ+1jCqkW/rr
         je1GxlCIu4+34pFeirh3P9d3SQbO22e8vWAbMDAA8ZkT9M+UmKqFljAaOpSrTcFkS0TV
         MeBYCCn8ZAtSFTMlGIBDpvIHiKxmSAsoB/GJSkUEedGHdL5ZbQrKbJqhBQ0rqrhs3DeL
         QKxLelQIbPIQR8/aLBqcadR7iwxVVXEwI+KPqN4Cc+ITiI7ToN40UgTOuqj7pVVFJ3+/
         PidQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=/JsVsp8FI1KMy1pkXT80pqpRR7DYsy44AH3/acP066U=;
        b=bSNCX6YBPRtsRbqDcNCY1V8qZvB0bXvKd/8ikiLOn4YreSGA88ATqKwTQl57yca3ZO
         6Ti0j9KKxIONXsZdR6dxVD0jHRUsACAhrwoRJRFisB5ARW2Spa4bjJ0q20SDhIZv7ZXA
         AvDqVIxby9NM6MyQ53vP3056AzXV8SKNLkLMvtlAIAccHkQVL9maAjpDW0Wzkd6Zn61d
         gP2XjKbxLdosq0qr1uPo9G69UFAANZtCAFiXrSWj++ONeTqBX3zY2vteD4X68xGg9mpG
         qyAeZWI80w6WJdyBWVksAYHa4awG1+056CpHZKzbeaYuBR5bSB8MOpOyu+u6tM6A726E
         JQxA==
X-Gm-Message-State: AOAM5314wGaKXOQEmQdkOWYyPr0JiAKGeljXwcpei1qECGbxgAcU2hey
        u2PnSYhfiR7MAqvuNDOQ2gaGVA==
X-Google-Smtp-Source: ABdhPJzFLKxycZi88TEpQo2dW2etwws5zrUtqeqmAWdb8R54+nsGrez/u+3tm/K2T6aQNSlzN72ZWw==
X-Received: by 2002:a7b:cbd4:: with SMTP id n20mr2217549wmi.105.1599635749811;
        Wed, 09 Sep 2020 00:15:49 -0700 (PDT)
Received: from dell ([91.110.221.179])
        by smtp.gmail.com with ESMTPSA id x2sm1933582wrl.13.2020.09.09.00.15.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Sep 2020 00:15:49 -0700 (PDT)
Date:   Wed, 9 Sep 2020 08:15:47 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Krzysztof Kozlowski <krzk@kernel.org>
Cc:     Kukjin Kim <kgene@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: mfd: syscon: Merge Samsung Exynos
 Sysreg bindings
Message-ID: <20200909071547.GZ4400@dell>
References: <20200902161452.28832-1-krzk@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20200902161452.28832-1-krzk@kernel.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 02 Sep 2020, Krzysztof Kozlowski wrote:

> The Samsung Exynos System Registers (Sysreg) bindings are quite simple -
> just additional compatible to the syscon.  They do not have any value so
> merge them into generic MFD syscon bindings.
> 
> Suggested-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> ---
> 
> Changes since v1:
> 1. New patch
> ---
>  .../bindings/arm/samsung/sysreg.yaml          | 45 -------------------
>  .../devicetree/bindings/mfd/syscon.yaml       |  2 +
>  2 files changed, 2 insertions(+), 45 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/samsung/sysreg.yaml

Applied, thanks.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
