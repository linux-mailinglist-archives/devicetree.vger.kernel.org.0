Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4AE23266398
	for <lists+devicetree@lfdr.de>; Fri, 11 Sep 2020 18:21:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726306AbgIKQSv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Sep 2020 12:18:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34404 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726493AbgIKPbG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Sep 2020 11:31:06 -0400
Received: from mail-vs1-xe41.google.com (mail-vs1-xe41.google.com [IPv6:2607:f8b0:4864:20::e41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E75ECC061757
        for <devicetree@vger.kernel.org>; Fri, 11 Sep 2020 08:31:04 -0700 (PDT)
Received: by mail-vs1-xe41.google.com with SMTP id j6so4669524vsg.8
        for <devicetree@vger.kernel.org>; Fri, 11 Sep 2020 08:31:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=XQ0JFGk0jynIKmq2K3P16bVN8Djod/Kezzi4snKiADY=;
        b=XsBD6bIs7vKHNxYE82q8A7ZEoSoOU6Ljp4t42+euB+op9GjboVKdeD6RYJ4B6IbaUP
         Ns2pack5xHA8MIWOe2/QY0z0Q7TrcLRLIWaDLimGj8nhXT45RAd/BxJtfAzpiOE7oI3h
         tabyhOgNLFJE+PAW1KTQWcHZr/cM5YEcKWi4k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=XQ0JFGk0jynIKmq2K3P16bVN8Djod/Kezzi4snKiADY=;
        b=a0Wi3nhWcKv/wXhnPhTDeDgXCqy01Et2iLR+T/xkSSQ0jxCvz7IWpIh/+EJjtOhdR9
         53lEP+gFAOnuOLR3gKQ3n77HcknAAl3kz8zpGe33uPgmvHLZ2Q+QjR+8w56Mbq6F5+50
         klOvs/OY9UpPJsX8mmhphB07rwS2XGV2N9CEWVDjiUnkFJhsFzja9ac7YeHOppqkYYDc
         BglBadcvHG0gL4zcwqAwshVlAQyLBuU8oJZmxExoG27WexGG6FDIIKowjomxU40cG5pF
         WIpl4JPXdXuFpqouR8HK/10TdsVAC+ksdTZlrZfCc1ExNMjzJ3qI2bYx2lmKos57rd0h
         6z1w==
X-Gm-Message-State: AOAM532GYB+Ld/NzHbNSKFJ6Sjfhttc2vRxB+ssmI0/5PViYU2tu60CW
        FvZkvW5B6lC2mRrZS3fTFmgOxA1LIzWjVA==
X-Google-Smtp-Source: ABdhPJzGWvWSoRUyZBj+Gi21dT+zgNNqlLYq2ERF68gc1wDzWbWlJAlkybvLD/aulO2bZOVj8eeiyQ==
X-Received: by 2002:a67:c595:: with SMTP id h21mr1545250vsk.12.1599838263031;
        Fri, 11 Sep 2020 08:31:03 -0700 (PDT)
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com. [209.85.217.52])
        by smtp.gmail.com with ESMTPSA id x124sm394097vka.34.2020.09.11.08.31.01
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2020 08:31:01 -0700 (PDT)
Received: by mail-vs1-f52.google.com with SMTP id j6so4669461vsg.8
        for <devicetree@vger.kernel.org>; Fri, 11 Sep 2020 08:31:01 -0700 (PDT)
X-Received: by 2002:a05:6102:10c2:: with SMTP id t2mr1521400vsr.10.1599838261153;
 Fri, 11 Sep 2020 08:31:01 -0700 (PDT)
MIME-Version: 1.0
References: <1599742438-16811-1-git-send-email-skakit@codeaurora.org>
 <1599742438-16811-3-git-send-email-skakit@codeaurora.org> <CAD=FV=ULJqgHutr524wb-wVq4gejqo1p_zqRXP=h4Co6Gvmzew@mail.gmail.com>
 <010101747ca94cce-42d129fa-0374-4f12-aab8-2ccafd02b3c7-000000@us-west-2.amazonses.com>
 <20200911135232.GY3715@yoga>
In-Reply-To: <20200911135232.GY3715@yoga>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 11 Sep 2020 08:30:48 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Uf80P0_aOJw5NMd_oNm5fd8etXnM7m03ogUo7_Kk9G-A@mail.gmail.com>
Message-ID: <CAD=FV=Uf80P0_aOJw5NMd_oNm5fd8etXnM7m03ogUo7_Kk9G-A@mail.gmail.com>
Subject: Re: [PATCH V5 2/4] arm64: dts: qcom: sc7180: Add necessary pinctrl
 and interrupt config for BT UART
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     satya priya <skakit@codeaurora.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Akash Asthana <akashast@codeaurora.org>,
        Roja Rani Yarubandi <rojay@codeaurora.org>,
        msavaliy@qti.qualcomm.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Sep 11, 2020 at 6:52 AM Bjorn Andersson
<bjorn.andersson@linaro.org> wrote:
>
> > > >  &uart3 {
> > > > +       pinctrl-names = "default", "sleep";
> > > > +       pinctrl-1 = <&qup_uart3_sleep>;
> > > > +       interrupts-extended = <&intc GIC_SPI 604 IRQ_TYPE_LEVEL_HIGH>,
> > > > +                               <&tlmm 41 IRQ_TYPE_EDGE_FALLING>;
> > >
> > > You need a:
> > >
> > > /delete-property/interrupts;
> > >
> > > ...or, alternatively, a patch before this one that converts all the
> > > UARTs in sc7180 to just use interrupts-extended.
> > >
> >
> > Sure, I will add this. But I think when both are added,
> > "interrupts-extended" will get priority as per [1] and there wouldn't be any
> > problem.
> >
>
> You're indeed correct, please stick with what you have.

IMO this is ugly, but I won't fight too hard on it if you guys really
want to do it that way.  Reading the documentation it sounds as if
allowing for both is intended to be used in cases where the same
device tree might be used on old software (that didn't understand
interrupts-extended) and on new software (that does).  The
interrupts-extended property by far predates any sc7180 support,
though, so I can't imagine anyone really needing to use that these
days.  Is it really that bad to add the /delete-property/ to end up
with a cleaner final device tree?

-Doug
