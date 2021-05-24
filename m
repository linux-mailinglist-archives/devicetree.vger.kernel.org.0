Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B181438E31E
	for <lists+devicetree@lfdr.de>; Mon, 24 May 2021 11:17:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232456AbhEXJSr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 May 2021 05:18:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232433AbhEXJSr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 May 2021 05:18:47 -0400
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com [IPv6:2607:f8b0:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4685DC061574
        for <devicetree@vger.kernel.org>; Mon, 24 May 2021 02:17:18 -0700 (PDT)
Received: by mail-pf1-x436.google.com with SMTP id x18so16042545pfi.9
        for <devicetree@vger.kernel.org>; Mon, 24 May 2021 02:17:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=uYUG/kHy9p7F2cnTujRKeayiu68yKr3ESSvfQp9Yptc=;
        b=UoHU6i0X11qgTYHf/5gy0MOE/CgzWHNsppmwxI2WEY/BRnkUnwwVOPf6TqyQKU1S6g
         dk4OvzawaaAhYCUKjpT9gLYVUtAGGjAGquxdaJas2FUx0/DqKnC3xN8ufbPccZg5kO5c
         vzoHLrYCT1bUKPAjt4dttELnNq9qmKr/r2gJBm+76Qx2YwokQ9WTJLAcYzdU0Wv/3NQ9
         P52G1qlS8G4UpLmLJg8xc8T2A3obrPEtSxcwmhtOL+OSTqbsw3bWTseGWVPSFoGL/xrc
         JKjcfLPQhVBYUtEJOSdn4eZQpAVwUpAMYGDDxoSo/gxD2klRP0wRNeReidCqcfrIfScA
         BAWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=uYUG/kHy9p7F2cnTujRKeayiu68yKr3ESSvfQp9Yptc=;
        b=gkWbC/wpKVPmMIKmaN0YBqSf2urJPOrc6CI32ggoUoAupI0iLVbJiTpCpRYSdK4HZ5
         /3OuXCXdQMY602Npsd2TKI8wH4CHkmw3Fi/ZbvWJawHHOUfYzvdDGxonlIgDlW+2E8+P
         ERCu+WMisq5pDgtJK1khvLV4zvvpHPXSkPCF+P4ULbaGPG6gkojP51dyKCcIRdGYd2Oz
         AxfvfJ+5JGOvlKTBIDyaQAfP8zH/X+kQ6TZEnYAcNAesm17HWFBuKf1BsAhklM/NPme1
         epane7RViavYwXA0GfhrWRCvBoBWt2Y2sjAHRkTc5sZvW3NeZ5RW+4D4Kxfkib8/56d5
         3UTg==
X-Gm-Message-State: AOAM531bGH898hQCPzRNTQVIRtUeBAcv1ss1txnVW3sOdsZAlUq1PFkz
        fAG0SeeaYURPdB3DkYNOUnhhrw==
X-Google-Smtp-Source: ABdhPJykjXsmPTn+PZrmEnWQxSUAlZL5JZaPav5AAloRpW9yN6z/HFu/QSR7/wsFUgaV+mS1iDOk7A==
X-Received: by 2002:a63:d14b:: with SMTP id c11mr12282051pgj.162.1621847837837;
        Mon, 24 May 2021 02:17:17 -0700 (PDT)
Received: from localhost ([136.185.154.93])
        by smtp.gmail.com with ESMTPSA id b21sm7363710pfo.47.2021.05.24.02.17.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 May 2021 02:17:17 -0700 (PDT)
Date:   Mon, 24 May 2021 14:47:15 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     Rob Herring <robh@kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Hector Yuan <hector.yuan@mediatek.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v4] dt-bindings: dvfs: Add support for generic
 performance domains
Message-ID: <20210524091715.wb6c4m3sicbypkaa@vireshk-i7>
References: <20210517155458.1016707-1-sudeep.holla@arm.com>
 <1621284311.383362.3157708.nullmailer@robh.at.kernel.org>
 <20210519112041.olwl35irvcbjxrka@bogus>
 <CAL_JsqK-LpDQWh9RsLsGPEQ53n6s0+Q7ioVikSm1jZuoCWAgnA@mail.gmail.com>
 <20210521040834.3rzsjkveoyugfotl@vireshk-i7>
 <20210521152431.wspnsji3z7pmmdlf@bogus>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210521152431.wspnsji3z7pmmdlf@bogus>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21-05-21, 16:24, Sudeep Holla wrote:
> On Fri, May 21, 2021 at 09:38:34AM +0530, Viresh Kumar wrote:
> > On 20-05-21, 14:43, Rob Herring wrote:
> > > Not allowed because I can't turn this check on by default until we get
> > > rid of the existing 80 or so. But it is a new check and Viresh already
> > > applied, so oh well.
> >
> > I can always drop it :)
> >
> 
> While I really don't care(evident by rate at which I worked on this 😉)
> I think Hector Yuan won't be happy to wait I guess. As a quick fix, you
> can update "qcom,cpufreq-hw" to "mediatek,cpufreq-hw". You will still
> get warning with this patch + update alone, but once you have Hector's
> mediatek cpufreq driver applied, the warnings must disappear.
> 
> What do you think ?

I guess you can send a fix later then.

-- 
viresh
