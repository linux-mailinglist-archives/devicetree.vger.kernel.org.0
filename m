Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 707B1831C4
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2019 14:49:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731093AbfHFMtI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Aug 2019 08:49:08 -0400
Received: from mail-lf1-f67.google.com ([209.85.167.67]:46845 "EHLO
        mail-lf1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731053AbfHFMtI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Aug 2019 08:49:08 -0400
Received: by mail-lf1-f67.google.com with SMTP id z15so56730302lfh.13
        for <devicetree@vger.kernel.org>; Tue, 06 Aug 2019 05:49:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=dE5JuDdEA/pQScNByPn3VC+2psga/+uhIp5+6Lpb/IU=;
        b=CfdkpelcPzvwnG1MdqcjcMyI02MUVnNU6luZnIfMDPb2TDvDh/PMhfidkJDiDm5vjw
         TSvW1XIVaisosJn9owSOQNrRfN01cs41uzJMTlM1VsZX0cW6SBzNzVZKo2WGsc7xHA/y
         52dUv8uwgMs+ujW6Xv1T48Zb1XvjfjCWbXCG46cuulJ68eqIsTcpjWkGSqGqJIk/zhKt
         FmDBpMi8Fdr7o1vGrpM/XkRced54b6WwHbfhJBaJgtO7Nxsv4XjRHbsliAGTfPn5nSRH
         4P0r6a4S4hwn0ipXQEhPdnBvxTjgs3aWXnX3Ob+3gbZvc/hC66HkM8kC7oWs5VCWX1de
         wM1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=dE5JuDdEA/pQScNByPn3VC+2psga/+uhIp5+6Lpb/IU=;
        b=bum2PFC1hHOOhWktG1gnt6RzctI8QkN8GP7UsHKQu2qwwPinzMc4DWCDIkBoohYHLY
         Hcb5vXefu9rUAoBZsdWOFXftlV78t66Hc/y9TpWDchBrNrWN22pZhS4uvqfe4LX9eWmK
         1cFtOcfVY7jHZrxmhjsr3Uug2Wt26O6i0asG+PNwFD+KFXWN2SSayJMeemkGoc1bkcYl
         DHsHuCUOVgMO7XHY8HF2g+AQJsChIiSG3SWUq9XDfTEbIK7eJo57gDAgY484glVsqyX+
         L6BLpCmL7q19CGB/9D5iWooV/UoiY+utGkWn/2w2kzXxzn39uhcn9LhgoYvoBZTfQ/sq
         8tcQ==
X-Gm-Message-State: APjAAAWuNAKXAJhShaJUX9zMXPcr084r3Jjii9Gh04HhZKt2hY0WXPgA
        aVfSiDCQal++zdAGb9DKV1aAkGzRGdi+MpqDeof1gQ==
X-Google-Smtp-Source: APXvYqw0Wl1Q08gOWskV45KZ1hlu4YydCL1Uqb2v8Dojvc+PSoMPhvxKIqVPTrhNLCBWwALS8FyzMEW+/49Nw/ggfeM=
X-Received: by 2002:ac2:5dd6:: with SMTP id x22mr2349039lfq.92.1565095745984;
 Tue, 06 Aug 2019 05:49:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190806024923.34355-1-hui.song_1@nxp.com>
In-Reply-To: <20190806024923.34355-1-hui.song_1@nxp.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 6 Aug 2019 14:48:54 +0200
Message-ID: <CACRpkdZ7hW+hSC41JqjqfLrwWvRY80+_8sXC89OhN7SwVtU7MA@mail.gmail.com>
Subject: Re: [PATCH v2] gpio: mpc8xxx: Add new platforms GPIO DT node description
To:     Hui Song <hui.song_1@nxp.com>
Cc:     Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Hui,

On Tue, Aug 6, 2019 at 4:59 AM Hui Song <hui.song_1@nxp.com> wrote:

> From: Song Hui <hui.song_1@nxp.com>
>
> Update the NXP GPIO node dt-binding file for QorIQ and
> Layerscape platforms, and add one more example with
> ls1028a GPIO node.
>
> Signed-off-by: Song Hui <hui.song_1@nxp.com>
(...)
> +Example of gpio-controller node for a ls1028a SoC:
> +
> +gpio1: gpio@2300000 {
> +       compatible = "fsl,ls1028a-gpio","fsl,qoriq-gpio";

What you need to do is to add "fsl,ls1028a-gpio" to the list
of compatible values at the top of the file "Required properties".
Please send a v2 with this fixed.

Yours,
Linus Walleij
