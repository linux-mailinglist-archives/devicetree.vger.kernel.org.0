Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3D6B4333897
	for <lists+devicetree@lfdr.de>; Wed, 10 Mar 2021 10:21:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229538AbhCJJVQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Mar 2021 04:21:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231496AbhCJJUu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Mar 2021 04:20:50 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0C26C061760
        for <devicetree@vger.kernel.org>; Wed, 10 Mar 2021 01:20:49 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id l22so6622899wme.1
        for <devicetree@vger.kernel.org>; Wed, 10 Mar 2021 01:20:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=tWe8BBy/Grpe76XE/g2ZHEzNebNipo5s14kvH6ji3n0=;
        b=iV29gzW2+PaN/fUAydh0RYmuW30QVJz/q90S6gWPpH5P5qO00IgO8T/PoJOy0EvGwX
         pkHuy98buZUaQNtY8VNR/tiNYnAtTwIrr9OZ03GFAVsRHmWMZB5RLIi0boIO6Yjr8tvg
         P42xZE+BAhEXddAXcEhpgBh6+obyq3Obe7Nq/okXmoYuCfThyKKghGV1YjWfMD9KcEU+
         B6JwCP/t7Fz/mgWT6t0F7WqcVP4A2DOr0lyVMpe7HsQPBfs6mEEYDI7ypHblHrpsZRDC
         /YkejYbGKKG4tB5LKwwGbqGdJkWj1/uEXkn+c2snehxlQNiz1dQQEPvgpo2RUfAG1+MO
         m5Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=tWe8BBy/Grpe76XE/g2ZHEzNebNipo5s14kvH6ji3n0=;
        b=c6+a2HbygL1L08VJ7kj/LNazbrj5IFHOcR9rmfKuqkgBkxZtxnmlVeLDvGwHq7G+gv
         l2x0FFGLqe3wq+1KUpUzVLyECGyyxOiW2iSEwmDFnUZyUfP7fnnc3tRu5vmD/eV/bZyd
         7/8tYQK4BzFv55Ti5KQsn7dXZIQ86cOHFQDOU26bcpAUj031atQep9ZeqvKW6kHa6+Y0
         /3/MlgPSLYmzEl7OMSkn6VhUUbg5a9WhliafKr6qJqe/giu4z9de1cc7hFi3BTzYewv7
         wjd+JUB5UnI2pjT4r6E1yucBpDV8q6xR/vQqiRqCD4sCkaqSQU59u5w/BCEuOFC2lbOe
         WY3g==
X-Gm-Message-State: AOAM5306590gWXG4A1J4I/vEsMBuMYReAA0qov7EGvEiLN2zJRWiblzq
        sGUjwSM2tlQv/g+ohHvkICNhaw==
X-Google-Smtp-Source: ABdhPJyEitYe1kT60YMC2lFQpM7Na/RhDsTp4v/CvInEUBG8HKN4rdsdgmFXdibppd+8oGfzFmfXSw==
X-Received: by 2002:a7b:cf2f:: with SMTP id m15mr2297330wmg.177.1615368048614;
        Wed, 10 Mar 2021 01:20:48 -0800 (PST)
Received: from dell ([91.110.221.204])
        by smtp.gmail.com with ESMTPSA id x13sm28108821wrt.75.2021.03.10.01.20.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Mar 2021 01:20:48 -0800 (PST)
Date:   Wed, 10 Mar 2021 09:20:46 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Luca Ceresoli <luca@lucaceresoli.net>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Keerthy <j-keerthy@ti.com>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: mfd: lp875xx: add optional reset GPIO
Message-ID: <20210310092046.GN4931@dell>
References: <20210226142852.19632-1-luca@lucaceresoli.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210226142852.19632-1-luca@lucaceresoli.net>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 26 Feb 2021, Luca Ceresoli wrote:

> Document the LP8756x-Q1 and LP87524-Q1 ICs reset pin.
> 
> Signed-off-by: Luca Ceresoli <luca@lucaceresoli.net>
> ---
>  Documentation/devicetree/bindings/mfd/ti,lp87524-q1.yaml | 4 ++++
>  Documentation/devicetree/bindings/mfd/ti,lp87561-q1.yaml | 4 ++++
>  Documentation/devicetree/bindings/mfd/ti,lp87565-q1.yaml | 4 ++++
>  3 files changed, 12 insertions(+)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
