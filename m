Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D7CA637177B
	for <lists+devicetree@lfdr.de>; Mon,  3 May 2021 17:05:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230049AbhECPGI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 May 2021 11:06:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230116AbhECPGH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 May 2021 11:06:07 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3BC9C061761
        for <devicetree@vger.kernel.org>; Mon,  3 May 2021 08:05:13 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id l4so8335248ejc.10
        for <devicetree@vger.kernel.org>; Mon, 03 May 2021 08:05:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=references:user-agent:from:to:cc:subject:in-reply-to:message-id
         :date:mime-version;
        bh=kkLHrS0ofkE+YRgADp77s8W+PKn0GKptcBr+B7OS3xA=;
        b=dSvcMix4NZkdXHKFvMmFcsvN8T+XeE4OhpbGEP9vYPvXYf+Wp0r5/hj4/TbToYCGbC
         JH4S19mCIJcLHiN9Wf++jtFjQW8B7LBqG3QVQDhH8VBDHpHoz6qWJwQZVxfHTR4vdwtO
         CCWkCYV6I1e7B2BClyWRuLi0P0RL//c5+7SsdLHtXMmc0MyYE+2b+Yud9HgTEOfZtnyo
         a5kf+mbUbaSr0Jd9mVLdWVKvIbj+wbhZOXCacSRAdwzUrlqOeMIduH0sXQJ82s+5oJ3T
         mOMcA+XTmE1a1O5d/xuF+2nMrBcOsm4vLvTuAxj2IrSzO57ATvc5znWOisq5iFmV5v/u
         pF5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:references:user-agent:from:to:cc:subject
         :in-reply-to:message-id:date:mime-version;
        bh=kkLHrS0ofkE+YRgADp77s8W+PKn0GKptcBr+B7OS3xA=;
        b=dH2kP5UBZsI925JDwgly/W9GhCaBGYXklD2Rw6SfAY5i37Z7JktjRv+qE5A74qPboW
         +E9vZeSL+Y0JwC44r/8u35PTjP3SUreO0VSkI61NtM84+1fw4UDJUWXo+GuDcxJdKTY0
         nUjqHj5wxS1ZkVz7ID8hRWMBERL7iuM019bvEJz1l5+Evl7nKpJSBqHR71ye5ft4SMn8
         xc5ZI+IoyMWMna53SOuHeEkRm7lSBY4VxXlSKFD4bTS2ml5B0ocAHm7FrUyRs0iFkwZE
         oO0FY49H1nlEmhufldnDxs7VuGqeWF1klnejM94IR92zQ+W0nOm7P0d4nDa48BlzJYpI
         lO1Q==
X-Gm-Message-State: AOAM531XLUKM8L464lPNHodnQTYxbG5d3H9GoOf5hh65Dk5WogwbgN8F
        73P0zJ4betdWeIjwY90pk8qzoA==
X-Google-Smtp-Source: ABdhPJwj8qmkT3Q16/vnKVoyTOiBJaX3gt9H3JD2BovwlpoOZV4hL7hxJcc2ZF6irUXO0VgADStxLQ==
X-Received: by 2002:a17:907:a076:: with SMTP id ia22mr17033044ejc.233.1620054312349;
        Mon, 03 May 2021 08:05:12 -0700 (PDT)
Received: from localhost (82-65-169-74.subs.proxad.net. [82.65.169.74])
        by smtp.gmail.com with ESMTPSA id z7sm3534527edi.39.2021.05.03.08.05.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 May 2021 08:05:11 -0700 (PDT)
References: <20210503145503.1477-1-linux.amoon@gmail.com>
User-agent: mu4e 1.4.15; emacs 27.1
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Anand Moon <linux.amoon@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCHv1 0/9] Added Audio and HDMI power domain for Amlogic SoC
In-reply-to: <20210503145503.1477-1-linux.amoon@gmail.com>
Message-ID: <1jsg336eoo.fsf@starbuckisacylon.baylibre.com>
Date:   Mon, 03 May 2021 17:05:11 +0200
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Mon 03 May 2021 at 16:54, Anand Moon <linux.amoon@gmail.com> wrote:

