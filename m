Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DBBEB3B4B69
	for <lists+devicetree@lfdr.de>; Sat, 26 Jun 2021 02:00:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229831AbhFZACf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Jun 2021 20:02:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229826AbhFZACf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Jun 2021 20:02:35 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B9D0C061574
        for <devicetree@vger.kernel.org>; Fri, 25 Jun 2021 17:00:13 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id u13so19171949lfk.2
        for <devicetree@vger.kernel.org>; Fri, 25 Jun 2021 17:00:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4IQtXW9BIUs+k2mLXlf11/lLzzisuHL7f9vCW4nHESY=;
        b=SJesDR9ECc+yZQrqh1w+GsKMm22nzGh6apm0QsfATa0vdBi27V7afz8We1hn3B2cWw
         Tf8P4n1ihuWrHWqe9W7STzhI8kExECBUX4QQuj31kT3Su7n1u0S39VDZTXbqH7BOjq6d
         xROodsuq/P4u9xRr/jVBKvrSaq9A7Cmy9IhgpHd7+gQBre06b/29TlGMoEYR3n6aYL96
         hSh8O6glwpqLALKBzgFnlzu+/bNdS76T9YuNfX6oN+q6n0i7GVfJPh4P+WaVc12XP98M
         yMy8LXIwMjv8DxSlHW7TiHQ33N081ndqi5p3CVk+4BymW/z9kcaxuTOPYfW5b58ABTb2
         gfbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4IQtXW9BIUs+k2mLXlf11/lLzzisuHL7f9vCW4nHESY=;
        b=SkdSywqyZDgv//Nzwh4OEg79YVZnWFIIihuV8tcAM3LtcsvH4FZ3Mz971m8NsbRh1S
         0EdbOGEv2sd3TC31+SHLKhjWprPUDQiE+NRj/3ySgDNECJ1Dk2vHZNYP7O6vEMQBu/ut
         nYMPR4zN6gK4Df8P1O3FDDiEC8ur5M0ztK/sUZOQYOQxI1rqN52XDh2/Th60v9Ke5hXr
         hHBJPwEdql1YtW/FWqEUVSg8esdEk+0eOvJZd5sR4owj+hoa4frqoNHG8Ve+FEP33QyL
         XO/W3PjTieDf9NE5YwPoTC98phQTjnkFRI2XIZndLImd1SqOllMr9OV/JDVXHSMrdJYC
         UiEQ==
X-Gm-Message-State: AOAM533bPiQChOFufcOIlzXa1orHRfoNK9f590Ijk/0cyGnb2QD8HBrZ
        STos/x30Kz/WMflbqsNJc5RcTnAwL3EtF1YRzOpggzWO/9s=
X-Google-Smtp-Source: ABdhPJzNHJeh37j2X+OYHHX/xsU96q2qZKMQW7qhA772hkcbAC5NTOa+bZlDJH16nJpGfU+9xRKt1ORBRzlnLI2UwDo=
X-Received: by 2002:ac2:5237:: with SMTP id i23mr10382489lfl.29.1624665611968;
 Fri, 25 Jun 2021 17:00:11 -0700 (PDT)
MIME-Version: 1.0
References: <20210617210825.3064367-1-sudeep.holla@arm.com>
In-Reply-To: <20210617210825.3064367-1-sudeep.holla@arm.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 26 Jun 2021 02:00:01 +0200
Message-ID: <CACRpkdbsYYtHrSmwkxp9AaFVuFttAUkj9bmMga-+EhPOBic=xA@mail.gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: versatile: Fix up interrupt controller node names
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jun 17, 2021 at 11:08 PM Sudeep Holla <sudeep.holla@arm.com> wrote:

> Once the new schema interrupt-controller/arm,vic.yaml is added, we get
> the below warnings:
>
>         arch/arm/boot/dts/versatile-ab.dt.yaml:
>         intc@10140000: $nodename:0: 'intc@10140000' does not match
>         '^interrupt-controller(@[0-9a-f,]+)*$'
>
>         arch/arm/boot/dts/versatile-ab.dt.yaml:
>         intc@10140000: 'clear-mask' does not match any of the regexes
>
> Fix the node names for the interrupt controller to conform
> to the standard node name interrupt-controller@.. Also drop invalid
> clear-mask property.
>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>

Thanks Sudeep, I relayed the patch to the SoC tree!

Yours,
Linus Walleij
