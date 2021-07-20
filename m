Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ACD2A3CF69A
	for <lists+devicetree@lfdr.de>; Tue, 20 Jul 2021 11:09:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232795AbhGTIZX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Jul 2021 04:25:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53292 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235226AbhGTIXN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Jul 2021 04:23:13 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A71D8C0613E9
        for <devicetree@vger.kernel.org>; Tue, 20 Jul 2021 02:01:38 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id y7so29743770ljm.1
        for <devicetree@vger.kernel.org>; Tue, 20 Jul 2021 02:01:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tnoB85UIIXDrQD64ueca3gaGjcMK04EaCPSYPJaZvpQ=;
        b=OeTaL4/IWvzx7LOmzrfp2LMLNMPHh/h/AFR2jUsByR4Td7VmN/9pAgEb5pXoQQVBs9
         js3HDiSsPKa8l3p75zcdnaHUecUGGrDaIZzXpU9cYALr00wiJLGRx29iHHvDex99Hk/l
         0uYLElvrpwEtA+XEFTMLPWbmnCDRbQDNZh2yg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tnoB85UIIXDrQD64ueca3gaGjcMK04EaCPSYPJaZvpQ=;
        b=L+LztF934g0FARwdfOsQs6jhX7jGRS2peP05Szz7ALGLvgbsAYuQYIXGftcdSFAewg
         y1DlWUmu85Z7dK/ZMAeXalR5hrlhzN968R73j4S4Mn2PWRbQoBezLuAz+njH9B9rME9y
         fAMH4/QJ7PTcxqa4pmJo1NBL6Pn2A9oh1DxFVpECwOxn5K2KbBS03GxJvlJa/mQw0uyt
         s8aXMot5qSlbmzk5t/JOWuDDJ8rWcKfH+ywsMcOC/+yrScVh90dWJ7F+HkZwQkK6YrKR
         RHZMimZlVCJRLxNGoZxb04Sl1eJOvbHojsmavbHFRxdJaUvTLo9NZVG30zRM1/7STkUr
         I+4A==
X-Gm-Message-State: AOAM530hVuH/P3/NFZPUbYvkP07GUiM7DcGRpH+5AGvwZMR8RfTnFPKf
        4rb7MNZ0bYh+wdIjdL3UEXdYaKUkttsnDwmxPy8aAw==
X-Google-Smtp-Source: ABdhPJx1bFnN8vnbajWZqUBg10wU5MRRWLphGYMR2NS1xt7mvLn7cSS15GlFPLwDFeVk794mBMeqqAGGpm+6n7kZURE=
X-Received: by 2002:a2e:760d:: with SMTP id r13mr3651436ljc.437.1626771697091;
 Tue, 20 Jul 2021 02:01:37 -0700 (PDT)
MIME-Version: 1.0
References: <20210705054111.4473-1-chun-jie.chen@mediatek.com> <20210705054111.4473-5-chun-jie.chen@mediatek.com>
In-Reply-To: <20210705054111.4473-5-chun-jie.chen@mediatek.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Tue, 20 Jul 2021 17:01:26 +0800
Message-ID: <CAGXv+5EX=15JN579_NYNqr6wh5QZqW-_jGYFWuBehMTOZU=O8w@mail.gmail.com>
Subject: Re: [v3 4/5] soc: mediatek: pm-domains: Add wakeup capacity support
 in power domain
To:     Chun-Jie Chen <chun-jie.chen@mediatek.com>
Cc:     Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Nicolas Boichat <drinkcat@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        LKML <linux-kernel@vger.kernel.org>, devicetree@vger.kernel.org,
        linux-mediatek@lists.infradead.org,
        srv_heupstream <srv_heupstream@mediatek.com>,
        Project_Global_Chrome_Upstream_Group 
        <Project_Global_Chrome_Upstream_Group@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 5, 2021 at 1:42 PM Chun-Jie Chen <chun-jie.chen@mediatek.com> wrote:
>
> Due to some power domain needs to keep on for wakeup in system suspend,
> so add GENPD_FLAG_ACTIVE_WAKEUP support in Mediatek power domain driver.
>
> Signed-off-by: Chun-Jie Chen <chun-jie.chen@mediatek.com>

I think this patch should have a fixes tag:

Fixes: 59b644b01cf4 ("soc: mediatek: Add MediaTek SCPSYS power domains")

And it should be either the first or second patch of the series, either
before or just after the cleanup (remove unused macro) patch.

Otherwise,

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
