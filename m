Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E84BC296C17
	for <lists+devicetree@lfdr.de>; Fri, 23 Oct 2020 11:27:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S461459AbgJWJ1Z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Oct 2020 05:27:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39068 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S461439AbgJWJ1Y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Oct 2020 05:27:24 -0400
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com [IPv6:2607:f8b0:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61A65C0613CE
        for <devicetree@vger.kernel.org>; Fri, 23 Oct 2020 02:27:23 -0700 (PDT)
Received: by mail-pg1-x541.google.com with SMTP id s22so755115pga.9
        for <devicetree@vger.kernel.org>; Fri, 23 Oct 2020 02:27:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ucv5oR6DPdGRMnKY0683TdGM4cbhJcd2cZfvbWq/+PU=;
        b=f07s3VLB2MfVm1O3IHZ0eF7bXrbz5q+OMq7d217XRq9up5bkItIWfl7qKlNY+ATmJV
         4DovSd07C399R6SJrO1As9FKrmDERtWx5kJxc8DRoMJ+mxRaMkW0AoM45IF+41hG3rZP
         dKa0tPDvPO/MDNOsapAIMlYh40B5L1H/RKp5Om7zDiBn5DSZptfMyMgU+QpFQlJQWdcI
         Ed+VZC14LdegGJtYX7zFcRF7qKq62X4xqR4cjPePX5kPPD2cbCZWFP3wspS1A/+71EnK
         HG8VbMzQxU33SMfkk4pL55/YNMbLTdglZWjpTUOU1ZN/ohpfdr4UeO2OzSJKxvXWhepm
         Dm5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ucv5oR6DPdGRMnKY0683TdGM4cbhJcd2cZfvbWq/+PU=;
        b=IiaQRAMCB0oJgeWQy8lyzR3HZlVaps2k5O5Gvv0ePp09Gw++CHPIoDQP3ZSiDpZnow
         yfQ3zq9+Lwy4ypWwSp6fvaYq8U76IX78iYawf/m6T6/zcRuTcgKuWqf3SUpBfGGogVTH
         W4z80EwJDTROYKh/760jgJg42U6NbKIjhYxGnttqc6lX2Y+N+44FLcihSjF01WELhL2X
         U1FphjblZB4y16HPSQQLPdN/bBiN2YfqziBWZgkDqOocL9UmaX9ZEt/lB6uMUqmU3VOH
         kSzDY42obKhNuDWtCgSmeznotYZRAkYEBn5jPKC5AjhI/LcU8RM9pioTeDVa1R01j4T9
         oCIg==
X-Gm-Message-State: AOAM532tSmewJ0Rje55vik9voUScnvc+xlmo+cc5dcmjMjB3e001MM1J
        tOCd+V7RiwCUMdWX5uXGNtzowA==
X-Google-Smtp-Source: ABdhPJyuPfJLoxrZf/YA+PmXSKVSfNq2TGaMvcJ9QKvWEeZvn/5j5V974zQbFeFOsyw0rCEczr08RA==
X-Received: by 2002:a17:90a:f187:: with SMTP id bv7mr1555398pjb.198.1603445242886;
        Fri, 23 Oct 2020 02:27:22 -0700 (PDT)
Received: from localhost ([122.181.54.133])
        by smtp.gmail.com with ESMTPSA id gx20sm1545390pjb.1.2020.10.23.02.27.21
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2020 02:27:22 -0700 (PDT)
Date:   Fri, 23 Oct 2020 14:57:20 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Hector Yuan <hector.yuan@mediatek.com>
Cc:     linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        "Rafael J. Wysocki" <rjw@rjwysocki.net>,
        Maxime Ripard <mripard@kernel.org>,
        Santosh Shilimkar <ssantosh@kernel.org>,
        Amit Kucheria <amit.kucheria@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Dave Gerlach <d-gerlach@ti.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Robin Murphy <robin.murphy@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        wsd_upstream@mediatek.com
Subject: Re: [PATCH v1] cpufreq: mediatek-hw: Add support for Mediatek
 cpufreq HW driver
Message-ID: <20201023092720.qpws5wivqb4u6fwl@vireshk-i7>
References: <1603441493-18554-1-git-send-email-hector.yuan@mediatek.com>
 <20201023082817.5vp4cvi2lmpaozcn@vireshk-i7>
 <1603444138.20224.19.camel@mtkswgap22>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1603444138.20224.19.camel@mtkswgap22>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23-10-20, 17:08, Hector Yuan wrote:
> On Fri, 2020-10-23 at 13:58 +0530, Viresh Kumar wrote:
> > On 23-10-20, 16:24, Hector Yuan wrote:
> > > This patchset includes 6 patches and depends on the MT6779 DTS patch[1] submitted by Hanks Chen.
> > > The first 3 patches are for CPUFREQ HW driver and device tree binding, which are already sent before separately [2][3]. For binding part, I add a new patch to add property in cpu schema.
> > > Besides, we add three more patches including EM power table, SVS CPU initialize, and cooling device.
> > 
> > And even after so many versions of these you chose to name this V1. It
> > is very difficult for reviewers to find time to review your stuff, and
> > they expect some sort of summary from you on what exactly changed from
> > last version and you also need to name the current version currently.
> > 
> > This should have been V8 and you should have added a "V7->V8 diff:"
> > section here, naming all the changes you did. Please send that as
> > reply to this email, so I can see what really changed.
> > 
> Hi, Viresh
> 
> Sorry for your inconvenience.
> #1~#3 is for cpufreq driver we have reviewed and the bindings which
> separate freq domain to CPU schema.There is no change for the driver
> itself.
>   1. cpufreq: mediatek-hw: Add support for CPUFREQ HW
>   2. dt-bindings: arm: cpus: Document 'mtk,freq-domain' property
>   3. dt-bindings: cpufreq: add bindings for MediaTek cpufreq HW
> 
> #4~#6 is for other CPU features, i.e. SVS [1]
>   4. cpufreq: mediatek-hw: register EM power table
>   5. cpufreq: mediatek-hw: Add SVS CPU initialization
>   6. cpufreq: mediatek-hw: Add cooling dev flag
> 
> I supposed that it could be more clean to separate #4~#6 in another
> patchset.May I know is it okay to you? Or I should merge all of changes
> into v8 like you mentioned? Thank you.

Merge them all together and explain any special features (like SVS) in
the commit log. It will also help in future when people want to
understand your driver. Explain whatever is worth explaining there and
is not straight forward.

Thanks for the details.

-- 
viresh
