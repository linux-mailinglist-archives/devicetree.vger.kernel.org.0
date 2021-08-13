Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 38E943EAF0D
	for <lists+devicetree@lfdr.de>; Fri, 13 Aug 2021 05:58:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233750AbhHMD60 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Aug 2021 23:58:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34032 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238657AbhHMD6Y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Aug 2021 23:58:24 -0400
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com [IPv6:2607:f8b0:4864:20::1029])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75EDBC061756
        for <devicetree@vger.kernel.org>; Thu, 12 Aug 2021 20:57:58 -0700 (PDT)
Received: by mail-pj1-x1029.google.com with SMTP id j1so13410213pjv.3
        for <devicetree@vger.kernel.org>; Thu, 12 Aug 2021 20:57:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=MvmuwhxcqYAbdPmkTIufV5uQRwUnrxELEdSjPA9KrXo=;
        b=eOwiRNh4MUanAxbqTJMBRZCZfu41L9y7gdH60FKetDLsqWzSItkABZc2JszeZ82opI
         bfkEzhtcD2es9gu2FAoDAUD+8r0bgLFFKMlRuYwEIbemol70oWZxCO31WcLOv5eMCRNa
         CJz0KsyMOp6WuJk25J8DqIzQcqdedVyC1mhgHbhFE87rdyadBI69e49/dXtQgjr5nbwK
         VwFZ8KAWt5PmbX1zUdzO5/uHS77AD+9oVD4cjLD1dgCyEgN0HdYt+pNQ9evzQR5Xju/D
         A2Cbwl1uAfUjP6ecqadlbt+ewPMPfQYRiHSWmx1YWwU4/vp+unPk39FFAHC70KWSX+1c
         sUrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=MvmuwhxcqYAbdPmkTIufV5uQRwUnrxELEdSjPA9KrXo=;
        b=FlJ5Ej2uoldbiuJtEw0ZfBlnGcOYRcW8+fVQlGvzgyBp84Cugyc//75iz0AahVzMuu
         ASJGsKY/7Kt1CyVw52w/oKLRg1qdkRLUwaH6iep2c62RuYNT5tx56YlSzQ6YsoaPr8B+
         pds7qdKhsuE+Z5gcr3/GeuatQ9qnOUnILB9hKsl/xsgXZE02joAcoYJwmLv64VryY++u
         7Xn7rKaYPs7AC7JQI8SQbq6j/BNfVmpEujC5TpglrXceJCM6gpIMwsydSJy9TXGNZ4Ym
         7bNJ+Lr9N6Pgn3xOjoP3zdoq5a0UNCBYVCNMV3YPTYnJYKruMJAtT4ufXHGD8FdUaWG8
         VFHA==
X-Gm-Message-State: AOAM5309N+vnnL8sNdrgrfBg+No4oMkx6eSxHB5hU4F/sAs5kRC07UQq
        XTCWJRvRgPhAidG95b9/LP0nww==
X-Google-Smtp-Source: ABdhPJxRDakJcVqHqBRWt5r47fIPr4C/oo8C0jNq80oWE8P2YNHnQVm97OlAzna+HWJyBkUGtgz+2g==
X-Received: by 2002:a65:44c3:: with SMTP id g3mr421133pgs.233.1628827076146;
        Thu, 12 Aug 2021 20:57:56 -0700 (PDT)
Received: from localhost ([122.172.201.85])
        by smtp.gmail.com with ESMTPSA id x1sm299780pfn.64.2021.08.12.20.57.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Aug 2021 20:57:55 -0700 (PDT)
Date:   Fri, 13 Aug 2021 09:27:53 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Rajendra Nayak <rnayak@codeaurora.org>
Cc:     ulf.hansson@linaro.org, bjorn.andersson@linaro.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        swboyd@chromium.org, rojay@codeaurora.org, stephan@gerhold.net,
        digetx@gmail.com
Subject: Re: [PATCH v7 1/3] opp: Don't print an error if required-opps is
 missing
Message-ID: <20210813035753.7b6ye4yzztmp2ly7@vireshk-i7>
References: <1628767642-4008-1-git-send-email-rnayak@codeaurora.org>
 <1628767642-4008-2-git-send-email-rnayak@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1628767642-4008-2-git-send-email-rnayak@codeaurora.org>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12-08-21, 16:57, Rajendra Nayak wrote:
> The 'required-opps' property is considered optional, hence remove
> the pr_err() in of_parse_required_opp() when we find the property is
> missing.
> While at it, also fix the return value of
> of_get_required_opp_performance_state() when of_parse_required_opp()
> fails, return a -ENODEV instead of the -EINVAL.
> 
> Signed-off-by: Rajendra Nayak <rnayak@codeaurora.org>
> ---
>  drivers/opp/of.c | 12 ++----------
>  1 file changed, 2 insertions(+), 10 deletions(-)

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh
