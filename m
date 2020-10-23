Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 25BB12978BB
	for <lists+devicetree@lfdr.de>; Fri, 23 Oct 2020 23:15:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1755638AbgJWVPt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Oct 2020 17:15:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1755437AbgJWVPs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Oct 2020 17:15:48 -0400
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com [IPv6:2a00:1450:4864:20::244])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 519C7C0613CE
        for <devicetree@vger.kernel.org>; Fri, 23 Oct 2020 14:15:48 -0700 (PDT)
Received: by mail-lj1-x244.google.com with SMTP id y16so3023712ljk.1
        for <devicetree@vger.kernel.org>; Fri, 23 Oct 2020 14:15:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=36ClHCtbNzYLkVkN7WO6TF1zC8sgA6iJ5OrPCoK2Ads=;
        b=bl7j8qiu48uxZBwFQHD5l1DRaTQXlmYdVSeCG2azGIFtXYpIBYuG4ej/Bf8QXpygii
         Z17+6tW5NcPe1A29fJCnUHbo5LjxpKwqVb0FZDGquFVRNOUsxNWIzzOEtSGZAR1+mzoR
         bxqpWEMribc57hiZbs+8EbkGv9Uhrwf62zgnRo8juripi6e0gpa/NquMsU5mL5DfIc+w
         kG+05FbLKajhdqSZbE/iJRWSxoPOcumb/P232so67RNgRu39ZHz/5Nv5ZDir/cudjn1y
         kEj169wLzF2PwhzNsz8kzHXYythZku5hP/X6N+mZqmfUTfQRgYXFppuIyOfjLYjDV9wi
         lMYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=36ClHCtbNzYLkVkN7WO6TF1zC8sgA6iJ5OrPCoK2Ads=;
        b=Etji1nd613AXhNOSns2WheKzP96ZqjebnOeCb02CGb+ebLSiAND2s8gx4DMN/b/l5r
         exUdnOyyodn2PBLllQB2KbbTjLsGi/lPZ3yAvyHt98M81d0jERQ4eknjoFqv3qsR326i
         SwPlEGT8TIQhpjGW8mc0IyBHlyAeVeVgljyQYsenGOigqF8zOlhaR1p5hKJBjuctv67h
         tTNTgC8ExLiAMToKJ6HyjprwhVYsXz+Jm6ZF8Mk25k9S/3nYqYAS/bXM5fLkenrifELq
         JdB+G7Esd873DJzUf1GH9dJgjsKaHVfn1bErV01naJIJx04komdQTwchTp+/en4mvvN7
         DAcg==
X-Gm-Message-State: AOAM533/N8O7wNXv5stfRbAYWZsv5PNxSqrvbBYLsWLPU5qwsGE7kDE3
        MxCW/2M7IW2afEkRbRIrLYjh5vNaKMrEKeCBgVBMluzo/8Ccew==
X-Google-Smtp-Source: ABdhPJwb98INrKXyfY9P9KZyp3HKkedk1+SW92F4KXsZr3QmtIQBYFpJ4ggPHDURScr524sTlnJUYojV8TpnLD3udcw=
X-Received: by 2002:a2e:99ca:: with SMTP id l10mr1471481ljj.218.1603487746800;
 Fri, 23 Oct 2020 14:15:46 -0700 (PDT)
MIME-Version: 1.0
References: <20201020193359.6075-1-geomatsi@gmail.com>
In-Reply-To: <20201020193359.6075-1-geomatsi@gmail.com>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Fri, 23 Oct 2020 18:15:35 -0300
Message-ID: <CAOMZO5ABDX0FaaHxP6iX8tYi6_yt2Y=N+A6bA3HOt5vpC2ce3g@mail.gmail.com>
Subject: Re: [PATCH v2] arm: dts: imx6qdl-udoo: fix rgmii phy-mode for ksz9031 phy
To:     Sergey Matyukevich <geomatsi@gmail.com>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Sergey,

On Tue, Oct 20, 2020 at 4:28 PM Sergey Matyukevich <geomatsi@gmail.com> wrote:
>
> Commit bcf3440c6dd7 ("net: phy: micrel: add phy-mode support for the
> KSZ9031 PHY") fixed micrel phy driver adding proper support for phy
> modes. Adapt imx6q-udoo board phy settings accordingly: explicitly
> set required delay configuration using "rgmii-id".
>
> Fixes: bcf3440c6dd7 ("net: phy: micrel: add phy-mode support for the KSZ9031 PHY")

This commit exposed the issue, but the Fixes tag should be the commit
that introduced Ethernet support on udoo board.

This is similar to the fix in 0672d22a1924 ("ARM: dts: imx: Fix the
AR803X phy-mode").
