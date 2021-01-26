Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 75EB730430E
	for <lists+devicetree@lfdr.de>; Tue, 26 Jan 2021 16:53:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2391969AbhAZPwZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jan 2021 10:52:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731740AbhAZPwP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jan 2021 10:52:15 -0500
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 739BBC061A29
        for <devicetree@vger.kernel.org>; Tue, 26 Jan 2021 07:51:35 -0800 (PST)
Received: by mail-pl1-x62c.google.com with SMTP id 31so9972033plb.10
        for <devicetree@vger.kernel.org>; Tue, 26 Jan 2021 07:51:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=PzZyFBzr4f1W011B4gds9g7r9/jftdBns1YRMkXB7G4=;
        b=HOFUATxySjWJF9wDr1dtWEkN+/idvEzn47Zjt9MKZL3qGL1P87LT1q+9u5NM9j7v8k
         obQGW/r4Ddie+9jlcmPuPh9sr+WLnmaHVVwTQCN+5uujt0uwUqUAnkAbW6NLqyp4E8kZ
         N9iYoV0lni2uaomeyhRyfzBxhn/embFLAkuTYk3ScoPKQHYre/uVftOlCqlDZCiwPrAx
         plP9flXyFRkfl07jr/ergkUlOc/odRWH6f3xD2rJuelLWuQaUYnJeyTGEuT8cXc3m7Y+
         mEJuvJzOSPlzZxc2yNKjgCO6FwWi1t3I1BmgOS+mP+WmpcPjZcmEiJAjIfvrixhXKYCh
         YWOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PzZyFBzr4f1W011B4gds9g7r9/jftdBns1YRMkXB7G4=;
        b=RIUN705lcdcFaHVKnCjy6p/UJQ3yFE2R4ef4YYTY4QQ1mYdBDupMarm8zsRFSpmoCj
         itVYTjT7moBmMIZmvjPJwD2xB1kJZYPgnwdHQYyHGngCfMYY+Ev16vBGzvvWpv2excch
         5tPtV/jj5OM2M/ASWUyAM/nWalaXjFd5ADGTcOxQpbQMVzWeR/dWOe3quavInPZ/3QWF
         ZmDZmZdrpZ0zwPd3Rcakd20ZLsHrMTUQ2FsZTIl+5W0D8x1vS86HurPTUWDAf/NdbMfA
         l4wRtt0n4lJq+HUkZ3BC/KmThJByrYdyOnaa1qfxM+4eS13bOQ9+ikTjQkXhPuAmuVJZ
         4tMg==
X-Gm-Message-State: AOAM531fvoekYb4gs0yQmqhV7icjdZ7Zt7c5UHkuco5jXnXfp6B4okqm
        RmCUTjlijbDYU8BxZwK4nEJdaAX+5WOHbgfEnI0MmQ==
X-Google-Smtp-Source: ABdhPJxT6M1sJ1hYz7Ajt4zTCMc/Fq44WCfGtLRnoQTq/rcNFbTPShvjS86lvm79AzCU2Th24aK0wvSkVq+CXn3YDyY=
X-Received: by 2002:a17:90a:9414:: with SMTP id r20mr413274pjo.222.1611676295029;
 Tue, 26 Jan 2021 07:51:35 -0800 (PST)
MIME-Version: 1.0
References: <20210120134357.1522254-1-robert.foss@linaro.org>
 <20210120134357.1522254-15-robert.foss@linaro.org> <20210122163427.GA922435@robh.at.kernel.org>
In-Reply-To: <20210122163427.GA922435@robh.at.kernel.org>
From:   Robert Foss <robert.foss@linaro.org>
Date:   Tue, 26 Jan 2021 16:51:24 +0100
Message-ID: <CAG3jFysf5D1T7zkEJCR2KXEm+r6AHRiNp-HMk=+CtFyExDyaVQ@mail.gmail.com>
Subject: Re: [PATCH v2 15/22] dt-bindings: media: camss: Add qcom,sdm660-camss binding
To:     Rob Herring <robh@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Todor Tomov <todor.too@gmail.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>, will@kernel.org,
        shawnguo@kernel.org, leoyang.li@nxp.com, geert+renesas@glider.be,
        Vinod Koul <vkoul@kernel.org>, Anson.Huang@nxp.com,
        michael@walle.cc, agx@sigxcpu.org, max.oss.09@gmail.com,
        MSM <linux-arm-msm@vger.kernel.org>,
        linux-media <linux-media@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        AngeloGioacchino Del Regno <kholk11@gmail.com>,
        Andrey Konovalov <andrey.konovalov@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Tomasz Figa <tfiga@chromium.org>,
        Azam Sadiq Pasha Kapatrala Syed <akapatra@quicinc.com>,
        Sarvesh Sridutt <Sarvesh.Sridutt@smartwirelesscompute.com>,
        Jonathan Marek <jonathan@marek.ca>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Thanks Rob!

On Fri, 22 Jan 2021 at 17:34, Rob Herring <robh@kernel.org> wrote:
>
> On Wed, Jan 20, 2021 at 02:43:50PM +0100, Robert Foss wrote:
> > Add bindings for qcom,sdm660-camss in order to support the camera
> > subsystem on SDM630/660 and SDA variants.
> >
> > Signed-off-by: Robert Foss <robert.foss@linaro.org>
> > ---
> >
> > Changes since v1:
> >  - Laurent: Reworked driver to use dtschema
>
> Same comments on this one.

I applied the same feedback to msm8916, msm8996, sdm660 & sdm845
bindings in this series.
Thanks!
