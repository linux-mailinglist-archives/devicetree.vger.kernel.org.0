Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1DD163D3B06
	for <lists+devicetree@lfdr.de>; Fri, 23 Jul 2021 15:23:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233037AbhGWMnL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Jul 2021 08:43:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48524 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235072AbhGWMm4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Jul 2021 08:42:56 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1B8FC06175F
        for <devicetree@vger.kernel.org>; Fri, 23 Jul 2021 06:23:28 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id k14-20020a05600c1c8eb02901f13dd1672aso4215886wms.0
        for <devicetree@vger.kernel.org>; Fri, 23 Jul 2021 06:23:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=ZkYDta2fk/bU/8g67PbA751XL8H00snBSaWg+n28pmQ=;
        b=i3ChRDvjrvOCnGIsTtIulpn/RRAXEjWknfRLq0o/bLpJzYLiR5KgOlUgbFOhvSUBiv
         tq1xHOIe4NTqIIF1hzW3svoh1a7gnEsJn+6c3+88KIIh+X48kjMGU/3mN/7k2kkVjG52
         qtfxGfChDXyNGASf1rS7YSJoQMqmB7ocO1T0oA24tBrZbEuq5189WYli3kyaeutBXgF9
         EuJOcCekneVN3LbGza0++PLIAwXyo6aHKxcRbdQAmtbE81+imS67BkGqpsfSeP8qY80X
         D8rIs+IRcqmWPR2FkcXHa7mneU9k3EX8hZ5lABUlPkXn93LqMIyPe7OVLbCzVjFKFCBT
         djXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=ZkYDta2fk/bU/8g67PbA751XL8H00snBSaWg+n28pmQ=;
        b=i3MN3HGd0+g1tonBeFDv5SgUEOnQyw1juQ7rPViEvpgLEBg0ppimgaQtxYlTdRz9GZ
         KFS3UkUWJSVUI60taDueBSlHZ5isa32t/fUs5RVePbLXI2Y3iMhkkKFwinylouaF7y4K
         63DQm/oVUZvtYQEZgs2e1Z+fS4a35OFGz1VfmjyzDR8KB2m1kqhePjMkCjtcOcmHHtKs
         SAaCUo6rxuMlzQs867h9m6xCtd+gpkN4bmww0sWi31qZT6c1JfLZtQyscsiwxDvqt+Mn
         9GCo6Hnb+VBqZw/g0bUsmrvHN5Y7C9wuLNtzH+G5mU1PV6zxb8EgHLuI7ibqXHrAwCp7
         1r7w==
X-Gm-Message-State: AOAM531OG9/L38hfwo6Sau+Jvx29Fkv5bDqoa6nWdqEo6wayfLV5kLG+
        GPv8ag17wgbPCWmBY+hB4DhUYQ==
X-Google-Smtp-Source: ABdhPJyQdcRO+wkAR+Y+fC0Zhu1kxgf6fMJoYKzGwFiLSEFala+gnxw786uInQreYNyv1cNp0r019g==
X-Received: by 2002:a05:600c:4f96:: with SMTP id n22mr4482762wmq.137.1627046607228;
        Fri, 23 Jul 2021 06:23:27 -0700 (PDT)
Received: from localhost ([2a01:cb19:826e:8e00:4e65:8d4e:279c:96ff])
        by smtp.gmail.com with ESMTPSA id c125sm6009522wme.36.2021.07.23.06.23.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jul 2021 06:23:26 -0700 (PDT)
From:   Mattijs Korpershoek <mkorpershoek@baylibre.com>
To:     Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Fabien Parent <fparent@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>,
        linux-input@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/4] input: MT6358 PMIC button support
In-Reply-To: <20210702134310.3451560-1-mkorpershoek@baylibre.com>
References: <20210702134310.3451560-1-mkorpershoek@baylibre.com>
Date:   Fri, 23 Jul 2021 15:23:25 +0200
Message-ID: <87eebp88qa.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dear maintainers,

Gentle ping for this series

Mattijs Korpershoek <mkorpershoek@baylibre.com> writes:

> The MediaTek MT6358 PMIC has support for two buttons: PWR and HOME.
>
> The interrupt logic is a little different than other PMICs from the
> same family:
> for MT6323 and MT6397, we have one interrupt source per button
> * for MT6358, we have two interrupts lines per button: the press and
> * release interrupts are distinct sources.
>
> Changes since original v2 at [1]:
> * added 4th patch with device tree enable
> * cover letter title prefixed with 'input'
>
> This series depends on [2]
>
> [1] https://lore.kernel.org/r/20210512152648.39961-1-mkorpershoek@baylibre.com
> [2] https://lore.kernel.org/r/20210506094116.638527-1-mkorpershoek@baylibre.com
The MFD dependency has been merged in linux-next.

>
> This has been tested with evtest on mt8183-pumpkin
> using for-mfd-next as base tree.
>
> Mattijs Korpershoek (4):
>   Input: mtk-pmic-keys - use get_irq_byname() instead of index
>   dt-bindings: input: mtk-pmic-keys: add MT6358 binding definition
>   Input: mtk-pmic-keys - add support for MT6358
>   arm64: dts: mt6358: add mt6358-keys node
>
>  .../bindings/input/mtk-pmic-keys.txt          |  5 +-
>  arch/arm64/boot/dts/mediatek/mt6358.dtsi      | 12 ++++
>  drivers/input/keyboard/mtk-pmic-keys.c        | 56 +++++++++++++++++--
>  3 files changed, 68 insertions(+), 5 deletions(-)
>
>
> base-commit: 495fb48dbd9bcbe15859e086edd24519a6bd2961
> -- 
> 2.27.0
