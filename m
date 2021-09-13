Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AA559409F07
	for <lists+devicetree@lfdr.de>; Mon, 13 Sep 2021 23:19:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348263AbhIMVUl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Sep 2021 17:20:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348291AbhIMVUj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Sep 2021 17:20:39 -0400
Received: from mail-io1-xd2b.google.com (mail-io1-xd2b.google.com [IPv6:2607:f8b0:4864:20::d2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57066C061767
        for <devicetree@vger.kernel.org>; Mon, 13 Sep 2021 14:19:23 -0700 (PDT)
Received: by mail-io1-xd2b.google.com with SMTP id q3so14023278iot.3
        for <devicetree@vger.kernel.org>; Mon, 13 Sep 2021 14:19:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hYmjXqUredMLKaYC4ubAsdzpEYCQPYEXGOAkW9neusA=;
        b=ZpVIjfsHciYk8cbGKMwZgoe4Xz+/F6yYyiSmFw91eWgREeOa2lMezbGTjc9SG9iZhI
         YppUyg45qXtmcD6gFrGGBhWq+8mJs+tBgvbuSz1CQocayE1foNY5u1cRKSALiqyPQ+JB
         yhU17g07FoTVRCS7XuehDP+A5Jd/NkpWoC4OA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hYmjXqUredMLKaYC4ubAsdzpEYCQPYEXGOAkW9neusA=;
        b=gysXokbPE6JDtir6Iy85gACe4gnpmVD86WIvmkqTu+CPAYrJlB40rHkPzvibgRxolV
         8c8mtiDN77iyOqkS4CqpUAZE7r+pfsQbUuvdIcfLSk86F0TERF0LAwhIA0ryQ2kHSHCI
         n2f5LbXxW8e4ZEq3fcNZeDis6PfDRlRy2Nd+3FsOp0aF9ttOCsOkOohJ4OhFvxe466VH
         VRh5VrxgP+78J/X1f13dm8gNA5GJKS/T+nmDs33JxLYeO9oyOHl2mGa0wRUqdGCQh3UH
         IpzO69a3qN2GUPkrU7PusMLIZoSV4aRTCvB1PNRCSHIE2UvNuPEa9eMW4qfeAIbMg6gn
         XfQw==
X-Gm-Message-State: AOAM531KP26RGKwYJplFa7AdMq4VCkdyOHelTx7+70+taOwUnqreT6ZW
        dEWXRT234IzzSNGnqI86IZXGWor9PSfC8g==
X-Google-Smtp-Source: ABdhPJyuehHZPAhlLX26VFiC0sgJUcGD8l29SG8SrpE99UXFsIU+O5BHgqgtNct9hPI7VZ2Ci7GGqw==
X-Received: by 2002:a02:3b1b:: with SMTP id c27mr11305568jaa.103.1631567962685;
        Mon, 13 Sep 2021 14:19:22 -0700 (PDT)
Received: from mail-il1-f172.google.com (mail-il1-f172.google.com. [209.85.166.172])
        by smtp.gmail.com with ESMTPSA id b16sm5411185ila.1.2021.09.13.14.19.21
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Sep 2021 14:19:22 -0700 (PDT)
Received: by mail-il1-f172.google.com with SMTP id b15so11183769ils.10
        for <devicetree@vger.kernel.org>; Mon, 13 Sep 2021 14:19:21 -0700 (PDT)
X-Received: by 2002:a05:6e02:214e:: with SMTP id d14mr8947719ilv.142.1631567961422;
 Mon, 13 Sep 2021 14:19:21 -0700 (PDT)
MIME-Version: 1.0
References: <1631530735-19811-1-git-send-email-rnayak@codeaurora.org> <CAE-0n51miUjP4dg4wQR_JBwNNvMNqAafv7jFvEKU+MrfQmhV5A@mail.gmail.com>
In-Reply-To: <CAE-0n51miUjP4dg4wQR_JBwNNvMNqAafv7jFvEKU+MrfQmhV5A@mail.gmail.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 13 Sep 2021 14:19:08 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UV4odosuOTKCdQCa4pmMEF0gn_eKmsR-2FEtt_eF+98w@mail.gmail.com>
Message-ID: <CAD=FV=UV4odosuOTKCdQCa4pmMEF0gn_eKmsR-2FEtt_eF+98w@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc7280-idp: Add vcc-supply for qfprom
To:     Stephen Boyd <swboyd@chromium.org>
Cc:     Rajendra Nayak <rnayak@codeaurora.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        "Ravi Kumar Bokka (Temp)" <rbokka@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Sep 13, 2021 at 12:57 PM Stephen Boyd <swboyd@chromium.org> wrote:
>
> Quoting Rajendra Nayak (2021-09-13 03:58:55)
> > Add vcc-supply for the IDP boards that was missed when the
> > qfprom device tree properties were added for the sc7280 SoC.
> >
> > Fixes: c1b2189a19cf ("arm64: dts: qcom: sc7280: Add qfprom node")
> > Reported-by: satya priya <skakit@codeaurora.org>
> > Signed-off-by: Rajendra Nayak <rnayak@codeaurora.org>
> > ---
>
> Reviewed-by: Stephen Boyd <swboyd@chromium.org>
>
> >  arch/arm64/boot/dts/qcom/sc7280-idp.dtsi | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> > index 371a2a9..99f9ee5 100644
> > --- a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> > @@ -207,6 +207,10 @@
> >         };
> >  };
> >
> > +&qfprom {
>
> Maybe that node should also be marked status = "disabled" by default so
> that it can only be marked OK if the board has setup the regulator
> properly?

I don't think that's a good idea. You still want to be able to use the
nvmem in "read only" mode and it doesn't seem to need the regulator
for that. This is only for burning.

I believe that actually everything will work out fine-ish for boards
that leave this regulator off. They'll get a dummy regulator. When
they start trying to burn fuses and the call the
regulator_set_voltage() happens then that'll fail (you can't do that
on a dummy) and we should error out of writing. Reading will work
fine. It would probably be better if qfprom_probe() used
devm_regulator_get_optional() though and fell back to read-only mode.
I'm happy to review a patch that does that.

-Doug
