Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BD3DD2F4A23
	for <lists+devicetree@lfdr.de>; Wed, 13 Jan 2021 12:29:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726841AbhAML1n (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jan 2021 06:27:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728408AbhAML1c (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Jan 2021 06:27:32 -0500
Received: from mail-vs1-xe2d.google.com (mail-vs1-xe2d.google.com [IPv6:2607:f8b0:4864:20::e2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0CD4EC061385
        for <devicetree@vger.kernel.org>; Wed, 13 Jan 2021 03:26:11 -0800 (PST)
Received: by mail-vs1-xe2d.google.com with SMTP id z16so911830vsp.5
        for <devicetree@vger.kernel.org>; Wed, 13 Jan 2021 03:26:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=j1lIKrnf+0plD+PksatIFoCdGuK2fSd0EGescQqhyGs=;
        b=K3MxamXk3tXzqcNFwUcVLufV8kmsNO7yKLcMzrGQiJJ898xQADWOveJFZLejNRWuU4
         rFoGNgdXUGGnerKSqjGuH2v/TtYb46Q4VuIURia+qMI2VhzD41JluLTFIl8/LXOClymb
         8vqQXCwjbsBWHul/XGcJJ6SPVH1qAZewUQ3Tf5YwaU4innDDAsOZMxt61PeO/ByIV5hx
         QVuaRB7G61AwHtK9Bgrpt43IIASOsHJ9ms6JgJs3AXTI1CJRpAMLyYE69FWxvC+cVHdM
         l6VnSi+LZaf4s+xZ9Qukzl/WJMmWPK0x3VuMgjLGMWRB3+CYBiTml4v1ymGjT+tr/VQt
         ksXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=j1lIKrnf+0plD+PksatIFoCdGuK2fSd0EGescQqhyGs=;
        b=A9zWyMj79n70KqlBnk8oAGs2frPRFSPW6ufT9rl5VpuIM3X+TSKUasN655BfJa8ivb
         qwu+NCINcDBI5TOWLNp718af4OhgTPRofbVIg+gw57Zb0latA5Wk/Tz/IOyWvhDBNBl8
         sdXFPeajSdLKzkCvKxNivh6P7xgj7IgIor3Cfo81CZB5StGi6mmazu4fhVGMLh1C5eGl
         n4NjEP168Lmx0xmTPNUf+p+46fx+q5u3jH6Ibe8WUy/4yvgvRo2/nCKcAxgUScrGZysB
         vv6QFSgqQ/jyrGMozt99b8Gfp1eHE8B5pMUIjApF9Cxb0+8GfQykUlhVJMKiraWVHhAO
         3o4Q==
X-Gm-Message-State: AOAM530TAlJvgIya0m1fpEktwaNW6chQbR3bPajnYdoUOEthBrb0jvZ8
        zxv1aDmUC5VZebv7v2oBbH/x4Xz9w0RIOu76ZR4VTw==
X-Google-Smtp-Source: ABdhPJwD5OrgvzjHkCxm0gBesiPBt9PDPQTF1neqV4QbmdB9EPgSBSGUxrfZy1KlCQPJmiAEnct4G18QUQihnQRWe2I=
X-Received: by 2002:a67:70c6:: with SMTP id l189mr1445632vsc.34.1610537170340;
 Wed, 13 Jan 2021 03:26:10 -0800 (PST)
MIME-Version: 1.0
References: <20210112094655.12274-1-kostap@marvell.com>
In-Reply-To: <20210112094655.12274-1-kostap@marvell.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Wed, 13 Jan 2021 12:25:33 +0100
Message-ID: <CAPDyKFr+4kbFsEJ6p77bP+4M+1g9Z49awqMUZLdG0WEBQ4AccA@mail.gmail.com>
Subject: Re: [PATCH v3 0/4] update xenon controller properties in CN913X
To:     Kostya Porotchkin <kostap@marvell.com>
Cc:     "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Adrian Hunter <adrian.hunter@intel.com>,
        DTML <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Marcin Wojtas <mw@semihalf.com>, jaz@semihalf.com,
        Nadav Haklai <nadavh@marvell.com>, bpeled@marvell.com,
        stefanc@marvell.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 12 Jan 2021 at 10:47, <kostap@marvell.com> wrote:
>
> From: Konstantin Porotchkin <kostap@marvell.com>
>
> The following patches series updates Xenon SDHCI controller properties
> for usage with Marvell Armada CN913X SoC family.
>
> - v2:
> * rebase on top of "next" branch of linux/kernel/git/ulfh/mmc.git
>
> - v3:
> * separate between driver and DTSI changes for new compatibility
>    string
> * add my signed-off-by entry to all patches
>
> Konstantin Porotchkin (1):
>   arm64: dts: change AP807 SDHCI compatibility string
>
> Marcin Wojtas (3):
>   dt-bindings: mmc: xenon: add AP807 compatible string
>   mmc: xenon: add AP807 compatible string
>   arm64: dts: cn913x-db: enable MMC HS400
>
>  .../devicetree/bindings/mmc/marvell,xenon-sdhci.txt          | 1 +
>  arch/arm64/boot/dts/marvell/armada-ap807.dtsi                | 5 +++++
>  arch/arm64/boot/dts/marvell/cn9130-db.dts                    | 2 ++
>  drivers/mmc/host/sdhci-xenon.c                               | 1 +
>  4 files changed, 9 insertions(+)
>
> --
> 2.17.1
>

Patch1 and patch 2 applied for next (I leave the other for arm soc), thanks!

Kind regards
Uffe
