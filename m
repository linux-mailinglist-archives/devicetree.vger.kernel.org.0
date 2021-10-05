Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D182B421D28
	for <lists+devicetree@lfdr.de>; Tue,  5 Oct 2021 06:16:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230058AbhJEESG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Oct 2021 00:18:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229812AbhJEESG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Oct 2021 00:18:06 -0400
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E2B7C061745
        for <devicetree@vger.kernel.org>; Mon,  4 Oct 2021 21:16:16 -0700 (PDT)
Received: by mail-pl1-x635.google.com with SMTP id b22so1399130pls.1
        for <devicetree@vger.kernel.org>; Mon, 04 Oct 2021 21:16:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=p1j1I2scRSEAWBnAZJ9GeKwlwHQmZVoeQLMfF6u5ax8=;
        b=zCtcfBkP4XpVESphXhppU3WAsq/CQ3HZBw26R7A+z1foMTo+7960o4r5mahZCsxyCw
         DHAaW+wnK94zGIZmp2e77B/9GuaCz8u7rF6dsh5c/ORptRcHEgCxmjsQbbkef4snvf3Y
         1x4O/sscCkLhmhjKjEcOBnhgSLy7XwgSW5JGKUplqOMB9CGzn1TW3ufvZR5cJRg3MARe
         hsqDHrWMQfB5eIHVyMhgcoSa8FC78UDUFieuDsalK6FMBLxqRLtaE3hsvmY+iZGF2HEO
         aU2t4X6V7NbW9lkMFp6+UaPfOTauZttyZIpWF34rjJdHZFuFSDIqLKLuFI41a38M9A+m
         6tig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=p1j1I2scRSEAWBnAZJ9GeKwlwHQmZVoeQLMfF6u5ax8=;
        b=IPCF7UNzp+6GR04QVnyNuYiao2cy5P5Hn/zj0xB9yLKrYLW7l8nRArYyiTA4qcUl5m
         dA1zRQUZ8BCffbAwAvaYjwoW+gAACm65Wpi6DPx0H2RIIVaUA+V7JgC7BtFHLzNeMzbl
         8p1xp7bCqFFx9gvRaFs2nXdCbL/6+AzcPS+761wiJzeziPfipLaXHUoiIlwh/UpUaLXm
         qzWlvX8x3xgn2mLfQVri/kgR4RwH3YqanEqiNCBXI+5rlsoLYyq5+iWJYB0ltWNdUb/w
         Ze8613H6/ZU4kt4J//mgyGvqJ7QvFVeDwL/nua3KMXTd1DLoQGCFEUfsKeTnjJHi4wro
         TKRQ==
X-Gm-Message-State: AOAM533P/FHsRped0CBHUUr0ZNb4n152duW7/4JN9ohQOTse5ZHG0Emx
        St9BdxAbzR74dLtStT5UQpNzwg==
X-Google-Smtp-Source: ABdhPJxHSQjJ/j6EVYsE31yE9AdH8e2NY5uUk2ixfKGZ3eYCxp7BCwzAOc62Yn7xZ9Xp3pPkbogOfA==
X-Received: by 2002:a17:90b:4b07:: with SMTP id lx7mr1122929pjb.195.1633407375622;
        Mon, 04 Oct 2021 21:16:15 -0700 (PDT)
Received: from localhost ([122.171.247.18])
        by smtp.gmail.com with ESMTPSA id e13sm15559450pfd.205.2021.10.04.21.16.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Oct 2021 21:16:15 -0700 (PDT)
Date:   Tue, 5 Oct 2021 09:46:10 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        rafael@kernel.org, robh+dt@kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: cpufreq: cpufreq-qcom-hw: Convert to YAML
 bindings
Message-ID: <20211005041610.byncxlv3aeo65frw@vireshk-i7>
References: <20211004044317.34809-1-manivannan.sadhasivam@linaro.org>
 <20211004070531.sexvnqmnkoe4j6a2@vireshk-i7>
 <20211004072222.GE16442@workstation>
 <YVszd2UMw9F5LqWC@ripper>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YVszd2UMw9F5LqWC@ripper>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04-10-21, 10:01, Bjorn Andersson wrote:
> If you wrote the patch, then Angelo handled it, then you handled it
> again the double S-o-b captures that nicely.
> 
> Looking it from the other angle, if you remove the first S-o-b, then you
> forgot to signed it off when you authored the original patch and if you
> skip the last S-o-b then you didn't adequately sign off the final
> result.

Hmm, interesting that it can be looked this way. I am wondering if
between 10 different versions two people ping pong the ownership of
the patch, then will we need to capture 5-5 signed-off-by's from each
of them :)

From my understanding, that I had until now, the list of tags specify
who all performed what different roles in the patch
development/submission and when did that happen (sort of timeline), so
last tag is added by the new handler of the patch. But adding two
signed-off-by's by a single guy looks fishy, though it may actually be
correct :)

-- 
viresh
