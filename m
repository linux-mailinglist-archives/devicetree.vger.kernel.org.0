Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5A45E34163B
	for <lists+devicetree@lfdr.de>; Fri, 19 Mar 2021 08:03:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234123AbhCSHC5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Mar 2021 03:02:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43580 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233993AbhCSHCu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 Mar 2021 03:02:50 -0400
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com [IPv6:2607:f8b0:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8FD46C06174A
        for <devicetree@vger.kernel.org>; Fri, 19 Mar 2021 00:02:50 -0700 (PDT)
Received: by mail-oi1-x22f.google.com with SMTP id d133so3751680oib.3
        for <devicetree@vger.kernel.org>; Fri, 19 Mar 2021 00:02:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=H1Z/Bi6Zm3jDPNAYYZF2e6tsVT9rhuf5UDC+AwaZMcE=;
        b=TzxwBcinjHaEzeJPesQmR+9R1BZd1/BTlhtPmPdqWdfyQnxIRi8CjfB0KZMiFBU2qU
         ahcasReS/wE0kAXr4MedBDgCoPcwIXVBSG/U0GqEHa+UJFGijc3NSAy03H5DZlGhNHfU
         O1vyWh80JS9LhGXNmTHFzE5w9KA/8mq/p+4xexMY45MadKZWZNwoOs/zwgoy95Dpmvle
         tq4hsP0isADHFxOC55uVmVbINlBr04G8Jngv66T3m5QCVoQVv7hd29xblhpzyslXuWp0
         6/8+cugSAfJld9gEPBZRr5KFQ6zgSXk48impzeTfqC85N/5uj9IBPzZDqkLW+v9A6LOs
         +UWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=H1Z/Bi6Zm3jDPNAYYZF2e6tsVT9rhuf5UDC+AwaZMcE=;
        b=SG0275/PceINwmkr4M3ixr/2Skix1hVP2pZK/4+167BqYLRDQzW5PHpfkzCq4eRgiX
         AZw5gdLHdwleHIDXcGtFVNrOcIrGlouSyqQY7e/Un4A2RIu8+GccghwpggiCas01zCok
         0HucDbXIuhEa/Z/QAUycRjouykdV0TMdTOBFVW9g8aEL1oR1b76/NHKPLYuTMIce9NKa
         h6+wFGyP+1/ARJifJmqUKbJFiThUy4UIGPcelD6fWZPLh/xxI9QTHlvMtTpbWA6+txKM
         KtWgJhv6Eh+GMThsAKYyou7uPlGJlq1iwlTlaVAxfWyVX9vUThZ8RJtKw0Hz/rv5jcao
         hChw==
X-Gm-Message-State: AOAM530F4YVZs/bqsYOBP7ze0bDY8YUtFcBKg6HJMGs5XHYaZMvsTAxj
        oyeC4/qgMnY4USXuCrKW9Ik391Cjzm6oYWrm1nI9BA==
X-Google-Smtp-Source: ABdhPJzs6sJPHAFY8o0zjrsKBoptQIuPFiAv36EqD+GdzqypjkxSgu5jr2H1HRFX3ii+ce4O77j2zMyUiKp5EAITrnA=
X-Received: by 2002:aca:b9c1:: with SMTP id j184mr33880oif.5.1616137369927;
 Fri, 19 Mar 2021 00:02:49 -0700 (PDT)
MIME-Version: 1.0
References: <20210212154614.38604-1-sudeep.holla@arm.com> <20210212154614.38604-6-sudeep.holla@arm.com>
In-Reply-To: <20210212154614.38604-6-sudeep.holla@arm.com>
From:   Jens Wiklander <jens.wiklander@linaro.org>
Date:   Fri, 19 Mar 2021 08:02:39 +0100
Message-ID: <CAHUa44GdBS5mXTy=e7c6FO36snuewu96LWMR-9HP8jT59ELbug@mail.gmail.com>
Subject: Re: [PATCH v4 5/7] firmware: arm_ffa: Add support for SMCCC as
 transport to FFA driver
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Devicetree List <devicetree@vger.kernel.org>,
        Trilok Soni <tsoni@codeaurora.org>, arve@android.com,
        Andrew Walbran <qwandor@google.com>,
        David Hartley <dhh@qti.qualcomm.com>,
        Achin Gupta <Achin.Gupta@arm.com>,
        Arunachalam Ganapathy <arunachalam.ganapathy@arm.com>,
        Marc Bonnici <marc.bonnici@arm.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Feb 12, 2021 at 4:46 PM Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> There are requests to keep the transport separate in order to allow
> other possible transports like virtio. So let us keep the SMCCC transport
> specific routines abstracted.
>
> It is kept simple for now. Once we add another transport, we can develop
> better abstraction.
>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  drivers/firmware/arm_ffa/Kconfig  |  5 +++
>  drivers/firmware/arm_ffa/Makefile |  3 +-
>  drivers/firmware/arm_ffa/common.h |  4 +++
>  drivers/firmware/arm_ffa/smccc.c  | 54 +++++++++++++++++++++++++++++++
>  4 files changed, 65 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/firmware/arm_ffa/smccc.c
>

Reviewed-by: Jens Wiklander <jens.wiklander@linaro.org>

Thanks,
Jens
