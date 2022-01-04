Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 52880484665
	for <lists+devicetree@lfdr.de>; Tue,  4 Jan 2022 18:04:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235638AbiADREx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Jan 2022 12:04:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34254 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235637AbiADREw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Jan 2022 12:04:52 -0500
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com [IPv6:2607:f8b0:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 92CE0C061784
        for <devicetree@vger.kernel.org>; Tue,  4 Jan 2022 09:04:52 -0800 (PST)
Received: by mail-ot1-x332.google.com with SMTP id 35-20020a9d08a6000000b00579cd5e605eso48128744otf.0
        for <devicetree@vger.kernel.org>; Tue, 04 Jan 2022 09:04:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jbFt9L6krYBtcAbEWqf0z5PDV9qPyLwggi9o0oOg8Q4=;
        b=tcZMB5CjcUmMaN+9Id/E0rFrxKPtu2D180QRxxDNQ+eUXqMRI5iXCpeIlPhxwt8xtL
         7kl50sONeFBSybYsP5pD3FfaBi2T3p5ZTocjbRR3wOBPLEqyH1dqamzOn8xI2Iozxbf1
         kE5coq8UPARsp+ArLP9KPaGT5cojTcaKXyEkwJhFYIJc4Emgr3F0fzyQ/syLJ3dQNwUo
         laBYrJJ2e2f153V8+uo5MqtcRlq6zszD57q9a8FR76bzMbNK8cRomdQoPg53DA2xAi5f
         88YoZtiL2v4Aj88HHQeyXic6cS7vgfKCjrRLvYFM3Qru74Y9Iqa9eYsOIEawT20mjoYV
         AU8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jbFt9L6krYBtcAbEWqf0z5PDV9qPyLwggi9o0oOg8Q4=;
        b=j7TfrLD6GDr2EzD39cWty7XxG4JLxskM9jJrKsMAkEWIJsUroHnSSVkMc8c4W7j1Ea
         HfPs/0INhC8LIXIxm8WaWMcaj88b0UwDbd0S+JBGfZZSA/YotCjT74Yhr6o1y4tvHBJK
         74A44Hzh/XVHpeiqbG0GfSSg1h9+aDrcWZ6ecnkhbNhV7aHUxC0B0laENKOYED2KFdRj
         HPCCDFvDWFdAnylN8aD2WdkrVrCc4etmgyhpg0Q55CEhV+Oy3QHRxmEGPjUL596ZTRZW
         5886PKlTVjk2QE/hLGlnuTbIFqOLfENcJMsnNbr1ILya6+d3yV48Nb53xhL4/2U/3u/0
         /MFw==
X-Gm-Message-State: AOAM533d4OwJCylOrhpeo1luqz8/v5BvCqO3vAyEkrdLAaBJ+b+L6bL1
        X5dUS/2RM7yllWDjo6guRfnC5YH1JNiUTRk32LpuVw==
X-Google-Smtp-Source: ABdhPJwCVupKQYxDzpYMKPhj1MXJZPz+3XUECsNjRfYFrPd16sAtNpJ/PYjjfuyAFjwn0935xEp+qI2DeVBLrvPkuKs=
X-Received: by 2002:a9d:a42:: with SMTP id 60mr37978893otg.179.1641315891943;
 Tue, 04 Jan 2022 09:04:51 -0800 (PST)
MIME-Version: 1.0
References: <20211206092237.4105895-1-phil@raspberrypi.com>
 <20211206092237.4105895-2-phil@raspberrypi.com> <CACRpkdZ95bCJVDo4tCXsMnsXax4+ZydoLS7AsM-yzMjXbONk=w@mail.gmail.com>
 <95851343-2887-1e04-9598-e8c8ae74a99a@i2se.com> <CACRpkdbnqq+hwXt1oUWZfyxFjdd4aSAz0MzhzYVWuqqVAe4Eig@mail.gmail.com>
 <ec8090b6-6c91-e9ae-fd02-955c8c10ee3e@web.de> <ec60b52b-7a59-266d-9608-11c0da9053a6@i2se.com>
 <5a5bc9ac-6d8e-d6de-eec2-ea72970b88bf@web.de> <0951facb-8b19-c0f3-4f25-a5ac4a798859@web.de>
In-Reply-To: <0951facb-8b19-c0f3-4f25-a5ac4a798859@web.de>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 4 Jan 2022 18:04:36 +0100
Message-ID: <CACRpkdZCiRJ-8eN3arKgt0s5iWgGwGE=aZMo7yx7UtUn=GNF2g@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] pinctrl: bcm2835: Change init order for gpio hogs
To:     Jan Kiszka <jan.kiszka@web.de>
Cc:     Stefan Wahren <stefan.wahren@i2se.com>,
        Phil Elwell <phil@raspberrypi.com>, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>, linux-gpio@vger.kernel.org,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        bcm-kernel-feedback-list@broadcom.com,
        linux-rpi-kernel@lists.infradead.org,
        Thierry Reding <treding@nvidia.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Jan 2, 2022 at 4:16 PM Jan Kiszka <jan.kiszka@web.de> wrote:

> But, in fact, this series was misordered then, suggesting that patch 1
> was independent of patch 2, but it actually depended on patch 2 to avoid
> even temporary regressions.

I picked patch 2/2 out of my tree and sent it off to the SoC tree that applies
DTS fixes.

Let's see if they manage to get it to Torvalds before the merge window.

Yours,
Linus Walleij
