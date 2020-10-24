Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F05BD297E5B
	for <lists+devicetree@lfdr.de>; Sat, 24 Oct 2020 22:15:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1764323AbgJXUPg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 24 Oct 2020 16:15:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49840 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1764322AbgJXUPf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 24 Oct 2020 16:15:35 -0400
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com [IPv6:2a00:1450:4864:20::143])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52CD1C0613CE
        for <devicetree@vger.kernel.org>; Sat, 24 Oct 2020 13:15:35 -0700 (PDT)
Received: by mail-lf1-x143.google.com with SMTP id a9so6598748lfc.7
        for <devicetree@vger.kernel.org>; Sat, 24 Oct 2020 13:15:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5wwqybcMAeTHBxLPnyV0oRkvpUmejmKUQtHSno25xDo=;
        b=VwbH9eXq6ayZycTOlKJesKyCABThQIuEcCLs/e1W4uB3hbm8w7ZsBM8putwqWynXik
         14EaQTK8LPicSHDb8vj+SmuIhHwAqDbqDrlcrX87zEpS6P00QN0/ivRE2JZy2aRHy/5e
         qaNAvHBHQ2ofa6yseH/gocvZT6NicXjH2yn5U/QL0A10jMvZc+24crBi2THoiVWLmKBP
         +XJqofm43OLI2hUEbaDWKFs6trweM00wfyGJXQinu4HxZx3MQzEgTmapR+N9s8H1qg5p
         tKKPlTCYifmk7s7w7jn2O6WRLxdU5CZ42umITGnEtR/yjZX8EgAA+EARerunLYOzfpDi
         gylg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5wwqybcMAeTHBxLPnyV0oRkvpUmejmKUQtHSno25xDo=;
        b=WhMX0aGqCMxby/zfQfNWTcjBn1b3ed2ow311D0gVYcKtwKhrqm5TxJGAuw0nGiakG9
         5iNxQHFKkLzKgvLEVTdW9B3ksyAUarKBmrzUZlGqF3nRK9HTkXx+VzJ55r/SfySB/GNF
         HnZTkVfvWeBb46RCTaf/FLSMrI2dfbRIsAruZTaMqPxZJ9uhhsBZbreLuNZoc+kV4qNm
         /SwbjLACuseIfaRlklehG16JQxjo186P9ezb6B/qd42ki7Wg24UqkAjgB9DLBiQMVLJ2
         nE2XXlhSXLXQmb+ekDKDLLhLylfRHU421VyZPx0HFv51nQcfTxRanBLY9BBKAc3/niaD
         Lgkg==
X-Gm-Message-State: AOAM532SF/twtTIHDKrTYxknjIFn8bsiqsAgvM5dbuxInCtArA567RH5
        S2virBCxw6WyIAy5rgv1HNHc/4JvKAfAKDmrbi5ewfA+Aww=
X-Google-Smtp-Source: ABdhPJyo5IZC+I29I7mVYtd4lmy1erowtZAh9oahf2cHZbNpfjfoU8W7O62XY2WwioR4JVEv8BTsdybtBllPCXCBBqw=
X-Received: by 2002:ac2:4e90:: with SMTP id o16mr2864564lfr.251.1603570533664;
 Sat, 24 Oct 2020 13:15:33 -0700 (PDT)
MIME-Version: 1.0
References: <20201024201120.3582-1-geomatsi@gmail.com>
In-Reply-To: <20201024201120.3582-1-geomatsi@gmail.com>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Sat, 24 Oct 2020 17:15:22 -0300
Message-ID: <CAOMZO5C-mAq895jRSCBVytN-uc76P4cJa56d13VeFuN9LJkTLg@mail.gmail.com>
Subject: Re: [PATCH v3] arm: dts: imx6qdl-udoo: fix rgmii phy-mode for ksz9031 phy
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

On Sat, Oct 24, 2020 at 5:05 PM Sergey Matyukevich <geomatsi@gmail.com> wrote:
>
> Commit bcf3440c6dd7 ("net: phy: micrel: add phy-mode support for the
> KSZ9031 PHY") fixed micrel phy driver adding proper support for phy
> modes. Adapt imx6q-udoo board phy settings : explicitly set required
> delay configuration using "rgmii-id".
>
> Fixes: cbd54fe0b2bc ("ARM: dts: imx6dl-udoo: Add board support based
> off imx6q-udoo").
>
> Signed-off-by: Sergey Matyukevich <geomatsi@gmail.com>

Reviewed-by: Fabio Estevam <festevam@gmail.com>
