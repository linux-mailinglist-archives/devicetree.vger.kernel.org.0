Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7C50B1A0958
	for <lists+devicetree@lfdr.de>; Tue,  7 Apr 2020 10:29:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726725AbgDGI3g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Apr 2020 04:29:36 -0400
Received: from mail-pl1-f195.google.com ([209.85.214.195]:35394 "EHLO
        mail-pl1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726707AbgDGI3d (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Apr 2020 04:29:33 -0400
Received: by mail-pl1-f195.google.com with SMTP id c12so967526plz.2
        for <devicetree@vger.kernel.org>; Tue, 07 Apr 2020 01:29:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=4R/FPBL4dOo4mvZ9ReJ8CLxavGglB5XXnfcP3bpIQMU=;
        b=YF7pfVtnVNormD+6w1FhUmCCmIPX8WylGW+gMb6fcDVCwxbjNpGspR80BZhFu81/wC
         9mGnJKwUU3jjI6aV9mcWfz9QHoD3N9j+t3t7uW1fJfq3k9+V6vPBnljs+ugaNxvH2oM3
         4fBcqqWsKDX8Vg/5/IVAXwf+8dlGNtHJhTMLogSVr30vlUXOSwvnl5PxBYoUdlZqZHZz
         8hYl4Zqcu6CNjvxU0x9amIs54FLIYOip55tk5JBJ+2Pi1ijg3lhIm+XWqxUIXtIsl/Gu
         3Y8xRbNRGLHZTKZBmWLyUyWGcwSuRyW6xDHlEgTIVdhWpg0gMdR1bVdSlt0FgGwI1rX+
         myNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=4R/FPBL4dOo4mvZ9ReJ8CLxavGglB5XXnfcP3bpIQMU=;
        b=eonxYFrwJUOJhfh4IdIGhqg4PCQFaJcPwVkdU3ltvFoW2mO77r/v+I7QkmfK5GCZs6
         df3LNlgcEpX/m2rDcHwBEWelhZ+3n7aGr7h5/phycXFQJX4vmUL8CM/jX1WTSsI7owAA
         yA1BxBtpyk4CGFm64S4R1RjmfseQwzGmlbSO+fGwiLMQJLBNxJFHS9XszfoRp+4U68xd
         RZLrun8hjPMw3fdc9ELZGEWGw+BCGn43FKZGS6Vl9eGHsqmcjr6Vvvs4pxcgrBhtkga+
         JE9YVXIzSsfz2UNAIbrA+OwyES6A/gaEFHErzdLJfFQrFsV1p5tRC54uea7PXh2NLES3
         zs1g==
X-Gm-Message-State: AGi0PuYiQOn2I9W7fP59Hnk9IfRozYOrR6Eefo0JQQY82LZltiwOyTjB
        v0PyxAGYMDgbxSQap7YnXK8R4A==
X-Google-Smtp-Source: APiQypIcnVfCrjU/SQx6rFcAG9MOEb1k60YQzwaCjM39FmAU4PrzS6vHLapoN/BLX9AQQ8GBXTqLpw==
X-Received: by 2002:a17:902:b489:: with SMTP id y9mr1436701plr.144.1586248171653;
        Tue, 07 Apr 2020 01:29:31 -0700 (PDT)
Received: from localhost ([122.171.118.46])
        by smtp.gmail.com with ESMTPSA id np4sm989176pjb.48.2020.04.07.01.29.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Apr 2020 01:29:30 -0700 (PDT)
Date:   Tue, 7 Apr 2020 13:59:28 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     "andrew-sh.cheng" <andrew-sh.cheng@mediatek.com>
Cc:     Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
        srv_heupstream <srv_heupstream@mediatek.com>,
        "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        "Rafael J. Wysocki" <rjw@rjwysocki.net>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        MyungJoo Ham <myungjoo.ham@samsung.com>,
        "linux-mediatek@lists.infradead.org" 
        <linux-mediatek@lists.infradead.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Fan Chen =?utf-8?B?KOmZs+WHoSk=?= <fan.chen@mediatek.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [v5, PATCH 4/5] cpufreq: mediatek: add opp notification for SVS
 support
Message-ID: <20200407082928.lancywbqts5yg4ks@vireshk-i7>
References: <20191127083619.etocnhpyyut3hzwq@vireshk-i7>
 <1575874588.13494.4.camel@mtksdaap41>
 <20191210064319.f4ksrxozp3gv4xry@vireshk-i7>
 <1583827865.4840.1.camel@mtksdaap41>
 <20200311060616.62nh7sfwtjwvrjfr@vireshk-i7>
 <1584084154.7753.3.camel@mtksdaap41>
 <20200313091038.q7q7exiowoah4nk4@vireshk-i7>
 <1586164366.5015.6.camel@mtksdaap41>
 <20200406092945.d5thcd2h3bo7mn45@vireshk-i7>
 <1586242489.10019.1.camel@mtksdaap41>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1586242489.10019.1.camel@mtksdaap41>
User-Agent: NeoMutt/20180716-391-311a52
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07-04-20, 14:54, andrew-sh.cheng wrote:
> On Mon, 2020-04-06 at 14:59 +0530, Viresh Kumar wrote:
> > On 06-04-20, 17:12, andrew-sh.cheng wrote:
> > > I will use regulator in the locked region.
> > > And regulator will use mutex_lock.
> > 
> > Yeah, you can't use spinlock here, use a mutex.
> > 
> Hi Viresh,
> 
> I am not familiar with read/write lock.
> Do you mean there is another read/write function, which is not
> read_lock()/write_lock(), using mutex but not spinlock?

Heh, I am asking you to use simple mutex here, leave the read/write
lock thing completely as it won't work here.

-- 
viresh
