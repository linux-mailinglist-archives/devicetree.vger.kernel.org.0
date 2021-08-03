Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D06A53DEE6D
	for <lists+devicetree@lfdr.de>; Tue,  3 Aug 2021 14:58:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235926AbhHCM7C (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Aug 2021 08:59:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35970 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235909AbhHCM7B (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Aug 2021 08:59:01 -0400
Received: from mail-ua1-x92f.google.com (mail-ua1-x92f.google.com [IPv6:2607:f8b0:4864:20::92f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C4F1C0613D5
        for <devicetree@vger.kernel.org>; Tue,  3 Aug 2021 05:58:50 -0700 (PDT)
Received: by mail-ua1-x92f.google.com with SMTP id 67so2305581uaq.4
        for <devicetree@vger.kernel.org>; Tue, 03 Aug 2021 05:58:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ZNSRpZlFlkmyaZcGeRCdqzNpmwaM/CsxmQZTU5Q+xqI=;
        b=JTvNoxAfXZ9vd1+wTKKiK81cryvFYXUGiGJWt11dtugSKCRZzRqEhcPYJix7xbxCp3
         YKo8vQZvgq9xZzfTHfarl0LQRITIaB4flkRr46M/PM11DUdJZCYJj4JHzB1m4bqx5bK8
         EtJobyfZ5hYhOHAmCcTk1L77+1UWYJBdyJGjdJ30Ntetl239/qIi+Fiv0aETt/cPMddI
         ms9C8NsZJic+woCQWggmqJrKuEW+FhJ3tl1PWC1C8h6wEZIajpUf5wuiwiZo6WQaNEmA
         JlftDOWGep6h0KpoD8jIiUEJIHA707wXiVqyP72XfW2jJC1M40uKyybpRAtzIlzWGXYI
         vljQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ZNSRpZlFlkmyaZcGeRCdqzNpmwaM/CsxmQZTU5Q+xqI=;
        b=bZNlxqld93FioXEmYu1o4zqPj/+1UvwBqNcCGvQCnnJWk3mep7wEooIfUyDMSdmD9a
         GFlu7+YZcy0yj1kAje69bV7b+bz4UgatHDsuRlqrHDw3to46URZ3gmK8ZLDIi7IsiG9J
         oSSj9HBS47T/KlCMmAnmMFYiDExVMDEDtI3hM1HMTPrhSv+xl5iRn7cfg7nH6FrSceSY
         0bs20t3Wo6+58gj2A3e3ZeffZpN80RWFqCg/iLxiMGyB4+j04Y5UpdR8kxgYKi4X+wRi
         hNAYWR9kqQTUfV2XEG/cOUaAIrsAnittyhD7ZnoP5bF9AZ1p75no6ZLQM/YWNZXlZCue
         jF6A==
X-Gm-Message-State: AOAM531kxNvV/W2dKXdocdVX1BySCEwBqTLxP9AC2ZYB8oEaPo2UjcnA
        8FlxDcVMsxivHzlQRX4Q9tttkXi6Djy2AIeQfpPpLw==
X-Google-Smtp-Source: ABdhPJwmT+9f8+SVTRLGGJ8jMXd1p1owMfyXKEFiXfIxd5UXzXpXp2cbHPwsCzFyYJ/B7mnJE2eGb95SBJDpnGdNpVs=
X-Received: by 2002:ab0:6f4b:: with SMTP id r11mr4698819uat.104.1627995529623;
 Tue, 03 Aug 2021 05:58:49 -0700 (PDT)
MIME-Version: 1.0
References: <20210730144922.29111-1-semen.protsenko@linaro.org>
 <20210730144922.29111-12-semen.protsenko@linaro.org> <d603be80-4fb6-1bad-1963-c9fa7d1e63fb@canonical.com>
In-Reply-To: <d603be80-4fb6-1bad-1963-c9fa7d1e63fb@canonical.com>
From:   Sam Protsenko <semen.protsenko@linaro.org>
Date:   Tue, 3 Aug 2021 15:58:38 +0300
Message-ID: <CAPLW+4mPeSOuiQ1iYTVXqTzmPP7o1uPX8Gapzr7Es0wRBpYt6g@mail.gmail.com>
Subject: Re: [PATCH 11/12] dt-bindings: interrupt-controller: Add IRQ
 constants for Exynos850
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Jiri Slaby <jirislaby@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Charles Keepax <ckeepax@opensource.wolfsonmicro.com>,
        Ryu Euiyoul <ryu.real@samsung.com>,
        Tom Gall <tom.gall@linaro.org>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        John Stultz <john.stultz@linaro.org>,
        Amit Pundir <amit.pundir@linaro.org>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
        linux-clk <linux-clk@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux Samsung SOC <linux-samsung-soc@vger.kernel.org>,
        "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 31 Jul 2021 at 11:45, Krzysztof Kozlowski
<krzysztof.kozlowski@canonical.com> wrote:
>
> On 30/07/2021 16:49, Sam Protsenko wrote:
> > Add external GIC interrupt constants for SPI[479:0] for Exynos850 SoC.
> > Interrupt names were taken from TRM without change, hence double
> > underscore in const namings.
>
> I am not sure what is the benefit of defining these in header. Unlike
> other DT consts (e.g. clock IDs) drivers do not us them at all. Using
> them in DT does not reduce chance of mistakes in numbers - instead of in
> DTS you can make a mistake here in header file. In the same time, they
> grow the interrupt property in DTS making it more difficult to read.
>
> I also did not see anyone else using this approach, so it's not only me
> (Marc also find it confusing).
>
> If vendor kernel did similar, it's not an argument. Samsung LSI /.
> vendor kernel has terrible code quality so usually it is not a good example.
>

Agreed. I'll use IRQ numbers in dts directly, in v2. I probably
thought that IRQ header might replace missing public TRM, but that's a
poor substitute anyway.

>
> Best regards,
> Krzysztof
