Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 381D140A50F
	for <lists+devicetree@lfdr.de>; Tue, 14 Sep 2021 06:00:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230108AbhINEBo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Sep 2021 00:01:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231260AbhINEBm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Sep 2021 00:01:42 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D995C061760
        for <devicetree@vger.kernel.org>; Mon, 13 Sep 2021 21:00:25 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id r3so21211584ljc.4
        for <devicetree@vger.kernel.org>; Mon, 13 Sep 2021 21:00:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=mOD/GRIKs+hdPdAcXN0XW4GSnCbiUQLX2JXAm1ArSmE=;
        b=niRWh4tvD3GcDqSTvNOxaxHwf05e+17mw+nVqh3ev2PMzFLop2wDcz1nYhqXjbvI17
         hiN7nMUA1/nY+yL5plpLJ3XjDo8HUd3Rfrjd0z6RCIyD5VwiXRLoeo0r6D3U1b+SCfp3
         AI/cYnJYcWtT831QQfVa5JwSQGx+qBsJ33AMo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=mOD/GRIKs+hdPdAcXN0XW4GSnCbiUQLX2JXAm1ArSmE=;
        b=u4hTAszVUuFhXLbnHFtdVd89Dd5vRh6ThrQNyLaYTuPzI+eFyUJeDA45rbNVI2sTuG
         onUsuxXOIwJ1JwRDpLBG4bm/y5ivN3tuRzvq3g245VEGUkFbS67E67qJrobGSInf5nCQ
         7+S2zQBP3tYqgPch44OITJS+9P0MN1bPK/bu7V6TF/ZObxxP+oTUolnohtU+lpelvFI1
         Rn+YZB92LXxiyy9I+EGJ80no1/x6rYJM4zYcmMSGkb4XBnJLSCYBn9hzPSglcJcBL99a
         P4ZmkbYq90fEC3SMSDtCQvgLCN0H5f3qRUoev2qByVblJ14LhxA2FlOjBbvviIwg0s3b
         ZKzQ==
X-Gm-Message-State: AOAM530BERynN7LWV+Ej7v/ypRruV4DiG/MhIC2RQRLSZU+FySbThtjA
        tw8Qdx02tDOVqmSGWgcJ2Tx51KSr1o3mGF3+L+wNDg==
X-Google-Smtp-Source: ABdhPJy+jSeXIvVMpE3aPsW4efziT8vLzw757JkH3TL5SFxgsB9djnQwYrYG3UxmJzgmTf/m5e2RGTHorMfuES6fSuU=
X-Received: by 2002:a2e:4951:: with SMTP id b17mr13688387ljd.414.1631592023693;
 Mon, 13 Sep 2021 21:00:23 -0700 (PDT)
MIME-Version: 1.0
References: <20210914021633.26377-1-chun-jie.chen@mediatek.com> <20210914021633.26377-18-chun-jie.chen@mediatek.com>
In-Reply-To: <20210914021633.26377-18-chun-jie.chen@mediatek.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Tue, 14 Sep 2021 12:00:12 +0800
Message-ID: <CAGXv+5GE4RaDxJ4oVDgmebG0GbBCiWGWD=-UikOHupn0Ojew=g@mail.gmail.com>
Subject: Re: [v3 17/24] clk: mediatek: Add MT8195 vdosys0 clock support
To:     Chun-Jie Chen <chun-jie.chen@mediatek.com>
Cc:     Matthias Brugger <matthias.bgg@gmail.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Nicolas Boichat <drinkcat@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        linux-clk <linux-clk@vger.kernel.org>,
        Devicetree List <devicetree@vger.kernel.org>,
        srv_heupstream <srv_heupstream@mediatek.com>,
        Project_Global_Chrome_Upstream_Group 
        <Project_Global_Chrome_Upstream_Group@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Sep 14, 2021 at 10:18 AM Chun-Jie Chen
<chun-jie.chen@mediatek.com> wrote:
>
> Add MT8195 vdosys0 clock controller which provides clock gate
> control in video system. This is integrated with mtk-mmsys
> driver which will populate device by platform_device_register_data
> to start vdosys clock driver.
>
> Signed-off-by: Chun-Jie Chen <chun-jie.chen@mediatek.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
