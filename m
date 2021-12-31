Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0B82248228B
	for <lists+devicetree@lfdr.de>; Fri, 31 Dec 2021 07:58:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242721AbhLaG6b (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Dec 2021 01:58:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57724 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242713AbhLaG6b (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Dec 2021 01:58:31 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A4A53C06173E
        for <devicetree@vger.kernel.org>; Thu, 30 Dec 2021 22:58:30 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id d9so54640392wrb.0
        for <devicetree@vger.kernel.org>; Thu, 30 Dec 2021 22:58:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jrtc27.com; s=gmail.jrtc27.user;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=IPvWCWArFmIoJo6e3SOp/K7+W774iGoTLAEhKjFbcaM=;
        b=dSM1+9ApbR+hVWEQTXuqFoWRuF2F4OskLpLWSebcI5qH7YaRhtzyDrQ6O8S//o+Sed
         TVpKnAyqwT4pl06ZBCvkuNgkuEtp380NBzsCXOyu5x7A134l1RQBDM1zkDYDBhqsaN0B
         itO5qp62T5nZR+b3iNfVFZ6VZS5scV1Q3w05MkWo2UGSzx0P8vqMGGYRfA28RtrMwFu6
         1V+49vpa8EBXHvFnlPaSI+6sQAD/PoVKtd6FaUFYS5l9sI2LMFbwY+eM3zc9a+gp6V/n
         mflPV/80xEyUceQxQWFVDzLzaMLpFvXkbjEHkMzd+w8jgM/2QUlrMqCHVC7ssriChgDn
         wDJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=IPvWCWArFmIoJo6e3SOp/K7+W774iGoTLAEhKjFbcaM=;
        b=aGBrV8WVzH1u4xrfYgxXtaUyJQt3KfI34bubrbBtqqMwnNIGVXMTDjj8ym4OWcSdEF
         v6m1yYMdjVUzOS9MI5IriZwbZgYYxHCVPisGtrm3kZGa3HvRlZ0WW4G5Agld9CpG/Gl0
         KFnXajUT7l5ey26p+MkjMzHBEfBGRvOYrAG6MJSsXoSlKJLkf+RTYiLh3NZn320OYgJx
         yyDp99pWMuNyCBVPSwfQDjyJn6dxAYDhBfujU5ARXcYbHyk+7J200Gn/nskaHGOgBVCe
         kkpfa3L0d2d7HTP2W5PG8qOenVgfSTsNsJOvRE3xVn9ayguVOBgDuGuqH7HqIV4ZehGZ
         6ERw==
X-Gm-Message-State: AOAM530pCwKgG127defbppuhobG9qnMT7SJPXeGAdV2xvIteiWE6f2qI
        9nSblJNcGMSdidNbaduhynm1Vg==
X-Google-Smtp-Source: ABdhPJygojzvVzB67tBssVheNi//lj4PKhm+W1eQ9WhHYt1kuWqGvmaINV7eorhNEFDhpHAQ8BhDag==
X-Received: by 2002:a5d:6d8a:: with SMTP id l10mr28425146wrs.527.1640933909153;
        Thu, 30 Dec 2021 22:58:29 -0800 (PST)
Received: from [10.248.123.188] (global-5-144.nat-2.net.cam.ac.uk. [131.111.5.144])
        by smtp.gmail.com with ESMTPSA id j39sm23680532wms.0.2021.12.30.22.58.28
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Dec 2021 22:58:28 -0800 (PST)
Content-Type: text/plain;
        charset=utf-8
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH] riscv: dts: sifive unmatched: Add gpio poweroff
From:   James Clarke <jrtc27@jrtc27.com>
X-Mailer: iPhone Mail (16H62)
In-Reply-To: <20211231061110.89403-1-w6rz@comcast.net>
Date:   Fri, 31 Dec 2021 06:58:22 +0000
Cc:     Dimitri John Ledkov <dimitri.ledkov@canonical.com>,
        Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Vincent Pelletier <plr.vincent@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Qiu Wenbo <qiuwenbo@kylinos.com.cn>,
        Yash Shah <yash.shah@sifive.com>, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <73F7FAE3-5113-48DD-B0F5-0EEAA0A8B0C1@jrtc27.com>
References: <20211231061110.89403-1-w6rz@comcast.net>
To:     Ron Economos <w6rz@comcast.net>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31 Dec 2021, at 06:11, Ron Economos <w6rz@comcast.net> wrote:
>=20
> This patch is required for the following commit to work.
>=20
> commit f2928e224d85 ("riscv: set default pm_power_off to NULL")
>=20
> Signed-off-by: Ron Economos <w6rz@comcast.net>
> ---
> arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts | 5 +++++
> 1 file changed, 5 insertions(+)
>=20
> diff --git a/arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts b/arch/ri=
scv/boot/dts/sifive/hifive-unmatched-a00.dts
> index 6bfa1f24d3de..c4ed9efdff03 100644
> --- a/arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts
> +++ b/arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts
> @@ -39,6 +39,11 @@ rtcclk: rtcclk {
>        clock-frequency =3D <RTCCLK_FREQ>;
>        clock-output-names =3D "rtcclk";
>    };
> +
> +    gpio-poweroff {
> +        compatible =3D "gpio-poweroff";
> +        gpios =3D <&gpio 2 GPIO_ACTIVE_LOW>;
> +    };

Why? It=E2=80=99s abstracted by firmware, which works.

Jess

