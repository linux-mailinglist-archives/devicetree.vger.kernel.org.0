Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D9A7244CFDE
	for <lists+devicetree@lfdr.de>; Thu, 11 Nov 2021 03:14:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232723AbhKKCQx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Nov 2021 21:16:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33468 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230338AbhKKCQx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Nov 2021 21:16:53 -0500
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com [IPv6:2607:f8b0:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8259C061766
        for <devicetree@vger.kernel.org>; Wed, 10 Nov 2021 18:14:04 -0800 (PST)
Received: by mail-oi1-x22a.google.com with SMTP id bf8so8875242oib.6
        for <devicetree@vger.kernel.org>; Wed, 10 Nov 2021 18:14:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bytedance-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=MYi5aCjUCD0+yB7qfxUE4373YpQKBy2WyMq5xwnmcA4=;
        b=Sws/mIn0Gk51Xd6SsH32MldeYkxZr5XC8c327sareMM+DOgEeKA4ZNSt1umQZdCWLZ
         +UMPAUD0HKAndn9BWL1nEmXBMY1iSvN4KzAbOdyy+TlcJwaHdwJt3X84Q02Fb0uWjK0x
         z+2WgAK/8//QJgFEnHUoOSm5MMSvZiw6J8gbgMFJqjUM7Vqf6E1KRYPPYqStf/ITPIyI
         IOr5DW1e0HVOdIL8N7lRjcgUUhP3XfGgAfBRRHmO6F9iAchJWHxX/cEE/nq7dLtE6SdI
         uJNE4q+/BCBiujekYRCK0IxVUpgj869Sc6wD8tNqFP/Tu4ADELUa4GKolN7AuBmKrCJ0
         DrtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=MYi5aCjUCD0+yB7qfxUE4373YpQKBy2WyMq5xwnmcA4=;
        b=B0xbUpWwOjjsEvQGkIyIs5QOQSYehP59wogAvtR8E02GK8Cz9lsZZ2EzTKeCiDc6RI
         q5V1w6Qf1JACTnryjIM5M9rLPidcahpR9PVAJYIwfa1l955Dzbq7sNylRaHyKLtXkIRr
         u3iXteLqnfuvKFqKn/0372IBaIEuposYbt/I4gHKwL/vUXHAwPfchGgRu02o/wuppf8f
         y5TdXDmdKIiE2dYBKwLztqQ9Y34ukGd0N+NDEv29zhAxnfqSTu5g95MmVXAtn4VhKd/p
         oTgit9UrQ+yhbsLvyCCh336sH/NKyl6rYML1tzu3bSdjxvDY2rXYuMM3WjjVRImoIMGR
         A0Fw==
X-Gm-Message-State: AOAM532NumIZ1uk70ZU+RUeQU4JRjfNR08GPK1nVUFQkjybzr/IcdYqY
        b8yIZ4/7Uk73iqD7yraxsF1bCD3oZNlYdUb3vgvdPA==
X-Google-Smtp-Source: ABdhPJy+EG4MlenKY/065waysP/gEnN6ZfNyVa8/y+Ek2fHIYAtEjpemB73dSsWDy8j+Ykvx850NuIlpnPWPGAHMPJ4=
X-Received: by 2002:a05:6808:1384:: with SMTP id c4mr16980516oiw.34.1636596844169;
 Wed, 10 Nov 2021 18:14:04 -0800 (PST)
MIME-Version: 1.0
References: <20211110222803.836-1-a.kartashev@yadro.com> <20211110222803.836-3-a.kartashev@yadro.com>
In-Reply-To: <20211110222803.836-3-a.kartashev@yadro.com>
From:   Lei Yu <yulei.sh@bytedance.com>
Date:   Thu, 11 Nov 2021 10:13:53 +0800
Message-ID: <CAGm54UESNecrEJfiv9vXyLYqM6OSGp1Cxt8hB0UJgG_Bgi=-tg@mail.gmail.com>
Subject: Re: [External] [PATCH 2/2] ARM: dts: aspeed: add device tree for
 YADRO VEGMAN BMC
To:     Andrei Kartashev <a.kartashev@yadro.com>
Cc:     joel@jms.id.au, andrew@aj.id.au, openbmc@lists.ozlabs.org,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Nov 11, 2021 at 6:29 AM Andrei Kartashev <a.kartashev@yadro.com> wrote:
> +
> +&fmc {
> +       status = "okay";
> +       flash@0 {
> +               status = "okay";
> +               label = "bmc";
> +               m25p,fast-read;
> +               partitions {
> +                       compatible = "fixed-partitions";
> +                       #address-cells = <1>;
> +                       #size-cells = <1>;
> +
> +                       u-boot@0 {
> +                               reg = <0x0 0x80000>; // 512KB
> +                               label = "u-boot";
> +                       };
> +
> +                       fit-image-a@80000 {
> +                               reg = <0x80000 0x1b80000>; // 27.5MB
> +                               label = "image-a";
> +                       };
> +
> +                       sofs@1c00000 {
> +                               reg = <0x1c00000 0x200000>; // 2MB
> +                               label = "sofs";
> +                       };
> +
> +                       rwfs@1e00000 {
> +                               reg = <0x1e00000 0x600000>;  // 6MB
> +                               label = "rwfs";
> +                       };
> +
> +                       u-boot-env@2400000 {
> +                               reg = <0x2400000 0x20000>; // 128KB
> +                               label = "u-boot-env";
> +                       };
> +
> +                       fit-image-b@2480000 {
> +                               reg = <0x2480000 0x1b80000>; // 27.5MB
> +                               label = "image-b";
> +                       };
> +               };
> +       };
> +};

The flash layout is not the same as the openbmc static layout, but
like the one used by Intel-BMC.
May I ask if you are going to upstream the bmc-code-update related
changes for this layout?


> +&i2c0 {
> +       /* SMB_IPMB_STBY_LVC3 */
> +       multi-master;
> +       general-call;
> +       aspeed,dma-buf-size = <4095>;
> +       aspeed,hw-timeout-ms = <300>;

These properties are not available in openbmc linux kernel tree, but
used in Intel-BMC/linux, may I ask if you are going to upstream the
related changes?

> +       status = "okay";
> +};
> +

-- 
BRs,
Lei YU
