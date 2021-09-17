Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D720340F250
	for <lists+devicetree@lfdr.de>; Fri, 17 Sep 2021 08:26:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233824AbhIQG2F (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Sep 2021 02:28:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38598 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233801AbhIQG2E (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Sep 2021 02:28:04 -0400
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4201BC061766
        for <devicetree@vger.kernel.org>; Thu, 16 Sep 2021 23:26:43 -0700 (PDT)
Received: by mail-oi1-x234.google.com with SMTP id bi4so12578161oib.9
        for <devicetree@vger.kernel.org>; Thu, 16 Sep 2021 23:26:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=evM8dYW25rUmoo+jhaGEhb/KiP/SeJMcvT7KRQQj0k4=;
        b=GloPPC5iQ+gAScdWkJeOIsSgsZ5BSp9BiCqP1rzXOdxccRDtfeoX8O0HsiM7fJbpE9
         tUSl/aQESeWKK1uPMUO7DCltaBfer5Uo3L92ywAfuAXPYyuw0Q6UkoscP2In/ZftAmou
         tpYiHFxNgvo/7eg58Bk7Zn4HkLVXoT+1ihqFM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=evM8dYW25rUmoo+jhaGEhb/KiP/SeJMcvT7KRQQj0k4=;
        b=caR56AtgH5VwnAA6t6xEd28Dn/eepzJ4fQeYBglF8fYpWKBmkHRsSRI3aMsuIO+4eX
         lysOZQoc3FtA1X85ow2hcAUG0RNSrrvhnd66LSFaEcr9cjuHjmeutawlBndFXz3o6xxB
         HN2MVwFjJG0FNFyN11jILO+BoCX4GsLe27K2XfXb/B5HWuWg76hJAMDVdD0ecFUxHrLS
         0WvR/X4yxLL70jompxvkHflc400ayiGQwT1KdHZUr9qFh/4lqV9CXIZ0Sx43ZGZQ2Zqn
         lrD94KetRyOi+mOZfy1yq4LughFidUEJwwcURkw6n0t6ukZ8vW6d+XKZF/gUMB3c5u/4
         vWHQ==
X-Gm-Message-State: AOAM533u0m0yJU1ZwWRFqqIpzMpan1XWNB9/F+lP/iv5zx4DiIM8zGkx
        Daq3EiCZFGt6z/6Eorw6yniP0INK8s4hz3+LXPI6PQ==
X-Google-Smtp-Source: ABdhPJyrkQzCWSDEUH1Rd5lLaPb2mxQs/iP6fiO2b9602AYM1Z/L3nqb7ScjuiLu6cPKzfoKXdFQgYK/XitKb8oyxGk=
X-Received: by 2002:aca:2310:: with SMTP id e16mr2823690oie.64.1631860002668;
 Thu, 16 Sep 2021 23:26:42 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 16 Sep 2021 23:26:42 -0700
MIME-Version: 1.0
In-Reply-To: <1631811353-503-4-git-send-email-pillair@codeaurora.org>
References: <1631811353-503-1-git-send-email-pillair@codeaurora.org> <1631811353-503-4-git-send-email-pillair@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Thu, 16 Sep 2021 23:26:42 -0700
Message-ID: <CAE-0n501fpj13snR9Q+RyOW12zPqyY8W4ZqzFcrmeqiwA77GVQ@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] remoteproc: qcom: q6v5_wpss: Add support for
 sc7280 WPSS
To:     Rakesh Pillai <pillair@codeaurora.org>, agross@kernel.org,
        bjorn.andersson@linaro.org, mathieu.poirier@linaro.org,
        ohad@wizery.com, p.zabel@pengutronix.de, robh+dt@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, sibis@codeaurora.org,
        mpubbise@codeaurora.org, kuabhs@chromium.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Rakesh Pillai (2021-09-16 09:55:53)
> Add support for PIL loading of WPSS processor for SC7280
> - WPSS boot will be requested by the wifi driver and hence
>   disable auto-boot for WPSS.
> - Add a separate shutdown sequence handler for WPSS.
> - Add multiple power-domain voting support
>
> Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
