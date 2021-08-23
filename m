Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B1B403F4A7D
	for <lists+devicetree@lfdr.de>; Mon, 23 Aug 2021 14:20:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236851AbhHWMVV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Aug 2021 08:21:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56890 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235875AbhHWMVU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Aug 2021 08:21:20 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 65A70C061575
        for <devicetree@vger.kernel.org>; Mon, 23 Aug 2021 05:20:37 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id z2so37573970lft.1
        for <devicetree@vger.kernel.org>; Mon, 23 Aug 2021 05:20:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=J/9lMngJdsO39utn1rnBXQpLcoAkKWd+nQfEyzAGaq0=;
        b=A93zXOcuEP4Kz+850M7QkS6YIvg0xSj1PenNxv1W64YmPWMa57DygFf75G6oclbkYa
         ffnVJQo3HSz4vUCXNF61F9MhY2o4RIijteGevGpyGLcXGRH637WleRHHheLDBRu0qYHH
         CnitHEo+t/IibGAfmbAcyFWPiLoUu5omC1EaE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=J/9lMngJdsO39utn1rnBXQpLcoAkKWd+nQfEyzAGaq0=;
        b=DkyGeTaAYBfqE6pYtHLTukGj+PnrtxQlDfTARdQPCBIkQZLey3OA4iwQZ/5ZFc2bpQ
         z3cUKiR+LMmVS8VQj9wIKnUmZOr1zyXn/i9VAIq87U7cg2Et626IOGnl2AT1M4qOvkZO
         CT5jm2iZI0Dg6tgaRloGQX0A1U9fDcBgAvHzmXdNrbK8CkNeHs4kmHBKWklwo1V48/B9
         flhtOSeyZYKYrFOOBkG1CVqbPnJAKPTNyXWb0iMBMyu8y+L/zPjKvKSQ/Ji4KuMqKz5I
         rRXQWBKfKizKsIIptrvQ+wnGXjKDzq3tN5Piu8mNphMhem4fCzaO+PwjcjBrifd6FGHC
         fTYw==
X-Gm-Message-State: AOAM530hGbPB8ioc1H7st8zVveRJ5R8+VJu0IYpqKp9cfFLalrYNLfkH
        ytK6LauodaJmY+C1/P9rU/KldNi1mRAKSHXDGbLMgw==
X-Google-Smtp-Source: ABdhPJzZV+X+GD9FTgIY+7KEoZ0aRWDNfvAX10pwPbA9Jx1RGnfwwCvySJdrhtlRgTZ1eoaOFCpMJ/yt+XRo3rHFWRE=
X-Received: by 2002:ac2:4116:: with SMTP id b22mr25323200lfi.587.1629721235847;
 Mon, 23 Aug 2021 05:20:35 -0700 (PDT)
MIME-Version: 1.0
References: <20210820111504.350-1-chun-jie.chen@mediatek.com> <20210820111504.350-14-chun-jie.chen@mediatek.com>
In-Reply-To: <20210820111504.350-14-chun-jie.chen@mediatek.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Mon, 23 Aug 2021 20:20:24 +0800
Message-ID: <CAGXv+5Fj69MQroMZV5ecpEg7cBcin0rA7C6XNCZcvcHebV-HQg@mail.gmail.com>
Subject: Re: [v2 13/24] clk: mediatek: Add MT8195 ipesys clock support
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

On Fri, Aug 20, 2021 at 7:25 PM Chun-Jie Chen
<chun-jie.chen@mediatek.com> wrote:
>
> Add MT8195 ipesys clock controller which provides clock gate
> control for ipe IP block.

Could you describe "ipe" in generic terms?

ChenYu
