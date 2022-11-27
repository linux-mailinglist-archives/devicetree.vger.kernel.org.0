Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8DDD3639B2F
	for <lists+devicetree@lfdr.de>; Sun, 27 Nov 2022 14:55:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229593AbiK0Nzr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 27 Nov 2022 08:55:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229450AbiK0Nzq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 27 Nov 2022 08:55:46 -0500
Received: from mail-yb1-xb34.google.com (mail-yb1-xb34.google.com [IPv6:2607:f8b0:4864:20::b34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81844BE2A
        for <devicetree@vger.kernel.org>; Sun, 27 Nov 2022 05:55:45 -0800 (PST)
Received: by mail-yb1-xb34.google.com with SMTP id 189so9683254ybe.8
        for <devicetree@vger.kernel.org>; Sun, 27 Nov 2022 05:55:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=cQgkgCpTm47iZNFmlvpgr7O6Bta34qrOD+35DbgT7Hs=;
        b=EaVgCDHNZAmj3FTD6fpaoEc9wMNz+9kvB4PAZQy5kNn23SojzQbpEWs6GaOzPvsijh
         tTQOCRJfocFa5cnpH/2jIZxe9OGwHcHdb0hYDwFn+GlIWQoK7hR3tMAyAGsRSdWJLajN
         X9PDaVkAdwnzjBDaLf1ThfnXj8008V65cP7HEFG2YwzGyWzwz0G3FZ5OUrq1wpZ1MSFH
         Ocm89xeMa0a+bGfgWunWvALZAH75mkxk7eFk/Pe05nkqleto7FmfVqQrsx5AZ2tau8Zd
         YuYoE9UzKWtRVOxGPkVeLmQQqV3E105sA49ENmQxr0CTxXux4TIUQ7UgtAQb173VMtrz
         JyYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cQgkgCpTm47iZNFmlvpgr7O6Bta34qrOD+35DbgT7Hs=;
        b=KV0DQE+yWA2yBCed29bmmBWyt07b9nX+GwqHw+cQAvp2ob5r9N30tqQLQgY6NEeAn7
         ENUp5636kgITHL6gQZZEEWnuGh/3DLXz1y0Sy9Geqa7mweAAuYAnt3pBAKhvsRgHdno1
         tJH8PaM+PctmQTT8TjlSkT1YecTr1wtsovWSMOJsk7z9dgoYclmO5jLD51jmcI30kOTA
         91ZCT6Le+g2k57KcAWq55d6AmcoDm8NByyQ3LS9Bvng8Hp8rtU0LV+PhLlm1ye9S8bYS
         6mSdpms946672RpQ8WdKndfRqeggjvsQs4Xppy7DR9FBkHf1Lo9rRY6GRzCyA0EnkP47
         o7Bw==
X-Gm-Message-State: ANoB5pn4RcsHL+xHhDQZytoLtx6sgG0gPaQiFZ3KjVvlBGkDGZbZHASR
        AOgsmcqpy9hkGByvjjAOxYqPTFYvwlbnwO7upUiWKQ==
X-Google-Smtp-Source: AA0mqf78JJ01h/v6Znk5k947NIWBr4J7ggr8K9DBEkpFzpkdRkmGt8APOpa5H/tk8spvw1FfR8tFwTPtLwJNNvLkkcI=
X-Received: by 2002:a25:cb92:0:b0:6f6:2c8c:e8ef with SMTP id
 b140-20020a25cb92000000b006f62c8ce8efmr1616167ybg.416.1669557344715; Sun, 27
 Nov 2022 05:55:44 -0800 (PST)
MIME-Version: 1.0
References: <20221108041400.157052-1-jagan@edgeble.ai> <20221108041400.157052-7-jagan@edgeble.ai>
 <429df965-bd4a-afa4-e66c-6907677fbf8c@linaro.org> <CA+VMnFxs06_KvZc5p_rNAep9aJ+t908CUtVcVTBV7c_b1mu+Xg@mail.gmail.com>
 <149c2614-d87a-4406-5552-f444709a6e09@linaro.org> <CA+VMnFybPA=6-LvSDd=7EXk6fo4oY_hNBwCcDURgnFs4DP_hzA@mail.gmail.com>
 <1f8eb33b-1979-ec28-e3cf-6e6552959b3a@linaro.org>
In-Reply-To: <1f8eb33b-1979-ec28-e3cf-6e6552959b3a@linaro.org>
From:   Jagan Teki <jagan@edgeble.ai>
Date:   Sun, 27 Nov 2022 19:25:33 +0530
Message-ID: <CA+VMnFz8czfLKoodnD2VkmoBBV18hSM_O40m+qrxz4qzaZxt3w@mail.gmail.com>
Subject: Re: [PATCH v7 06/10] ARM: dts: rockchip: Add Rockchip RV1126 SoC
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Johan Jonker <jbx6244@gmail.com>,
        Jon Lin <jon.lin@rock-chips.com>,
        Sugar Zhang <sugar.zhang@rock-chips.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 24 Nov 2022 at 15:06, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 23/11/2022 17:35, Jagan Teki wrote:
>
> >>>>> +     aliases {
> >>>>> +             i2c0 = &i2c0;
> >>>>> +             serial0 = &uart0;
> >>>>> +             serial1 = &uart1;
> >>>>> +             serial2 = &uart2;
> >>>>> +             serial3 = &uart3;
> >>>>> +             serial4 = &uart4;
> >>>>> +             serial5 = &uart5;
> >>>>
> >>>> These are not properties of a SoC but board. They depend on the
> >>>> particular routing on the board... unless this SoC is an exception from
> >>>> all others?
> >>>
> >>> Was this a new feature to follow, didn't see this before at least
> >>> rockchip SoC's.
> >>>
> >>
> >> It's not exactly new comment, but rather not always enforced/given.
> >
> > It seems like i2c0 and serial aliases are required across SoC instead
> > of the specific board. An example of which i2c0 connected via PMIC
> > which indeed require aliases to get a probe, which is common across
> > SoC.
> >
> > [    1.778941] i2c_dev: i2c /dev entries driver
> > [    1.780877] rk3x-i2c ff3f0000.i2c: rk3x-i2c needs i2cX alias
> > [    1.781410] rk3x-i2c: probe of ff3f0000.i2c failed with error -22
> > [    1.791312] Bluetooth: HCI UART driver ver 2.3
>
> I2C driver indeed seems to require them, so then it's fine. That's not
> the argument for serials though.

Yes, I dropped serial aliases for the next version.

Jagan,
