Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E84C8262836
	for <lists+devicetree@lfdr.de>; Wed,  9 Sep 2020 09:16:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727010AbgIIHQg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Sep 2020 03:16:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725984AbgIIHQd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Sep 2020 03:16:33 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8776AC061755
        for <devicetree@vger.kernel.org>; Wed,  9 Sep 2020 00:16:33 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id l9so1236062wme.3
        for <devicetree@vger.kernel.org>; Wed, 09 Sep 2020 00:16:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=sGSszLhzKyiLjIv2TvuHAJHM53/YBqm/b0KkCOpx610=;
        b=LC9b3CyHa+R4F3plgZXhFVK/O5MNI4/jydOr7NfHBXgFPf7qErTlaWo4TjBKIX3RdE
         huAyt4+vAiD1SDS9NzOdcbr799v5pvh/DbT7VsVSNA+mH3+95jm1to+wIFW4qAbMEpEV
         doou+cDepT3ERksbXeA6IPFmJYSk3QkxQtLHMjxPgyTr4UxE5EUgXZWPxOu6ch6SejoA
         OnlUs1TmoeDVwhG2/ieg4sU/CwcrbONYBwDyiYvaf2K/UAKE93/idEMOK8n8fzI7rfUw
         CvSBagnzWzUJ+UlRIkr4DlFPivrKfUwAsS/I5EVXdX/TYXYaQgjCENUC9r84crcc3QRl
         u6Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=sGSszLhzKyiLjIv2TvuHAJHM53/YBqm/b0KkCOpx610=;
        b=ep+2gC23wfJPwJuE8rpemtOBz7IrHdn+Zs5VLzp9CNrpQ03ghFmIy1pnWy3PHSSUAU
         3kPSz/nx96Qi/PRTuY72lN787AKmV4ucIWAx1gCIFfJLfylhF5DepdY/2q1IV3A2qI87
         2GkD/Vwt1VY/XY/JTPkvGq+q+79/YUd4R0eamiGTpu85eU2VcBZLnriyYfi3HdWU0+JI
         FaG46ciVKaitPPzz0LA8H4mVwEGIBU2ddruk3DgvkXJmlJ1xhRalb3il+H9KgB9SqyIZ
         3y3Q/bJuw8HPYSB73sHEXARV8QdyFYzntiOtAqdAvvFjoqeyExjC/E4zDFljhqadLhgl
         PcZQ==
X-Gm-Message-State: AOAM530GZtl1rLfLiaxa130NCeAFF3+i+x0nNE5LLjtw9mPGiPDS5OpA
        nfu2ZTmrGV8g0sp0cfPkGCyjmg==
X-Google-Smtp-Source: ABdhPJydIVfptSYf06/9NqPzYVHQ82le5fWrzLb29ZxnelQM3KNpgZ6ZW50H2EH0XCDdkQEkiXscyA==
X-Received: by 2002:a1c:7314:: with SMTP id d20mr2057345wmb.76.1599635792247;
        Wed, 09 Sep 2020 00:16:32 -0700 (PDT)
Received: from dell ([91.110.221.179])
        by smtp.gmail.com with ESMTPSA id t15sm2430132wmj.15.2020.09.09.00.16.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Sep 2020 00:16:31 -0700 (PDT)
Date:   Wed, 9 Sep 2020 08:16:29 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Krzysztof Kozlowski <krzk@kernel.org>
Cc:     Kukjin Kim <kgene@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH v2 2/2] dt-bindings: mfd: syscon: Document Exynos3 and
 Exynos5433 compatibles
Message-ID: <20200909071629.GA4400@dell>
References: <20200902161452.28832-1-krzk@kernel.org>
 <20200902161452.28832-2-krzk@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20200902161452.28832-2-krzk@kernel.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 02 Sep 2020, Krzysztof Kozlowski wrote:

> Document Samsung Exynos3 and Exynos5433 compatibles for system
> registers.
> 
> Reviewed-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> ---
> 
> Changes since v1:
> 1. Rebase on first patch
> ---
>  Documentation/devicetree/bindings/mfd/syscon.yaml | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
