Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 41EE91026A8
	for <lists+devicetree@lfdr.de>; Tue, 19 Nov 2019 15:29:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727096AbfKSO3V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Nov 2019 09:29:21 -0500
Received: from mail-lj1-f196.google.com ([209.85.208.196]:44404 "EHLO
        mail-lj1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726378AbfKSO3U (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Nov 2019 09:29:20 -0500
Received: by mail-lj1-f196.google.com with SMTP id g3so23527428ljl.11
        for <devicetree@vger.kernel.org>; Tue, 19 Nov 2019 06:29:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6sNcMIRGVALNQmfCoOl6isJBOVyA7zcFBph0eG9kcTE=;
        b=X8thbqFEidQ+5TbZYwyYc3+2/23nQdjsHW/Rsf2n0DtmZqXiUke25AM3h3+AKmGQI1
         nZSFJXxzeoOb0MQm4M2slhRG3hdAOzUfno+2o4ok/CgkZ/ItEFrBs7o2jNzUvg3ZWcba
         nUdzB5+cqDak9xGFtYqYtN1Vza2f4UvVu9FS1FEidNabfhEEaihuWsZauWeCpJo/+bDR
         MGIdsg6s89W+bfR+rOtdJiQBODJp9EXpHR6tTuxh5HrLNTCJkYkdWYh3vwK+EusRW0VB
         nQnkTe2Fml3/+DnHob7PuW0aCiQsz17mkSYXtYuTWNBrUsCXWOSND9u+T1U5x3edUCQ6
         1BDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6sNcMIRGVALNQmfCoOl6isJBOVyA7zcFBph0eG9kcTE=;
        b=Hfq4FlAcJshzDC7mkV8zUkUYF/G7KawiQ9KqlmzqdIfs1+HREwqNNeVhf9fm2KWf90
         pNw6cjTArelaUvl7Mv25uY+Uf0JK3o8yd36HY0vbmJ5r/+E2zf4M7uFNMOodUEW/Mrlf
         1E4d9NKliVkC7odoZ1gLzao0WJSY6EnuLmurRlkyz2Y+1wq/uqsanDMdg/Hw+ZYBRkT8
         x8Rvekf6dFQUQpB4VvUK4KPJh0K0LwZIH1vgGNjYzRjg/cXVyRO52dWdOF8HBuMx/AIu
         H2jyanitiyCyHrCpC1oGJqVXq9jiZeR+n5vtkjAK3u1DY1m3H0SZtUc6QLdvP0gZqOGB
         pi2Q==
X-Gm-Message-State: APjAAAXLWoSFJ4j+0Uzt7BEd0BDD+96dpC/B5lm5y1hzvJIR2oRWXKhU
        vs2FrP3kk7wf/cP/HOvoitWqVxY26I5QQVCjc63oow==
X-Google-Smtp-Source: APXvYqwGMNJbpjx1M8t1gc9I1w6Y8MsDjoR/Pq74R8UC/6e1zXoMpKROXOqmTmNcU+cIJQXxASZ46PrJBMcP0STvsv0=
X-Received: by 2002:a2e:90b:: with SMTP id 11mr4038963ljj.233.1574173758800;
 Tue, 19 Nov 2019 06:29:18 -0800 (PST)
MIME-Version: 1.0
References: <20191117222732.283673-1-stephan@gerhold.net>
In-Reply-To: <20191117222732.283673-1-stephan@gerhold.net>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 19 Nov 2019 15:29:07 +0100
Message-ID: <CACRpkdZtsg9g2m7w4Uk9mZ9a6KvQADfb9m1W4DKxbFismk82pg@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: ux500: snowball: Remove unused PRCMU cpufreq node
To:     Stephan Gerhold <stephan@gerhold.net>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Nov 17, 2019 at 11:28 PM Stephan Gerhold <stephan@gerhold.net> wrote:

> Commit a435adbec264 ("ARM: dts: augment Ux500 to use DT cpufreq")
> switched the Ux500 device tree to use the generic DT cpufreq driver
> and removed the PRCMU cpufreq node.
>
> The snowball DTS still references it, without effect, since cpufreq
> is now enabled by default. Remove the unused node.
>
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>

Patch applied for the v5.6 kernel cycle!

Yours,
Linus Walleij
