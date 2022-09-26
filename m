Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 292B95E98D1
	for <lists+devicetree@lfdr.de>; Mon, 26 Sep 2022 07:35:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231396AbiIZFfV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Sep 2022 01:35:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233079AbiIZFfU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Sep 2022 01:35:20 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 855041F2DA
        for <devicetree@vger.kernel.org>; Sun, 25 Sep 2022 22:35:18 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id e18so7486469edj.3
        for <devicetree@vger.kernel.org>; Sun, 25 Sep 2022 22:35:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=uQm/cyI6O2TECbE+cPd+sUKnp2FCGlHvQ4HWSuz+uSg=;
        b=bvj4BJCXhuoY+XVd7CpW0wyJbpTiRkIRiYp5uuTDkAbcaXZe8AzQT/VxPZLxL3Yorg
         xdtZuFe7/VqVVkB3XXhYGSa3RMXjHjZTOhD8G2nHvEN2zaQOYaHrsWWh0Jv3hyyoD3x2
         E0Wcv+6JZdSQryG4iCkzVhAd3XiX3pnqGTDQA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=uQm/cyI6O2TECbE+cPd+sUKnp2FCGlHvQ4HWSuz+uSg=;
        b=sWCCLjls/EdkIWjs6PRpBTNYOIyI3mB9Gbq/57cwfUCubXpXiyGhikGFoN5+OlrtaV
         IwhBIc8deTJ2eSQpzfiwRwhSo8X/QrEVSMY7r6lsIxxX2bfmItlN/771sqJT95kAsu7T
         YxniUQ7a6tfjEHzK4GYB6Z3bDSE2ggvy2/pxjEg3N4qbodAkFdPBy5Fef7zUHG9SwSyb
         7IBZ8X4tBrEWCQ9PJb5vvfVoJB94V6yLpg5Hxv5sLRptr2vCyvHb/nfWkcBn6LVdpJXd
         1e88EcWD4Drn8wQjynTFmnD54wlK1yd4IDu1ZBd63g9L/syEhRNncz5J/+4+xCk0pOXE
         jE2g==
X-Gm-Message-State: ACrzQf25wXVW3HlRVpGLCPdqfdeifKsPtVcTIPkWZMua4VXo7MF9jbLy
        N915+drCzdiuH8OzyrKccTNCC0c82A5WGA4UEY9hGg==
X-Google-Smtp-Source: AMsMyM5sOF/np8p+lz3ZmwY9NsZIytiFDwGMSg6JHrTesURDkV9WMexbAV6SKC66ej7VC+axAK4njLND0s0MeZqSPD4=
X-Received: by 2002:a05:6402:280f:b0:44e:ee5c:da6b with SMTP id
 h15-20020a056402280f00b0044eee5cda6bmr20607304ede.256.1664170517096; Sun, 25
 Sep 2022 22:35:17 -0700 (PDT)
MIME-Version: 1.0
References: <20220919-v1-0-4844816c9808@baylibre.com> <20220919-v1-2-4844816c9808@baylibre.com>
 <CAGXv+5GJrjxG0pEGqseEacz_KFCRhWJSiLoiwuwwUTaSeO0RBg@mail.gmail.com>
In-Reply-To: <CAGXv+5GJrjxG0pEGqseEacz_KFCRhWJSiLoiwuwwUTaSeO0RBg@mail.gmail.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Mon, 26 Sep 2022 13:35:05 +0800
Message-ID: <CAGXv+5Gw_fKHfhTEAOQi7R_GtD5OSiSTQ5wCvKjEckXBwjLLQA@mail.gmail.com>
Subject: Re: [PATCH v1 02/17] clk: mediatek: add VDOSYS1 clock
To:     Guillaume Ranquet <granquet@baylibre.com>
Cc:     Vinod Koul <vkoul@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        Chunfeng Yun <chunfeng.yun@mediatek.com>,
        CK Hu <ck.hu@mediatek.com>, Jitao shi <jitao.shi@mediatek.com>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        linux-mediatek@lists.infradead.org,
        dri-devel@lists.freedesktop.org,
        Pablo Sun <pablo.sun@mediatek.com>, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Mattijs Korpershoek <mkorpershoek@baylibre.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 26, 2022 at 1:09 PM Chen-Yu Tsai <wenst@chromium.org> wrote:
>
> On Tue, Sep 20, 2022 at 12:59 AM Guillaume Ranquet
> <granquet@baylibre.com> wrote:
> >
> > From: Pablo Sun <pablo.sun@mediatek.com>
> >
> > Add the clock gate definition for the DPI1 hardware
> > in VDOSYS1.
> >
> > The parent clock "hdmi_txpll" is already defined in
> > `mt8195.dtsi`.
> >
> > Signed-off-by: Pablo Sun <pablo.sun@mediatek.com>
> > Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
>
> Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

I've queued patches 1 & 2 up here [1] and will send a pull request to
the clock maintainer later this week.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/wens/linux.git/log/?h=clk-mtk-for-6.1
