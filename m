Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4CA7234F897
	for <lists+devicetree@lfdr.de>; Wed, 31 Mar 2021 08:18:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233720AbhCaGSK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Mar 2021 02:18:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52054 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233752AbhCaGRf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Mar 2021 02:17:35 -0400
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com [IPv6:2607:f8b0:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D4E4C06175F
        for <devicetree@vger.kernel.org>; Tue, 30 Mar 2021 23:17:35 -0700 (PDT)
Received: by mail-pg1-x52a.google.com with SMTP id y32so12296585pga.11
        for <devicetree@vger.kernel.org>; Tue, 30 Mar 2021 23:17:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=0F12Kqjhl0+Wf+5+6nbUD2UhZbKGbE/zQkJq2rrwfrg=;
        b=ETKZ6m2dIhEdGl7lpyRoB2yUuf70I1IvaCTOjGvIMaaKvmtRKgBNwRrZiHlHFF9FLC
         5IC6C4vdPQfEv6N9iSc4Y/a+GHyAnDa/WQP8QCEuA2JeHJ0tCQd1PCs2hm37m3a83FdG
         lUJN2la5H5SNG9ca4n6Gvz2gWOCHTXI7Hqt1+547fOpkVLYFjK4s4Kab7qcoYbhdF8kt
         R/dbJehnFZVN2FS2VWRKYZ+5jEYXJif9lA1zRfNYdQQ/Db8fExQuFG8WIr7VffGYuHqL
         Gep9ggHp2FyYVKkJYhQjfi6+fmWJ3Q2h/mPQ9LOZPSrL7WZsQ/H4gU4xespePd5Be6Ke
         hjBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=0F12Kqjhl0+Wf+5+6nbUD2UhZbKGbE/zQkJq2rrwfrg=;
        b=VUz2rT25tm8VR9vdyxewguQkahEZqrLUcaVvVYi1TfS7mD4gmpraM+Xgw2S3wZnncJ
         JDTvg3IyASIRDA/tmpBHAC9/clCzOHnDwKWG4JoRniPmgewNN7jpmtjRcedZLIYMrSZs
         xEWiuVL9sxg5r3osqDknYoGhTc25jPa2ekAQX7Tsnlc8Sns2kBZ7YD0XKb3Z57ZFMIm4
         hbAoMzLKlJRZUBnkU0eHa6NwE5adN7Vz5C+L49DZQ0k/kYuys7iCkSKHFGFitV6futtT
         bJb/BLpeJIYTZGbwOEzUX5Pq5D2r0OYvoMIl+zaezJ8c4SEs+qNvvnOZDnzAT/H3osBr
         99WQ==
X-Gm-Message-State: AOAM531pQqTB5V+4NMrqfiRRaROtYlbx3YvzRGcIoXnY6kKxxnNcUoAF
        g0JPZbPLv5kDf0CY8Sa1w5X6BA==
X-Google-Smtp-Source: ABdhPJyUuKeYXCKEUA4NkOYUgk8Iyh6P7JgE4L/NH6X8jw8VdbsGYKbm85djXpBaeUhPOWcYBHroZA==
X-Received: by 2002:a63:1820:: with SMTP id y32mr1724701pgl.157.1617171454697;
        Tue, 30 Mar 2021 23:17:34 -0700 (PDT)
Received: from localhost ([136.185.154.93])
        by smtp.gmail.com with ESMTPSA id d6sm902402pfn.197.2021.03.30.23.17.33
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Mar 2021 23:17:34 -0700 (PDT)
Date:   Wed, 31 Mar 2021 11:47:32 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     "andrew-sh.cheng" <andrew-sh.cheng@mediatek.com>
Cc:     MyungJoo Ham <myungjoo.ham@samsung.com>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        "Rafael J. Wysocki" <rjw@rjwysocki.net>,
        Nishanth Menon <nm@ti.com>, Stephen Boyd <sboyd@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        srv_heupstream@mediatek.com
Subject: Re: [PATCH V8 2/8] cpufreq: mediatek: Enable clock and regulator
Message-ID: <20210331061732.c7rfrzehcqo62ndc@vireshk-i7>
References: <1616499241-4906-1-git-send-email-andrew-sh.cheng@mediatek.com>
 <1616499241-4906-3-git-send-email-andrew-sh.cheng@mediatek.com>
 <20210330043629.x62j2apv2nv4mw67@vireshk-i7>
 <1617168099.18405.8.camel@mtksdaap41>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1617168099.18405.8.camel@mtksdaap41>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31-03-21, 13:21, andrew-sh.cheng wrote:
> Hi Viresh,
> Yes.
> As you mentioned, it will be enable by OPP core.
> 
> Per discuss with hotplug owner and regulator owner,
> they suggest that "users should not suppose other module, will enable
> regulators for them".
> They suggest to add enable_regulator here.

Which is fine if the modules in question aren't closely related to each other,
but OPP core and cpufreq are too closely bound to each other. So much that the
cpufreq driver can depend on the OPP core for doing it.

Though I won't Nack a patch just for that, but it was just a suggestion.

-- 
viresh
