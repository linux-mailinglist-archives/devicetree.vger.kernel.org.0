Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 124C33C1F74
	for <lists+devicetree@lfdr.de>; Fri,  9 Jul 2021 08:46:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230431AbhGIGmb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jul 2021 02:42:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230436AbhGIGmb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jul 2021 02:42:31 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6FA3C0613E6
        for <devicetree@vger.kernel.org>; Thu,  8 Jul 2021 23:39:46 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id t17so21281991lfq.0
        for <devicetree@vger.kernel.org>; Thu, 08 Jul 2021 23:39:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=GdbwvfH2damctRl688URppCcO8HiCSnYmA4puvxValM=;
        b=KARnKsI6wDXVlxoOJqqGBaT9Cvtu6meuaoim3L0lyRJTOtNHXTW15+lu+fX2Avc4SE
         sclUFBx2eXDhb5Ek6QXiwTQZFR7u0/lkRPCyWJj7CZ75DdaQuqELDVVUi+O3wDDsq6XB
         xaCqqW3u5S+0Z+S72yZYXwfyQ8NqtI/64qcv8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=GdbwvfH2damctRl688URppCcO8HiCSnYmA4puvxValM=;
        b=F6OGtSxrlDlhFZ7zaN4QhvFby+eIurgiVtBVbrQNmWUTEBF+32XIeds2WBTXU4Bb44
         TUYpH2/mQrjdTyx3m8A61qKlCTZIUI2dEB3E0AroxUwNgxSM7ghvinBffEZNhFtXFnEL
         IUFbf4+jbRXYiSqSAp7yhesvNIl0h7P/fIOmT2QHty4VmjodvzKlON8NFnCEiNTMLytG
         Teyoe/cHf+iW/z3aQISs6t3iutz+N5rbAAAgpE4F8gKibNeZZjXeAe6oapRJXu68C+RK
         Y+/qng61Q8iDMKtauD9YKPEA/B4B0iIZDHoHTr3WAbVZUxuVeei+jDuh7W3tCydkOxTG
         Z6CA==
X-Gm-Message-State: AOAM533Q+ARSxkeIkfrboOdS3z6PF7MqW5alw1o9rqfMLWKxNuobopWD
        9rEzFvJ2f8umAqgbYOGixxcQMrW2uihHStxePwDqhA==
X-Google-Smtp-Source: ABdhPJyxfIq66PAyhcwZKY98vY9gxJePWfUzcQTs7lPlWbqVj656LIF99F/PEycna45aCaK+KtkLo7qALswN1VrtyeQ=
X-Received: by 2002:a19:ca13:: with SMTP id a19mr27080916lfg.647.1625812785287;
 Thu, 08 Jul 2021 23:39:45 -0700 (PDT)
MIME-Version: 1.0
References: <20210616224743.5109-1-chun-jie.chen@mediatek.com> <20210616224743.5109-13-chun-jie.chen@mediatek.com>
In-Reply-To: <20210616224743.5109-13-chun-jie.chen@mediatek.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Fri, 9 Jul 2021 14:39:34 +0800
Message-ID: <CAGXv+5Ggv1ouJfGwfk8XbTZ1c61-QU-=M1pA=VB4oJqWwE2r3A@mail.gmail.com>
Subject: Re: [PATCH 12/22] clk: mediatek: Add MT8195 scp adsp clock support
To:     Chun-Jie Chen <chun-jie.chen@mediatek.com>
Cc:     Matthias Brugger <matthias.bgg@gmail.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Nicolas Boichat <drinkcat@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        LKML <linux-kernel@vger.kernel.org>,
        linux-mediatek@lists.infradead.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, srv_heupstream@mediatek.com,
        Project_Global_Chrome_Upstream_Group@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Jun 17, 2021 at 6:59 AM Chun-Jie Chen
<chun-jie.chen@mediatek.com> wrote:
>
> Add MT8195 scp adsp clock provider
>
> Signed-off-by: Chun-Jie Chen <chun-jie.chen@mediatek.com>

Same comments about commit log and Kconfig option applies.

Code looks good otherwise. Note that the datasheet I have does not include
the registers used in this driver, so I cannot confirm them.


ChenYu
