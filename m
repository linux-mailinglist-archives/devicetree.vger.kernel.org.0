Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 48AC63B4B6A
	for <lists+devicetree@lfdr.de>; Sat, 26 Jun 2021 02:02:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229853AbhFZAEW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Jun 2021 20:04:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43464 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229831AbhFZAEW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Jun 2021 20:04:22 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 927BCC061574
        for <devicetree@vger.kernel.org>; Fri, 25 Jun 2021 17:01:59 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id f30so19200106lfj.1
        for <devicetree@vger.kernel.org>; Fri, 25 Jun 2021 17:01:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7iF1T9VQDvYXGuyPQeVcQOt7inNt1CQKFSnXHHJWooQ=;
        b=ZqiT53INuiTXkM8gyr2XnptoMw7CT2q6kl4wPbKQvFMxsnDe+L7yC45aBqmwSZxF8k
         wdGZ+2eOxgEkOjf6OehZEaG0EU3Zjm87KN6kJlxAOnY/jVOd31FIK+hdBtKIZ0I2w258
         WzEU6qK0l26IfEnrUGWLGqjmnBKw+8isNxHxPdU8nMW+QasFr/STjPXdPojUF5lHZTYo
         prsK31o7yuCaG6LAQFJB++Z2z5f7Gb7yAgaC2FX9IzIkrrSDE9yWWVvpWvJ8X6ZUok7x
         WqS5sWfRzHqUsTh8A4KqC1rvS7Uv0qWh+IzoEdfbKQwD8wn0spqTviBmrA9iXZ72mSb7
         IprQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7iF1T9VQDvYXGuyPQeVcQOt7inNt1CQKFSnXHHJWooQ=;
        b=KUzlXRVy7GGTBmR1cAK1R8kFo9SoQlFizRaiNXXkbKTbDCpadcKixq0D+riImET9lX
         hJYBi2ERjjGqnEFMDAoq1dGqh6n99US3zztkGK9wieN9pSwzTrsUZebRxfgdVl17pywv
         UdICjUYHXOhhR2vdHON88+dmKz0YsUIqr2F00bxVaW3Z+2dQhkuk4cRz4S6tsAiky1gC
         47P6sGXufLAHZ3JNqiTDyIIIw18EisBNsZ7e6yAK0k8qqyGII/rcAWCOqYDvOoJZNcKe
         UMTGas70hsVKQwBdMkvxhbIDAtc0WUCuIXAztNQOut2UfXi+Vv0+h8ZqWSooZ7thp41J
         +mRA==
X-Gm-Message-State: AOAM533o3ZMY+yLodN28mGSBqaM2G958qFiJQH03SLpp1oB383o+9p9/
        3MM+SPkQhYu5Qzg5VfrZKdPbOlkfjK8DgzCQl1ETHQ==
X-Google-Smtp-Source: ABdhPJzyDF+6S1bqMATdq8c0UIf65q/Z3fggIJOv29HQ3uBhysuMSayUXIRcDcPMIFGkspfNLM1HkKrSmDFFOWuHeUE=
X-Received: by 2002:ac2:4d25:: with SMTP id h5mr7717459lfk.291.1624665717953;
 Fri, 25 Jun 2021 17:01:57 -0700 (PDT)
MIME-Version: 1.0
References: <20210617210825.3064367-1-sudeep.holla@arm.com> <20210617210825.3064367-2-sudeep.holla@arm.com>
In-Reply-To: <20210617210825.3064367-2-sudeep.holla@arm.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 26 Jun 2021 02:01:47 +0200
Message-ID: <CACRpkdbjaE8t1HFN_F-roatqnU3VHEf_kgqf7r58wom9BiAXhg@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: dts: nomadik: Fix up interrupt controller node names
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
>         arch/arm/boot/dts/ste-nomadik-nhk15.dt.yaml:
>         intc@10140000: $nodename:0: 'intc@10140000' does not match
>         '^interrupt-controller(@[0-9a-f,]+)*$'
>
> Fix the node names for the interrupt controller to conform
> to the standard node name interrupt-controller@..
>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>

Thanks Sudeep, I relayed this patch to the SoC tree!

Yours,
Linus Walleij
