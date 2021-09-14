Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7B93340A4EE
	for <lists+devicetree@lfdr.de>; Tue, 14 Sep 2021 05:54:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239201AbhIND4A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Sep 2021 23:56:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60752 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238366AbhINDz7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Sep 2021 23:55:59 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D733EC061574
        for <devicetree@vger.kernel.org>; Mon, 13 Sep 2021 20:54:42 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id s10so25691759lfr.11
        for <devicetree@vger.kernel.org>; Mon, 13 Sep 2021 20:54:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=V3UGDU81U9TWNu+b+RTtkfUp8lpGdcxhRFiSbeAytI0=;
        b=CqVgi5LN+VU9Lng3wgwCbs8J7/30XsJBr33Rnghx1IM/UnhrmUqVsI0nK8UMkkTr7v
         ArllR5WC8kHE946ELuMIy4wldZrau3NxjIQLzgxEzl0dU5ttCX4IxMT0v9pYDvtRd4gI
         gnuXV3F+191DgI51Qf07etXbbLodoicx8aIQc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=V3UGDU81U9TWNu+b+RTtkfUp8lpGdcxhRFiSbeAytI0=;
        b=l04pyuVT/3bUvnc2mGzu/571G5pDQ6UVeLs+E59UOvBlRACY1SEPqq/gWfkmcuryff
         OFeFNLiQ0uMeXxNG6IQV1NVasRtn/2flUS68nz1KxAfHvF+d14h7BjELOrQhAxs+7o9D
         nbOphSR9/ZXc0cq4q1oBVM2BszQXytSXnTrMjdDC/xl+H3xOh5s2hEwhMjaiFQZuaMIZ
         dzbYwOXAcT3l8/1UAledj7UhiMeV/8gbGevLvPES1Wj/Wy+fJ3BPIrdp7YFdbeHPMgii
         9ByAHew4NwMbrPDrDz0BBmS4hx4AUCPNDPFnotS4GOtvaVNjFeoocWdbtH0uWBfPqr22
         I8lg==
X-Gm-Message-State: AOAM5320Aig26pBDn+tdQCmx9KRF7ivYoGBPn0mDETRcKknLWZGpqlWg
        Auh7S7sAYTBcJMonY5PjNTTQVKM3HWGwFyOoYBuitg==
X-Google-Smtp-Source: ABdhPJz06wxSNftrXxbf9gQccwFZoT4p6vzzDgTrPH3HmQOLPaulrUefmGD48EIhURQIzkD+/6vrYZupUg2JBcfAYEQ=
X-Received: by 2002:a19:c3d3:: with SMTP id t202mr9045097lff.678.1631591681299;
 Mon, 13 Sep 2021 20:54:41 -0700 (PDT)
MIME-Version: 1.0
References: <20210914021633.26377-1-chun-jie.chen@mediatek.com> <20210914021633.26377-8-chun-jie.chen@mediatek.com>
In-Reply-To: <20210914021633.26377-8-chun-jie.chen@mediatek.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Tue, 14 Sep 2021 11:54:30 +0800
Message-ID: <CAGXv+5FcTbaR2yXK3OB+iTgYy1OUpDt2FKQw7bA3nGdk4jKxZg@mail.gmail.com>
Subject: Re: [v3 07/24] clk: mediatek: Add MT8195 topckgen clock support
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

On Tue, Sep 14, 2021 at 10:17 AM Chun-Jie Chen
<chun-jie.chen@mediatek.com> wrote:
>
> Add MT8195 topckgen clock controller which provides muxes, dividers
> to handle variety clock selection in other IP blocks.
>
> Signed-off-by: Chun-Jie Chen <chun-jie.chen@mediatek.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
