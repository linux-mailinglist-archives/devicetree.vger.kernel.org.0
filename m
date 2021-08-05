Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A14643E0CFD
	for <lists+devicetree@lfdr.de>; Thu,  5 Aug 2021 06:05:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230457AbhHEEFv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Aug 2021 00:05:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41192 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229446AbhHEEFu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Aug 2021 00:05:50 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8DDE4C0613D5
        for <devicetree@vger.kernel.org>; Wed,  4 Aug 2021 21:05:37 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id b1-20020a17090a8001b029017700de3903so7545018pjn.1
        for <devicetree@vger.kernel.org>; Wed, 04 Aug 2021 21:05:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=/tmrG3FNtvqmHMxfNd/70AdCn3lth7qM0+cOOLSMGRw=;
        b=n9nKcnvu1TGK246QsMUW5hEHiQdw7jid0rI8Ai2n3Q6YF5HO71e8vyOF8h6RRBOfKp
         Ax1Mus2CrSKnM70CTTAG2iYZE1GCkJBZjBqmeq6SAyntruRPoNCDGMxodU3FNzPQPf5R
         5SmvUXPxtI1QPlsqolZ+h1Gu4GhBSjY2n5ZjpM+4pxQImBejAQJStgy8wouoKSm8IX89
         01L64ptvJvD09cyynbbPhFnLj5wjHR69d/H104GfUVCxGWzls6yO0ZkX5+uenUeXlSO7
         0tEvspnNsLl0uYGT3pMty6INrvcrix/th2DVXWOAnq5VOTmTzeLZNJzv0lotVDyUQQ23
         JgCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=/tmrG3FNtvqmHMxfNd/70AdCn3lth7qM0+cOOLSMGRw=;
        b=NAmZWdObRVjOfH5a+GUUnq68AFZ0FiL8ZNe2EMnZijQeFK/fgdxbeBWOwtXzxvXvEf
         jrEANrBsgSyutZPSI3ErzebxMS6DoacD6CMD34Td3xAkJXawC9yGlME/j7/a5lq4lav8
         un4bmUY4eBT/31x1JSV47NPFIadAwC2aDVs3xr0NiDz98zI2Qtpj6zFmT69+vb7AshaX
         1efE75cw2EKWoSlbUPS4yPIU4OY2xAg71dDXlScKo4RzWEqYkrcKOuXcrP00aehbVRjv
         /xZfogcZtP5BzFindpCxdvTMLUQxWdOeh2DOe/k0F219VPQ1nlmebdyBN2MDh6p4G71B
         jwDQ==
X-Gm-Message-State: AOAM530E6rdmvGLOFwxP4o/t8rdqsf8+InFBgKopnLmZOJtPbym8hGuL
        ByCDE7VWtzmt3rmXjFOlldUK3g==
X-Google-Smtp-Source: ABdhPJz3BjNgAWw0KM1IUvz+qiNMzaEqBaeVS0JDBOjG/zw/L3WF9l+vFaGNLvHO3cCPmwhNKoQKDg==
X-Received: by 2002:a17:90a:2ec6:: with SMTP id h6mr12940123pjs.9.1628136337051;
        Wed, 04 Aug 2021 21:05:37 -0700 (PDT)
Received: from localhost ([122.172.201.85])
        by smtp.gmail.com with ESMTPSA id w186sm4779223pfw.106.2021.08.04.21.05.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Aug 2021 21:05:36 -0700 (PDT)
Date:   Thu, 5 Aug 2021 09:35:34 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Ulf Hansson <ulf.hansson@linaro.org>
Cc:     Rajendra Nayak <rnayak@codeaurora.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Linux PM <linux-pm@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Roja Rani Yarubandi <rojay@codeaurora.org>,
        Stephan Gerhold <stephan@gerhold.net>
Subject: Re: [PATCH v5 1/2] PM / Domains: Add support for 'required-opps' to
 set default perf state
Message-ID: <20210805040534.bmscqfjb6etywmu3@vireshk-i7>
References: <1626764876-10229-1-git-send-email-rnayak@codeaurora.org>
 <1626764876-10229-2-git-send-email-rnayak@codeaurora.org>
 <CAPDyKFrzHD6rXP5TnqrAVnrZExc2JLFe3HoGF+yM_tsaZYwh8g@mail.gmail.com>
 <35950d34-5cab-1b09-9864-49217a83f68d@codeaurora.org>
 <6fe7d326-1822-5a49-cca7-df9a2739dca8@codeaurora.org>
 <CAPDyKFrTQ0jy_u_oPN3kAXkd+FYMpHmStuU2pm8FHLa_OvXzBA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAPDyKFrTQ0jy_u_oPN3kAXkd+FYMpHmStuU2pm8FHLa_OvXzBA@mail.gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04-08-21, 13:39, Ulf Hansson wrote:
> Viresh, would it make sense to remove that print? I mean, the
> required-opps property could be considered as optional and it seems a
> bit silly that a pre-parsing of the property is needed to figure that
> out.

Sure, np.

-- 
viresh
