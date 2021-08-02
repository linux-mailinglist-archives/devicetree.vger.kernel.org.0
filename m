Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 371F83DD3FF
	for <lists+devicetree@lfdr.de>; Mon,  2 Aug 2021 12:40:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233213AbhHBKkS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Aug 2021 06:40:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233193AbhHBKkS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Aug 2021 06:40:18 -0400
Received: from mail-qt1-x829.google.com (mail-qt1-x829.google.com [IPv6:2607:f8b0:4864:20::829])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2140BC06175F
        for <devicetree@vger.kernel.org>; Mon,  2 Aug 2021 03:40:09 -0700 (PDT)
Received: by mail-qt1-x829.google.com with SMTP id d9so11286119qty.12
        for <devicetree@vger.kernel.org>; Mon, 02 Aug 2021 03:40:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tu9oYeOBswUb031Yjp53w6z/8TnC/wbddAHGRPP+IEw=;
        b=J/+SDKEj8GHiNxWrghg4YbRnMgIBMIW/K400NCSdX819DXPsuo3psqtXqWtQKdmPFt
         Qltvp8EL5VFYapBitgCb54TiKhy4NOcgF4IPOK81OJfWdPKOJyXAHFv+rZMOmxVNRBnw
         2BF2uQh7vyLNb5N8v4a3MbnF0hlMH38kGcSpg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tu9oYeOBswUb031Yjp53w6z/8TnC/wbddAHGRPP+IEw=;
        b=O1ricwM+DVmd3dO8bkKQb6duuobQucNQuMThDznrFHbSjkiFIAZrur9+6FtoWCVRm2
         gd6aBAb4Rl+m80Dryf63CMIgI9fGKCKs2wmD08zSz35Xu7YL0qSAzfoWOhLveeuny+NU
         xLIoansO6d6m/tFur+gOQ/HCtt2IrI8iqYXOU5877V3zhpHIU5F9yw/oVIGcfMX0Xu8g
         I3nWZsxPQKZJP5JsTF0lHgwuD3JTyvDZaOTthLV3Faxq/o9303LPd8pOvkJiQv+51M4/
         98H+idlYzc0jdonJEut2RBe3If8N/GmzqOVgad1FzcglJm2tXR5ZM9N8yR9/QG4vR8m1
         xWaA==
X-Gm-Message-State: AOAM5326KIFEFbRtciTjxRviLBpyBh9egYG0rMfEYDoAZD3v9RI3pfp8
        oI0vhdT7MT1wwoGJ3yM3ZSDTo26e7SLSnL4K+xF+Bw==
X-Google-Smtp-Source: ABdhPJyn3Xnoa1W0+VeBNy0IvOb6d4QL/35IsVcJxMUzim3ZLjugnsv+IftrUfL+qImfxD3tgfBm2vsw+9jR82/T28Y=
X-Received: by 2002:ac8:4f11:: with SMTP id b17mr13431338qte.33.1627900808259;
 Mon, 02 Aug 2021 03:40:08 -0700 (PDT)
MIME-Version: 1.0
References: <20210801160921.233081-1-romain.perier@gmail.com> <20210801160921.233081-4-romain.perier@gmail.com>
In-Reply-To: <20210801160921.233081-4-romain.perier@gmail.com>
From:   Daniel Palmer <daniel@0x0f.com>
Date:   Mon, 2 Aug 2021 19:39:57 +0900
Message-ID: <CAFr9PXmqiu=toGf9DjoH8XMbPaiXaWLV=GsmR7OCkkqix5tRvw@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] ARM: dts: mstar: Add rtc device node
To:     Romain Perier <romain.perier@gmail.com>
Cc:     Alessandro Zummo <a.zummo@towertech.it>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>, linux-rtc@vger.kernel.org,
        DTML <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Romain,

On Mon, 2 Aug 2021 at 01:09, Romain Perier <romain.perier@gmail.com> wrote:
> +++ b/arch/arm/boot/dts/mstar-v7.dtsi
> @@ -116,6 +116,13 @@ watchdog@6000 {
>                                 clocks = <&xtal_div2>;
>                         };
>
> +                       rtc@2400 {

I think the rtc should be before the watchdog as the address is lower.
I think maybe this got flipped around during cherry-picking.
I can flip it around when I pull this into an mstar dts for 5.15
branch so you don't need to fix it and send a v3 assuming everything
else is ok.

Thanks,

Daniel
