Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EF0EB244D48
	for <lists+devicetree@lfdr.de>; Fri, 14 Aug 2020 19:05:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728227AbgHNRFr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Aug 2020 13:05:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34052 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728203AbgHNRFq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Aug 2020 13:05:46 -0400
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com [IPv6:2a00:1450:4864:20::143])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30386C061384
        for <devicetree@vger.kernel.org>; Fri, 14 Aug 2020 10:05:46 -0700 (PDT)
Received: by mail-lf1-x143.google.com with SMTP id s9so5177976lfs.4
        for <devicetree@vger.kernel.org>; Fri, 14 Aug 2020 10:05:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=8+3+utw2qoRZvLkLueDeqTz6MAU6wAFy/JkEJxDI190=;
        b=ZWgJmUCeihHACbWSIyHdS2NjmGo8wzQS/+58lG4r5mWLm1gQC1nYxuKqBjHlBt4RRE
         LlB2pub5ZH77qfJALXBdntKeIM5bZNGksNs0tUjbtOgWMrXftXIyPNho2DFZuIe37v+N
         WdIouqpi54ottOqyWtTG+nEmeuhTcfdLH4ngm9XT9+Ddx0Rb7Mvw1osKqoZxU0xSDLxd
         N20VI1G+tCE04FOKIviXBz/Hd9sfpoP11wGv8qFO1MTVACWSXi3++1UqBonAp/9Q/Wpy
         dR2Bz71icKsujFWb6KuQr26VCZqwvCasATC1iCKC2hrgYejXnjoiq2yMiKkGstTF09/G
         zw2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=8+3+utw2qoRZvLkLueDeqTz6MAU6wAFy/JkEJxDI190=;
        b=gs4BVdkKTLlyEs3DAEuiTpwxDJT+ipzX0/Pa7NF0+racyI2Dsp5Lerlxx1CkFn843u
         X8kx03rUHUv4uVQnD04c/WxCpKTbyRAhsiOdAHX4x6lcwhkN6HGr4mkAhTLtBqlc6dRw
         rc25zfUplHcKbzH+a+IfPJsZ+fW4EogfMYtDMMWinkYoUy9gSV4+rVidd4roLOZAsIpu
         nw+A0Yn2MTcCDYvCDX0693Y0TToGR/v23M3YVXnAucgBgabVwksy98SeCasKt61A2XTN
         P2wlchCb9GbyzxOby3RrQwJVFB3Tal4D8jS00vvcZoXF3jSYZXCH6gcw/VXOY6baOAAg
         7KJA==
X-Gm-Message-State: AOAM5322TBPsbK0ADo/bvFK5Yb+RrwKXo7bdlcRYe1bhjETv+tfDwXEe
        2ZrzZTfaar+xRwKEkKDQCUhVIw==
X-Google-Smtp-Source: ABdhPJzaklkyPmJ9zd43OPheLnHOE8PZBUWYTxxslFUIk7wE8Tgst5f8HCTE8QoQCCHx2a6NzMJ0AQ==
X-Received: by 2002:ac2:5dc1:: with SMTP id x1mr1622219lfq.217.1597424744650;
        Fri, 14 Aug 2020 10:05:44 -0700 (PDT)
Received: from [192.168.43.7] ([188.162.64.200])
        by smtp.gmail.com with ESMTPSA id m64sm2056913lfd.0.2020.08.14.10.05.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Aug 2020 10:05:43 -0700 (PDT)
Subject: Re: [PATCH v10 3/5] drm/msm/dp: add support for DP PLL driver
To:     Tanmay Shah <tanmay@codeaurora.org>, swboyd@chromium.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, robdclark@gmail.com
Cc:     linux-kernel@vger.kernel.org, freedreno@lists.freedesktop.org,
        seanpaul@chromium.org, daniel@ffwll.ch, airlied@linux.ie,
        aravindh@codeaurora.org, abhinavk@codeaurora.org,
        khsieh@codeaurora.org, Chandan Uddaraju <chandanu@codeaurora.org>,
        Vara Reddy <varar@codeaurora.org>
References: <20200812044223.19279-1-tanmay@codeaurora.org>
 <20200812044223.19279-4-tanmay@codeaurora.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Message-ID: <821b5cf9-5ca0-7026-fd99-9a32285ed030@linaro.org>
Date:   Fri, 14 Aug 2020 20:05:41 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20200812044223.19279-4-tanmay@codeaurora.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On 12/08/2020 07:42, Tanmay Shah wrote:
 > From: Chandan Uddaraju <chandanu@codeaurora.org>
 >
 > Add the needed DP PLL specific files to support
 > display port interface on msm targets.

[skipped]

 > diff --git a/drivers/gpu/drm/msm/dp/dp_pll_private.h 
