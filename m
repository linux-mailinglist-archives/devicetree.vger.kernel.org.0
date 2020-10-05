Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2885B283188
	for <lists+devicetree@lfdr.de>; Mon,  5 Oct 2020 10:08:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725880AbgJEIIe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Oct 2020 04:08:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725885AbgJEIIb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Oct 2020 04:08:31 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09F8EC0613A7
        for <devicetree@vger.kernel.org>; Mon,  5 Oct 2020 01:08:30 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id k18so7762934wmj.5
        for <devicetree@vger.kernel.org>; Mon, 05 Oct 2020 01:08:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=UCvVeSLKK559VO4ZB+QwjH9RWXmffaa+dxijfritaDY=;
        b=csq4/ueW8T9mVp6iz7fMWRFUokeuGS/44HWy7kRgQ9PXlgvMdWE11xdG7d1Pja6W89
         Ov38XwM/63PDGoqZJUEuY/GRpmqWBkC+yvomfmiIfyPurE0i78ucTUCBRUb/H+WtACv3
         YIa0fwJ6yAHbHkUvLjpTs7n3iErMhqRUadja9/TeA94BIwtuf9hqhZ/8YjfpGZUgXbZV
         zOz1ztCMXq3SbADwlW6fIA9IedcJjAJvIhqFciPkTE6InpjbzhWoDhdH8pNbE3GUyJ1q
         b2FbcnzA2vC4q7SDyW2vbbSzbZxt9X3k+mLOYtrdToPapug8pWW0McfJFuM7WkK8BHle
         iwTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=UCvVeSLKK559VO4ZB+QwjH9RWXmffaa+dxijfritaDY=;
        b=aInS0C9bQ04k3PrhjrtyJLt1ea8wUaYlrtpaFPaJ/M0tZdhSNkHGoSopsGXALDfFEc
         1/XfE0PAYsFxvppTatQ3ukcjJR1mKGk3dDA7UymizDYujo2vVFMR6YPdJUDvw4ReQKzL
         yi8uHkyc7XXNnnk41TqTCP7u0NaGfMCGTGVgdD3wC//wuDOY4NUDhQ+vLOs4TY7dkYMX
         b2XQDY8ZG6KhfXTkCLPeIw4rHjQDYplFp0wxvAKKGKB/zEAHhGC9zYRQ0lgo9oql0KFN
         bYoISOpshwaS9C6/E3F/1SGvYdHVCQJAgpBlvQPGjXXj88iG+W18dYpLFeIliC3PuvOf
         PxgA==
X-Gm-Message-State: AOAM530weCsrQSp+Cw3F1nm2QM8oCULK2/J0qTtOth4KgpQYm8l6WcGF
        Mck/aoXLLhZ3a4Mo47vsNbq70A==
X-Google-Smtp-Source: ABdhPJyV5jLCEoDv4YUwDHeaUo0em0iKgJXzTx7AilzgUOf3OUbqBilo8mHXN6Iqk4MLuvi0eVu10w==
X-Received: by 2002:a7b:cf04:: with SMTP id l4mr6810566wmg.137.1601885308697;
        Mon, 05 Oct 2020 01:08:28 -0700 (PDT)
Received: from dell ([91.110.221.236])
        by smtp.gmail.com with ESMTPSA id i14sm11940941wml.24.2020.10.05.01.08.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Oct 2020 01:08:28 -0700 (PDT)
Date:   Mon, 5 Oct 2020 09:08:26 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Roger Quadros <rogerq@ti.com>, Tero Kristo <t-kristo@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH] dt-bindings: mfd: ti,j721e-system-controller: Fix
 incorrect pattern property
Message-ID: <20201005080826.GU6148@dell>
References: <20201002230606.3522954-1-robh@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20201002230606.3522954-1-robh@kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 02 Oct 2020, Rob Herring wrote:

> Pattern properties go under 'patternProperties', not 'properties'.
> Otherwise, the pattern is treated as a literal string.
> 
> A corresponding meta-schema check has been added to catch bad DT property
> names like this.
> 
> Fixes: e0f946915b23 ("dt-bindings: mfd: ti,j721e-system-controller.yaml: Add J721e system controller")
> Cc: Roger Quadros <rogerq@ti.com>
> Cc: Tero Kristo <t-kristo@ti.com>
> Cc: Lee Jones <lee.jones@linaro.org>
> Cc: Kishon Vijay Abraham I <kishon@ti.com>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  .../devicetree/bindings/mfd/ti,j721e-system-controller.yaml   | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Acked-by: Lee Jones <lee.jones@linaro.org>

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
