Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5DC5F375213
	for <lists+devicetree@lfdr.de>; Thu,  6 May 2021 12:13:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233816AbhEFKOB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 May 2021 06:14:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233736AbhEFKOA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 May 2021 06:14:00 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB4D8C06174A
        for <devicetree@vger.kernel.org>; Thu,  6 May 2021 03:13:01 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id w4so6330911ljw.9
        for <devicetree@vger.kernel.org>; Thu, 06 May 2021 03:13:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=l1ggbKpwyEzj1rEh/XxYET4MGXcIm3LWjUGGwG6CSpk=;
        b=gp7jZdcKCXTMbw8gIV6QPVSzQjbCzr0nQ/Mlpn76q0uJTzWUqGv/GSx0MoIOzm0zHr
         Tu7r5b4HmciBMvnIle7GR58kfgOb0lbVgrl3Rf2uBQR5T8QUmmvXJiyDqB/tQIvKgJXf
         jV7WqRW5oIDms3lb9VdnVJNxi3mP7qpoyXp2gAcBeOrUGSQnozEr8/2loX1Z3KP3xxJw
         wWV0t0/WTvMMMrQFdjS2mwyYn74SxNhhN8LCpah+IeSrOQZ8Y2+ukHJ5ZNyHupYr+/tS
         s9hRxZI9OXOa+aeNabKihD5RhohwauPhGACSHynCj3BIsNTkIXUkXYRd4EVHZTcyDBe5
         QebA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=l1ggbKpwyEzj1rEh/XxYET4MGXcIm3LWjUGGwG6CSpk=;
        b=GbPdtytDKuTWexqM8pN/rpGoZ7b4N7ClaOgYC+8/lIppY7lwE/+TC53kh/1tNX/gu8
         yMvuAxABcUoGX2PXlzXpei8cYqcKQ9WL5308v3GxL9pzDJtTwq6uar4hYCfEKaP2rAW6
         GqLTMysVrJfBH6IfKkGfdM/adEpkJMntJRUZjk+bTCNQs127RLIsHyTkcYJEIJtTr1AL
         gY0J1csv3jdsEkUsajfI5jsolNG1Nmjx4shd4ZulSmr+dPBkBHowpjnOKtBFyP0z45zg
         Xuy5fP+4NtOJoYrs9ONnrCMMKjLrdML9ZBOmCWfZNnaF6C60fb8IloXQtHEdBKUwW5ss
         NYFA==
X-Gm-Message-State: AOAM531xTOKYx8+lXq8kOStB2X5w0jY96+81Rb5XIJScCziQqUMQwTZ9
        lwrpshx/+pEP1zjMDm7F00GPog39wNIm0EXkn299Hg==
X-Google-Smtp-Source: ABdhPJxfW5Qw4qptyfdPIbMEturmOMzGgfkC2WHp/K0ru1xbqQy5PMRz56ryAth0AyOFT3K2oGH11kmD8mX8oeDgz94=
X-Received: by 2002:a2e:2e12:: with SMTP id u18mr2694286lju.200.1620295979500;
 Thu, 06 May 2021 03:12:59 -0700 (PDT)
MIME-Version: 1.0
References: <20210428174830.3691034-1-clabbe@baylibre.com>
In-Reply-To: <20210428174830.3691034-1-clabbe@baylibre.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 6 May 2021 12:12:48 +0200
Message-ID: <CACRpkdbTOmCUy0cX0cD1tLLo94UAaGGOFaOL5hBQ0k5NVewOnA@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: gemini: rename mdio to the right name
To:     Corentin Labbe <clabbe@baylibre.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Hans Ulli Kroll <ulli.kroll@googlemail.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Apr 28, 2021 at 7:48 PM Corentin Labbe <clabbe@baylibre.com> wrote:

> ethernet-phy is not the right name for mdio, fix it.
>
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>

Patch applied!

Yours,
Linus Walleij