> Patch series add Audio and Hdmi power domain for Amlogic SoC.
>
> Tested on GXBB - Odroid C2
>           SM1  - Odroid C4
>           G12B - Odroid N2
> -Anand
>

AFAIK, the audio power domain is a no-op on the g12/sm1. At least this
is what we've been told by AML. Unless this solves something, I don't
think it should be done at all.

> Anand Moon (9):
>   soc: amlogic: meson-ee-pwrc: Add audio power domain Meson g12a and
>     g12b SoCs
>   arm64: dts: amlogic: Add audio power domain for g12a and g12b
>   soc: amlogic: meson-ee-pwrc: Add hdmi power domain Meson g12a SoCs
>   arm64: dts: amlogic: Add hdmi power domain for g12a and g12b
>   soc: amlogic: meson-ee-pwrc: Add hdmi power domain Meson sm1 SoCs
>   arm64: dts: amlogic: Add audio power domain for sm1 SoC
>   arm64: dts: amlogic: Add hdmi power domain for sm1 sbc
>   soc: amlogic: meson-ee-pwrc: Add hdmi power domain Meson gxbb and gxl
>     SoCs
>   arm64: dts: amlogic: Add hdmi power domain for gxbb and gxl
>
>  arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts    |  2 ++
>  arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts      |  1 +
>  arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts   |  2 ++
>  arch/arm64/boot/dts/amlogic/meson-g12b-gsking-x.dts  |  1 +
>  .../arm64/boot/dts/amlogic/meson-g12b-gtking-pro.dts |  1 +
>  arch/arm64/boot/dts/amlogic/meson-g12b-gtking.dts    |  1 +
>  .../arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi |  2 ++
>  arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts |  1 +
>  arch/arm64/boot/dts/amlogic/meson-g12b-w400.dtsi     |  1 +
>  .../boot/dts/amlogic/meson-gx-libretech-pc.dtsi      |  1 +
>  arch/arm64/boot/dts/amlogic/meson-gx-p23x-q20x.dtsi  |  1 +
>  arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts |  1 +
>  .../boot/dts/amlogic/meson-gxbb-nexbox-a95x.dts      |  1 +
>  arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts  |  1 +
>  arch/arm64/boot/dts/amlogic/meson-gxbb-p20x.dtsi     |  1 +
>  arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi |  1 +
>  arch/arm64/boot/dts/amlogic/meson-gxbb-wetek.dtsi    |  1 +
>  .../dts/amlogic/meson-gxl-s805x-libretech-ac.dts     |  1 +
>  arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts |  1 +
>  arch/arm64/boot/dts/amlogic/meson-gxl-s905d-p230.dts |  1 +
>  .../boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts  |  1 +
>  .../dts/amlogic/meson-gxl-s905x-libretech-cc-v2.dts  |  1 +
>  .../dts/amlogic/meson-gxl-s905x-libretech-cc.dts     |  1 +
>  .../boot/dts/amlogic/meson-gxl-s905x-nexbox-a95x.dts |  1 +
>  arch/arm64/boot/dts/amlogic/meson-gxl-s905x-p212.dts |  1 +
>  .../arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts |  1 +
>  arch/arm64/boot/dts/amlogic/meson-gxm-nexbox-a1.dts  |  1 +
>  arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi    |  2 ++
>  arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts     |  2 ++
>  drivers/soc/amlogic/meson-ee-pwrc.c                  | 12 ++++++++++++
>  include/dt-bindings/power/meson-g12a-power.h         |  2 ++
>  include/dt-bindings/power/meson-gxbb-power.h         |  1 +
>  include/dt-bindings/power/meson-sm1-power.h          |  1 +
>  33 files changed, 50 insertions(+)

