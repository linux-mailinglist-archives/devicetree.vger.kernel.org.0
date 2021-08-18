Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 16E223EFE0A
	for <lists+devicetree@lfdr.de>; Wed, 18 Aug 2021 09:43:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239059AbhHRHo3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Aug 2021 03:44:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38890 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238942AbhHRHo2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Aug 2021 03:44:28 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45324C0613CF
        for <devicetree@vger.kernel.org>; Wed, 18 Aug 2021 00:43:54 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id i28so2760675lfl.2
        for <devicetree@vger.kernel.org>; Wed, 18 Aug 2021 00:43:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2Pb+i4XV4pD9hHVrCfu2OguYuvXddQz4i1EZeyLXlSA=;
        b=gU6KmWZ2VTtGU6MiqbJsuaCgeM+rsgd3JJa00KF9rgd6K9cenC2G4J0H6wZB5SCAqf
         6Bo7La+IoqM78I2iW9kvnfoDUEdChf27ygxHLn8lkctJjJ2XKY28XcqOepRC3GrG/Iv9
         cU1jo2AKfe+0ty10qvt5sCVfPTdG5UopO0ZaY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2Pb+i4XV4pD9hHVrCfu2OguYuvXddQz4i1EZeyLXlSA=;
        b=PYaYtO5DdIIzNYD9KdysltPUfzg7RnkzkKM06x3FbVDVgFjvFjpHMta+YM4uSp+N5b
         lWS39mQ8/8cj/z9fVgKRTAvo7MAcs12oPpwGJX2yZQTVIAbYR4yj8aJtcKFnJ7c63il2
         XbdOFPiUNFCwN+VCGuln4bOq33PGz2xwS2LR3rnHH89Ubi9bG0G5Al1CmQAYlIINaMLB
         HsAYvu4hhDNnQiCl1kKyYcun4hkc1gk260XJQIiwvDenyyMirJa+KLOdyEReGdgXaI7Q
         PX3FrrtMuvwJuBTNRqX7CEE6K/Bmd9xZOVWYYXxjYv74Nah1VP/McEaBstAfC5R3Sc/p
         TRWg==
X-Gm-Message-State: AOAM532fX7cx8QdHQdpRWe6lJ160aHL5HQ4BZUVM4XOvynsHrjtgGR9X
        T6Tc+6T3MldF1tFlfKQH6Ch0B1NPKno1Rg==
X-Google-Smtp-Source: ABdhPJzMU/6UmKzC7dzU8QuRui/bvR3waSzai7lphniQLHifVVz1MWz1n0+YWA2uQE2vnGcF4fD8TQ==
X-Received: by 2002:a05:6512:68e:: with SMTP id t14mr5680554lfe.429.1629272632480;
        Wed, 18 Aug 2021 00:43:52 -0700 (PDT)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com. [209.85.167.52])
        by smtp.gmail.com with ESMTPSA id bn16sm341430ljb.74.2021.08.18.00.43.50
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Aug 2021 00:43:51 -0700 (PDT)
Received: by mail-lf1-f52.google.com with SMTP id y34so2705690lfa.8
        for <devicetree@vger.kernel.org>; Wed, 18 Aug 2021 00:43:50 -0700 (PDT)
X-Received: by 2002:a19:2d4e:: with SMTP id t14mr5421824lft.30.1629272630297;
 Wed, 18 Aug 2021 00:43:50 -0700 (PDT)
MIME-Version: 1.0
References: <20210802121215.703023-1-eizan@chromium.org> <20210802220943.v6.7.I2049e180dca12e0d1b3178bfc7292dcf9e05ac28@changeid>
 <bf98c5ee749bca755bd46832f858536dbf51a2a4.camel@mediatek.com>
In-Reply-To: <bf98c5ee749bca755bd46832f858536dbf51a2a4.camel@mediatek.com>
From:   Eizan Miyamoto <eizan@chromium.org>
Date:   Wed, 18 Aug 2021 17:43:33 +1000
X-Gmail-Original-Message-ID: <CAOak1e-oyzxbvHimMReQpZCAPyCtAsaGixjwmoa0EzMjqaUxVg@mail.gmail.com>
Message-ID: <CAOak1e-oyzxbvHimMReQpZCAPyCtAsaGixjwmoa0EzMjqaUxVg@mail.gmail.com>
Subject: Re: [PATCH v6 7/9] media: mtk-mdp: use mdp-rdma0 alias to point to
 MDP master
To:     houlong wei <houlong.wei@mediatek.com>
Cc:     "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "wenst@chromium.org" <wenst@chromium.org>,
        =?UTF-8?B?WW9uZyBXdSAo5ZC05YuHKQ==?= <yong.wu@mediatek.com>,
        "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>,
        =?UTF-8?B?QW5kcmV3LUNUIENoZW4gKOmZs+aZuui/qik=?= 
        <andrew-ct.chen@mediatek.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        =?UTF-8?B?TWluZ2hzaXUgVHNhaSAo6JSh5piO5L+uKQ==?= 
        <minghsiu.tsai@mediatek.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
        "linux-mediatek@lists.infradead.org" 
        <linux-mediatek@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Houlong,

On Mon, Aug 16, 2021 at 1:00 PM houlong wei <houlong.wei@mediatek.com> wrote:
> Hi Eizan,
>
> "mdp-rdma0" may be not the only one master device node. In fact, there
> are 2 "mdp-rdma" in mt8173. You can see "mdp_rdma1" via below link.
>
> https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/arch/arm64/boot/dts/mediatek/mt8173.dtsi?h=v5.13.11#n1016
> If we add "mediatek,mt8173-mdp" to "mdp_rdma1" like below, we will have
> one more V4L2 video devie node.
>
>                 mdp_rdma1: rdma@14002000 {
>                         compatible = "mediatek,mt8173-mdp-rdma",
>                                      "mediatek,mt8173-mdp";
>                         ...
>                 }
>
> We should consider the case that there are more than one "MDP_RDMA"
> components.

Would it be okay with you if we added support for multiple MDP master
device nodes in follow-up changes? My rationale is this:
- As far as I can tell, the mediatek integration with V4L2 currently
only handles a single MDP master device node. It's not clear to me the
scope of changes that will be needed to make things work properly with
multiple nodes.
- The patch series makes video decode work (admittedly, in light of
your comments not optimally) upstream, which is better than not
landing these changes at all.

I'd like to say that I'm very open to (and excited about) discussing
further work to support multiple MDP master nodes, perhaps we can
work together on this so I can understand what needs to be done.

Please let me know your thoughts,

Eizan
