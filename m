Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A351E2A9274
	for <lists+devicetree@lfdr.de>; Fri,  6 Nov 2020 10:24:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725893AbgKFJYp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Nov 2020 04:24:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52332 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726345AbgKFJYp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 Nov 2020 04:24:45 -0500
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com [IPv6:2607:f8b0:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13CB9C0613D2
        for <devicetree@vger.kernel.org>; Fri,  6 Nov 2020 01:24:45 -0800 (PST)
Received: by mail-pf1-x443.google.com with SMTP id y7so755694pfq.11
        for <devicetree@vger.kernel.org>; Fri, 06 Nov 2020 01:24:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=hzarJxo5HuHRgVKDtpQt++8Xgz0VtleRQQlUu1Y/EL4=;
        b=XSb/jGpBPw+cVJcyj0jTuj3LMjz1JkiKTojGtKjtw7LBVCVJ7DjJcMgMw759u8pitr
         aY6Aa2QEnu44wDFhMrjgU5wvsWC7caBgH4z7Q6BJPn7tNsZJuDDe5bJvuM92UQFcRTpy
         7N68/Ed7KR2G8ZMzRd2VDRytZ3WszN8BpJaULEAzofL44cj3M6QSf3nfLYEowIATGgl6
         onN0odWpJSSzY853vJdXgR1edW2A4OseA4cBiflBm997cccgWatVtBE8DXW5CiIk8GPB
         GLruobY+Q2YjuU03L45lgWHCGAjl+za4S4SCiZpORwhuVHz0NJjdmr537zw3Cx561/aC
         j5rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=hzarJxo5HuHRgVKDtpQt++8Xgz0VtleRQQlUu1Y/EL4=;
        b=Y2sxI8bhAjrJeKOUpECAt7qu5YD662Bh2/i2WagkBrJv2xArbceWD9vbGS5zyp0+cF
         iPWQcma1WViqmh0G1iHJIV6DH9QWrUVpsat+iwK8xegecUy2GMXKZSqZj0wFz8X0Wrq6
         LLVxqsGQ2fBJTnQgJv6M0J39gA7MwFit8dPP+lezPLMatXvzhgYkn7oG100KzO9bWM1t
         YFeE2E2rVhE0HL+CwgIm1vm8x5Gc/GnQoGT+e6GBAx4Rcc9XKIAbu10D4iOCBQ7drvNT
         O+GP0CVtjUxF7yQ7ybQjIBWr+YLDsf8x/orrHPClTRSy0T55njxD+jnYzl58l7ey33DB
         K4EQ==
X-Gm-Message-State: AOAM531PV9DIyPLJQOlWI7AH+Q2dW6Wz877FvgK2olb7/gAQmrD8yDzG
        IBgHNCnSywtZoCeLQdEhWExz0A==
X-Google-Smtp-Source: ABdhPJwK+R4KBhdhJw4U0BZWFmXUL2OPqquUHVrPTHZktlF9Q8+WJHzzEM94OCY1zmZGgP6/TYhrkQ==
X-Received: by 2002:a63:5466:: with SMTP id e38mr1022850pgm.23.1604654684629;
        Fri, 06 Nov 2020 01:24:44 -0800 (PST)
Received: from localhost ([122.172.12.172])
        by smtp.gmail.com with ESMTPSA id 136sm1362968pfb.152.2020.11.06.01.24.43
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Nov 2020 01:24:44 -0800 (PST)
Date:   Fri, 6 Nov 2020 14:54:42 +0530
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
Message-ID: <20201106092442.v5fao2dyl3lemwyh@vireshk-i7>
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
> Hi All,
> 
> This is a continuation of the previous v2, where we focused mostly on the
> dt binding.
> 
> I am seeking some feedback/comments on the following two approaches.
> 
> Intro:
> We have seen that in a system where performance control and hardware
> description do not match (i.e. per-cpu), we still need the information of
> how the v/f lines are shared among the cpus. We call this information
> "performance dependencies".
> We got this info through the opp-shared (the previous 2 patches aim for
> that).
> 
> Problem:
> How do we share such info (retrieved from a cpufreq driver) to other
> consumers that rely on it? I have two proposals.

FWIW, we already have a case in kernel where something similar is
done.

commit f4fd3797848a ("acpi-cpufreq: Add new sysfs attribute freqdomain_cpus")

and the information is shared via:

/sys/devices/system/cpu/cpu#/cpufreq/freqdomain_cpus

-- 
viresh
