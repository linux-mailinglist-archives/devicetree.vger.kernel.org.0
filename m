Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 464173B342D
	for <lists+devicetree@lfdr.de>; Thu, 24 Jun 2021 18:51:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229445AbhFXQxs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Jun 2021 12:53:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48734 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229573AbhFXQxr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Jun 2021 12:53:47 -0400
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94576C061760
        for <devicetree@vger.kernel.org>; Thu, 24 Jun 2021 09:51:27 -0700 (PDT)
Received: by mail-pj1-x1034.google.com with SMTP id g4so3866694pjk.0
        for <devicetree@vger.kernel.org>; Thu, 24 Jun 2021 09:51:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=jz6S10IZvedV4y2N6FCYpRq0S+pqAraI9WxeXGHARr4=;
        b=lu5u4UhFrYXI8TIgX+1Qp0tyWIEkDBvZq3fg5PgYYJVj0CL7DQMYKgV9okcTlkFEv1
         A385B+qbzg4ZPUsfimPc6c2oMvIyBQmgjlgQUV3gV/1hkI6eEL7o0OtX7arjZknACx0K
         wJDgN0gpaXA9tItc+HOqnAGFt3f6RYUZt/zgI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=jz6S10IZvedV4y2N6FCYpRq0S+pqAraI9WxeXGHARr4=;
        b=ZbdFFkXNKQ4stIi+geZC4zAcp2nqDpIrnqfKPPZqBcewmODAzIe1BZsGSFUom6EsHC
         hXvAV33RG9+InLVnstGLHwqfMGXX1GhG7Gzw3ufp4Y+baEzcgxJsOQx6D4tPCOTdrdJl
         gLW4lEIPh5/Sytrr9pI00qPVzrSEYrVD9Ojyn3q7c5EIzutMnOQ0hP8CmKgZa9JMF+6z
         uH7iZ4ppWaiXPot6plQZ1zSBkATyYuzCRcIeJrwiPd4sLABLbniQ0BXVvDHyfb6eoREG
         wfFvgnScvqkrn9icBUnRoZxb2RNmUJI96CHU82mM6QtZOLcYyHTJiZ0zBy4SW3up2H3U
         dt1g==
X-Gm-Message-State: AOAM5322nLcxlvYbdEdzJUJ4i76TcooMsHwBHaC/wH8HjdqGk6PGt3dn
        wC0Prxs4QNUOmX9IkB+rAz1UoQ==
X-Google-Smtp-Source: ABdhPJwovNVl5CDsYmTE7Ynu8XPYgBppz9ug+rH39FUWZGxLHfv4Nwl26xTwLvaJOqb9MlOV0c3PqA==
X-Received: by 2002:a17:90b:3794:: with SMTP id mz20mr15878900pjb.23.1624553487012;
        Thu, 24 Jun 2021 09:51:27 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:dda9:4015:5d1f:23fe])
        by smtp.gmail.com with UTF8SMTPSA id q8sm3374524pfc.51.2021.06.24.09.51.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Jun 2021 09:51:26 -0700 (PDT)
Date:   Thu, 24 Jun 2021 09:51:25 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Thara Gopinath <thara.gopinath@linaro.org>
Cc:     agross@kernel.org, bjorn.andersson@linaro.org, rui.zhang@intel.com,
        daniel.lezcano@linaro.org, viresh.kumar@linaro.org,
        rjw@rjwysocki.net, robh+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [Patch v2 5/5] arm64: boot: dts: qcom: sdm845: Remove passive
 trip points for thermal zones 0-7
Message-ID: <YNS4DeHdxWY1XvvT@google.com>
References: <20210624115813.3613290-1-thara.gopinath@linaro.org>
 <20210624115813.3613290-6-thara.gopinath@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20210624115813.3613290-6-thara.gopinath@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jun 24, 2021 at 07:58:13AM -0400, Thara Gopinath wrote:

> Subject: arm64: boot: dts: qcom: sdm845: Remove passive trip points for thermal zones 0-7

The patch doesn't remove the passive trip points (anymore?), but the cooling
maps/devices. Also talking about 'thermal zones 0-7' doesn't really convey
any useful information (and the enumeration could potentially change in the
future), better talk about the CPU thermal zones.

> Now that Limits h/w is enabled to monitor thermal events around cpus and
> throttle the cpu frequencies, remove cpufreq cooling device for the cpus which
> does software throttling of cpu frequencies.
