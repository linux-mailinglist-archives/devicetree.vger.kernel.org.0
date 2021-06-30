Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 651413B7C4C
	for <lists+devicetree@lfdr.de>; Wed, 30 Jun 2021 05:53:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232840AbhF3D4P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Jun 2021 23:56:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232977AbhF3D4O (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Jun 2021 23:56:14 -0400
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA38EC061768
        for <devicetree@vger.kernel.org>; Tue, 29 Jun 2021 20:53:12 -0700 (PDT)
Received: by mail-pl1-x633.google.com with SMTP id z4so699820plg.8
        for <devicetree@vger.kernel.org>; Tue, 29 Jun 2021 20:53:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=UD8T97d6m5wJ+ibsAaXsXaCeGXCEKJyV5O+K6ZTbqtk=;
        b=R7GIPWVXUcCcFCZro/fdSCmKWKSZvb0/CPUuhSh6bLmBN+XLgDK4j3FaDTiEwW2Uyc
         4jlJ2KBTfrJv6u4/aSfvO+bH6Y1Bw0Oe2fA800RIkbCB9DHg7SIguJYYOdTorgfb4I9D
         ohrOYZYT/ehlwSZRzW5vwL7NJwK+XdkCOltFHuKFzwXVe0RrulCgKq8qSyIw8567KuQi
         SF3Ka/kuOYQ6idEixi3oo3CsrtcRiCAirnFwdTLSQV1J6NVDIwgeu77++PNC+5KZ8ukw
         RCccynICKc9Li5OSM0gK+/iCqXDWMWfQq4PGbmIsQHpsjyX8IWlYvLABj1BSmn6KjIMr
         KkWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=UD8T97d6m5wJ+ibsAaXsXaCeGXCEKJyV5O+K6ZTbqtk=;
        b=dh98Jo3jDcfbVdS5VQyMuREK2Ac9MFJG4JQUmBOLj48w8I1O855RKr4MCKQq3V9rCA
         DY3K6jv7BROYUPpP28vJNqEpuFe27bW0Uj3z1b+tPWXpg9J+8G2cqWk0YAJOHMT9CXdp
         NDWKurRSOd89aayFe3s/m3Kp7a5Wy13iEn15T6m1jow4WgC7Dni5iAy5MyZjG6L778Or
         ruyPJGPFVKCvGvSKkSEwH3xBfZmsQUo8VtkSClI/4V/Tvnb+gcfIQcnluiW4jujdW4XR
         zxZQCaP2fJ1GMMqtCDGhU8CBrLFjOx0wI4LTamkewmqiNOMoBgT8F2zlEV3TUxamw+Kr
         LvAQ==
X-Gm-Message-State: AOAM531GPcqFuE3fiDs8/dgb/WeIzXMtzEadvhwxfEsbB7S9WygtmN4l
        9+6ilr1ZMKGI9HDtyMrTIOC+BA==
X-Google-Smtp-Source: ABdhPJzwaGRPZR/RwPb5361P3l44INggwSiCue7C9Mww3eNhmzaKQEkIeHOGInLB9v/6PM7o1G3asA==
X-Received: by 2002:a17:90a:fa92:: with SMTP id cu18mr2311163pjb.215.1625025192309;
        Tue, 29 Jun 2021 20:53:12 -0700 (PDT)
Received: from localhost ([136.185.134.182])
        by smtp.gmail.com with ESMTPSA id n33sm19872937pgm.55.2021.06.29.20.53.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Jun 2021 20:53:11 -0700 (PDT)
Date:   Wed, 30 Jun 2021 09:23:07 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Thara Gopinath <thara.gopinath@linaro.org>
Cc:     agross@kernel.org, bjorn.andersson@linaro.org, rui.zhang@intel.com,
        daniel.lezcano@linaro.org, rjw@rjwysocki.net, robh+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [Patch v2 3/5] cpufreq: qcom-cpufreq-hw: Add dcvs interrupt
 support
Message-ID: <20210630035307.gaglmi36lqk3shwp@vireshk-i7>
References: <20210624115813.3613290-1-thara.gopinath@linaro.org>
 <20210624115813.3613290-4-thara.gopinath@linaro.org>
 <20210629023556.v3u4hdye5ojolubq@vireshk-i7>
 <5d194c91-e557-e5f5-60d6-ad2b1ca2def4@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5d194c91-e557-e5f5-60d6-ad2b1ca2def4@linaro.org>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29-06-21, 22:25, Thara Gopinath wrote:
> I don't think cpufreq_cooling recognizes boost frequencies. The max state
> there is the max of nominal frequencies , right? If not, it might be a good
> idea to add this check there as well.

Ahh, that explains it.

-- 
viresh
