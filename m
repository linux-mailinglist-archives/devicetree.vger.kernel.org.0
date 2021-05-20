Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6A44B38B90F
	for <lists+devicetree@lfdr.de>; Thu, 20 May 2021 23:40:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230288AbhETVlv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 May 2021 17:41:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230257AbhETVlu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 May 2021 17:41:50 -0400
Received: from mail-qv1-xf2a.google.com (mail-qv1-xf2a.google.com [IPv6:2607:f8b0:4864:20::f2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54EFAC061574
        for <devicetree@vger.kernel.org>; Thu, 20 May 2021 14:40:27 -0700 (PDT)
Received: by mail-qv1-xf2a.google.com with SMTP id q6so9425404qvb.2
        for <devicetree@vger.kernel.org>; Thu, 20 May 2021 14:40:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ZIgxNeJtIZOCUu26nn+aGqgcAu9hM+yO4Nw/eB0jBeE=;
        b=OQqXZJQ0WQrHpmGQhIiwMtNefwOL7yYcMbOia1kGiGWxNB3k8j/ikmE+Pgtt0Cqjuu
         tmIdpKxL+hf08loIQOk+J8Fh/l4KYpp/jV7K+vvTqq+etwPRC5CLRJyHvtMQIRVdxm29
         pSHqTAtKSinj4v9l/XhymSogCplDJ2+uHGogE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ZIgxNeJtIZOCUu26nn+aGqgcAu9hM+yO4Nw/eB0jBeE=;
        b=M8RhF2PxIydkmKWCLK/XbTmJ0dQ+Bj7sm8DY5zHEE2EDbLxk+t9vFLm2FTWNr83Glq
         U1kxt02Nk47PpAYYpiNdCXqwj61q02FncSTsK9VRkX1+hkMQG1KDkMk/8x5gEKQxsexn
         KGName+Cpu6h8tq5FaQ2lvlNv5IQVlLt7uxZcAU+5//D2KgdPjZn98piGw19WxSsgWGc
         bS9miarGyllMlibe65OJCEfjEaf403sEK2bGNN6cBAwiaJ+9UfFNdU5iaBMEAsL5hflE
         tVdS4SsmrYv+/57SWTitGZhrY6zgUzxz1ue3G526b9d7rWMIeHGzzfBe4yPNc9+tCfAF
         XQBw==
X-Gm-Message-State: AOAM532Wr7fRfEzfqX7BytoTG8zhegEcurlkrLc/7lCET5+VKh8BETJG
        N33S3Af5tmi0TWmBqm6y5N74pss49nRnug==
X-Google-Smtp-Source: ABdhPJzqZX/pMBWwTqe09tISEPb0UbV3mWg1wLucuKx34CI53ujxWkqtOUOzQFSN/jolkziJ/TvU0g==
X-Received: by 2002:ad4:4a34:: with SMTP id n20mr8183864qvz.15.1621546826200;
        Thu, 20 May 2021 14:40:26 -0700 (PDT)
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com. [209.85.219.171])
        by smtp.gmail.com with ESMTPSA id m4sm3081122qtg.21.2021.05.20.14.40.25
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 May 2021 14:40:25 -0700 (PDT)
Received: by mail-yb1-f171.google.com with SMTP id 191so18869067ybn.7
        for <devicetree@vger.kernel.org>; Thu, 20 May 2021 14:40:25 -0700 (PDT)
X-Received: by 2002:a25:80d4:: with SMTP id c20mr10916531ybm.345.1621546824581;
 Thu, 20 May 2021 14:40:24 -0700 (PDT)
MIME-Version: 1.0
References: <20210513122429.25295-1-srivasam@codeaurora.org> <CAE-0n51jjHWSFiip-utVKjAQbaJuj+oKq0GPLgw2q2mG_9B=eg@mail.gmail.com>
In-Reply-To: <CAE-0n51jjHWSFiip-utVKjAQbaJuj+oKq0GPLgw2q2mG_9B=eg@mail.gmail.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 20 May 2021 14:40:13 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Uzg+a6ZrinAnq_=29103JPs0=oWTa3VkfTUbPRkvGyjw@mail.gmail.com>
Message-ID: <CAD=FV=Uzg+a6ZrinAnq_=29103JPs0=oWTa3VkfTUbPRkvGyjw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: Add wakeup delay for adau codec
To:     Stephen Boyd <swboyd@chromium.org>
Cc:     Srinivasa Rao Mandadapu <srivasam@codeaurora.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Judy Hsiao <judyhsiao@chromium.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Rohit kumar <rohitkr@codeaurora.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,


On Mon, May 17, 2021 at 3:44 PM Stephen Boyd <swboyd@chromium.org> wrote:
>
> Quoting Srinivasa Rao Mandadapu (2021-05-13 05:24:29)
> > Add wakeup delay for fixing PoP noise during capture begin.
> >
> > Signed-off-by: Judy Hsiao <judyhsiao@chromium.org>
> > Signed-off-by: Srinivasa Rao Mandadapu <srivasam@codeaurora.org>
> > ---
> >  arch/arm64/boot/dts/qcom/sc7180-trogdor-coachz.dtsi | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-coachz.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor-coachz.dtsi
> > index 4c6e433c8226..3eb8550da1fc 100644
> > --- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-coachz.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-coachz.dtsi
> > @@ -23,6 +23,7 @@ / {
> >         adau7002: audio-codec-1 {
> >                 compatible = "adi,adau7002";
> >                 IOVDD-supply = <&pp1800_l15a>;
> > +               wakeup-delay-ms = <15>;
>
> Is this part of the binding?

It doesn't seem to be, but it's supported by the code. It's also in
the generic "dmic" bindings. The bindings are pre-yaml. Seems like
someone needs to take charge and clean those up, but I'm not sure we
need to block this patch on it?

Though I'm not an expert on audio stuff, assuming that this works OK
I'm fine with:

Reviewed-by: Douglas Anderson <dianders@chromium.org>

-Doug
