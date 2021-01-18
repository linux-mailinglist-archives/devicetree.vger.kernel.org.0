Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 05EF22F975A
	for <lists+devicetree@lfdr.de>; Mon, 18 Jan 2021 02:31:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728141AbhARBaz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 17 Jan 2021 20:30:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730687AbhARBav (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 17 Jan 2021 20:30:51 -0500
Received: from mail-io1-xd2f.google.com (mail-io1-xd2f.google.com [IPv6:2607:f8b0:4864:20::d2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DD9EC061573
        for <devicetree@vger.kernel.org>; Sun, 17 Jan 2021 17:30:10 -0800 (PST)
Received: by mail-io1-xd2f.google.com with SMTP id q1so29844236ion.8
        for <devicetree@vger.kernel.org>; Sun, 17 Jan 2021 17:30:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lixom-net.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=o84I7uRlMoUbwGmPe+8++9XgEZ5A53fJCbCCjWoj0Hg=;
        b=FQTJvOGOApQKD/DLnsW6zgk8O+tDz/OhgtJ0Ao1rFoLUb6YcpizHbw982aj0v89U54
         5WmvoovqFAyiWkyN8/cJ22KvL2BU/7Et8jGNxEcksljdqgmRbIkGysJG/5ZA0mjP2pd8
         sSd2v/FCEdstsV6kaxrBjoygSeRfkSHnQ9/dawWZHwxfm63upSSWgTeTmRiQ7fP0Rl/x
         nHKFdZQIpbwmBb4JzPxsf7LUq5WBixDtdzdD3xZunsa5BJ7z0WW8llYoefzju/hzpkJw
         ny8BYoysiBho1Oa1SWvLi5aA9E/jXK816SoblhECP3LFyARb3NUKi+CN2dJu45NTzq5Y
         SiTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=o84I7uRlMoUbwGmPe+8++9XgEZ5A53fJCbCCjWoj0Hg=;
        b=KVcOeFUa06AcvnMy1bZ13ik4JNrNFkfe35RQEeAKABnsFeHXXwz4KVdKJxUHPRzNZ8
         JKW0mSHFQURMve28J9zKtvIiFpwCFoDWDCYWcWogJyHJj1FtxM+4yEB3/56uAI10I1s6
         iPiXM3GxewLorp+JfkkI5dd97d2fwO1QSMARFZ0weqafoU2KC01fyjlcGaoCYFKq3x5x
         H56D6ILFjYkobRk82erH9f0YbASh6ang1nWSYsurM7Do7TOev0JI45uK3ECMU74eYLvv
         XAisxPZqK/YubS5hTNQJC5dh96ojnH/if+LbJ8A5fl5ZUEWhFVrIGyn4jVCkHzM/ro4o
         s1DQ==
X-Gm-Message-State: AOAM533Sx6YgCq/dP8DkRpFpaxdAVXF/rJmfcb1d3w3rwkM+XbQNHQ3Y
        Hvt8kZ6K8toMc9ix5EVWAWg/vsmPtdkR7+TBguriyA==
X-Google-Smtp-Source: ABdhPJxJzT0P2/29OK2ubdkU5YH8ML5FAsykZPqFOkQXYkm2aQmUMwoeFoHuX7zGMtw0Lm8OMwpLWM7P0kF/VpK6WFw=
X-Received: by 2002:a92:6403:: with SMTP id y3mr19156474ilb.72.1610933409961;
 Sun, 17 Jan 2021 17:30:09 -0800 (PST)
MIME-Version: 1.0
References: <20210117035140.1437-1-alistair@alistair23.me> <20210117035140.1437-2-alistair@alistair23.me>
In-Reply-To: <20210117035140.1437-2-alistair@alistair23.me>
From:   Olof Johansson <olof@lixom.net>
Date:   Sun, 17 Jan 2021 17:29:58 -0800
Message-ID: <CAOesGMiLZGdjQTLj48B8dXV1vv2p-NG751m-bh61mJ-10N-rAw@mail.gmail.com>
Subject: Re: [PATCH 2/2] remarkable2_defconfig: Add initial support for the reMarkable2
To:     Alistair Francis <alistair@alistair23.me>
Cc:     Arnd Bergmann <arnd@arndb.de>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Sascha Hauer <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        dl-linux-imx <linux-imx@nxp.com>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        DTML <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        alistair23@gmail.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Alistair,

On Sun, Jan 17, 2021 at 3:09 PM Alistair Francis <alistair@alistair23.me> wrote:
>
> This defconfig is based on the one released by reMarkable with their
> 4.14 kernel. I have updated it to match the latest kernels.
>
> Signed-off-by: Alistair Francis <alistair@alistair23.me>

It's awesome to see upstream support for contemporary consumer
products being posted, thanks!

When it comes to a dedicated defconfig, is that necessary in this
case? The needed drivers should be possible to enable either in
imx_v6_v7_defconfig, or in multi_v7_defconfig (or, rather, both)?

Adding new defconfigs is something we're avoiding as much as possible,
since it adds CI overhead, and defconfigs easily get churny due to
options moving around.

In some cases we do it once per SoC family (i.e. the i.MX defconfigs),
but we avoid it for products.


-Olof
