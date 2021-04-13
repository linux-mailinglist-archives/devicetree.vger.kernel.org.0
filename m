Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9073135DA13
	for <lists+devicetree@lfdr.de>; Tue, 13 Apr 2021 10:29:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229914AbhDMI3v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Apr 2021 04:29:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229896AbhDMI3r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Apr 2021 04:29:47 -0400
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com [IPv6:2607:f8b0:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 03928C061756
        for <devicetree@vger.kernel.org>; Tue, 13 Apr 2021 01:29:24 -0700 (PDT)
Received: by mail-pg1-x52f.google.com with SMTP id f29so11407113pgm.8
        for <devicetree@vger.kernel.org>; Tue, 13 Apr 2021 01:29:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=xIRFgbgJI0avBUCCEiD/4GGK39mTH+z4x0E9i17yICc=;
        b=KsBqPwIzxEERTMv9YbFd5DK4k0IWdG0zYg0AIOD4ramDWOwjjpaHMRZ8r7zqtOFu1s
         BtpuA4jMX0CSOeND9H2+crkj/+ItRiqlX5zbhUDKXkdyq9ZFThfTsn0zP7EE1UceUrcD
         d4RhTQvq94uqOOjbomw03G5EfrdHMSiA71QlEkCQUEHtp7n1GMzobwUgldpFRkGQkQ5E
         8580Xc1hVk30MPPmo7/wKS7bDWKYsKKvB6q7ZyEaV2XuL4KQ4pFP48BGjYWq3z1Pu5gC
         Vy4cRb2zlrH7ll92cBfmvNT5t3Fmc52ha6/LQGxCwbKLWOqnWoGFcXbLXgW0JkF8bxLB
         VsCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xIRFgbgJI0avBUCCEiD/4GGK39mTH+z4x0E9i17yICc=;
        b=d9dtbQU8Avzbj1dqKUFPEn3nNnfLE5bO/i1ckd7uHUlrzVe8dajZOm2rz5/1p6LfAF
         wUhCXa7PkDFaghbTt1AdyNsV3XfeOFz5FJxv+hgiiOWlQicDRoR4qxHPYrx/esdLyLH7
         Q1ZZmfZ1hL5ftauRqScdaM2hlCv8TX1Yc1RJB8TnCFVg1oGvDLZU4B1ajosSTixJeZmt
         VrujeAa7cP4UJ7GbcffInsB83CW0M0Fi2ls6Ipmyyn9NRed3mr4IroTW06+YawJ0E8ps
         f6gLB+8oOuLYxELNtaqa9C65bDwffzzbZKPzohCY6AItxOpitHOi5BdONQvwoFIv1S+Z
         nKmA==
X-Gm-Message-State: AOAM532YdRp7dPcEscjKOq8Rj4nEhTRhatAuKVZeHBwtvEvrt44E9Tu3
        0Pg24FJQXP4XezmjVtTjeSeAorZRCw+o67BsX9Qa5w==
X-Google-Smtp-Source: ABdhPJxxTx2mlrpT069JMOM2uSKY6V/riYaDus0gsTM/kV5aEQplb2gd+Rt0HMWsBG207SNvmNAcit1GAlrzw56DCnM=
X-Received: by 2002:a65:5c42:: with SMTP id v2mr31548252pgr.339.1618302564473;
 Tue, 13 Apr 2021 01:29:24 -0700 (PDT)
MIME-Version: 1.0
References: <1618078449-28495-1-git-send-email-pthombar@cadence.com>
In-Reply-To: <1618078449-28495-1-git-send-email-pthombar@cadence.com>
From:   Robert Foss <robert.foss@linaro.org>
Date:   Tue, 13 Apr 2021 10:29:13 +0200
Message-ID: <CAG3jFyufvN8j9seSETnbrq9vkoZY7Xw_b7Lm7gUZhPd5LifH+Q@mail.gmail.com>
Subject: Re: [PATCH v6 0/2] enable HDCP in Cadence MHDP bridge driver
To:     Parshuram Thombare <pthombar@cadence.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>, nikhil.nd@ti.com,
        kishon@ti.com, sjakhade@cadence.com, mparab@cadence.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Merged series.

https://cgit.freedesktop.org/drm/drm-misc/commit/?id=6a3608eae6d33a478a29348eb5e9ca330a528ae6

On Sat, 10 Apr 2021 at 20:14, Parshuram Thombare <pthombar@cadence.com> wrote:
>
> This patch series enables HDCP in Cadence MHDP DPI/DP bridge driver.
>
> Changes since v1:
> - Move sapb reg block right after apb reg block
> - Corresponding changes in binding and example
>
> Changes since v2:
> - Revert reg resource sequence in binding and
>   use resource mapping by name
> - Remove hdcp_config from binding and use
>   DRM HDCP Content Type property to select
>   HDCP version
>
> Changes since v3:
> - Fix kernel test robot warning
>
> Changes since v4:
> - Fix binding issue
>
> Changes since v5:
> - Maintain backward compatibility of driver on platforms
>   without SAPB port by allowing driver to continue without
>   HDCP feature instead of returning error
>
>
> Parshuram Thombare (2):
>   dt-bindings: drm/bridge: MHDP8546 bridge binding changes for HDCP
>   drm: bridge: cdns-mhdp8546: Enable HDCP
>
>  .../display/bridge/cdns,mhdp8546.yaml         |  15 +-
>  drivers/gpu/drm/bridge/cadence/Makefile       |   2 +-
>  .../drm/bridge/cadence/cdns-mhdp8546-core.c   | 128 +++-
>  .../drm/bridge/cadence/cdns-mhdp8546-core.h   |  22 +
>  .../drm/bridge/cadence/cdns-mhdp8546-hdcp.c   | 570 ++++++++++++++++++
>  .../drm/bridge/cadence/cdns-mhdp8546-hdcp.h   |  92 +++
>  6 files changed, 812 insertions(+), 17 deletions(-)
>  create mode 100644 drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-hdcp.c
>  create mode 100644 drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-hdcp.h
>
> --
> 2.25.1
>
