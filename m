Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C6ABC442643
	for <lists+devicetree@lfdr.de>; Tue,  2 Nov 2021 04:55:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232754AbhKBD6K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Nov 2021 23:58:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232129AbhKBD6D (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Nov 2021 23:58:03 -0400
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8D01C061203
        for <devicetree@vger.kernel.org>; Mon,  1 Nov 2021 20:55:24 -0700 (PDT)
Received: by mail-pl1-x630.google.com with SMTP id p18so10621778plf.13
        for <devicetree@vger.kernel.org>; Mon, 01 Nov 2021 20:55:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=m8cVtkWKgPUMZJ3AtVb3knoep8UoSR2rrED4LPbjbkI=;
        b=GHiBd4jBYqQVyoTuEDOCGYv7kgWm3OdNrGRL353yRlewVRaowwKQixpzN/LH6AFpid
         m4WzVFrdeu3ZX3bHBHAUmBPp5xLmoaSPRwyZfQxrnuShScp+Q6ZxSuWHX2bfXDQOCgLC
         3USNfB9kUE0AnWcziU5RZ7rqGzmPTEZI5Ip96KwSfOdOttBqaQXwfXCxTIZsAag/JzDC
         7AvG9MMdZBTuPzHtwmdIii/ejhX1Ml/P8Xn1aKA+7W2mRFTI3n5GfeUIPBrumqQtf82b
         QM1l/EF3ixqxynaAGncd18LbuBwGngkBA/KKg0fssdb8VLYbZZKleUmlY4nL4vgkp29F
         FRJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=m8cVtkWKgPUMZJ3AtVb3knoep8UoSR2rrED4LPbjbkI=;
        b=UaWvJBW5XZhcWLngqkp/qTCHrTQl+7TdAzUxRsbUwmD3WdWcv8utBsza6EuyWEb+S/
         hwKQZndwJUXS5ilLT5eTYODt8ZeKHzqji1dPH3cfdBdhoHOrWZItIYv8sZU0mrO7CWmj
         grIpAzgkDhqqJ6Be9AQ5y9lNhjtwJLesEiyTz7MTV9CESiShXpDC/q7XdmCte2MfAcJB
         +iCTydXQptl5xIsgsUnQN+3wzJkXJr3ssLdrTzNUA2Zh6mcCXYk6vofuDPLT3H9a0idK
         30U7t3ViVUzjlRxFzcKFSq55+gO9TJ9bLpneHoOfdLl5tB9z+9fmXGLL/OtE0AH9zzHM
         WviA==
X-Gm-Message-State: AOAM5318VIUKBDglCJ6wsEXbsYk9bWQS/0HHl70FuQ1+rjyNsBF+j3T5
        CVen3jU1IqTavq9O2vqrlPi4ew==
X-Google-Smtp-Source: ABdhPJxYfBW/c6mWtHDy4XXyKl3wz+a7WMN6k3KSAwhuYnuossmKhj2QHWFZWPxEOROKs7wzZIA0fg==
X-Received: by 2002:a17:90b:1d86:: with SMTP id pf6mr3688966pjb.20.1635825324232;
        Mon, 01 Nov 2021 20:55:24 -0700 (PDT)
Received: from localhost ([106.201.113.61])
        by smtp.gmail.com with ESMTPSA id c3sm3264992pfv.25.2021.11.01.20.55.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Nov 2021 20:55:23 -0700 (PDT)
Date:   Tue, 2 Nov 2021 09:25:22 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Dmitry Osipenko <digetx@gmail.com>
Cc:     Viresh Kumar <vireshk@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
        Nishanth Menon <nm@ti.com>, Rob Herring <robh+dt@kernel.org>,
        David Heidelberg <david@ixit.cz>,
        Thierry Reding <treding@nvidia.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-tegra@vger.kernel.org
Subject: Re: [PATCH v4] dt-bindings: opp: Allow multi-worded OPP entry name
Message-ID: <20211102035522.z3nemnrz6r5ycf6z@vireshk-i7>
References: <20211028221547.22601-1-digetx@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211028221547.22601-1-digetx@gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29-10-21, 01:15, Dmitry Osipenko wrote:
> Not all OPP entries fit into a single word. In particular NVIDIA Tegra OPP
> tables use multi-word names. Allow OPP entry to have multi-worded name
> separated by hyphen. This silences DT checker warnings about wrong naming
> scheme.
> 
> Reviewed-by: David Heidelberg <david@ixit.cz>
> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>

Applied. Thanks.

-- 
viresh
