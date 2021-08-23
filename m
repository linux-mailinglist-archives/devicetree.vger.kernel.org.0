Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 49C563F4B1F
	for <lists+devicetree@lfdr.de>; Mon, 23 Aug 2021 14:51:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237140AbhHWMvJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Aug 2021 08:51:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237070AbhHWMvI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Aug 2021 08:51:08 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01E63C061575
        for <devicetree@vger.kernel.org>; Mon, 23 Aug 2021 05:50:26 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id u22so37630606lfq.13
        for <devicetree@vger.kernel.org>; Mon, 23 Aug 2021 05:50:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=JaVX46aQ+V25UIMXASQYuq5exbppMpl9+jwK0qjbA9w=;
        b=QHyjy8vxmJ2E7RBLJOkvcAQat6PnacE5+TOWtL32+HgOI/BMwW2ecb+uDywPWjwt2Q
         XvXjbMsPMxSe/1ZLPpHXxbAGA4N7d9U8L6mpZnk8FnH6YaQp7XYaI/LCoXv2n5oy4mAu
         gBChrriDPr7/Arrz4k75yo7ELEVuQe+5+V59U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=JaVX46aQ+V25UIMXASQYuq5exbppMpl9+jwK0qjbA9w=;
        b=O/i+cw/tRZdPOGptQDqmY6C/GsDqTbiqGUF0BSRmHydCpqXE0O5xzXl6YS818r6Mow
         ALp/CJnCGHOotMv9hP/ChidCLM9KEdiGYX3ZKlYK6nx22XRBSvVwNdLNvyZDcIj1lC+o
         IYaUslCMsClYyTfeWJjkqLR7aCSLnTW2+N+KOZI3gskVeUf+I8hnp6luca8ow6vSz7yi
         hnjEArYBIDisb2XCcP+UuxNdy4ve2E97nl7WDKEbEEA5ThY6sXTs9+s+yOtJXTnTsACK
         Ws+LjLVUr9byPBWcT8Gl1VsZ2kMwYo237EVCMtKG+qL1VQvqg8+EmuMqQGTjzEnDIeFk
         slbA==
X-Gm-Message-State: AOAM530zvohRkjohcv70M+HkvBF117AU5WM6NlN+IhMJhyuivT57jArM
        MeFa8VAZOILgmLUMRHiRHiTOu+SSxnF3iOIY9uPMPA==
X-Google-Smtp-Source: ABdhPJw6toCNVTyqjq3up8DTak/+y7rMwN30zZbzOMJMC3UnKVTDsk/Re2QMsobWKxKRqccqaE7mhnKWfSo1ip9RYOY=
X-Received: by 2002:a05:6512:3b98:: with SMTP id g24mr17315353lfv.276.1629723024425;
 Mon, 23 Aug 2021 05:50:24 -0700 (PDT)
MIME-Version: 1.0
References: <20210820111504.350-1-chun-jie.chen@mediatek.com> <20210820111504.350-24-chun-jie.chen@mediatek.com>
In-Reply-To: <20210820111504.350-24-chun-jie.chen@mediatek.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Mon, 23 Aug 2021 20:50:13 +0800
Message-ID: <CAGXv+5EDn=OjghzN6wzx0RF4k=h6eKAY6qdf278WZbANHnoGUw@mail.gmail.com>
Subject: Re: [v2 23/24] clk: mediatek: Add MT8195 imp i2c wrapper clock support
To:     Chun-Jie Chen <chun-jie.chen@mediatek.com>
Cc:     Matthias Brugger <matthias.bgg@gmail.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Nicolas Boichat <drinkcat@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>, linux-clk@vger.kernel.org,
        Devicetree List <devicetree@vger.kernel.org>,
        srv_heupstream <srv_heupstream@mediatek.com>,
        Project_Global_Chrome_Upstream_Group 
        <Project_Global_Chrome_Upstream_Group@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Aug 20, 2021 at 7:36 PM Chun-Jie Chen
<chun-jie.chen@mediatek.com> wrote:
>
> Add MT8195 imp i2c wrapper clock controllers which provide clock gate
> control in IIC IP blocks.

Standard terminology is I2C.

Otherwise,

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
