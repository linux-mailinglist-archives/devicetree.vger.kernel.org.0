Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9CE4B39ABDD
	for <lists+devicetree@lfdr.de>; Thu,  3 Jun 2021 22:34:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229665AbhFCUgU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Jun 2021 16:36:20 -0400
Received: from mail-qt1-f175.google.com ([209.85.160.175]:39487 "EHLO
        mail-qt1-f175.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229617AbhFCUgU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Jun 2021 16:36:20 -0400
Received: by mail-qt1-f175.google.com with SMTP id c15so5402437qte.6
        for <devicetree@vger.kernel.org>; Thu, 03 Jun 2021 13:34:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CWdL8xo0vHpWIgIBdECu+RNiDuRV629s7OGWjc46l1Q=;
        b=n6a/oJMr+5W2Mhz4wGcI8n6C0FC8XTzSB7bxg187Zmsnm//6MWq6vCPwEl+T/+TZHT
         EyA1fF4K1YQ73atxpYKYtS8RIeL0WKUB7CLjXPNYYz0AqHQAyCAysYSfzoXWit/v9R04
         td8OfK6skei2EiDN76u0iJqFG+XzJGVsUNvvY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CWdL8xo0vHpWIgIBdECu+RNiDuRV629s7OGWjc46l1Q=;
        b=GwQ+DKJjdl/GNu2kG9AdgO/tBjs9NGzWIFizlUxZHECGOn9mYkixuA0c9FdAuqMdRg
         uUrTih8r+IrIFsJKj8yeznEFcjed6K3disQSVW12jl4bKisxt3Ce/k1fgtvn7bvYvvVg
         XSgIkhNXroOyZcJrifaaqARR5jVmRRPZRRzRw0RU7gkEqPAx6CBJezoM+ZVKqNqMAzzm
         Cfa3YnI3ciFjgBrs8T3rj2ND/t0ifEJV3iBoWst1tFX8RWoHuEDquAI8HJT+z9ZlNm6Q
         fGdbHUWshOFmx8EcUBb/VhjsXcn3XSDFtaArPBdxSUVvrX7lkqzWi0ZAMLGjVXol5kNw
         Zf9g==
X-Gm-Message-State: AOAM532XAmQAkA12XC+W12kwMx5fKNR0hWnxUqk4ebSwmwX5th3ta7g/
        vJFBaYzv4as3jWw/f05Rio3lFDPJJ50X1Q==
X-Google-Smtp-Source: ABdhPJz7cqdbV3TnGXXsfqWYH61y78u4FdUh+PeQD4433x1e+OI35n6uaig9yz7KPRINgpeQtBGM5g==
X-Received: by 2002:ac8:59cf:: with SMTP id f15mr1302951qtf.89.1622752401016;
        Thu, 03 Jun 2021 13:33:21 -0700 (PDT)
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com. [209.85.219.175])
        by smtp.gmail.com with ESMTPSA id o143sm2635176qke.16.2021.06.03.13.33.20
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Jun 2021 13:33:20 -0700 (PDT)
Received: by mail-yb1-f175.google.com with SMTP id b9so10591892ybg.10
        for <devicetree@vger.kernel.org>; Thu, 03 Jun 2021 13:33:20 -0700 (PDT)
X-Received: by 2002:a25:80d4:: with SMTP id c20mr424281ybm.345.1622752399765;
 Thu, 03 Jun 2021 13:33:19 -0700 (PDT)
MIME-Version: 1.0
References: <20210602191338.1995827-1-sujitka@chromium.org> <20210602121313.v3.2.I52f30ddfe62041b7e6c3c362f0ad8f695ac28224@changeid>
In-Reply-To: <20210602121313.v3.2.I52f30ddfe62041b7e6c3c362f0ad8f695ac28224@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 3 Jun 2021 13:33:07 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WzgvkT-F-LoDHJXsRamHH2g0GVUzoU4Qe8wAc4Y_L2Dg@mail.gmail.com>
Message-ID: <CAD=FV=WzgvkT-F-LoDHJXsRamHH2g0GVUzoU4Qe8wAc4Y_L2Dg@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: sc7180: SD-card GPIO pin set
 bias-pull up
To:     Sujit Kautkar <sujitka@chromium.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sibi Sankar <sibis@codeaurora.org>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        Mark Rutland <mark.rutland@arm.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Jun 2, 2021 at 12:14 PM Sujit Kautkar <sujitka@chromium.org> wrote:
>
> Some SC7180 based board do not have external pull-up for cd-gpio.

nit: s/board/boards

Presumably Bjorn could fix this when he applies the patch. I wouldn't
re-post just for this fix unless Bjorn asks you to.


> Set this pin to internal pull-up for sleep config to avoid frequent
> regulator toggle events.
>
> Signed-off-by: Sujit Kautkar <sujitka@chromium.org>
> ---
>
> Changes in v3:
> - remove 'trogdor' from commit message
> - move reference patch from commit message
>
> Changes in v2:
> - added pull-up for IDP
>
> This change is with reference to Qualcomm's DT change posted at:
> https://patchwork.kernel.org/patch/11675347/
>
>  arch/arm64/boot/dts/qcom/sc7180-idp.dts      | 2 +-
>  arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)

FYI: I had my Reviewed-by tag on v2. While you did make changes
between v2 and v3, in this case I don't think the changes were
significant enough to warrant removing my Reviewed-by tag and I would
have been happy if you'd kept it.

In general, if you ever have questions about whether you should keep
someone's reviewed tag, it never hurts to mention your logic "after
the cut" (I think you use patman so this would be "Commit-notes:").
For instance, you could say this if you removed Reviewed-by tags:

I totally recombobulated the frobnication logic in v3 and removed
previous Reviewed-by tags. Hopefully reviewers can re-add if they
still think the patch is good.

...or, you could say this if you kept them but you weren't totally
sure it was OK:

Even though every single line in the v3 patch changed from v2, it's
only because I fixed a stoopid spelling Mistake. Thus, I kept previous
Reviewed-by tags. Please yell if you object. Who knew that the only
acceptable spelling of the English word "stupid" in kerneldoc comments
was written as "stoopid". Live and learn.

:-)

In any case, here's my Reviewed-by tag again. I also agree that
Bjorn's comments made sense and were good to fix...

Reviewed-by: Douglas Anderson <dianders@chromium.org>
