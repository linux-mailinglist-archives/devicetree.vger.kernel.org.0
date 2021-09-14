Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1918140A505
	for <lists+devicetree@lfdr.de>; Tue, 14 Sep 2021 05:58:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239257AbhIND76 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Sep 2021 23:59:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239052AbhIND76 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Sep 2021 23:59:58 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20F2DC061760
        for <devicetree@vger.kernel.org>; Mon, 13 Sep 2021 20:58:41 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id i4so8606389lfv.4
        for <devicetree@vger.kernel.org>; Mon, 13 Sep 2021 20:58:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=TYXx01U0tDECSy7JDqKTFZRqiHgt/31FBTGRy6ai3aA=;
        b=Or/gbQnA/XUU1D0ryVjELuysSlbT7/4W5uQGeLVh/UkzA8/EtOLCc0nk5xLeF8QzmI
         MPf7MkjVCVqbsYc+RRT+81skOJNJcbF3sVvJ0kuF591Cx6rAG53s8BsXhUX/2u3D3PJx
         h0VzBUzzlgCmN6FQpivbNysemdpSXUR2BMNAI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=TYXx01U0tDECSy7JDqKTFZRqiHgt/31FBTGRy6ai3aA=;
        b=ILdcV5p4HAd5PS8ApjEx0FZLQfwG30N0VAg3LE4dXfTJO+JoBcJ/RKfYpKAaPGuszU
         1SCGJ1G54f6A+wFoPDDqrl9H5S4CEpoqosc12drnBY/BGCdoJus8RWvOxZd53xFPTx0d
         L7O9nGgUlrMq5ebQnP8+kzB+gldLRmgr4lo+HKQgtN+Pa6Prowd+niXCzjSsi/FJ0kgi
         A2jei3ShDjVuuxlwodEO+V565ZQA9QhQo1UtoETTF4FFq2TjN67I4wUQrjWwL0Y825Av
         U8Vewafc5nzripJO5sroAOr013BGdDEoaCXr0HmqWxDtaFtA2fgAEGvNNnFDaklO1+dh
         jFGg==
X-Gm-Message-State: AOAM531hyF/eu2vBXMTNZ1I9rM7Ww0jEHl0rEFwKW4zA5tiBi65wX3Lh
        383FKBUVXWJO2FJeYk6WcAUswOhOJg0ylOff8caZcj79DHA=
X-Google-Smtp-Source: ABdhPJzetqrZuHRb1zBUZBl5jXsCnNOeo26KfVllB6gntAeKb2VwkVaIX25CHsz0cvvtPbAOwKiYRScSOdl42Yuj8qg=
X-Received: by 2002:a05:6512:c16:: with SMTP id z22mr12235087lfu.482.1631591919573;
 Mon, 13 Sep 2021 20:58:39 -0700 (PDT)
MIME-Version: 1.0
References: <20210914021633.26377-1-chun-jie.chen@mediatek.com> <20210914021633.26377-14-chun-jie.chen@mediatek.com>
In-Reply-To: <20210914021633.26377-14-chun-jie.chen@mediatek.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Tue, 14 Sep 2021 11:58:28 +0800
Message-ID: <CAGXv+5Gic9ws8f89DyRhmqtb+ua8kFocNLnHLPrPU_3V=v2L-Q@mail.gmail.com>
Subject: Re: [v3 13/24] clk: mediatek: Add MT8195 ipesys clock support
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
> Add MT8195 ipesys clock controller which provides clock gate
> control for Image Process Engine.
>
> Signed-off-by: Chun-Jie Chen <chun-jie.chen@mediatek.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
