Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E99D6D276B
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2019 12:45:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731553AbfJJKpY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Oct 2019 06:45:24 -0400
Received: from mail-pf1-f196.google.com ([209.85.210.196]:42574 "EHLO
        mail-pf1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726359AbfJJKpY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Oct 2019 06:45:24 -0400
Received: by mail-pf1-f196.google.com with SMTP id q12so3631981pff.9
        for <devicetree@vger.kernel.org>; Thu, 10 Oct 2019 03:45:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=YeFYhKm4PJo5d1ZlY/G1oQFiqY2ifkLQAS5VyiJD2kA=;
        b=cG3q9551YC42aPOxOY7I1S4iCUNQ+FiNULJWSzr2B6bjMy036gzBA007+gLvAx5def
         X2UCn8VpNQkf5PrY1dSf/jLn9ogdqFQ05qumhkMbpH0aXYl/3zaFCkbBWWsx/m9EcTJN
         EGPWiespyxve8xlsh9sSSV0IC3TnlyP2SHIz++ugv6fir6w4NoPrYuJN5eiHRl9Pq0jU
         6q1jsNvySYH+umo3d7rqbZPwL4Z7qbGyQiZ2va1gssLuCcIlCVWy/qRkR1M7XkimuCKF
         H155NqnphhFljtBZEkZGQ2DM7KWh+8rYmfRFXVzFCmdy+vLllLmQEdfJc/kvo1u+9+0P
         ZVwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=YeFYhKm4PJo5d1ZlY/G1oQFiqY2ifkLQAS5VyiJD2kA=;
        b=mhJHOG2g+b8SGVPjhIWpahQxrJ6BohWk6UY96AxnFenzXmG8uMu36+smziUnrabxgN
         Nrc5Mg6oucECnlJyMadJO/8YaOnXGrAogIXDoxGc1bx8C1rLKU4JH4zOzMggfp91HlE1
         T4UG3Pp8EasolFX9bQVeSuceL1WpsFhIhZoVTxrV/jeS5+Dm+sFBGmVI2A0oIPoV3dVR
         q5FktaEUbuZ7v6gGNDPKgeR5j3x6nvS8GiqhH75XwDJ8ze0vpfcMOIz+2PcfLYLIqTst
         Kwu9fY6r80P/01D2389DJXqS0iYByNIGC7z7vB25klUfzOIJjrg/vT86dPTRVBJlr9Xy
         3rxQ==
X-Gm-Message-State: APjAAAVgjUzC/Gs2UEH5631aStX1T3KPx6+ZJpDa96vOpuM+JbKILWt9
        sdDowDJzkvq1eMH+jv5l7taENg==
X-Google-Smtp-Source: APXvYqwYM9M/m3MClMu4Z8S007xBWdkHJrU/NyiZs+nhmdbjrvkkM8AQQUaF3lEebzVejNsXRxT5JA==
X-Received: by 2002:a17:90a:c383:: with SMTP id h3mr10552761pjt.122.1570704323312;
        Thu, 10 Oct 2019 03:45:23 -0700 (PDT)
Received: from localhost ([122.172.151.112])
        by smtp.gmail.com with ESMTPSA id z13sm6824122pfq.121.2019.10.10.03.45.22
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Oct 2019 03:45:22 -0700 (PDT)
Date:   Thu, 10 Oct 2019 16:15:20 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     "H. Nikolaus Schaller" <hns@goldelico.com>
Cc:     =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
        Tony Lindgren <tony@atomide.com>,
        Rob Herring <robh+dt@kernel.org>,
        Adam Ford <aford173@gmail.com>,
        =?utf-8?B?QW5kcsOp?= Roth <neolynx@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        "Rafael J. Wysocki" <rjw@rjwysocki.net>,
        Enric Balletbo i Serra <eballetbo@gmail.com>,
        Javier Martinez Canillas <javier@dowhile0.org>,
        Roger Quadros <rogerq@ti.com>,
        Teresa Remmet <t.remmet@phytec.de>, linux-omap@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, letux-kernel@openphoenux.org,
        kernel@pyra-handheld.com, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 0/8] OMAP3: convert opp-v1 to opp-v2 and read speed
 binned / 720MHz grade bits
Message-ID: <20191010104520.n77wxxyxvyeo2i4u@vireshk-i7>
References: <cover.1568224032.git.hns@goldelico.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1568224032.git.hns@goldelico.com>
User-Agent: NeoMutt/20180716-391-311a52
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11-09-19, 19:47, H. Nikolaus Schaller wrote:
> CHANGES V3:
> * make omap36xx control the abb-ldo and properly switch mode
>   (suggested by Adam Ford <aford173@gmail.com>)
> * add a note about enabling the turbo-mode OPPs

Applied the series to cpufreq/arm tree.

Also shared a branch for you Tony: cpufreq/ti/oppv2.

-- 
viresh
