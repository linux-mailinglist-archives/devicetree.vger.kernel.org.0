Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 624712B5CA9
	for <lists+devicetree@lfdr.de>; Tue, 17 Nov 2020 11:11:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726545AbgKQKLc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Nov 2020 05:11:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726085AbgKQKLc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Nov 2020 05:11:32 -0500
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com [IPv6:2607:f8b0:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 559A4C0613CF
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 02:11:32 -0800 (PST)
Received: by mail-pf1-x441.google.com with SMTP id g7so17002275pfc.2
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 02:11:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Gfl/KXO19CRZ3YJcbkbpX9kcAUtuTjnrugBzUwzzQ9E=;
        b=uouFjwtxxF/R7baTvaVjaaLTfwWbQnLGL03905q7iEeujxS/9yt/SpLSH7MA3e255j
         pDUZROD7kGIT2aAqtLuPFLFQwdSXcCzL3dTLPU5Z0f2F2iKBShfhhiSKMsxbeADtPTZZ
         jDibWihrlQ+SRnq9emh58EPvRMrEdloT+tQbgEvFaxCMQn7nKyos/Tg+mFz7tdoZvba4
         jz76EE2JBHosoww6FYkLcxs8yJlEzLANZGynaLiHN96UWOjoqRBhQrubAloP8EyAmv+6
         ow7Ivl4zcCjeDLG5X0LjJRED8QkzH0tTA4lyOislGNAk3xBR9+obJoIDUdpEpkyVLGJB
         C5gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Gfl/KXO19CRZ3YJcbkbpX9kcAUtuTjnrugBzUwzzQ9E=;
        b=ePFbBEh6vYjfhiAiKiuiy4+6oT4sM1YVaoJ6tb+m5zNm73Rim6QDy2N1FMXcCA9GAD
         4AB5qtku9itz2dBJSgTEnDa7/EER933eEkX2lHwLDYK/rkiN11+QjTp04sweEo6PY+ql
         3EuacvNVroo+hUeJVtj7ar72M6guRS9fw4kQKHahs3gtTNtF1TVX0XTw4UQb0hj6uLMG
         3qQIICQkp46Isx5Edtc0zY7ppZXs+ZyBAsDozRtNggRJaxhkEhRrJydVDJVktmUpGZN/
         UED4qx1uDEmm+JBIBE/W2WBlJZH9g163tJIdnmvUQqrKU7Ymcc8bIINNuCNmIU583HEF
         RjgA==
X-Gm-Message-State: AOAM531ZSeht8UW9PuwYpTPETDDib3cUf9OEI8mnH9yTrgM0s/eRZkvC
        AuK3KYYIRHPA+J7U6UfRzUMiwQ==
X-Google-Smtp-Source: ABdhPJyEd9x6pa7YTattwldbAJjKXQBZNOHDV4vQhwfsHVSJHGnxGEfzxEdDT3MAHqievsCDUiL0Wg==
X-Received: by 2002:aa7:868d:0:b029:18a:ea7b:342f with SMTP id d13-20020aa7868d0000b029018aea7b342fmr18181060pfo.68.1605607891905;
        Tue, 17 Nov 2020 02:11:31 -0800 (PST)
Received: from localhost ([122.172.12.172])
        by smtp.gmail.com with ESMTPSA id mp16sm2634674pjb.13.2020.11.17.02.11.30
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Nov 2020 02:11:30 -0800 (PST)
Date:   Tue, 17 Nov 2020 15:41:28 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Lukasz Luba <lukasz.luba@arm.com>
Cc:     Nicola Mazzucato <nicola.mazzucato@arm.com>,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        sudeep.holla@arm.com, rjw@rjwysocki.net, vireshk@kernel.org,
        robh+dt@kernel.org, sboyd@kernel.org, nm@ti.com,
        daniel.lezcano@linaro.org, morten.rasmussen@arm.com,
        chris.redpath@arm.com
Subject: Re: [PATCH v3 3/3] [RFC] CPUFreq: Add support for
 cpu-perf-dependencies
Message-ID: <20201117101128.6uapqg56arwqmm5p@vireshk-i7>
References: <20201102120115.29993-1-nicola.mazzucato@arm.com>
 <20201102120115.29993-4-nicola.mazzucato@arm.com>
 <20201106092020.za3oxg7gutzc3y2b@vireshk-i7>
 <0a334a73-45ef-58ff-7dfd-9df6f4ff290a@arm.com>
 <20201106105514.bhtdklyhn7goml64@vireshk-i7>
 <7f73bcd6-0f06-4ef0-7f02-0751e6c4d94b@arm.com>
 <20201109065742.22czfgyjhsjmkytf@vireshk-i7>
 <2fa8a5c0-f66d-34bc-7f1c-8462e7532e0a@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2fa8a5c0-f66d-34bc-7f1c-8462e7532e0a@arm.com>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16-11-20, 11:33, Lukasz Luba wrote:
> On 11/9/20 6:57 AM, Viresh Kumar wrote:
> > On 06-11-20, 11:14, Lukasz Luba wrote:
> > > I also had similar doubts, because if we make frequency requests
> > > independently for each CPU, why not having N cooling devs, which
> > > will set independently QoS max freq for them...
> > > 
> > > What convinced me:
> > > EAS and FIE would know the 'real' frequency of the cluster, IPA
> > > can use it also and have only one cooling device per cluster.
> > > 
> > > We would like to keep this old style 'one cooling device per cpuset'.
> > > I don't have strong opinion and if it would appear that there are
> > > some errors in freq estimation for cluster, then maybe it does make
> > > more sense to have cdev per CPU...
> > 
> > Let me rephrase my question. What is it that doesn't work _correctly_
> > with cdev per cpufreq policy in your case? What doesn't work well if
> > the thermal stuff keeps looking at only the related_cpus thing and not
> > the cpu-perf-dependencies thing?
> > 
> 
> We don't have a platform which would be this per-cpu freq request, yet.
> Thus it's hard to answer your question. The EAS would work in 'old
> style' - cluster mode. I don't know how IPA would work on such HW
> and SW configuration. To figure this out I need a real platform.

Hmm, so who are going to be the users of this new stuff (dependent
CPUs) ? I don't think cpufreq-cooling should be updated, unless there
is a compelling reason to.

The other one in energy model ? Why does it need this information ?

Who else ?

-- 
viresh
