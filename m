Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8587736082D
	for <lists+devicetree@lfdr.de>; Thu, 15 Apr 2021 13:22:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232276AbhDOLXT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Apr 2021 07:23:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53828 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230202AbhDOLXT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Apr 2021 07:23:19 -0400
Received: from mail-qv1-xf33.google.com (mail-qv1-xf33.google.com [IPv6:2607:f8b0:4864:20::f33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F03FFC061756
        for <devicetree@vger.kernel.org>; Thu, 15 Apr 2021 04:22:55 -0700 (PDT)
Received: by mail-qv1-xf33.google.com with SMTP id gv2so2159451qvb.8
        for <devicetree@vger.kernel.org>; Thu, 15 Apr 2021 04:22:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=qKjg+Nfd81uXvAszX0KWE5MXxXD8kGWkX2duGPtY7Ag=;
        b=aI1aNhq2Lu6zSk/zygSPCrcPirMJYGj0PoIxiyk8I22GAwp7gPC5eKd46rze9Mgb2h
         Dm0hrOMWXVzFtAWnXCt1vrrKipeHuKXmgiDhUBVQlRmM7V77vkxPN22aLl/smKWFm+uT
         n/GUfiyrITsA556ZlZKvkGEurm3gYTmFOnMQtFUFqce7wORqiHrU6v/9Di+iy0w2Tl1u
         tuEM1OSPx8ZFYQp/FOEKXNaBmqaiJZ9zVK2+boh5N+K8NbnrVep3OP+edOD/IOIdPySO
         duUAhAPhGhABPB/l31Z+cbLk9FphNlq2t5rv8Gs8Htj113ygrvDceI5hHjSx9bjvms62
         WDCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=qKjg+Nfd81uXvAszX0KWE5MXxXD8kGWkX2duGPtY7Ag=;
        b=OrHTajuujTCCzAEj+LWZAIxbanNgU4//txbrQBv0YTWIGgwGrAYMx9cifBF9Ib+gLl
         wY8ELoABLnAk3pKe7AA7HuYVvyOMXLHbTBZHsLAsjVCROvw22cnSFx1kfVVGXGzVt8pz
         iENN2sCjUfMi/iwWJoIAUFP4EZrxymfp7IEV3TYrzm47gxaxAPCRSdHQNDOI7cc8XhXy
         LiAeSWHwZP7tvp6JZS6xxsIvSIsaTPrNqZJtgMtfEumqUxyRMaP0zNNyqruxjUbcOYGP
         WrohBmDPdquMNsXJV8SUGU6I0ch7a1HLSrbEa3kTx0BwWGnN9sTitxfYngutv7cGxnQS
         annQ==
X-Gm-Message-State: AOAM532OWwgvT8g2WuB9HwAOINAgRx6NyyU9jKo74fG4C2oy6hsXr5Ud
        FOcLgyWNOOpjtHsy3xMj4qDk/+6ifHbaZtKDfQIvMA==
X-Google-Smtp-Source: ABdhPJw/g5Mp+Nw9Kn8kT37sc0x2C9ZOd45OaIWYMrTgUAE3a15NO43HBegd82GAIK0IW7DBjc9JUBqpxCRWp/izJ/Q=
X-Received: by 2002:a05:6214:204:: with SMTP id i4mr2517433qvt.47.1618485775043;
 Thu, 15 Apr 2021 04:22:55 -0700 (PDT)
MIME-Version: 1.0
References: <20210415103854.1810788-1-balbi@kernel.org> <CAA8EJpqT-yJwd7D-zzOem5Zj--LbiyjbXB5zt23F7RLfeZhAag@mail.gmail.com>
 <87blafolp5.fsf@kernel.org>
In-Reply-To: <87blafolp5.fsf@kernel.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Thu, 15 Apr 2021 14:22:43 +0300
Message-ID: <CAA8EJprdHtxdXCd9dxOi4ZNGoE1r+O9Man6pXJWib+Rrpp9_-g@mail.gmail.com>
Subject: Re: [PATCH] arm64: boot: dts: qcom: sm8150: add SPI nodes
To:     Felipe Balbi <balbi@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:DRM DRIVER FOR MSM ADRENO GPU" 
        <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Caleb Connolly <caleb@connolly.tech>,
        Felipe Balbi <felipe.balbi@microsoft.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 15 Apr 2021 at 14:02, Felipe Balbi <balbi@kernel.org> wrote:
>
> Dmitry Baryshkov <dmitry.baryshkov@linaro.org> writes:
>
> > On Thu, 15 Apr 2021 at 13:39, Felipe Balbi <balbi@kernel.org> wrote:
> >>
> >> From: Felipe Balbi <felipe.balbi@microsoft.com>
> >>
> >> Add missing SPI nodes for SM8150.
> >>
> >> Signed-off-by: Felipe Balbi <felipe.balbi@microsoft.com>
> >
> > I'd suggest switching to gpio-cs as implemented for sc7180 and sm8250.
> > At least I'd propose to split the pinctrl into data+clock and CS
> > configurations, so that the CS implementation can be easily selected
> > on the board level.
>
> I can do that, sure. What do we gain from it, though? The possibility of
> using more chip selects? It also sounds to me like this could be done as
> a separate patch.

I'd refer to the original discussion for sc7180:
https://lore.kernel.org/linux-arm-msm/20200624170746.1.I997a428f58ef9d48b37a27a028360f34e66c00ec@changeid/

-- 
With best wishes
Dmitry
