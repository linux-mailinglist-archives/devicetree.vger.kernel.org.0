Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4F622316339
	for <lists+devicetree@lfdr.de>; Wed, 10 Feb 2021 11:08:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229888AbhBJKIR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Feb 2021 05:08:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41250 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230310AbhBJKFu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Feb 2021 05:05:50 -0500
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82766C061756
        for <devicetree@vger.kernel.org>; Wed, 10 Feb 2021 02:05:09 -0800 (PST)
Received: by mail-ej1-x633.google.com with SMTP id w2so2973098ejk.13
        for <devicetree@vger.kernel.org>; Wed, 10 Feb 2021 02:05:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=HCNbKwG2VER2zbwN5PRJptR9cHuEEgGz8k2i0u4o7nE=;
        b=mgnS/EkhqBvFXs5kREja9zchr+0T/hn1KQqoYM20fScv8oNIvwZDqXhtLOaSA7sP4l
         2nNzqKNxPwHzpTKxKAKvS2qsnT1cEujkQoGSUgfOovyaYz2ptL7IPLbWbAjdKZ5IlNRd
         raU8kcragfn7di5KpsD5ybEN0VIaNgnho18PphaWqgjX+ioF5JocjKWliBXY8XMDb1AF
         8kXcOtN7T0Y3+8R7ON9x1P0wRzyE+v9+1HJCkEfDOsGjtcjBJ1hPg+kVJTVuCDmv5ZBo
         /QgYO6wEqSVO1gIiWPUopPfMHGtDyJqpRbmjHHqSdVF0D8ByivYn6215wS8iK43ejNmE
         Kh8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=HCNbKwG2VER2zbwN5PRJptR9cHuEEgGz8k2i0u4o7nE=;
        b=PDrNJBkolkmzRNPzxPijxr3gHxXPiqmpGoK1LbAAuE3oakqJL3R2V6jonl9HsWC5Gg
         MdyT9ZLDp+es0sNjPHlraiuRBc8Xzt0DHxBHpLbeftjh7QSoDsVsr7F0bi2sWz/HuQP5
         6qTs+xUAEg5yfhPra0lmAKXOw9B/0bmtsJGkMM7Eh8XGDdU1XB5H8rRfd4IkjnJgFrtN
         68lKnFo75hPnqSvRfmAtFEwLO2/rhkaWBn4Q0tn1OmSiK/DvqCKHFj0SR9YfwtNri135
         uGppRVBIXAVWXwe/3FNauAmSaGU4rezmZ3LYHVkMXknuZj4D6UgcJguwEVwFV3ERbSU9
         N6WQ==
X-Gm-Message-State: AOAM5339Mwy5y2YbRvghV7tQt0mS6k08Ht1gOlGqWOshvjRvx3ZuP/P6
        1KjYElFyJr00GviIthjiZRaVYUgQu/1BJCnH4rHI3A==
X-Google-Smtp-Source: ABdhPJwPzHKFl0qGkNEe0+Qy78L72B68tvLob8xa2JI2GlZlIQ+veiRPsSz/aN25bAcMPvWAk8foLQl0XSMRF2o0yrU=
X-Received: by 2002:a17:906:3e42:: with SMTP id t2mr2169054eji.439.1612951508173;
 Wed, 10 Feb 2021 02:05:08 -0800 (PST)
MIME-Version: 1.0
References: <f6f642d75c1b1160ed78f6de0a2944ab64017691.1612185370.git.michal.simek@xilinx.com>
In-Reply-To: <f6f642d75c1b1160ed78f6de0a2944ab64017691.1612185370.git.michal.simek@xilinx.com>
From:   Michal Simek <monstr@monstr.eu>
Date:   Wed, 10 Feb 2021 11:04:57 +0100
Message-ID: <CAHTX3dJJqoC=s-QkEj1A_JREKJBsCs_p_Tv-8EEZ69rGtOvxCA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: arm: xilinx: Add missing Zturn boards
To:     LKML <linux-kernel@vger.kernel.org>,
        Michal Simek <monstr@monstr.eu>, git <git@xilinx.com>
Cc:     Geert Uytterhoeven <geert+renesas@glider.be>,
        Michael Walle <michael@walle.cc>,
        Rob Herring <robh+dt@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        DTML <devicetree@vger.kernel.org>,
        linux-arm <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

po 1. 2. 2021 v 14:16 odes=C3=ADlatel Michal Simek <michal.simek@xilinx.com=
> napsal:
>
> Add missing DT compatible strings for Zturn boards.
>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> ---
>
> Patches are based on
> https://lore.kernel.org/linux-arm-kernel/20210120194033.26970-3-michael@w=
alle.cc/
> ---
>  Documentation/devicetree/bindings/arm/xilinx.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/arm/xilinx.yaml b/Document=
ation/devicetree/bindings/arm/xilinx.yaml
> index aaca69d0199f..05217537fb0c 100644
> --- a/Documentation/devicetree/bindings/arm/xilinx.yaml
> +++ b/Documentation/devicetree/bindings/arm/xilinx.yaml
> @@ -23,6 +23,8 @@ properties:
>                - digilent,zynq-zybo
>                - digilent,zynq-zybo-z7
>                - ebang,ebaz4205
> +              - myir,zynq-zturn-v5
> +              - myir,zynq-zturn
>                - xlnx,zynq-cc108
>                - xlnx,zynq-zc702
>                - xlnx,zynq-zc706
> --
> 2.30.0
>

Applied.
M

--=20
Michal Simek, Ing. (M.Eng), OpenPGP -> KeyID: FE3D1F91
w: www.monstr.eu p: +42-0-721842854
Maintainer of Linux kernel - Xilinx Microblaze
Maintainer of Linux kernel - Xilinx Zynq ARM and ZynqMP ARM64 SoCs
U-Boot custodian - Xilinx Microblaze/Zynq/ZynqMP/Versal SoCs
