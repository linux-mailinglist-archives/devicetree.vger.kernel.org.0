Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B1BE538D53F
	for <lists+devicetree@lfdr.de>; Sat, 22 May 2021 12:40:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230216AbhEVKmR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 22 May 2021 06:42:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56404 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230265AbhEVKmR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 22 May 2021 06:42:17 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A62CDC0613ED
        for <devicetree@vger.kernel.org>; Sat, 22 May 2021 03:40:52 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id q7so32067564lfr.6
        for <devicetree@vger.kernel.org>; Sat, 22 May 2021 03:40:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=lg1y9Obp80Osz1Bq342Yu+rTFD/2WpZGCEwwuCDW6E8=;
        b=uc4PL6oylDsloueQXrsHk4s9gDW5ReETZHqDdO2FyOsAYj2AXbF4Y5GiSKBEvOZlXb
         y46aWz4RMRtLBBv82Mz353uoHrmnz8CuPPFIqMQWmKIePAclvQmgmh0dS3Q8hkHcVPqx
         /M3QyfikllKwEsHD2xUdHIaY6wC2eyjluXU9nw1Iki6Gn6a6GU6ihNNNtWuLilr+Qzyz
         mmWFT3DXaNR+vSEzUxpNXg4ffVaZHNJi9hute/lOz9R4kJ/FlckJBIUh+MosI/5m8fn+
         /BqribLnX9ZuLHVWmOsAfN8QJUSbhGsBpsZMysFe2Ouy/QuFaNz461USE2xWHGPzKCQZ
         0dMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lg1y9Obp80Osz1Bq342Yu+rTFD/2WpZGCEwwuCDW6E8=;
        b=CBC8hH9uuDlx5iMY+XW2xSKBPI0pgdBvIplkDSD8kESR8zT9Yb2dReXSrFQCxeW6PL
         glOtVXfXr7NoIggRz4Qj0KZ/KuARDxkzdeT+i03vMA9/ekjEExK+2bvbQn5uYfeJQwdK
         4RjZQlEpef+mUW1gaEnLgd6z51IdRfdQ+U3PEciGuOhu//fBZo9tRqLumCEpl1+PwXWL
         HOwsy3zpjEzV90RkLDaGf886muAZidEjUcdrl1RALNSf9w9RrPgKBMvEkcbY+EujOmT1
         Z/mCV+ArLQ2T3CWdZIYhq44oGG58e7g6XgEMP8GfmOOSKH0yre6SwQtGs4atTCHFAp2z
         vk4g==
X-Gm-Message-State: AOAM5337llE6i3uHA54ag5yn5M8QSBaUUr1WO6ntvfQGQ9GR66jYF5Gv
        6E/er/4NLB/vGzL8r4dMjwxjfd4CzKOXRu60/V6HGQ==
X-Google-Smtp-Source: ABdhPJxhLwsuqV6feNa9R5NW2NBld0tSR0wyt/uxJOCt1dJmqHL9iyeqVVJScvTt9ZNQ720pZRp4l/glKWQcrUEPhEY=
X-Received: by 2002:ac2:544f:: with SMTP id d15mr4994893lfn.465.1621680051047;
 Sat, 22 May 2021 03:40:51 -0700 (PDT)
MIME-Version: 1.0
References: <20210517200907.1459182-1-dianders@chromium.org> <20210517130450.v7.10.Ibdb7735fb1844561b902252215a69526a14f9abd@changeid>
In-Reply-To: <20210517130450.v7.10.Ibdb7735fb1844561b902252215a69526a14f9abd@changeid>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 22 May 2021 12:40:39 +0200
Message-ID: <CACRpkdbrmFS87xRRbwbU7J05bGDKmx5oJR880sr_ZA4KWKSKfA@mail.gmail.com>
Subject: Re: [PATCH v7 10/10] arm64: dts: qcom: sc7180-trogdor: Move panel
 under the bridge chip
To:     Douglas Anderson <dianders@chromium.org>
Cc:     Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Sam Ravnborg <sam@ravnborg.org>,
        Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
        Lyude Paul <lyude@redhat.com>,
        Thierry Reding <treding@nvidia.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        MSM <linux-arm-msm@vger.kernel.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
        Rob Clark <robdclark@chromium.org>,
        Steev Klimaszewski <steev@kali.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 17, 2021 at 10:09 PM Douglas Anderson <dianders@chromium.org> wrote:

> Putting the panel under the bridge chip (under the aux-bus node)
> allows the panel driver to get access to the DP AUX bus, enabling all
> sorts of fabulous new features.
>
> While we're at this, get rid of a level of hierarchy for the panel
> node. It doesn't need "ports / port" and can just have a "port" child.
>
> For Linux, this patch has a hard requirement on the patches adding DP
> AUX bus support to the ti-sn65dsi86 bridge chip driver. See the patch
> ("drm/bridge: ti-sn65dsi86: Add support for the DP AUX bus").
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

This is really looking good.
Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
