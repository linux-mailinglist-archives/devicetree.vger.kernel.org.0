Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D10B221E4F8
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2020 03:12:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726460AbgGNBMW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Jul 2020 21:12:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44264 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726435AbgGNBMW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Jul 2020 21:12:22 -0400
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com [IPv6:2607:f8b0:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23AC8C08C5DB
        for <devicetree@vger.kernel.org>; Mon, 13 Jul 2020 18:12:22 -0700 (PDT)
Received: by mail-pg1-x541.google.com with SMTP id e18so6843003pgn.7
        for <devicetree@vger.kernel.org>; Mon, 13 Jul 2020 18:12:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=5yjaTy96iRFPTsi26P18yq64D5S2151Zztu56aP2UQk=;
        b=DKREwuM1AdDK/M5PRjMceNQQ5PSr4Xfy3P/tz5j9KLqG7xpQvwFBtF6iqOKNiHJeHz
         0LtGhspN0cAeU/1/I6hlmRFzPP+PakMNDDWkk+6neyLAw6VjOq3PKxLlGjVYFwnl71jY
         CvuZix9jHtiIZKtZpVPiMHxs6yo596oGk6UAo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=5yjaTy96iRFPTsi26P18yq64D5S2151Zztu56aP2UQk=;
        b=MlLQnt/P5VceqxlQO/1Ge2yEjJdybSNRNmwfXUZXoASaIoRR8yNysKGdi06ggFYYRU
         UwSrm3NcAAvx4P1EyHlgftltZyeAsiLV7Hwz1sk+mzGyVOQ7CuW+8/vyvhSKvr4mOwUX
         we+fJ8Zpq8NboMyZeZF59uNL0zP9IqPJWQXr7OdmPysyYYRxRf05Jzhqo1VXekDTaGK1
         UdAdsS1y0N4dP3m6oLY9ON5lTNhWm4ojRxlzTfiw8cdCdUfFMW24H7wXLbWRkn0Q4gdV
         NOEo4oOkhPzINypunCtJquCm+Ho4j0ZbOkJXSTXuzxg24DQMO02QxJSXW3L8PpwKgPmH
         oBYw==
X-Gm-Message-State: AOAM533/Sm4JfvsQpawB3upQdvVYCWzLsaaymTrl+Jxio+kH1TbfoX27
        DHuXcVaK26+CVRMTrdymqXFqhA==
X-Google-Smtp-Source: ABdhPJzURU5w7Tj+O39sbKidAAXjNVHx+XXYlAgKEyC4g8eI7DWw01L8nI4SKvyRTPsf2//G04xEaQ==
X-Received: by 2002:a05:6a00:14ce:: with SMTP id w14mr2275557pfu.121.1594689141507;
        Mon, 13 Jul 2020 18:12:21 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:f693:9fff:fef4:e70a])
        by smtp.gmail.com with ESMTPSA id e8sm15972489pfl.125.2020.07.13.18.12.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jul 2020 18:12:20 -0700 (PDT)
Date:   Mon, 13 Jul 2020 18:12:19 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Kalyan Thota <kalyan_t@codeaurora.org>
Cc:     dri-devel@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, robdclark@gmail.com,
        seanpaul@chromium.org, hoegsberg@chromium.org,
        dianders@chromium.org, mkrishn@codeaurora.org,
        travitej@codeaurora.org, nganji@codeaurora.org
Subject: Re: [v1] drm/msm/dpu: add support for clk and bw scaling for display
Message-ID: <20200714011219.GQ3191083@google.com>
References: <1592489321-29213-1-git-send-email-kalyan_t@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1592489321-29213-1-git-send-email-kalyan_t@codeaurora.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jun 18, 2020 at 07:38:41PM +0530, Kalyan Thota wrote:
> This change adds support to scale src clk and bandwidth as
> per composition requirements.
> 
> Interconnect registration for bw has been moved to mdp
> device node from mdss to facilitate the scaling.
> 
> Changes in v1:
>  - Address armv7 compilation issues with the patch (Rob)
> 
> Signed-off-by: Kalyan Thota <kalyan_t@codeaurora.org>

It seems this is an evolution of this series: https://patchwork.kernel.org/project/linux-arm-msm/list/?series=265351

Are the DT bits of the series still valid? If so please include them in the
series, otherwise please add DT patches to allow folks to test and review,
and get them landed in Bjorn's tree after the driver changes have landed.
