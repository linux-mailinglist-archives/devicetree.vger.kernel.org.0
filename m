Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 53D4C2A2C28
	for <lists+devicetree@lfdr.de>; Mon,  2 Nov 2020 14:55:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725880AbgKBNzH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Nov 2020 08:55:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725838AbgKBNyz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Nov 2020 08:54:55 -0500
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C283C061A04
        for <devicetree@vger.kernel.org>; Mon,  2 Nov 2020 05:54:55 -0800 (PST)
Received: by mail-wm1-x342.google.com with SMTP id k18so9582195wmj.5
        for <devicetree@vger.kernel.org>; Mon, 02 Nov 2020 05:54:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=HSJ3s4kk78CsixfcMhylaTOQInqHbcM0PNqhAJpk4PE=;
        b=vGSl9SXiVHPlEeKwXPuJ+kqLGdcCNTo32UXEgPV6SG/4765tTSjI2XccTyhH463SR9
         X8WdheAFoGwThNeBZ/iHvH5rD8CKfQZbkTllsKe5hmGcTsSKZ1yqK57hdfh97SRSfc2S
         xTxOI7YThT0jVW3jA6wkBMGHVOI8vDSDeb0hajPli/tuYw6YzIJPiJfaqpCoyeWdYneJ
         /UFXt5emdxCPw06+vrb2w+8vcWCDBRx6K1PV2u6VXX+8PSHF99vME9IXJFAWQTlvzr6a
         /SA1CC+mqWKfImAXziaKUIgIBbhQu0ACrv27R8d/dPBohYxxHFWfmOSIJFs5toRcfga9
         KXbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=HSJ3s4kk78CsixfcMhylaTOQInqHbcM0PNqhAJpk4PE=;
        b=AuXaVfo7nPSPLyUwWT2kpSnA0hjQJ+6cUS4X+pkwHVRUYOGgulU1B2/p9glZK7vQQa
         zmmrc1Wbh0U54zT/3Zsgbpr9HWru5PHbcYt96/4XYmRHJm9mhhwUxiUdaDPDiGVT7boo
         VK+WZyAPpE2vJzCT8y4s+dJI8DD/kQnikHs2ptM7rPVhmRPIDWPLrkRdFT9Cwxu4AEjS
         Pttuc4RhEU6a3y6Hbq01e2kg8KtVerzwMKQgsaKWNtEOpPIyVuRo2T0IcgMNt9RkK6pS
         Jz2Vh9+QmzA4iaK7rxMjag0MxWbAS/E1uAbKo2A1ptfjRrul66oY4XQsLoIDNKHxuFfB
         FgKQ==
X-Gm-Message-State: AOAM5306tpGTkNDXItb62wjlWTNWvmXlZgSIbZBFZbSzOorK3idu9rMT
        xeNbk9udqHJbmGK0mUuxrSwV6A==
X-Google-Smtp-Source: ABdhPJx8/+oUahdkx2/ilxjGC/UEmOEiYmXb73w90eteOw4p5SnvEC4gSXTCGgVhR0HS7Cxwj0r2WA==
X-Received: by 2002:a1c:6a0d:: with SMTP id f13mr3686427wmc.172.1604325293729;
        Mon, 02 Nov 2020 05:54:53 -0800 (PST)
Received: from google.com ([2a00:79e0:d:210:f693:9fff:fef4:a7ef])
        by smtp.gmail.com with ESMTPSA id r18sm24511552wrj.50.2020.11.02.05.54.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2020 05:54:53 -0800 (PST)
Date:   Mon, 2 Nov 2020 13:54:49 +0000
From:   Quentin Perret <qperret@google.com>
To:     Lukasz Luba <lukasz.luba@arm.com>
Cc:     linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        linux-doc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, daniel.lezcano@linaro.org,
        robh+dt@kernel.org, amitk@kernel.org, corbet@lwn.net,
        Dietmar.Eggemann@arm.com, morten.rasmussen@arm.com,
        dianders@chromium.org, mka@chromium.org, rnayak@codeaurora.org,
        rafael@kernel.org, sudeep.holla@arm.com, viresh.kumar@linaro.org,
        sboyd@kernel.org, nm@ti.com
Subject: Re: [PATCH v3 0/4] Clarify abstract scale usage for power values in
 Energy Model, EAS and IPA
Message-ID: <20201102135449.GE2221764@google.com>
References: <20201019140601.3047-1-lukasz.luba@arm.com>
 <d3c64655-dc31-73dc-8483-bf5805a9d389@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d3c64655-dc31-73dc-8483-bf5805a9d389@arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Monday 02 Nov 2020 at 08:54:38 (+0000), Lukasz Luba wrote:
> Gentle ping to Quentin and Daniel for sharing opinion on this patch set.
> If you are OK, then I could use this as a base for next work.

One or two small nits, but overall this LGTM. Thanks Lukasz.

> As you probably know I am working also on 'sustainable power' estimation
> which could be used when there is no DT value but it comes from FW.
> That would meet requirement from Doug, when the DT cannot be used,
> but we have sustainable levels from FW [1].

Cool, and also, I'd be happy to hear from Doug if passing the sustained
power via sysfs is good enough for his use-case in the meantime?

Thanks,
Quentin
