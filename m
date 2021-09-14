Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CE06340A508
	for <lists+devicetree@lfdr.de>; Tue, 14 Sep 2021 05:59:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229591AbhINEBG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Sep 2021 00:01:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33734 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229478AbhINEBF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Sep 2021 00:01:05 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7284C061760
        for <devicetree@vger.kernel.org>; Mon, 13 Sep 2021 20:59:48 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id j12so21165415ljg.10
        for <devicetree@vger.kernel.org>; Mon, 13 Sep 2021 20:59:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=z5OlzavEWnufbwMW9A/eR0vP7IHNpTn//InG4QBRhEw=;
        b=kdFc8tUhNaNEhrjDOP4m70m5hJq0TXdnz0rnbOzc/ALBYlv6g7fMhlS0iOw5mps4Z7
         ItZH9GoCl/rufW5wf0ao/JmKP9qoFXhL30hH2UIGMLGgxz1UBWzLlcgU+FBz2FQa87nF
         fDmExZc8hr/dL1h/RSR1yAI8TWolCjG2LFBIQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=z5OlzavEWnufbwMW9A/eR0vP7IHNpTn//InG4QBRhEw=;
        b=lYrNh6cUoxTjqu9K4nkpBqsVWC/zNMwlLAIUiqN+7zQ0DNB6eTf0HQBOf2RGYn2UtU
         7rLgBfyIPFVMwUQFmf1m9KtA0k3eFPEmc8J7VifFkNJthl+8/0+sFFcztCDjdXu4ZM5l
         gnLi5e0wKmVIHtK+IJ8SObnsm9XeUgiYn1YTABygL1RhS9bJFMQ3bKcQ/Ow+8FEd3WrV
         0mCX2vGJf4crq571I2zushX9lmE1rgVMiwC/ryndtVCLxCqvnDysTvdcVH2ii/M7eFXB
         CLJvUtB7mzdHAjFBZqVcp83+N5H8j/E9Q3YGkWXImAXBCOZXZZOz/JQKhG8LnST8yTbS
         wlsQ==
X-Gm-Message-State: AOAM530rDiJLYlg2OlrA7QZh/ziIdComfSMa7Bl7/H3Bsh2ahdanMIYL
        CpmhTFGf3qS/OfugDw/2DguZVH1gCwqINT3/mvd3ug==
X-Google-Smtp-Source: ABdhPJxz3tXcGotEGCpfsh/LNJdjDfZn+6Q7wCSUUy6z0nG1j2UL769wKfHW7P19kJeUhTBkHqpbx4AG7Tp9mwO3tE8=
X-Received: by 2002:a05:651c:1505:: with SMTP id e5mr13491184ljf.9.1631591987302;
 Mon, 13 Sep 2021 20:59:47 -0700 (PDT)
MIME-Version: 1.0
References: <20210914021633.26377-1-chun-jie.chen@mediatek.com> <20210914021633.26377-15-chun-jie.chen@mediatek.com>
In-Reply-To: <20210914021633.26377-15-chun-jie.chen@mediatek.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Tue, 14 Sep 2021 11:59:36 +0800
Message-ID: <CAGXv+5ED0p4mgcB5sOwB3MQBy2+PYq-tcaqL7xW7FHRG07b_Yw@mail.gmail.com>
Subject: Re: [v3 14/24] clk: mediatek: Add MT8195 mfgcfg clock support
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
> Add MT8195 mfg clock controller which provides clock gate
> control for GPU.
>
> Signed-off-by: Chun-Jie Chen <chun-jie.chen@mediatek.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
