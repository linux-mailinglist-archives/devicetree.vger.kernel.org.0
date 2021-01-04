Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 72AEE2E97F7
	for <lists+devicetree@lfdr.de>; Mon,  4 Jan 2021 16:02:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726908AbhADPBR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Jan 2021 10:01:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36500 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726762AbhADPBQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Jan 2021 10:01:16 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 438CDC061793
        for <devicetree@vger.kernel.org>; Mon,  4 Jan 2021 07:00:24 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id o17so64988800lfg.4
        for <devicetree@vger.kernel.org>; Mon, 04 Jan 2021 07:00:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tR4uUSuiT2yNCjy2l75xxGnO77PWcJQ+DtWty5i0rMc=;
        b=LJ/AsciYj2BKHcnJ73UgKyavCV9Qw6QPv4rj+dpkZQo3YhzjsIYgubutakzgyTilOD
         BP9w87saYt2mwvs7pZCpYcL045gJziDe+nWIOEIroRJOnA/6w6C3nho2eTCijDeSKdjt
         PBqhmEKevTBMFjsa0IcaooKAmbg3t91gOMxVs09uohr1nFJay1Z1SsD25Pw+7ggP08aJ
         5qjrV116BFU7LMFDr/xS64uW5vVHC3/z159BsSxs/JhDkCYSr0Lhd9QeDmh2c6lqrcBl
         BvcUQtSkdSewYsZD9JVB7IA4M8OtwXfkhg1fq/nM+bJu/vwBI0RnGutIae+G/ZtFnR4+
         UEZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tR4uUSuiT2yNCjy2l75xxGnO77PWcJQ+DtWty5i0rMc=;
        b=dXJttCPCJgph6trNooy199BdjTDH5J+icGSE0CpxqczSgMXBCsJvZV5qn2SN52+SeR
         EQysA7MwANAPdyOtltEkkuQXTlz+E0oApImr4Za0m0WDzhb96F4nzZVOA+oSUUf0gQiL
         541xlLnR+wpEsTzHrKBqZxelo55H40R1Hh7LKgmr+K1I+yeGESAvtycldwnRHRU3D9Lh
         Q7PHZESSPv7S2R/ziQyfVok0bi1al7Rpk6vx4DPHlGUcnlicr90HNUJD5K3qRuYdf7bR
         8uaoBfw8yiih2AUt47TkNUBYZ7e5nOGN8oZK6OOsTnat8Hbmaac7XDkUTrfLI68YDV91
         YU6Q==
X-Gm-Message-State: AOAM530IrUlQ0n6jh6tirehKp317GkyOt+0fqRC10bj6oHnC9xJWgQKQ
        iFwNm5TdXEnMCCJ+UZonMf+SK1m47x92Ca4R/xrvQw==
X-Google-Smtp-Source: ABdhPJw8BDy+1PA7BTXsFDKivU2qz6c7DgAaqRK4RmPbkQPgVpVra4mzO3RTstCIcQRAlI3tqm7JphEKl6JVoakBr3M=
X-Received: by 2002:a05:6512:74e:: with SMTP id c14mr34844158lfs.529.1609772422734;
 Mon, 04 Jan 2021 07:00:22 -0800 (PST)
MIME-Version: 1.0
References: <20201217144338.3129140-1-nobuhiro1.iwamatsu@toshiba.co.jp> <20201217144338.3129140-5-nobuhiro1.iwamatsu@toshiba.co.jp>
In-Reply-To: <20201217144338.3129140-5-nobuhiro1.iwamatsu@toshiba.co.jp>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 4 Jan 2021 16:00:11 +0100
Message-ID: <CACRpkdb--GSy-0vnAFS9Pik4TjrNRTrYeZr2RBZD6SFM8zotyQ@mail.gmail.com>
Subject: Re: [PATCH v5 4/4] arm: dts: visconti: Add DT support for Toshiba
 Visconti5 GPIO driver
To:     Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Punit Agrawal <punit1.agrawal@toshiba.co.jp>,
        yuji2.ishikawa@toshiba.co.jp,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Dec 17, 2020 at 6:45 AM Nobuhiro Iwamatsu
<nobuhiro1.iwamatsu@toshiba.co.jp> wrote:

> Add the GPIO node in Toshiba Visconti5 SoC-specific DT file.
> And enable the GPIO node in TMPV7708 RM main board's board-specific DT file.
>
> Signed-off-by: Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
> Reviewed-by: Punit Agrawal <punit1.agrawal@toshiba.co.jp>

Acked-by: Linus Walleij <linus.walleij@linaro.org>

Please funnel this patch through the ARM SoC tree.

Yours,
Linus Walleij
