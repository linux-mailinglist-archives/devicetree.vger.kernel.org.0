Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8B7D33D6DB3
	for <lists+devicetree@lfdr.de>; Tue, 27 Jul 2021 06:48:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235063AbhG0Er7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jul 2021 00:47:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234992AbhG0Er4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Jul 2021 00:47:56 -0400
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A6B02C061757
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 21:47:56 -0700 (PDT)
Received: by mail-pl1-x62c.google.com with SMTP id e21so9892614pla.5
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 21:47:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=dGG7RdUKVnT/omOvzH3kep9Wm/lxv7TRThq47QpIc6U=;
        b=fPBwG3J8Gj98l4Fltb9Yei/aEYXt+b+10cEkqeUH2qfJlKpIYVmENKFdDMnfCmjMzc
         WZR0jfwmpiuDcihSVapgx48UBxugPpFm2BaibyPCX/L8pXurh8eN5TadhNDjTF0mrbT9
         B6IFMynY5O6UZIG80/lsQLdkaNZEMsFtS5v4A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=dGG7RdUKVnT/omOvzH3kep9Wm/lxv7TRThq47QpIc6U=;
        b=jFK1Lgp7rmhdy7WMqNPbfrYadaEHdk7syHQXEXsZOm2xEBU8Nzq2KETYWpE+U4BTj0
         QeIZk55z5jaNofHvHu9PYE4J6MdOAE5BGk/OqJjLO+hoYidUGHtQxUrVLSC11YozpFMI
         KonDyFPPJUbMkf3KNkEBTjzB0rtawSO5nDBMWwuw6hdob35YWT8pRI1xWRDLdbq3GAYh
         /SJ2VQAOeDMvmVgW7xDTwKlwiRtaCpQC4+ifDA6Ahw0dqOvxVdh0cn+5aShZNE5kNErs
         AxhWm9FU1Yz8w8eCNUG0mR0C6X3Kofka351U8NUH1WoMtdg7/Obw+Mf8UKlnXesSODLg
         a+SA==
X-Gm-Message-State: AOAM531C6hEDkYcN/17CoK0+ktJ9qyzWUxZBo8yPvfa+Knu39a3G1N5i
        pvzkx/8cAWGC6A/DVn7YWuHYIqkuEWlMpegmyXXvoA==
X-Google-Smtp-Source: ABdhPJySJP+/ZQoBEHFro/AzJ188fCTnIOO/lwuwj0nJAUhz+aPHfYkIzGrffavFmHSBLICxTeAXj4op7J6mUDK/CV8=
X-Received: by 2002:a17:90b:2251:: with SMTP id hk17mr2401217pjb.126.1627361276245;
 Mon, 26 Jul 2021 21:47:56 -0700 (PDT)
MIME-Version: 1.0
References: <20210726105719.15793-1-chun-jie.chen@mediatek.com> <20210726105719.15793-22-chun-jie.chen@mediatek.com>
In-Reply-To: <20210726105719.15793-22-chun-jie.chen@mediatek.com>
From:   Ikjoon Jang <ikjn@chromium.org>
Date:   Tue, 27 Jul 2021 12:47:45 +0800
Message-ID: <CAATdQgDhiG_Omph14o-Wu79+4W1AVyC70o5Rdq3Q37T4cJ+xnA@mail.gmail.com>
Subject: Re: [v14 21/21] clk: mediatek: Add MT8192 vencsys clock support
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

On Mon, Jul 26, 2021 at 7:03 PM Chun-Jie Chen
<chun-jie.chen@mediatek.com> wrote:
>
> Add MT8192 vencsys clock provider
>
> Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
> Signed-off-by: Chun-Jie Chen <chun-jie.chen@mediatek.com>

Reviewed-by: Ikjoon Jang <ikjn@chromium.org>

(snip)
