Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C45AE481485
	for <lists+devicetree@lfdr.de>; Wed, 29 Dec 2021 16:41:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240593AbhL2PlX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Dec 2021 10:41:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237096AbhL2PlW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Dec 2021 10:41:22 -0500
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com [IPv6:2607:f8b0:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95C96C061574
        for <devicetree@vger.kernel.org>; Wed, 29 Dec 2021 07:41:22 -0800 (PST)
Received: by mail-oi1-x229.google.com with SMTP id be32so35445294oib.11
        for <devicetree@vger.kernel.org>; Wed, 29 Dec 2021 07:41:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=k8xcoM08aGsQ9cgOiWILeKp3rFeqCGSS3Z+ipGXVLHU=;
        b=rwvDoEk/kN13V2PMeafxRzr64jH39i+khURkn4NYSnLlyLDE/zubrsMHorgomf5ZdW
         ofdrt4LcayFTFAIXQ218p3IxCVFu/IKFBucpaYzXAsWKTEWAyzrI+OrMwYp9SR02kxXG
         YBDmORwtu8QGG6Y5Cg2QDtFrQivrTANYT33g+6TKqV4zbbo/4P8QdULaRtc7cQdpax1Z
         4NvEKbWPnXyVXrcyQ8e18xEppjuy694uWVwou/u/tJFYsiwVfPK/ZmOISZlJo/HjD0Mu
         0hfN5DDDwSvPuHXaaNVQttJq7LNjVZ/QjvKY9Bqc72QaCwuu+ojUEm/uCESmSH8imDI8
         5rJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=k8xcoM08aGsQ9cgOiWILeKp3rFeqCGSS3Z+ipGXVLHU=;
        b=2vyOw+/vxLuI9fRLXSfxMIhKI/6SoYqZkZhThpc5KgYU43nZjST6x2AIdgFAZ37pwB
         TDzl/nGlsOxEbkZ2G94RUuOEjrFEG3M91MkPdEpoQc20gPwbYAp1jtcNUQoB6nNbo2ec
         JrrEBStzKeOO7yDDflMBLT5kjv0+ROiewwlZ98xyD3EmiVfAOd+yIP3ZNjaAC8lSyiHH
         CuKlMzm41F7+4wo+eSwiQtYvK1DXDgkOTRlUf/CqmOdfrQ3BfU9jLlG921YyKueh8FwQ
         ARZupBV/3KlERJxluyZ2p5cb/bavfcZXmD9+pIyq2MW25tDOfwNrEIznhoHKQX2GI0sT
         IUDA==
X-Gm-Message-State: AOAM533CqivUz2Z/9T0PWWqMf1n7ypqjAK0OqTYCEm8Z857DB7sSlO8F
        G7XOxNt0Zl+Ek0N7Gbzn/V8Hfw==
X-Google-Smtp-Source: ABdhPJwJUr/fpObTJMHPrT/NkF6fQxl07QYgOqC8iAwJuKY/YU1wquZM9/dXbiKugVMhqjvafFZ8sA==
X-Received: by 2002:a05:6808:1396:: with SMTP id c22mr21870052oiw.59.1640792481997;
        Wed, 29 Dec 2021 07:41:21 -0800 (PST)
Received: from ripper (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id k101sm3988166otk.60.2021.12.29.07.41.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Dec 2021 07:41:21 -0800 (PST)
Date:   Wed, 29 Dec 2021 07:42:19 -0800
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     20200622075956.171058-5-bjorn.andersson@linaro.org
Cc:     linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Andy Gross <agross@kernel.org>,
        Ohad Ben-Cohen <ohad@wizery.com>,
        Baolin Wang <baolin.wang7@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v2 4/4] arm64: dts: qcom: sm8250: Drop tcsr_mutex syscon
Message-ID: <YcyB21OI0GVhNmQJ@ripper>
References: <JWEO4R.7M77VCZXYS531@ixit.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <JWEO4R.7M77VCZXYS531@ixit.cz>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat 25 Dec 06:57 PST 2021, David Heidelberg wrote:

> Hello,
> 
> any particular reason, why you did applied this patch only to sm8250?
> 

I was working on a 8250 board when this annoyed me, and I wanted to keep
the "example" clean so I only did that platform and then forgot to go
back and clean up the rest. (Same thing with the smem compatible moving
to reserved-memory).

> Is it safe to convert rest of tcsr-mutex nodes to new schema without
> additional testing?
> 

I can't think of any reason it wouldn't be safe, so please feel free to
prepare a patch.

Thanks,
Bjorn
