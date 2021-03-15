Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CADA333C169
	for <lists+devicetree@lfdr.de>; Mon, 15 Mar 2021 17:16:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229460AbhCOQQC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Mar 2021 12:16:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229843AbhCOQPp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Mar 2021 12:15:45 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4AEF9C061763
        for <devicetree@vger.kernel.org>; Mon, 15 Mar 2021 09:15:45 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id z8so16921364ljm.12
        for <devicetree@vger.kernel.org>; Mon, 15 Mar 2021 09:15:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=whezGPX07b3sUPoOpaXH07SshdzQOy4tuu1n0282U3Y=;
        b=IkUaPU2LsXGiZ9t3R2YxU0xvXyAIf4MJNET4D3qz0haaeS6DDR8//ZDuN23aw74Tod
         C6ks7QK1cXE8kzlhgAH6AJ+aYqgUmcMJUmWd4fUA51YFa9gRHB0zGLsY2uPT/A2zmHfv
         k6nZny1yCduUwtvvu3wpc599sGC7hxaA5Bb8uuU+Q/9PIreBdRhbV7g8kuw3Yf3ohovR
         4Zm4eOOu6EYB8dIX7nQDzUusdTqIjnHwV3eLYsoBuVbXQC/Dk48rHHrWQivhYhRZfNJa
         whFia53i3rwrQuP4WP9CdYpW17gmmkxX2TkancRpN1seQQa2X7wX29FoMCk7nqYJ5B/a
         PFiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=whezGPX07b3sUPoOpaXH07SshdzQOy4tuu1n0282U3Y=;
        b=fdIzatm3ZP+HIc4mWF2+IhPA3QXx+0fwA7I8nJFPTNg6aBC26STrWhLAzEx0hPHSVn
         Txo5V1i0NGaexrTJGbFZTNQWRkwB4+WqJ4cJQXM2AMTnXC/oK4zLKfzDqYJXqn3RAxdc
         LO5s+spSLfiqeyWnCgxdbHeWH4XQeMXrXLfEKDI3V3lM4YQJxIaM0qCXCSp8z/Ni2xMA
         xq6qLZeJ7HbkHYxTx1lso67UXcfUEPButoacFdvr7D2RT3u208tptHxTMYiCYFXaQwaV
         Vsza2R3pM7imUeRCV2R5lql7bh23vdGSZOmi5ltGR9PoDXUcUxBfYFi1vbvNirvPbHgt
         0YUg==
X-Gm-Message-State: AOAM531HCd590rBogViSdiNxPEZzmhNnIsCxOsSrmfAX0K83gIiiNpwH
        7IjH058otJ2ymQhSN+zg1pA+gXCuHsC+WhgWcX7jzQ==
X-Google-Smtp-Source: ABdhPJwlxhBzJkkcvbojy4usCRwaY3bkBsWbXm6KSAwvyMDTAsyGhJSQGbZPJqu/Ax4MeK78p7DDeRHVotyxH9Jwr3k=
X-Received: by 2002:a2e:9cb:: with SMTP id 194mr10965708ljj.438.1615824943587;
 Mon, 15 Mar 2021 09:15:43 -0700 (PDT)
MIME-Version: 1.0
References: <20210312034218.3324410-1-bjorn.andersson@linaro.org>
In-Reply-To: <20210312034218.3324410-1-bjorn.andersson@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 15 Mar 2021 17:15:32 +0100
Message-ID: <CACRpkdZOFGVnOY6wQtncKW8zdxqr1nicB9rRef+QffiFTOCaRQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] pinctrl: qcom: sm8350: add GPIO wakeup interrupt map
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        MSM <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Vinod Koul <vinod.koul@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Mar 12, 2021 at 4:41 AM Bjorn Andersson
<bjorn.andersson@linaro.org> wrote:

> From: Lina Iyer <ilina@codeaurora.org>
>
> GPIOs that can be configured as wakeup sources, have their interrupt
> lines routed to PDC interrupt controller. Provide the interrupt map of
> the GPIO to its wakeup capable interrupt parent.
>
> Signed-off-by: Lina Iyer <ilina@codeaurora.org>
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>

This patch 1/2 applied to the pin control tree.
Please take the DTS patch into the qcom SoC tree!

Yours,
Linus Walleij
