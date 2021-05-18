Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 90099386DE0
	for <lists+devicetree@lfdr.de>; Tue, 18 May 2021 01:46:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344579AbhEQXrw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 May 2021 19:47:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344569AbhEQXrv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 May 2021 19:47:51 -0400
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9AA2AC061573
        for <devicetree@vger.kernel.org>; Mon, 17 May 2021 16:46:33 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id c15so9296278ljr.7
        for <devicetree@vger.kernel.org>; Mon, 17 May 2021 16:46:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=bVEEpIXI/Y5CtVnRyxBQ3wjVOQ3Vlf0v5827celIsKo=;
        b=nMBqhSpQSNGHZUcZtE4vR9rjwvtGJDraTV1gmLxW1M85AMzZj0UzVm74oTMMebnUXQ
         WUBsl1vtJj18d0zmOJ/Ho4JD+GGT/lxzvAgQM3kQLTTz7THuWCxwFpSINd+DoeUIATeE
         lDNarF+k4qT0/7akXNOMqzx4n8ZM0zvQcuV5vwpUPzIcTtX2PgJZpHhermsa/S5P/wH3
         GiM4XuG5hqEo/bN9easQvihiBQ4ax8Nxh1K6JcWyJ01fE8YTj1yW1GnYxAx7EeB4ogfa
         zgfKczId40OPPuzodgNZt66+dl1nVRCGQuj6m69KMDcKLhgejMwCl+gTOL9cWO4YBriN
         /emg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bVEEpIXI/Y5CtVnRyxBQ3wjVOQ3Vlf0v5827celIsKo=;
        b=JMSURwilO9DkT4rwJ5o4D3U0k0+Q+5i3Gx2XcjitHIidqjX7nwx9CRMnFW3wkmOPFz
         jsIw+BhYhgmco9pGAlM2HJuzqPNg50sofEU2R0ZXlPbDuLIyUOaqSCBmEcQ3pFhpDOd2
         QuXYyxVByjxF2moL4CfAG6bo5jz6uSwrvAKyS0AVFEpY0uNbKPD9pzuORw3g7w5mbh+C
         l1fws6dWWVgXsPMBxhBIcZ4aKeFgJ5ezLWQeMWvsRVkyd6964kSSH8K7v8nU1t7Eq+R0
         au8KPS98H8/Zy+iruTI8Ozh5Ov4EB+KV9lOwnH3ycEwzWZvoLviWPLTC/38FTz+m3R5w
         0+Bg==
X-Gm-Message-State: AOAM533nrqM/7wu555vEWeEL98K59cFllROauzVXzZItoW6GxdSCxlEi
        VeWABnhFWCGCT1UyNOHquFGPN9FVPqXSian2mJGWpA==
X-Google-Smtp-Source: ABdhPJzt0OHOWOBh2f/7ip9SW9OpdwvzwD16NBHIqmNMbaI9JWSwPO/iXIy/XDXuqsOkAcaOFtHYons8j7cCqxQgO1Y=
X-Received: by 2002:a2e:90c7:: with SMTP id o7mr1613773ljg.368.1621295192148;
 Mon, 17 May 2021 16:46:32 -0700 (PDT)
MIME-Version: 1.0
References: <20210517193205.691147-1-clabbe@baylibre.com> <20210517193205.691147-5-clabbe@baylibre.com>
In-Reply-To: <20210517193205.691147-5-clabbe@baylibre.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 18 May 2021 01:46:20 +0200
Message-ID: <CACRpkdY3c4uvo1zbEgNW0meF-4P8be_nmoOEQAHP5V+GXgoG=A@mail.gmail.com>
Subject: Re: [PATCH 4/5] ARM: gemini: add device tree for edimax NS2502
To:     Corentin Labbe <clabbe@baylibre.com>
Cc:     Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Rob Herring <robh+dt@kernel.org>, SoC Team <soc@kernel.org>,
        Hans Ulli Kroll <ulli.kroll@googlemail.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Corentin,

this is looking nice! Just one thing:

On Mon, May 17, 2021 at 9:32 PM Corentin Labbe <clabbe@baylibre.com> wrote:

> The edimax NS2502 is a NAS box running a SL3516 SoC.
>
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>

> +&flash {
> +       status = "okay";
> +       /* 8MB of flash */
> +       reg = <0x30000000 0x00800000>;

No pin control setting? I guess it may work but this doesn't hurt
(I think):

    pinctrl-names = "enabled", "disabled";
    pinctrl-0 = <&pflash_default_pins>;
    pinctrl-1 = <&pflash_disabled_pins>;

> +       partitions {
> +               compatible = "fixed-partitions";
> +               #address-cells = <1>;
> +               #size-cells = <1>;
> +
> +               partition@0 {
> +                       label = "RedBoot";
> +                       reg = <0x00000000 0x00020000>;
> +                       read-only;
> +               };
> +               partition@20000 {
> +                       label = "kernel";
> +                       reg = <0x00020000 0x00700000>;
> +               };
> +               partition@720000 {
> +                       label = "VCTL";
> +                       reg = <0x00720000 0x00020000>;
> +                       read-only;
> +               };
> +               partition@740000 {
> +                       label = "CurConf";
> +                       reg = <0x00740000 0x000a0000>;
> +                       read-only;
> +               };
> +               partition@7e0000 {
> +                       label = "FIS";
> +                       reg = <0x007e0000 0x00010000>;
> +                       read-only;
> +               };
> +       };
> +};

Is the FIS broken since you hardcode the partitions?

Doesn't this work:

partitions {
    compatible = "redboot-fis";
    /* Eraseblock at 0x7e0000 */
    fis-index-block = <0xfc>;
};

(Needs CONFIG_MTD_REDBOOT_PARTS)

Yours,
Linus Walleij
