Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1D14249BFB7
	for <lists+devicetree@lfdr.de>; Wed, 26 Jan 2022 00:46:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234968AbiAYXqm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jan 2022 18:46:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53638 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234974AbiAYXql (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Jan 2022 18:46:41 -0500
Received: from mail-il1-x132.google.com (mail-il1-x132.google.com [IPv6:2607:f8b0:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D3E5C06161C
        for <devicetree@vger.kernel.org>; Tue, 25 Jan 2022 15:46:41 -0800 (PST)
Received: by mail-il1-x132.google.com with SMTP id o10so18286212ilh.0
        for <devicetree@vger.kernel.org>; Tue, 25 Jan 2022 15:46:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=AQ3l/fKHo9O7TnyojJmIrMHKfVS+Fyc3ar6de8lzMbk=;
        b=Qz38uAnOZu6OaqUMO4A/m2zD9neIBK7ViTW/ql3z9leNHulqPn6NQVstJtVb8d1Jf5
         SXfafLtxHLziz+PId9YX2B2HKw4xFHoDa8pzo3M0fUlORBCh1GMsTSFRn8h9bcKic0Fn
         2fyN6ozieIE7G72eW3ts0SJ+mzR6HcRBNcyVo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=AQ3l/fKHo9O7TnyojJmIrMHKfVS+Fyc3ar6de8lzMbk=;
        b=cByQhNZNCOp+SIa4H3CP0WFL9vi9iY1l4twQC7hzr9vJD0vhfKNH0/lI5QPzC3DRHU
         i6UE6LzrjdV5U3P0hTGn0kWgkkm0HKR9FSY3MGhJdf2zOIFEteUxYRkzHDlDqEIe+s+L
         zmsl5/Oqp7KUDFLbVYZIXtoJ6SzVm32KkisnZU3v2Hrd+6FauEYx1KblVHQ7TLpytK/j
         q4FJREdTlGMmkZdf7G2T8OFMXViUZmtJ7f7fWgKrep4hidXozn/TnJKHFeyrvCDY0CCK
         J7+oUnhlzghw6K1J+RxlT9v3DcoPgAZ+MwCdGZPE3566lmShTW9r2/X4Y20XPfEpZ1pQ
         IwQg==
X-Gm-Message-State: AOAM532dmykv3tvkrFxuyE+4xCnq6gwodHp4MZ8RndNS0rcgn6LW+wI8
        nMV/9EC/PbS75L5M9hgOezSEgefCXe6XQA==
X-Google-Smtp-Source: ABdhPJwWMVkKJuOYEfooQ0NxJ1oDWolCWhYLuUz3Sctm8eoarQgMc5qPzP0DFwLhTCMcu2EyHKJhxA==
X-Received: by 2002:a92:d191:: with SMTP id z17mr3505223ilz.249.1643154400656;
        Tue, 25 Jan 2022 15:46:40 -0800 (PST)
Received: from mail-il1-f177.google.com (mail-il1-f177.google.com. [209.85.166.177])
        by smtp.gmail.com with ESMTPSA id s12sm8274657ilv.40.2022.01.25.15.46.38
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Jan 2022 15:46:39 -0800 (PST)
Received: by mail-il1-f177.google.com with SMTP id z4so3065229ilz.4
        for <devicetree@vger.kernel.org>; Tue, 25 Jan 2022 15:46:38 -0800 (PST)
X-Received: by 2002:a05:6e02:20e6:: with SMTP id q6mr13264596ilv.180.1643154398313;
 Tue, 25 Jan 2022 15:46:38 -0800 (PST)
MIME-Version: 1.0
References: <20220125224422.544381-1-dianders@chromium.org>
 <20220125144316.v2.5.I5604b7af908e8bbe709ac037a6a8a6ba8a2bfa94@changeid> <CAE-0n528Bxdj+DKhi2Lan4qR_=4KHD7A1Zkr15tmu+MchryJ1A@mail.gmail.com>
In-Reply-To: <CAE-0n528Bxdj+DKhi2Lan4qR_=4KHD7A1Zkr15tmu+MchryJ1A@mail.gmail.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 25 Jan 2022 15:46:26 -0800
X-Gmail-Original-Message-ID: <CAD=FV=UcpKaLQ31CGKUnaNnZcYnM4N_t8VC43FPGktoYDiMfsw@mail.gmail.com>
Message-ID: <CAD=FV=UcpKaLQ31CGKUnaNnZcYnM4N_t8VC43FPGktoYDiMfsw@mail.gmail.com>
Subject: Re: [PATCH v2 5/5] arm64: dts: qcom: sc7280: Add herobrine-r1
To:     Stephen Boyd <swboyd@chromium.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        kgodara@codeaurora.org, Matthias Kaehlcke <mka@chromium.org>,
        Sibi Sankar <sibis@codeaurora.org>,
        Prasad Malisetty <pmaliset@codeaurora.org>,
        quic_rjendra@quicinc.com, Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Jan 25, 2022 at 2:58 PM Stephen Boyd <swboyd@chromium.org> wrote:
>
> Quoting Douglas Anderson (2022-01-25 14:44:22)
> > diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r1.dts b/arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r1.dts
> > new file mode 100644
> > index 000000000000..f95273052da0
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r1.dts
> > @@ -0,0 +1,313 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +/*
> > + * Google Herobrine board device tree source
> > + *
> > + * Copyright 2022 Google LLC.
> > + */
> > +
> > +/dts-v1/;
> > +
> > +#include "sc7280-herobrine.dtsi"
> > +
> > +/ {
> > +       model = "Google Herobrine (rev1+)";
> > +       compatible = "google,herobrine", "qcom,sc7280";
>
> Can we stop adding "qcom,sc7280" to the board compatible string? It
> looks out of place. It's the compatible for the SoC and should really be
> the compatible for the /soc node.

I don't have any objections, but I feel like this is the type of thing
I'd like Bjorn to have the final say on. What say you, Bjorn?


> > +       pp3300_left_in_mlb: pp3300-left-in-mlb {
>
> Sometimes '-regulator' is left out. Is that intentional? I suppose it
> would be better if every node had regulator postfix, but it may be too
> long of a node name?

Huh, you're right. No, it's not intentional. It looks like it was that
way on herobrine-rev0 too... It also looks like it's missing on
"pp3300-hub" on trogdor.

Happy to add "-regulator" in the herobrine / trogdor nodes that need
it. I'll probably do it as a follow-on patch if that works OK? Then I
can just clean them all up at once...

-Doug
