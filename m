Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 36E803CED29
	for <lists+devicetree@lfdr.de>; Mon, 19 Jul 2021 22:29:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347884AbhGSRrg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jul 2021 13:47:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51368 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1382410AbhGSRjU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jul 2021 13:39:20 -0400
Received: from mail-qv1-xf2f.google.com (mail-qv1-xf2f.google.com [IPv6:2607:f8b0:4864:20::f2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34B39C014B35
        for <devicetree@vger.kernel.org>; Mon, 19 Jul 2021 10:59:37 -0700 (PDT)
Received: by mail-qv1-xf2f.google.com with SMTP id ay16so8810720qvb.12
        for <devicetree@vger.kernel.org>; Mon, 19 Jul 2021 11:14:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=lH1/eUIRJBS9qo5uiyGnwLYn2LP8i1GLm+MXIIPdtFA=;
        b=MMywfy/BjMCfuhOHJWVkR2S7MSpXQaD30pO0J48pVARLFONKSLegXecUraLMETriO6
         gbQzmBf42qO8Wk7GiQ0MQVadTMbn7lAFxheoEkJlR/VLviydY5NEVr+nuhP1sf+7Uq92
         lXlz42fSV5nmP5zspiturG6yOealg7ndxHdXU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lH1/eUIRJBS9qo5uiyGnwLYn2LP8i1GLm+MXIIPdtFA=;
        b=ZlnlmYcY+2wTFZIokQqD2dg6ol/QnQ4b+axlsy3Q3zln0sImqAvQDj0iAUJPZXY6t7
         RjlhU816wfcQP1VUbXv6fgvVK4AyePEEbOO+sTiy6bAN6LMggTxbs70JXwlzPGKMHAdp
         AgwewIorxk7G+9jp7V/C28HB3S4xvw8x82i++d64oHc8BvOpNGnxfKwG8syN3jq50oNh
         0SDRihjvuh2EAexbLUwoYQmFNBs9BXWcfzltO3fU0InxQvmw414kqhXYGQOhmJnELxdD
         gS1hx7mVUJfcrvGQCKOfD83zisGijg5/4KutugdMM0EsX+NL07SsFJF2NfWJ/RW6BNs5
         +LUQ==
X-Gm-Message-State: AOAM531A/Gq1j/NpszL+zO+Xprw3JI9yQNb4S6Rr9qgx8XAMYEWZHYOT
        cfconMS1HXjhObu8BSw8AOmcxEyFJZNTQg==
X-Google-Smtp-Source: ABdhPJylzYFeU13uN/a3Rptl4v+Hbxxq9cbW8PM9QeECEmy/doDhJhu0bkapqSeJkKzXmAQFa6okVg==
X-Received: by 2002:a0c:fb03:: with SMTP id c3mr26378798qvp.19.1626718468287;
        Mon, 19 Jul 2021 11:14:28 -0700 (PDT)
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com. [209.85.219.53])
        by smtp.gmail.com with ESMTPSA id y24sm9072222qkj.4.2021.07.19.11.14.28
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jul 2021 11:14:28 -0700 (PDT)
Received: by mail-qv1-f53.google.com with SMTP id ay16so8810703qvb.12
        for <devicetree@vger.kernel.org>; Mon, 19 Jul 2021 11:14:28 -0700 (PDT)
X-Received: by 2002:a05:6102:144:: with SMTP id a4mr24577620vsr.29.1626718055423;
 Mon, 19 Jul 2021 11:07:35 -0700 (PDT)
MIME-Version: 1.0
References: <20210623184124.3504047-1-mka@chromium.org> <20210623114025.v13.4.Id45138610b749ff775186ac10b3d01c504ddf4f3@changeid>
 <YPWhIX06NxpjAfoH@google.com>
In-Reply-To: <YPWhIX06NxpjAfoH@google.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 19 Jul 2021 11:07:23 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VgAZqQ=MqUeJuozwakRMR8_iS=3kdi-AoB_6VbarhtBw@mail.gmail.com>
Message-ID: <CAD=FV=VgAZqQ=MqUeJuozwakRMR8_iS=3kdi-AoB_6VbarhtBw@mail.gmail.com>
Subject: Re: [PATCH v13 4/7] arm64: defconfig: Explicitly enable USB_XHCI_PLATFORM
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Alan Stern <stern@rowland.harvard.edu>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Mathias Nyman <mathias.nyman@intel.com>,
        Felipe Balbi <balbi@kernel.org>, Will Deacon <will@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Linux USB List <linux-usb@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Michal Simek <michal.simek@xilinx.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Peter Chen <peter.chen@kernel.org>,
        Bastien Nocera <hadess@hadess.net>,
        Stephen Boyd <swboyd@chromium.org>,
        Ravi Chandra Sadineni <ravisadineni@chromium.org>,
        Anson Huang <Anson.Huang@nxp.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>,
        Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        Michael Walle <michael@walle.cc>, Nishanth Menon <nm@ti.com>,
        Shawn Guo <shawnguo@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Jul 19, 2021 at 8:58 AM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> Will/Catalin,
>
> does this change looks good to you and could get an Acked-by?
>
> If so: would it be ok to land it through the USB tree with the
> rest of the series? It seems a conflict would be relatively
> unlikely.

Officially I don't think you really need an Ack for most changes to
this file. So says Will [1]:

> although there are a few things I really care about
> in defconfig (e.g. things like page size!), generally speaking we don't
> need to Ack everything that changes in there.

In case it helps, you can stick my Reviewed-by on there...

Reviewed-by: Douglas Anderson <dianders@chromium.org>

[1] https://lore.kernel.org/r/20201208160029.GA6461@willie-the-truck
