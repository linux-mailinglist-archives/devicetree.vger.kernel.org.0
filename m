Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1169A3D0870
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 07:43:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233003AbhGUFCo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 01:02:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49356 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233167AbhGUFCf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jul 2021 01:02:35 -0400
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com [IPv6:2607:f8b0:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACBEFC061767
        for <devicetree@vger.kernel.org>; Tue, 20 Jul 2021 22:43:07 -0700 (PDT)
Received: by mail-oi1-x231.google.com with SMTP id y66so1726487oie.7
        for <devicetree@vger.kernel.org>; Tue, 20 Jul 2021 22:43:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=hf6xnyfDVscdnIm8e7vP+O/z70LiWfZSeXYc2Hpl7+w=;
        b=E4800xZKn+NlHsQnmsuVG/meEmTucGlq57gF16OMqcSd0n/WDSZI8WYMQlLDYud2c1
         UksJe1i6LAR0beBLUSWnB5wf6wGMss2ET70L3tJdVp3fy97KNRxmvxLbYrhW15SE21WZ
         QxMBzZyP0628qUAMQAeGRAXdBPxyvpwEY8rHw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=hf6xnyfDVscdnIm8e7vP+O/z70LiWfZSeXYc2Hpl7+w=;
        b=SCh7MDqGNpXNCjtfTAdFlzpVGFnYUauej/7wejI+Zfh12TZVAKkxasdKm87GtKMS4w
         v5YE61fwU7KOYA5rqRjzFgSBaG6+esYYy8bBQWTjdGlmg19Ltc+I+yGHT6hLcEtTu181
         zxEOZOwYrYHk5qY4+spDlKrCayNitsdrdWwN+XYP1x7MX2/ke5RtyjMUKr9wAWxlZBa9
         i7GrgATe0a6lJ+vvomBbhGcWc+8Z7PO89JmKdoCZlATtO/AbyYta0YqbDCc17DFGgC6i
         +9yZsneB002tl8JptehyZpfJNP17C2xjrqDpFeRuaHGcPUV4gGM9CcJiferZGhdOoXQG
         klRA==
X-Gm-Message-State: AOAM530839cJMOb2Rkme8m807RaN9SJH078aiJ9Ap8KeIyg2e2UhSOSt
        2DrvPvIi4kiNc2mN89p9pUklRFLPencCMRn43zdoOA==
X-Google-Smtp-Source: ABdhPJyhZM62w2HxLyrWYJERIKW0NCE7R9SVmmZHO4rQTZuOycq38dOFGmHxqXcA6yNvQkyQaqSc8x7Mz3BzfO4EovI=
X-Received: by 2002:aca:4dc6:: with SMTP id a189mr1525356oib.166.1626846187144;
 Tue, 20 Jul 2021 22:43:07 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 21 Jul 2021 05:43:06 +0000
MIME-Version: 1.0
In-Reply-To: <1626775980-28637-8-git-send-email-sibis@codeaurora.org>
References: <1626775980-28637-1-git-send-email-sibis@codeaurora.org> <1626775980-28637-8-git-send-email-sibis@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Wed, 21 Jul 2021 05:43:06 +0000
Message-ID: <CAE-0n53We+CzBFpzdN7pGgrjqeALmJO4dgHVtc0JVQw+Jw+u+g@mail.gmail.com>
Subject: Re: [PATCH v2 07/10] arm64: dts: qcom: sc7280: Add/Delete/Update
 reserved memory nodes
To:     Sibi Sankar <sibis@codeaurora.org>, bjorn.andersson@linaro.org,
        mka@chromium.org, robh+dt@kernel.org,
        saiprakash.ranjan@codeaurora.org, will@kernel.org
Cc:     ohad@wizery.com, agross@kernel.org, mathieu.poirier@linaro.org,
        robin.murphy@arm.com, joro@8bytes.org, p.zabel@pengutronix.de,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, evgreen@chromium.org,
        dianders@chromium.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Sibi Sankar (2021-07-20 03:12:57)
> Add, delete and update platform specific reserved memory nodes.
>
> Signed-off-by: Sibi Sankar <sibis@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