b/drivers/gpu/drm/msm/dp/dp_pll_private.h
 > new file mode 100644
 > index 000000000000..475ba6ed59ab
 > --- /dev/null
 > +++ b/drivers/gpu/drm/msm/dp/dp_pll_private.h
 > @@ -0,0 +1,98 @@
 > +/* SPDX-License-Identifier: GPL-2.0-only */
 > +/*
 > + * Copyright (c) 2016-2020, The Linux Foundation. All rights reserved.
 > + */
 > +
 > +#ifndef __DP_PLL_10NM_H
 > +#define __DP_PLL_10NM_H
 > +
 > +#include "dp_pll.h"
 > +#include "dp_reg.h"
 > +
 > +#define DP_VCO_HSCLK_RATE_1620MHZDIV1000    1620000UL
 > +#define DP_VCO_HSCLK_RATE_2700MHZDIV1000    2700000UL
 > +#define DP_VCO_HSCLK_RATE_5400MHZDIV1000    5400000UL
 > +#define DP_VCO_HSCLK_RATE_8100MHZDIV1000    8100000UL
 > +
 > +#define NUM_DP_CLOCKS_MAX            6
 > +
 > +#define DP_PHY_PLL_POLL_SLEEP_US        500
 > +#define DP_PHY_PLL_POLL_TIMEOUT_US        10000
 > +
 > +#define DP_VCO_RATE_8100MHZDIV1000        8100000UL
 > +#define DP_VCO_RATE_9720MHZDIV1000        9720000UL
 > +#define DP_VCO_RATE_10800MHZDIV1000        10800000UL
 > +
 > +struct dp_pll_vco_clk {
 > +    struct clk_hw hw;
 > +    unsigned long    rate;        /* current vco rate */
 > +    u64        min_rate;    /* min vco rate */
 > +    u64        max_rate;    /* max vco rate */
 > +    void        *priv;
 > +};
 > +
 > +struct dp_pll_db {

This struct should probably go into dp_pll_10nm.c. dp_pll_7nm.c, for 
example, will use slightly different structure.

 > +    struct msm_dp_pll *base;
 > +
 > +    int id;
 > +    struct platform_device *pdev;
 > +
 > +    /* private clocks: */
 > +    bool fixed_factor_clk[NUM_DP_CLOCKS_MAX];
 > +    struct clk_hw *hws[NUM_DP_CLOCKS_MAX];

Then these two fields can use exact number of clocks rather than 
NUM_DP_CLOCKS_MAX.

 > +    u32 num_hws;
 > +
 > +    /* lane and orientation settings */
 > +    u8 lane_cnt;
 > +    u8 orientation;
 > +
 > +    /* COM PHY settings */
 > +    u32 hsclk_sel;
 > +    u32 dec_start_mode0;
 > +    u32 div_frac_start1_mode0;
 > +    u32 div_frac_start2_mode0;
 > +    u32 div_frac_start3_mode0;
 > +    u32 integloop_gain0_mode0;
 > +    u32 integloop_gain1_mode0;
 > +    u32 vco_tune_map;
 > +    u32 lock_cmp1_mode0;
 > +    u32 lock_cmp2_mode0;
 > +    u32 lock_cmp3_mode0;
 > +    u32 lock_cmp_en;
 > +
 > +    /* PHY vco divider */
 > +    u32 phy_vco_div;
 > +    /*
 > +     * Certain pll's needs to update the same vco rate after resume in
 > +     * suspend/resume scenario. Cached the vco rate for such plls.
 > +     */
 > +    unsigned long    vco_cached_rate;
 > +    u32        cached_cfg0;
 > +    u32        cached_cfg1;
 > +    u32        cached_outdiv;
 > +
 > +    uint32_t index;
 > +};
 > +
 > +static inline struct dp_pll_vco_clk *to_dp_vco_hw(struct clk_hw *hw)
 > +{
 > +    return container_of(hw, struct dp_pll_vco_clk, hw);
 > +}
 > +
 > +#define to_msm_dp_pll(vco) ((struct msm_dp_pll *)vco->priv)
 > +
 > +#define to_dp_pll_db(x)    ((struct dp_pll_db *)x->priv)
 > +
 > +int dp_vco_set_rate_10nm(struct clk_hw *hw, unsigned long rate,
 > +                unsigned long parent_rate);
 > +unsigned long dp_vco_recalc_rate_10nm(struct clk_hw *hw,
 > +                unsigned long parent_rate);
 > +long dp_vco_round_rate_10nm(struct clk_hw *hw, unsigned long rate,
 > +                unsigned long *parent_rate);
 > +int dp_vco_prepare_10nm(struct clk_hw *hw);
 > +void dp_vco_unprepare_10nm(struct clk_hw *hw);
 > +
 > +int msm_dp_pll_10nm_init(struct msm_dp_pll *dp_pll, int id);
 > +void msm_dp_pll_10nm_deinit(struct msm_dp_pll *dp_pll);

These functions don't seem to be used outside of dp_pll_10nm. What about 
making them static?


-- 
With best wishes
Dmitry
