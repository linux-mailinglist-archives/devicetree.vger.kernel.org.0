Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B662E3D6D94
	for <lists+devicetree@lfdr.de>; Tue, 27 Jul 2021 06:42:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235081AbhG0Emu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jul 2021 00:42:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55110 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235041AbhG0Emt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Jul 2021 00:42:49 -0400
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E877C061757
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 21:42:49 -0700 (PDT)
Received: by mail-pj1-x102c.google.com with SMTP id a4-20020a17090aa504b0290176a0d2b67aso2385694pjq.2
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 21:42:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=JAG3r4q1eXvW4jnmIxPlqvAFPEHnfRa806/4BqgTPyc=;
        b=e7wngxPzpp0yJQOTn+ibbOBw2mwLX4Sys3bp7NiFrw+mlxjWp6RHpc7h/0VT+sGgJK
         Aeev4HodmIPg0iBkKNcOQFWj58CYndJ8oCY+gZn8C1RSygbYI6G8sm0+hnfTXoHe6259
         0I+UhsI0GlYWAUpmtZjsOGa7VRJio3Nb5CSfQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=JAG3r4q1eXvW4jnmIxPlqvAFPEHnfRa806/4BqgTPyc=;
        b=AGRSk5Y/hQ/5tAXkmGrmh+VJPnsXu7PB1DxT002r9nB3iddGoVNW3dfXG78yO2VA1j
         lspwyNvZx8h+4THHpkGRC+WGbTdkM3FXKcV7Kge+1BoOc6ju/2p2ST1+tJseJF3Tnfge
         /VxYUIjsaD85yira0aGAcTEqUGmxvdQ+7yk5PE6nilZrphV4/OjP1Xb6/TpoGjwmk3Gb
         F/clGv0lxz7vA3zYbPDGY0WuJB39HMahAReI9T3Jy5Ty2N8HIXTvtY3fo/z40Pku5Ng0
         rrz/OgJ+YQazKJtjNs8hwr39kVhg4QpT7SQMcCFMtlk563HLTWzawVar02ga+1MAnQC+
         bXmA==
X-Gm-Message-State: AOAM5334pgJWGEVFSrseRvaEJcT/SQm4dbz8llGg/HCKyiKxVh3ds2QE
        Qzyxk9JlF9497F+gWfHT6+/doPAtD6HiQTlOXNQxzA==
X-Google-Smtp-Source: ABdhPJwdTmIIqDIkRt5Ak/lU9NfF+K5qaQxw4lncfdy5vGygLf6ht6RWYKwum/QaKt4mbq4xALxTpF8TnTjnoO5kRaQ=
X-Received: by 2002:a17:902:b788:b029:12c:2888:9589 with SMTP id
 e8-20020a170902b788b029012c28889589mr6389338pls.60.1627360968879; Mon, 26 Jul
 2021 21:42:48 -0700 (PDT)
MIME-Version: 1.0
References: <20210726105719.15793-1-chun-jie.chen@mediatek.com> <20210726105719.15793-14-chun-jie.chen@mediatek.com>
In-Reply-To: <20210726105719.15793-14-chun-jie.chen@mediatek.com>
From:   Ikjoon Jang <ikjn@chromium.org>
Date:   Tue, 27 Jul 2021 12:42:38 +0800
Message-ID: <CAATdQgDuSuaP=10-WN5DpCEisJYMVjbGdSb81tFyGC5CXyBs2Q@mail.gmail.com>
Subject: Re: [v14 13/21] clk: mediatek: Add MT8192 imp i2c wrapper clock support
To:     Chun-Jie Chen <chun-jie.chen@mediatek.com>
Cc:     Matthias Brugger <matthias.bgg@gmail.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Nicolas Boichat <drinkcat@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-arm-kernel@lists.infradead.org>,
        open list <linux-kernel@vger.kernel.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>, linux-clk@vger.kernel.org,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        srv_heupstream <srv_heupstream@mediatek.com>,
        Project_Global_Chrome_Upstream_Group 
        <Project_Global_Chrome_Upstream_Group@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 26, 2021 at 7:08 PM Chun-Jie Chen
<chun-jie.chen@mediatek.com> wrote:
>
> Add MT8192 imp i2c wrapper clock provider
>
> Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
> Signed-off-by: Chun-Jie Chen <chun-jie.chen@mediatek.com>

Reviewed-by: Ikjoon Jang <ikjn@chromium.org>

(snip)
