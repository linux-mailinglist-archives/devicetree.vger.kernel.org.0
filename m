Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D38E668ACF1
	for <lists+devicetree@lfdr.de>; Sat,  4 Feb 2023 23:57:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230130AbjBDW5C (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 4 Feb 2023 17:57:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229448AbjBDW5B (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 4 Feb 2023 17:57:01 -0500
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5058320077
        for <devicetree@vger.kernel.org>; Sat,  4 Feb 2023 14:57:00 -0800 (PST)
Received: by mail-ej1-x630.google.com with SMTP id k4so24782788eje.1
        for <devicetree@vger.kernel.org>; Sat, 04 Feb 2023 14:57:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=++3ki4CrWn8PwCbV12Du3KDkubTTSliZE+lFg3FXWZA=;
        b=G6iygtZPFbdD/FLo8tr9r/DmPuXfJxDSYVI/rNJzOq/GHgdHyoLGBn6YJuFDXM0Lf0
         6S9CQDJdXkMFB0EMa+z3LnDKwnFitIf0tcwk+929vdWDwkmF3N2xoQr/wjsfXSNtZApY
         qRNVJm8aNRvO1QkNHoK5l4B1Un6QHQE65e96rT5KPrLvpLrqWORKapfVmUj7AGLelZBn
         L62smTxMu5gfX/c2eGgPQt1Ef/BmkLiEEon96Nw1sRiJKn3wJ1bwtP+TH0Bn3HtO6EXb
         LaObnPyuLZmPd+J3PmeMTZYjVJMm5/+dcsjjOmRzc4EVlF1M+eL7k2ACBNAf1uA3y/uY
         +vkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=++3ki4CrWn8PwCbV12Du3KDkubTTSliZE+lFg3FXWZA=;
        b=IjjDibiIRN4tgPrreMfFNGuCKOnHucFj7N7KEFm6pKrfpBjvG1vkHoP3HYmb1q72/e
         HxmA10g/kDkm75S8dOlx9nHfLGYczDyoPrutha/gaszIwjLoCRPrY8olOzUxXGdc0kE7
         YxwkdF/IrggomLLchCeng3gLlJsYXuXIP1AR5R7HK0bSvBlXooONZyP2+niDZHwlStRG
         ZFkXQooKZrWk/phEX5u2ojALzRAZXlvWeMnf8QqpJQgFo4PnHNqx3/sCSCXMwjpbDv8c
         AbENl0qo5o2ke0CxnX0iP+GcmNLJvsCAj5NdhlJtnGpTQEVo8FhpnBr5cD4hTvP4KtWb
         +FQQ==
X-Gm-Message-State: AO0yUKXB1Qt6VPtdppRQxlatILk1Pywx4yTywRfdfyltsaEncseOa8aX
        EVBQ90/zWAkFaVuU4a7u8MBFeSg/KIW7iuB9gRI=
X-Google-Smtp-Source: AK7set+txf4e33E1Ec5PHP4R/1tRJoemicr5j11xoXShzF1b6MM4YFfNPE3KII06yr1QECYsDjVsxMqYKHgJ1uricNM=
X-Received: by 2002:a17:907:9916:b0:886:2823:423e with SMTP id
 ka22-20020a170907991600b008862823423emr4316559ejc.284.1675551418807; Sat, 04
 Feb 2023 14:56:58 -0800 (PST)
MIME-Version: 1.0
References: <cb62dfc0-cb3d-beba-6d0b-8db18583dda0@gmail.com>
 <285b7b4b-4fd4-be5f-266c-96b1ee6f4cbf@gmail.com> <20230201020647.GA2318275-robh@kernel.org>
 <b0e502fa-ef11-df82-ad45-9367ff7c75b3@gmail.com>
In-Reply-To: <b0e502fa-ef11-df82-ad45-9367ff7c75b3@gmail.com>
From:   Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date:   Sat, 4 Feb 2023 23:56:47 +0100
Message-ID: <CAFBinCDHtX2W=Sh4ffUbugn+XVH2UcXWKH2Q63W9G074x6o7zw@mail.gmail.com>
Subject: Re: [PATCH v3] dt-bindings: pinctrl: Convert Amlogic Meson pinctrl binding
To:     Heiner Kallweit <hkallweit1@gmail.com>
Cc:     Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Heiner,

On Wed, Feb 1, 2023 at 11:13 PM Heiner Kallweit <hkallweit1@gmail.com> wrote:
[...]
> >> +      - items:
> >> +          - const: amlogic,meson8m2-aobus-pinctrl
> >> +          - const: amlogic,meson8-aobus-pinctrl
> >> +      - items:
> >> +          - const: amlogic,meson8m2-cbus-pinctrl
> >> +          - const: amlogic,meson8-cbus-pinctrl
> >
> > Again, can't have both with and without the fallback allowed.
> >
> Hi Martin,
>
> meson8m2 is the only chip version having a fallback for the
> pinctrl compatible. Is this fallback really needed?
> Looking at the driver it seems that both compatibles
> are handled identically.
Back in the day we decided to duplicate the Meson8 driver code just to
add four new pin functions that are added by the Meson8m2 SoC
generation:
"eth_rxd2", "eth_rxd3", "eth_txd2", "eth_txd3"

The compatible string was defined with a similar approach: since
Meson8m2 just adds a few bits to the Meson8 pin controller it's
backwards compatible.

If the fallback has to be removed then I'm okay with that but I would
like to understand it first.
So far I thought that Rob basically asked to remove the following two
compatible strings from the enum (as they're listed separately with
their fallbacks):
- amlogic,meson8m2-cbus-pinctrl
- amlogic,meson8m2-aobus-pinctrl


Best regards,
Martin
