Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A729A1C2AC
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2019 07:57:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726794AbfENF5y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 May 2019 01:57:54 -0400
Received: from mail-ua1-f68.google.com ([209.85.222.68]:34195 "EHLO
        mail-ua1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726717AbfENF5y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 May 2019 01:57:54 -0400
Received: by mail-ua1-f68.google.com with SMTP id 7so1660060uah.1
        for <devicetree@vger.kernel.org>; Mon, 13 May 2019 22:57:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Zx9aUYVTZ/Q7QmtL7E4nK+XknXpd1NX7Wy7ZAb5BKRs=;
        b=Rmpzcg2mJ8O3AQjylXPCeevcKoYMTVT3NRT2gIZbq/u4Q+f3PbK73vlsx89hTtjXJ6
         fOFXv2CyYetApLHi6mZbCiMrOmqmf7KJfhbMt2AHIhEvfzDkRk210yZCkOvVpi9rtkA7
         7UsUT6wDPxQdeCCLcsksxuaEZQHTveMdg8Ckzzns0DB65/rBBB2TB5DIRGTmQ09DM9tZ
         cor08RYzCUZQd2kviJTzdEnoaN+q67ubA5vSq4l6wD2GEtqcOoU0YbPTv6ENKEThJ5Oq
         QYN0T97KEoi14HoeGfDBZ+AjEr3OuwKINurzcLzYOaZDqUmUjT+dKb0oJm01W3f4CmG4
         4pJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Zx9aUYVTZ/Q7QmtL7E4nK+XknXpd1NX7Wy7ZAb5BKRs=;
        b=ZNM2SEzBgZ7sRDAlPw0xbFjKLL3Lw0mlQb9PElK1BYe3cXdPelimgtMPXzKQBgs1iu
         5wl0sRN6R8NoVTso1Y8olakZ6f5QFsEQmzry6zoxw+y/jiZgXpbTvkLN1cYrdK2LWjG0
         gHuR3LUb0ukpqROdZAzYqA7VyAbd94EelL7vUxL0zEwPC9KtLDZzKhhRxjHMsED2R33w
         0pZzQGUtEhtG+GPrNpEsx4sp6JekI9nauHDUATpb6K4mI9WSSHBuE0PpJqIUzp+pA+mm
         Mu5WrYEflGEISlopktqwSyvGHxrBglHZEhS3JaZduFB/3EylvnK5BbjOFn5VWK/Cwk8n
         AdVw==
X-Gm-Message-State: APjAAAVlBZkMKAymbtQrke2k0ySg8kzuK+gLlWbhaEKZjTlalWZ8m3T1
        0GT+qWwuNvwKTwq9r9qA6NBt1PWKMHclRO3TaHt6qA==
X-Google-Smtp-Source: APXvYqy5FnXMGsyfpUpPnivkU4JXOBXavnwReh+VH/AtXAs26EZEl4e75tBaEA6Nt+8bGsliB11cYvQPf8v/6wCw/n4=
X-Received: by 2002:ab0:23cd:: with SMTP id c13mr13461223uan.77.1557813473337;
 Mon, 13 May 2019 22:57:53 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1557486950.git.amit.kucheria@linaro.org>
 <ab5bad0258e455ef84059b749ca9e79f311b5e3c.1557486950.git.amit.kucheria@linaro.org>
 <20190513183947.GJ2085@tuxbook-pro>
In-Reply-To: <20190513183947.GJ2085@tuxbook-pro>
From:   Amit Kucheria <amit.kucheria@linaro.org>
Date:   Tue, 14 May 2019 11:27:42 +0530
Message-ID: <CAHLCerMx8MqMJYO4K6eNB6zOr01FwjP_JRWwz3=nM6dz4+KnSw@mail.gmail.com>
Subject: Re: [PATCHv1 1/8] arm64: dts: Fix various entry-method properties to
 reflect documentation
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Andy Gross <andy.gross@linaro.org>,
        David Brown <david.brown@linaro.org>,
        Li Yang <leoyang.li@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        lakml <linux-arm-kernel@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 14, 2019 at 12:09 AM Bjorn Andersson
<bjorn.andersson@linaro.org> wrote:
>
> On Fri 10 May 04:29 PDT 2019, Amit Kucheria wrote:
>
> Subject indicates pluralism, but this fixes a specific platform
> (board?). I think you should update that.

Copy paste from the previous cleanup commit :-) Will fix.

> > The idle-states binding documentation[1] mentions that the
> > 'entry-method' property is required on 64-bit platforms and must be set
> > to "psci".
> >
> > We fixed up all uses of the entry-method property in
> > commit e9880240e4f4 ("arm64: dts: Fix various entry-method properties to
> > reflect documentation"). But a new one has appeared. Fix it up.
> >
> > Cc: Sudeep Holla <sudeep.holla@arm.com>
>
> The message looks good though, so with a new subject you have my:
>
> Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Thanks

>
> > Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
> > ---
> >  arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> > index 2896bbcfa3bb..42e7822a0227 100644
> > --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> > @@ -51,7 +51,7 @@
> >                * PSCI node is not added default, U-boot will add missing
> >                * parts if it determines to use PSCI.
> >                */
> > -             entry-method = "arm,psci";
> > +             entry-method = "psci";
> >
> >               CPU_PH20: cpu-ph20 {
> >                       compatible = "arm,idle-state";
> > --
> > 2.17.1
> >
