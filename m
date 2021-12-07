Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1121746BF4B
	for <lists+devicetree@lfdr.de>; Tue,  7 Dec 2021 16:29:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238711AbhLGPc7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Dec 2021 10:32:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233423AbhLGPc6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Dec 2021 10:32:58 -0500
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com [IPv6:2607:f8b0:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7820DC061574
        for <devicetree@vger.kernel.org>; Tue,  7 Dec 2021 07:29:28 -0800 (PST)
Received: by mail-oi1-x22e.google.com with SMTP id bk14so28337897oib.7
        for <devicetree@vger.kernel.org>; Tue, 07 Dec 2021 07:29:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3v1bWCAfgXuqzDilZqGGMpPIb4q0JIBN6jFwOUm5278=;
        b=HMHriM1Mu58q8gApV9rfw5KqGymBPX6gLuNgRoA5L8d7brqhr18J8BdvGw2cAdHB4N
         zXUclQwAE7fqtES5vJZk6BqcL/2nyr27UqmLk9gzwizyTetHKV18D59HIaYNC+OTXXwz
         Kltb5TcSSE3IhiMoFIZp3kmQjDnhTMKXpactPNHQD7+fQ9vQTspEEtcJcZ6QLMNWU9TB
         EuNTYFgPSD4n0FxhHrV7PhVweSVjLmNWRgl7TVQ/ItqzeuCFxkLLhIRUUGlKOdGv3o+6
         P9NW20aK1oW8wee2Ln/GUY7hW0zRUhTu1FN/Y/5NeiZ23u0kW07h3qTrVZXXwLn2EYze
         CkLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3v1bWCAfgXuqzDilZqGGMpPIb4q0JIBN6jFwOUm5278=;
        b=DeuN/PkgaMGKzyhdTed7WzEj6lBUFri4I95vhiWa9m1b3UL+UikwGN/66XKl/NeuT1
         OBNfYja8ybRHB4VmvPyFF+q3rDccTYogHfnDjNLUse9y6Kg5E9FfvqThDWLdChsfSDOy
         V+YaDa+awFxNQOUEudLTq1XLqrrv0qAB9GeQEnKiKBCGs/fQ8s2ezEshQCAgUgKqTI9C
         Uxc3E0E4UB5i0TCDDtBgdL9ldLJ5U/oxJlswxbIr1MN522pHMofDYGdOUGpPe76Yv67Q
         oSv/6Rvxd3cp8BcNStwa+9ZTSfrHipJXZIjoiNlS07yXY+42PvkOBIglHcdPlJEgvfnq
         jgUQ==
X-Gm-Message-State: AOAM531dwKBYB7a82Uf/YggQczVTuOyUgTxPJZChRBDEODbCk3mevmQi
        InFcF3GdoDedOKOntuUujzGm1iVvCQMnDVRRztfF1A==
X-Google-Smtp-Source: ABdhPJxvof557q23el0Q5xSTZDI0BT2tg0o4/kEoX/tBZ01elYBOoldfCw4wCxNmQ5H0Fh6lko3OW2ykx4vYG2exTM8=
X-Received: by 2002:a54:4791:: with SMTP id o17mr5944391oic.114.1638890966412;
 Tue, 07 Dec 2021 07:29:26 -0800 (PST)
MIME-Version: 1.0
References: <20211206092237.4105895-1-phil@raspberrypi.com>
 <20211206092237.4105895-3-phil@raspberrypi.com> <CACRpkdYJAZcr_PPCGPYcitfcwd9GDFf+7hPJkOmjomqCrruNfw@mail.gmail.com>
 <04acf5f1-7d82-b12b-f70f-1712a4a2610c@gmail.com>
In-Reply-To: <04acf5f1-7d82-b12b-f70f-1712a4a2610c@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 7 Dec 2021 16:29:14 +0100
Message-ID: <CACRpkdaK9swgQa3G1z2+e7Tazn+TGHpzfcFjdMbNytHJ8gxYnQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] ARM: dts: gpio-ranges property is now required
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Phil Elwell <phil@raspberrypi.com>,
        Rob Herring <robh+dt@kernel.org>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        bcm-kernel-feedback-list@broadcom.com,
        Thierry Reding <treding@nvidia.com>,
        devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
        linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Dec 6, 2021 at 6:25 PM Florian Fainelli <f.fainelli@gmail.com> wrote:
[Me]
> > Please funnel this patch through the SoC tree.
>
> This one was definitively going to go via ARM SoC in the absence of any
> explicit routing, did you mean that patch #1 should also be routed via
> ARM SoC?

No just over-clarifying.
I will merge patch #1 after some review slack.

Yours,
Linus Walleij
