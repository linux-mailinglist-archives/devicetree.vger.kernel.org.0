Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E7DC82CEAD1
	for <lists+devicetree@lfdr.de>; Fri,  4 Dec 2020 10:26:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729554AbgLDJZe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Dec 2020 04:25:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46910 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726735AbgLDJZd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Dec 2020 04:25:33 -0500
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com [IPv6:2a00:1450:4864:20::142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69097C061A51
        for <devicetree@vger.kernel.org>; Fri,  4 Dec 2020 01:24:53 -0800 (PST)
Received: by mail-lf1-x142.google.com with SMTP id j205so6741459lfj.6
        for <devicetree@vger.kernel.org>; Fri, 04 Dec 2020 01:24:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QfA2Deg/Hoczex9GFJ2Tve/iNGFtxx0X+vAgQ/KFFmU=;
        b=sxbK6ICnhtU2iZIIm+T8C1Te3ugLfCMvzllg3hITnc97hX0ozFqvsMw2hTfvuqrIJb
         Edv1v7nUodKmq7N37lBQN76EE9BW5pyN9FQwsyZ0e9ROMoKLgmpv8lznQhrB8fci8c6q
         Ixdn2ZfQU3yuSZzPAkaXD9uU1dhOZ4kcRUFHGtoyY05qk+ogwt5TCqEhDEJNMM87Ai2p
         DwlGKOlGIPT5NjBTaqMqWMzgoep/7oqCvO4edCRwySaIip0MEU9V/fRtGKhnql0PzOs+
         RGGGd3rKLV9mS5u0IVF8sQAr5LUn8Ie9a55F44FmW66QceFzV1SZfagOsT/VLUzmBtQt
         OZOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QfA2Deg/Hoczex9GFJ2Tve/iNGFtxx0X+vAgQ/KFFmU=;
        b=kfjOewkXSQRLMB1MrMr2i3e5iBcOng2mamm8BV034YZ1K+lis/GXW8+Z08QfPV/98W
         Es0msQUnMFc4tPKsHmZY+38tQiaGQoTM3eKT3GfgE/pbk44gkVKaQH+XRLkxZlSuqWBN
         jsBkXqzpiWggpUQ+eBe9rh6plM/PUX8aaf3n+ZXp1xEdegCACr3D81bwOiZV1X37C40G
         kSTKBXr353p0tK5e8q6wmb0hDjwoHFWyPj1tWXAvzD5kdyrRNgGWJp1juyr1IfOjbikP
         28Qd3BzMlUDtof046lfjPx4f+c/XjTICF2TG0hFyeO1fvibesmzg09Ja4xTJxc3RGNXM
         32Eg==
X-Gm-Message-State: AOAM532yrLy9mHuRJuj1SNjGV0A1c3vjKk7RxJp4u/4IQYnHmzYmGPjX
        5sSgbE9nLpWFjzhv+qoYEe0EFpakqgaMJfJp5q28ow==
X-Google-Smtp-Source: ABdhPJwld5FPJyOQr+2N2zHsMoJkzskFljGisFmdIuFc8iFudOBUnCzHohy+kvKJ8IppYePCa9/K6MvPyM8eZ2hBb1g=
X-Received: by 2002:a19:8686:: with SMTP id i128mr2935037lfd.333.1607073891967;
 Fri, 04 Dec 2020 01:24:51 -0800 (PST)
MIME-Version: 1.0
References: <20201203070900.2651127-1-vkoul@kernel.org> <20201203070900.2651127-2-vkoul@kernel.org>
In-Reply-To: <20201203070900.2651127-2-vkoul@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 4 Dec 2020 10:24:41 +0100
Message-ID: <CACRpkdaX2=F_AgWniXGJXO2hE2itg=ENMBOROaY+Lrk7CxdNUw@mail.gmail.com>
Subject: Re: [PATCH 2/2] pinctrl: qcom: Add SM8350 pinctrl driver
To:     Vinod Koul <vkoul@kernel.org>, John Stultz <john.stultz@linaro.org>
Cc:     MSM <linux-arm-msm@vger.kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Raghavendra Rao Ananta <rananta@codeaurora.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Jeevan Shriram <jshriram@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Dec 3, 2020 at 8:09 AM Vinod Koul <vkoul@kernel.org> wrote:

> From: Raghavendra Rao Ananta <rananta@codeaurora.org>
>
> This adds pincontrol driver for tlmm block found in SM8350 SoC
>
> Signed-off-by: Raghavendra Rao Ananta <rananta@codeaurora.org>
> Signed-off-by: Jeevan Shriram <jshriram@codeaurora.org>
> [vkoul: rebase and tidy up for upstream]
> Signed-off-by: Vinod Koul <vkoul@kernel.org>
(...)

> +config PINCTRL_SM8350
> +       tristate "Qualcomm Technologies Inc SM8350 pin controller driver"
> +       depends on GPIOLIB && OF
> +       select PINCTRL_MSM

This needs to be
depends on PINCTRL_MSM
due to the recent changes to allow modularization.

Yours,
Linus Walleij
