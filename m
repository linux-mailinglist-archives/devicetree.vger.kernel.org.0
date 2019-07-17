Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 46B6B6B86B
	for <lists+devicetree@lfdr.de>; Wed, 17 Jul 2019 10:38:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726380AbfGQIhe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Jul 2019 04:37:34 -0400
Received: from mail-qt1-f193.google.com ([209.85.160.193]:36709 "EHLO
        mail-qt1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725873AbfGQIhe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Jul 2019 04:37:34 -0400
Received: by mail-qt1-f193.google.com with SMTP id z4so22514321qtc.3
        for <devicetree@vger.kernel.org>; Wed, 17 Jul 2019 01:37:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jFHVY++CWkwFboy+OGl7LS09ZrvgUC0vsq/EPA7fk5g=;
        b=NGomhEn8h7i0Fu8iT4PoPmKLmHMV09tnb/17a4UCa0dDumKBXWzy1sWlPHchDF0QlM
         DSjlMgBLSW+qLwKwWMjXgVcMhqyK1R+YZOehBDLA7/qpNmfGAIiBOqAz7jdErpQUJ7iH
         StHnO3Ayc/SLL8CmXfNI8sHjAUq7tgBHhQXgFf/2/5rsK6AXzkxEOrJUxKRdl8+VjZww
         AjQnJuQY6Yg+oC2NKGPWtssFJfL6htBZ8+PA0EEwSD95Lx9oUdLaRfxL16Etu10E8Dst
         3UlT/SC2qvL37bMxyM+iO7ufegplfSh3M2DaEthMxLZq0dKdqLototY/999RmuXhHWDg
         eW6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jFHVY++CWkwFboy+OGl7LS09ZrvgUC0vsq/EPA7fk5g=;
        b=p4K3naNDo0eiCizaIONgjv5Yjjs6DjFqdPwzQF1e3MXGfG1HaKoGiqp3D2LavAtpzx
         2ql563Rda37AP0B8ufgz4Lm33Ltx+isF/hg4zLMldLajItIr8ZYD/+RY5RlgcQxw2GjU
         bwCWq8okceLAVQx625z4hp/2XpmmK1k561AUxu1C1yePfTTLIN513cW8N0aRGG87F6Gu
         wmhpUBqKNtQaxqatbgHwrWSCZmjxBV4mSE84z8mK+picm23+VLdmH+4De48P0Mso9cMg
         e/5VH1OkfZDHMHZrzUxxkXJgre9aIumnGT6al40A8+Awx7YYG4q4d7rt4f5J5+rugDp+
         uVog==
X-Gm-Message-State: APjAAAWqG6Ni0n1zaoEco6JQ2v27rI6c2droB/gTqJTTfjU0NFXGR/Eg
        slFjkBBURDhnNZcRo0vv+qMghCmVr4MFFNlsCVs=
X-Google-Smtp-Source: APXvYqylETEVZyJ5bZs0M/73MZ0v+WfKFP9/iMi1z7+GuZ6FQevCbKcHOeFaECNy3yzLSyj2R9IRW3HnCG4fEUAaPtg=
X-Received: by 2002:ac8:5042:: with SMTP id h2mr24681589qtm.96.1563352653233;
 Wed, 17 Jul 2019 01:37:33 -0700 (PDT)
MIME-Version: 1.0
References: <1563290089-11085-1-git-send-email-aisheng.dong@nxp.com>
 <1563290089-11085-14-git-send-email-aisheng.dong@nxp.com> <CAOMZO5Cc6XLjFFEVd59Pru7t72jvW=OCikyXK7W6E8rWRVO3jA@mail.gmail.com>
In-Reply-To: <CAOMZO5Cc6XLjFFEVd59Pru7t72jvW=OCikyXK7W6E8rWRVO3jA@mail.gmail.com>
From:   Dong Aisheng <dongas86@gmail.com>
Date:   Wed, 17 Jul 2019 16:28:37 +0800
Message-ID: <CAA+hA=R5H3ArKEPGjeWRV+EpaBJ2xZRVdpRj5KFMkgRrOg_y5A@mail.gmail.com>
Subject: Re: [PATCH v2 13/15] arm64: dts: imx: add imx8qm common dts file
To:     Fabio Estevam <festevam@gmail.com>
Cc:     Dong Aisheng <aisheng.dong@nxp.com>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        Sascha Hauer <kernel@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Fabio Estevam <fabio.estevam@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will.deacon@arm.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
        Mark Rutland <mark.rutland@arm.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 17, 2019 at 3:33 AM Fabio Estevam <festevam@gmail.com> wrote:
>
> On Tue, Jul 16, 2019 at 12:37 PM Dong Aisheng <aisheng.dong@nxp.com> wrote:
>
> > --- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> > @@ -144,7 +144,7 @@
> >                 };
> >
> >                 clk: clock-controller {
> > -                       compatible = "fsl,imx8qxp-clk";
> > +                       compatible = "fsl,imx8qxp-clk", "fsl,scu-clk";
>
> This looks like unrelated to adding imx8qm support.

Sorry, it's a mistake. Will remove in next version.
I will first wait to see if any more comments on the rest part.

Regards
Aisheng
