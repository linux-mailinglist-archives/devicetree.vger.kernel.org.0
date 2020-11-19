Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D8D452B8BC6
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 07:45:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725843AbgKSGnK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 01:43:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725648AbgKSGnK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Nov 2020 01:43:10 -0500
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com [IPv6:2607:f8b0:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3DD3C0613D4
        for <devicetree@vger.kernel.org>; Wed, 18 Nov 2020 22:43:09 -0800 (PST)
Received: by mail-pf1-x443.google.com with SMTP id w6so3528762pfu.1
        for <devicetree@vger.kernel.org>; Wed, 18 Nov 2020 22:43:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=mCFqkIk3qZAKnxgPN2RjP1zcRzThu3I+y5jU54GV0WE=;
        b=iDbT++bhR8S0VExGnVwKKBPFKOddYnZXW2BBtomjJObcXU6sVdd1emIxE0uDVSoQAF
         iOrnmSil9EPKFcbt1Z5y15aZ8seIGVGnCbFCjulPwdbUdTyu1epgjSivBZJQNTWsU7v0
         x6pOPHZw42cby7UukTNts84DpD1mWrz5WA3KLhrWIQvDIPMwQSH/bd69vuDxnjqFRmG1
         1HT/IHgE++krw8+WdSsJKQpL2L9r8xqD3zS/FvF4IOmTjKUJmiWA4yNvGfk3M+cDboBt
         6YQ78QF4PTXVteAbshRUxw8LRclDO7eiJMekO0cJJ88G1cAAes51G/dx3mST78ZLjoxn
         /EVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=mCFqkIk3qZAKnxgPN2RjP1zcRzThu3I+y5jU54GV0WE=;
        b=O3vnMvwKO8qhO9qRPK/7ccvzqIJN5x5kzyJb5Vd5zdpS6/78JDjMDMuVeZN/wHHY3L
         I29b9RhKvpXLMtLzC9g8/CsT9xuchqs4OPqetC/7aP+gM6KvqPuy3M+ZZ3yC7tliDJIs
         UP6i8SF87ecNqdGEX82hiWvEdzS82ohTptpXgSXJBRiw+bhHP5Z0VjAmmCAJkmejzUuZ
         a1+ZsvXNcYxKwsVfNXi6G1WZuSHWRFmdXuuZrq+bx/+qoRWIUn1W2PvanE3QRPSnTBn+
         Yqwlzl078oViXhO3xiR9QaEJFqB6Tf3zocUHWUGHud/MEIRTzaqyU3hasAqmSlm9/gTm
         329g==
X-Gm-Message-State: AOAM531iJ/EPxfmpnfWR7kRB2oorE7vEvXeJvnyaLNXSaJx2gkf6CMNi
        VmuoNUc+BcYZzPjgM3jkzTY3EQ==
X-Google-Smtp-Source: ABdhPJzHRynNSlwEywRsm72DSYu3DayYvdEB7rWey8YBUMsrRZvqauRHeD+i9phicKO85J5oFZqy5A==
X-Received: by 2002:a63:ff1a:: with SMTP id k26mr11893701pgi.167.1605768189281;
        Wed, 18 Nov 2020 22:43:09 -0800 (PST)
Received: from localhost ([122.172.12.172])
        by smtp.gmail.com with ESMTPSA id ha21sm4950295pjb.2.2020.11.18.22.43.08
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Nov 2020 22:43:08 -0800 (PST)
Date:   Thu, 19 Nov 2020 12:13:06 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Nicola Mazzucato <nicola.mazzucato@arm.com>
Cc:     linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        sudeep.holla@arm.com, rjw@rjwysocki.net, vireshk@kernel.org,
        robh+dt@kernel.org, sboyd@kernel.org, nm@ti.com,
        daniel.lezcano@linaro.org, morten.rasmussen@arm.com,
        chris.redpath@arm.com
Subject: Re: [PATCH v3 3/3] [RFC] CPUFreq: Add support for
 cpu-perf-dependencies
Message-ID: <20201119064306.ahwkbuoo34togi25@vireshk-i7>
References: <20201102120115.29993-1-nicola.mazzucato@arm.com>
 <20201102120115.29993-4-nicola.mazzucato@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201102120115.29993-4-nicola.mazzucato@arm.com>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02-11-20, 12:01, Nicola Mazzucato wrote:
> Second proposal:
> 
> Another option could be for each driver to store internally the performance
> dependencies and let the driver directly provide the correct cpumask for
> any consumer.

From the discussion that happened in this thread, looks like we are
going to do it.

> Whilst this works fine for energy model (see above), it is not the case

Good.

> (currently) for cpufreq_cooling, thus we would need to add a new interface for

And this is not required for now as we discussed.

-- 
viresh
