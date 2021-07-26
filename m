Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1E6803D55DB
	for <lists+devicetree@lfdr.de>; Mon, 26 Jul 2021 10:50:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231728AbhGZIK2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jul 2021 04:10:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36156 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231805AbhGZIK0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Jul 2021 04:10:26 -0400
Received: from mail-il1-x135.google.com (mail-il1-x135.google.com [IPv6:2607:f8b0:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1C1FC061760
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 01:50:54 -0700 (PDT)
Received: by mail-il1-x135.google.com with SMTP id l11so8152376iln.4
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 01:50:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=etHnoGQzq47ZbynR6VywyxbslQdcHyhoH/zh/8FN3v4=;
        b=aIG5zAsePtKUiKEs+FQ2KuXU0hUSBthKszmmcGaxvZmMgRWvAOFZQt0BPPVtbshcpz
         PSrR2WA2Qg8v7Vv5UPSoesnLqCpcj8peq+o7vriSGh64BJMez+n8DFrpTcn68sbdSAzp
         WddMRXm8Usz/CiMQPwt4gk2JuAT1IUHM2SYwU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=etHnoGQzq47ZbynR6VywyxbslQdcHyhoH/zh/8FN3v4=;
        b=h2GbOSmIPrwYMrKmQQGRpXObX2fB5BUxEo7VNrRPGQIpTF79DJtSd+Q+9SvqeDmxPK
         JAVgrkgZixsx3aH2n3c4v0gj/Fo2lKue5+xjxYjctW/iHEMUbubdCotbyJvmm7K2cAug
         LSfNiOb+gFsrNDXrg1/67zeq6dYAg5KjSTVjzXuhQIe59Hzi5rEqbwtMqNsICdNBFo2O
         XOAOAsL+1VHT8ot4Bzl1PFplifYLVzpUHlPp2APPTruOIM8kepaGxWuQuMFnC4llL3C0
         yo7XL8n0/mW+KG93zJ7g7feJcEmXHNQjaJW0styZqf39REzpzt8UyfA/paQr8OFX64VB
         JW9A==
X-Gm-Message-State: AOAM5335pXOU//q9priGjCRty3ch516s7mXYcRtoeHkYMjfhrMqUEeVL
        uqSkxFzUpXLrwBYzIZ1+Q+swXW49N+P8L5vWxJLSEg==
X-Google-Smtp-Source: ABdhPJyf3HOQ4rIWmbymbwS4Lo1gx39HDWnmdLabEGO/SfTi3dLLNw40jleJ1klLdqzruzc0SrV4mCWJIyRwhVtTl2U=
X-Received: by 2002:a92:d251:: with SMTP id v17mr11970560ilg.283.1627289454063;
 Mon, 26 Jul 2021 01:50:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAGXv+5Ev4QU72cMqMW7sA=dijzh7-DCsfHY+Lmqd36uzg_7Nww@mail.gmail.com>
In-Reply-To: <CAGXv+5Ev4QU72cMqMW7sA=dijzh7-DCsfHY+Lmqd36uzg_7Nww@mail.gmail.com>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Mon, 26 Jul 2021 16:50:27 +0800
Message-ID: <CAJMQK-hH5HM5iN4q6UgUf8T5fwj+0oULKPw=XafYOPrki-aDkg@mail.gmail.com>
Subject: Re: arm64: dts: mt8183: Incorrect mediatek,pull-*-adv values
To:     Chen-Yu Tsai <wenst@chromium.org>
Cc:     Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Fabien Parent <fparent@baylibre.com>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>, linux-gpio@vger.kernel.org,
        Devicetree List <devicetree@vger.kernel.org>,
        Zhiyong Tao <zhiyong.tao@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 26, 2021 at 4:20 PM Chen-Yu Tsai <wenst@chromium.org> wrote:
>
> Hi,
>
> I was looking at MTK pinctrl stuff upstream, and it seems there are a few
> `mediatek,pull-*-adv` entries that have invalid values:
>
> arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi:
> mediatek,pull-down-adv = <10>;
> arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi:
> mediatek,pull-down-adv = <10>;
> arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi:
> mediatek,pull-down-adv = <10>;
> arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi:
> mediatek,pull-up-adv = <10>;
> arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi:
> mediatek,pull-down-adv = <10>;
> arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi:
> mediatek,pull-up-adv = <10>;
> arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi:
> mediatek,pull-down-adv = <10>;
> arch/arm64/boot/dts/mediatek/mt8183-pumpkin.dts:
>  mediatek,pull-down-adv = <10>;
> arch/arm64/boot/dts/mediatek/mt8183-pumpkin.dts:
>  mediatek,pull-down-adv = <10>;
> arch/arm64/boot/dts/mediatek/mt8183-pumpkin.dts:
>  mediatek,pull-down-adv = <10>;
> arch/arm64/boot/dts/mediatek/mt8183-pumpkin.dts:
>  mediatek,pull-up-adv = <10>;
> arch/arm64/boot/dts/mediatek/mt8183-pumpkin.dts:
>  mediatek,pull-down-adv = <10>;
> arch/arm64/boot/dts/mediatek/mt8183-pumpkin.dts:
>  mediatek,pull-up-adv = <10>;
>
> According to the bindings, the values should 0~3. <10> is probably a
> incorrect attempt at using binary representation, which is wrong. This
> probably leads to the pull-up/down getting disabled or ignored.
>
> Cound people still working on these two devices take a look?
>
Thanks for pointing this out. It's an incorrect value but 10=0b1010 so
the result is same as 2, since the driver test the value by checking
the last 2 bit. We should still fix this in dts.

>
> Regards
> ChenYu
