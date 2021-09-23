Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 85D22416512
	for <lists+devicetree@lfdr.de>; Thu, 23 Sep 2021 20:15:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242684AbhIWSQy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Sep 2021 14:16:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44742 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242673AbhIWSQy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Sep 2021 14:16:54 -0400
Received: from mail-il1-x12d.google.com (mail-il1-x12d.google.com [IPv6:2607:f8b0:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30666C061574
        for <devicetree@vger.kernel.org>; Thu, 23 Sep 2021 11:15:22 -0700 (PDT)
Received: by mail-il1-x12d.google.com with SMTP id m4so7569693ilj.9
        for <devicetree@vger.kernel.org>; Thu, 23 Sep 2021 11:15:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=72ITZJBpbIG9VsQo2cUy5Im243aqBGys0mIv1iVxo/w=;
        b=o9EV9SFJsg8+YWDc8nqXN1Aa/pU/I1MMY0k6/aSc6Frl5FEjxNO6yTA2ykoCPDcPCs
         DJsY5a4Ak8ElSdThrLmGBMzOdjxjwp6uWow4AkCVasX+7fODkWRDrCdY34hANT+jxg6w
         Xm/0c+qm4Mpsk6qRDTDLyRBIeQkJRzcd/wWkbYyAZBGMG6yu2VrPbbifrnMhHMUqNPFe
         ccZllUOj+wOEPavMj1iOeQ8wCQu7I5hASiq5B+lF/x/beS9/FRRBN3navGM/2jlNVDp6
         X3A0pSTiBXL7i+e7nJ0acsAu1Yxm2mxb/1BdpD+wW6xiE8CJ5hwiPXxcqPqwxyU7sOiB
         z7cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=72ITZJBpbIG9VsQo2cUy5Im243aqBGys0mIv1iVxo/w=;
        b=Gwa3T87bTsjaLXMvdobdURIrIN2fyfQsgSAhXHLrVfBdJNkxGWKQhOZIWRAleFgQhZ
         Cv1HAkA32/KWtMReoiOE6INayI/R8f9QVZMlb14wwubQ3RrW2ZZsIbo/pzaH65Bk/Y0u
         BU8dkXuRiytghVvgAPgLPXMRn7MLgpyqDQreBt0Fl3jJRpVUaHYZTBGmqfIXjdmlYwgo
         S3Hy8e0phkdPG6bXn0AzT4wGQ5nMnzrhAKy4uhyS47AO/wPA0YOiEG+KaoVd37/hlBvc
         B1lzMfvyIqc1265ltBofR/BQbTdrhFovrUSEVK6Gl6TVcvsKHwdCI+lnj3XMKlA7onOb
         j1gw==
X-Gm-Message-State: AOAM533djgrsTF0gJijSLFbIrk3ZbVikB+YSKFUihxMaMByXrbC0Gg0Z
        EDEhGHa4c2v7J7f8uyTQ6tf3PJ2vf58+UFs+3TPs1Q==
X-Google-Smtp-Source: ABdhPJz/ZiuKj81HSsFFy1IjysYud+SmR/fUeSx8iL7UcKhneYcIUGVYbG+LpxBQq3ZNP6rkMQ9g8XT/D9vT9+2IUPA=
X-Received: by 2002:a05:6e02:1b0c:: with SMTP id i12mr4751137ilv.27.1632420921606;
 Thu, 23 Sep 2021 11:15:21 -0700 (PDT)
MIME-Version: 1.0
References: <20210923135454.2967198-1-robert.marko@sartura.hr> <YUy6PBMG25Ipr/vO@lunn.ch>
In-Reply-To: <YUy6PBMG25Ipr/vO@lunn.ch>
From:   Robert Marko <robert.marko@sartura.hr>
Date:   Thu, 23 Sep 2021 20:15:10 +0200
Message-ID: <CA+HBbNEqwoGY4tEiM3c3otjfpFYFbCCbtKn5K4vdA7QM_-kXFg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: marvell: add Globalscale MOCHAbin
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     Rob Herring <robh+dt@kernel.org>, gregory.clement@bootlin.com,
        sebastian.hesselbarth@gmail.com,
        devicetree <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Sep 23, 2021 at 7:32 PM Andrew Lunn <andrew@lunn.ch> wrote:
>
> > +     /* 88E6141 Topaz switch */
> > +     switch: switch@3 {
> > +             compatible = "marvell,mv88e6085";
> > +             #address-cells = <1>;
> > +             #size-cells = <0>;
> > +             reg = <3>;
> > +
> > +             pinctrl-names = "default";
> > +             pinctrl-0 = <&cp0_switch_pins>;
> > +             reset-gpios = <&cp0_gpio1 0 GPIO_ACTIVE_LOW>;
> > +
> > +             interrupt-parent = <&cp0_gpio1>;
> > +             interrupts = <1 IRQ_TYPE_EDGE_FALLING>;
>
> The switch interrupt is a level interrupt, not an edge interrupt.

Hi Andrew,
thanks for catching this.
The same is true for the PCA9554 as well.
Will fix that now in v3.

Regards,
Robert
>
>     Andrew



-- 
Robert Marko
Staff Embedded Linux Engineer
Sartura Ltd.
Lendavska ulica 16a
10000 Zagreb, Croatia
Email: robert.marko@sartura.hr
Web: www.sartura.hr
