Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 95E052FA3CD
	for <lists+devicetree@lfdr.de>; Mon, 18 Jan 2021 15:57:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2405450AbhARO4q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jan 2021 09:56:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59670 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2405447AbhARO4X (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Jan 2021 09:56:23 -0500
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48052C061573
        for <devicetree@vger.kernel.org>; Mon, 18 Jan 2021 06:55:43 -0800 (PST)
Received: by mail-ed1-x530.google.com with SMTP id b21so9084089edy.6
        for <devicetree@vger.kernel.org>; Mon, 18 Jan 2021 06:55:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=09OWnlfXjcogYNVXeufU+daH3KK6SF0uozk3EDI2xc0=;
        b=Ev4ise7mk+YfkUErtOqsnwcDFyrMpCScNp5Psyu6jm+IHZGb5AwxdoGBoXxuFX61mn
         v2wNMdPzRA6DGQ8J8z4yP8QZBUdxpmSc05ndX3QWTS6XRi52tsQwLDjoAaMSXQn7zPLo
         PsvzPQv221Crp/lfaRs//J6sa5jk4TF72mUxit1qwocnPg4B8nnuhf0d4TM0t7cDiQ0F
         JcXBLfrE+G/mFv1ucW2UAxMuvZZbQWbewZ2DpHcPPDqqkxwgBbCEy2W4Wk+jD/4X+8xJ
         ficH1ht6iUzOuUBsJ5itApxU1eCDRDbauNKd7+kNvcME5dJbo+1Odl9v0dDFzTN1mZy/
         RBeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=09OWnlfXjcogYNVXeufU+daH3KK6SF0uozk3EDI2xc0=;
        b=BkwHH5SmbgkVIJLrwnvB7Mg0CqA+IWg8FTUK5vM31G05y/Uyzg90YtNUiI7+8xRrWg
         9ud1Cjg2/uExlMqHN+BrhPrH6M2IWAo8OmVnUuize0qBH1UNf3en46Cfew5uEFPgHQG7
         qttdUPMWi6fn9+9fUDUsZF8EF+1uzSkaIgafjM/Yy1DH1S2w/VT9NKoZDQtRX9M6ugFw
         4hJ8Q9N75TTYGXXvq16j6SxFOhJ1knHyJi4+/NuJzfgyUvMwSjYmGcYbS+IsYzWH36wD
         PbtFK0xEzBEetsXherD0pYirIubU3/aivNo4dcC6T+caQv728wx3Y6oG+nPj+BXT/cVF
         IUlA==
X-Gm-Message-State: AOAM532kB0sitTFCYKGPYq8fjiib07AEjn2tmzR1UzgK3Z+7XrDyVbmk
        xX9kxnUgQo2wtlADZfKSEBYXFdsw/pObqPV/c7ikOA==
X-Google-Smtp-Source: ABdhPJy+a9+KdfIbj4llUoSCWn/X0q20L19eACDpfVzZgzCAWDztQO7cPFmXXFG84iqiR4H9I/Tc4icao+FF/ozbz+k=
X-Received: by 2002:a50:d6dc:: with SMTP id l28mr19968203edj.105.1610981741946;
 Mon, 18 Jan 2021 06:55:41 -0800 (PST)
MIME-Version: 1.0
References: <20210111054428.3273-1-dqfext@gmail.com> <20210111054428.3273-3-dqfext@gmail.com>
In-Reply-To: <20210111054428.3273-3-dqfext@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 18 Jan 2021 15:55:30 +0100
Message-ID: <CACRpkdYA2fWF_1K+2aYoZnBAsm9H3=VHpeT4ZDU5sCdrOUWx=w@mail.gmail.com>
Subject: Re: [PATCH net-next 2/2] drivers: net: dsa: mt7530: MT7530 optional
 GPIO support
To:     DENG Qingfang <dqfext@gmail.com>
Cc:     Andrew Lunn <andrew@lunn.ch>,
        Vivien Didelot <vivien.didelot@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Vladimir Oltean <olteanv@gmail.com>,
        "David S. Miller" <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Sean Wang <sean.wang@mediatek.com>,
        Landen Chao <Landen.Chao@mediatek.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Russell King <linux@armlinux.org.uk>,
        netdev <netdev@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        =?UTF-8?Q?Ren=C3=A9_van_Dorst?= <opensource@vdorst.com>,
        Frank Wunderlich <frank-w@public-files.de>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jan 11, 2021 at 6:46 AM DENG Qingfang <dqfext@gmail.com> wrote:

> MT7530's LED controller can drive up to 15 LED/GPIOs.
>
> Add support for GPIO control and allow users to use its GPIOs by
> setting gpio-controller property in device tree.
>
> Signed-off-by: DENG Qingfang <dqfext@gmail.com>

Double-check the initial output conditions as indicated by
Russell, if you really want to be thorough, use an oscilloscope
but check the specs at least.

> +static u32
> +mt7530_gpio_to_bit(unsigned int offset)
> +{
> +       return BIT(offset + offset / 3);
> +}

So for offset 0..14 this becomes bits
0, 1, 2, 4, 5, 6, 8, 9, 10, 12  ... 18

What is the logic in this and is it what you intend?
Please add a comment explaining what the offset is supposed
to become for offsets 0..14 and why.

> +       gc->ngpio = 15;

And it really IS 15 not 16? Not that I know network equipment
very well...

Yours,
Linus Walleij
