Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CE17B3B6C9E
	for <lists+devicetree@lfdr.de>; Tue, 29 Jun 2021 04:47:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231332AbhF2Ctu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Jun 2021 22:49:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59236 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231219AbhF2Ctt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Jun 2021 22:49:49 -0400
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com [IPv6:2607:f8b0:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D118CC061766
        for <devicetree@vger.kernel.org>; Mon, 28 Jun 2021 19:47:22 -0700 (PDT)
Received: by mail-pg1-x536.google.com with SMTP id e20so17222468pgg.0
        for <devicetree@vger.kernel.org>; Mon, 28 Jun 2021 19:47:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=7XkSm09MKTlM+5bwgXywqiRc/y2ECGYZ1RMaAnCDj3I=;
        b=MXBSx4F3iU6Y+Ma58riJet5owe0RIF1IMqpaH6s9GQuTTRHroBGiaGJtyp+fGPdv6w
         UGvv9406FQKnaM3b7NIOfd5D6pJpat9cBR12XDVC5Z9OnCzEO8xvntTqolhgXhMrlL/5
         wVxzeyUl2QIJFHK233jyO7dpM1mNTqVUNSvBSPxl28/Y2Dv9MNoWjgL3EIUzIzJcuxYC
         5yPHvfwnjgH5sHdZjl4dhhTdesHE5ro3XJ6HbstXzSEaF9z1QC82bHEwSYIlnfg+q3CV
         W6mEy3dCOADQQ58WMbCXdXe2HIbtCRkWIpNtKdvisDYsSq3wM464fLebA92I7Vf72Lv5
         iI8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=7XkSm09MKTlM+5bwgXywqiRc/y2ECGYZ1RMaAnCDj3I=;
        b=M+Cup/U4BPrOlXeP4PDgXWR8JGZF4sWdiA9h0+00aIjKEVMXfBSJ/fBXRvE1xEDK0M
         hhA1qXyEUbgsfPC7i5vzUYFC1NqBMJAd0j3g8oi5x95du331iJ4LHWXMS8dw4YxZZR6m
         3PLNoCffor9nA4iwMWiXPbG0IoPC8ivSgr1eHTtVBBR3pPhJ9BF9OKLsKOyK/CIsxHDN
         3d6f8Y/LVpQNC2umA0UqC0lDxnXXO7xnXPHRFEV4roa180kmmzBXAhnaMrUxImMTZ8PF
         NbposzFKTMc0rPd+6DUxygU+avvjwSWLLOQpCVeZKf3L8yr0KhJa7Xx6xS1pfvu5Kkn/
         NZGA==
X-Gm-Message-State: AOAM533E3qRJpym2UKpg/KXtwvdVM7ASxzSJj4QmabXRwSBOuQQIMnQ9
        gdunppfnYEniTFp38BG9lKvKqQ==
X-Google-Smtp-Source: ABdhPJzBbHxrQoJIVh4lFxHUalObQTAP2E8pdUf5xARTxUNTgGWy1WTe62ZdZ9+VZxPTS6POT5Yn6Q==
X-Received: by 2002:aa7:82cb:0:b029:2e6:f397:d248 with SMTP id f11-20020aa782cb0000b02902e6f397d248mr28195726pfn.52.1624934842154;
        Mon, 28 Jun 2021 19:47:22 -0700 (PDT)
Received: from localhost ([136.185.134.182])
        by smtp.gmail.com with ESMTPSA id i18sm4132270pfa.37.2021.06.28.19.47.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Jun 2021 19:47:21 -0700 (PDT)
Date:   Tue, 29 Jun 2021 08:17:19 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     Hector Yuan <hector.yuan@mediatek.com>,
        linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org,
        "Rafael J. Wysocki" <rjw@rjwysocki.net>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, wsd_upstream@mediatek.com
Subject: Re: [PATCH v12 1/2] cpufreq: mediatek-hw: Add support for CPUFREQ HW
Message-ID: <20210629024719.nmcygaigtx5wn7g5@vireshk-i7>
References: <1622307153-3639-1-git-send-email-hector.yuan@mediatek.com>
 <1622307153-3639-2-git-send-email-hector.yuan@mediatek.com>
 <20210614104058.jdwb7godqzhf7rgd@vireshk-i7>
 <1624781848.1958.16.camel@mtkswgap22>
 <20210628072641.amqk5d3svwolvhic@vireshk-i7>
 <20210628090956.uwkrozdqvawsm3xp@bogus>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210628090956.uwkrozdqvawsm3xp@bogus>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28-06-21, 10:09, Sudeep Holla wrote:
> Probably in driver/cpufreq or some related headers if it needs to access
> related_cpus and is more cpufreq related in that way ?

It just needs to set a mask, so doesn't really depend on cpufreq. I
was wondering if drivers/opp/of.c may be used for this, and I am not
sure.

> Orthogonal to that, I prefer to make the generic function take list_name
> and cells_name as generic. I see we can reuse that qcom-cpufreq-hw.c
> with "qcom,freq-domain" and "#freq-domain-cells".

Yes.

-- 
viresh
