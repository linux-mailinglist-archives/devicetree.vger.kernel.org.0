Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6A2DD6DAC48
	for <lists+devicetree@lfdr.de>; Fri,  7 Apr 2023 13:40:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234567AbjDGLku (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Apr 2023 07:40:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55068 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233113AbjDGLkt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Apr 2023 07:40:49 -0400
Received: from mail-yw1-x1131.google.com (mail-yw1-x1131.google.com [IPv6:2607:f8b0:4864:20::1131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90494AD12
        for <devicetree@vger.kernel.org>; Fri,  7 Apr 2023 04:40:44 -0700 (PDT)
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-5416698e889so791760577b3.2
        for <devicetree@vger.kernel.org>; Fri, 07 Apr 2023 04:40:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112; t=1680867643; x=1683459643;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bhp1D4MU620tEuYfWwD9BEmVsWgqQus92qBJwjtxDro=;
        b=fFvwxikqEAeHJ1MyF6Mjcy5mzl2OJh63dIxaAB2Eh3YcjM/Owu5lHKJFBUE6cx53n5
         ge0hlhxbz5JCzOGC7sqHExwugQIn4P86tbebsNoAdBAAZk2t+4qGBnT3jA9uveXp3r3L
         bhnpYubAipVh0F7oIPpqBSXO3s1J/fsCFbJYA3V8qR9HtOW6umbqHOrD/IH0kF9hou+9
         Rgcn2cuompVeamLBt3NAPLr1/jiDxRJVX8kZyxeZphYp1Dmme4IHcxzSlWV2WvMAVLUm
         hTBdY3mZ3//C/vmRayZFAwxnXHagHtuuxkHBEuV0mhQCaMg+UxDguJHFP45fw1kaLBiA
         Ukxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680867643; x=1683459643;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bhp1D4MU620tEuYfWwD9BEmVsWgqQus92qBJwjtxDro=;
        b=q+gG9byB9sg+ajP1xKJdAVKPx0VakbJYl+HFiqL25xlouKqv7KHi8XNfvq+cfxtBsW
         3RnluxVRGVknine9RRg9DZhPjVyQs5QFjsyQ+SV+HVsfE65q6zIYD4clsp2OIjvCdhWw
         lDKXSu+efHfELUfqW/eAkeugfwyghipPvQAGSxfAzqCHAsf4d+YtcC90MvSuRjUhz3Wr
         2e76dTBRbiS8UGjDMDBFHvKvFQ8UDM+b/oyc90AXlV0kIWEy9pS3jLLS4j9E50jdoZov
         6u9P1x1E74ZXlOkKDBUSjzwiuafvGqE40tkgIIo/y4EpxQ0bLUnJBs8F4HqNXdckdSUR
         j6Fg==
X-Gm-Message-State: AAQBX9fRkfftQdRpbb7NPM1ggaFaj6bKGkoEMBpl6HSiCK2zhA5Fdc9z
        v0e5k3jZE8gPJ1A9biZ3Ij4z6M2eHvWQqD+SuZqSCA==
X-Google-Smtp-Source: AKy350YoGyPsHOTAa1wet0tacy28TuEIoDXiA/LQepBDm7Xcz7qo6pPhP3CKaVtCoIyN9Fqb7B2gwVZJiToE8OVA9L8=
X-Received: by 2002:a81:a783:0:b0:545:7143:2940 with SMTP id
 e125-20020a81a783000000b0054571432940mr1022815ywh.0.1680867643596; Fri, 07
 Apr 2023 04:40:43 -0700 (PDT)
MIME-Version: 1.0
References: <20230203-evk-board-support-v4-0-5cffe66a38c0@baylibre.com>
 <20230203-evk-board-support-v4-2-5cffe66a38c0@baylibre.com> <CACRpkdYSpMD-V0QNGwtiKCA4KAedYfmFpvdCHWhjST9uTricTg@mail.gmail.com>
In-Reply-To: <CACRpkdYSpMD-V0QNGwtiKCA4KAedYfmFpvdCHWhjST9uTricTg@mail.gmail.com>
From:   Alexandre Mergnat <amergnat@baylibre.com>
Date:   Fri, 7 Apr 2023 13:40:32 +0200
Message-ID: <CAFGrd9ox3BftUxPai8WhWgf5UefTwnqnLsdo8kUHMYphB7nOTA@mail.gmail.com>
Subject: Re: [PATCH v4 02/11] dt-bindings: pinctrl: mediatek,mt8365-pinctrl:
 add drive strength property
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Chaotian Jing <chaotian.jing@mediatek.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Wenbin Mei <wenbin.mei@mediatek.com>,
        Zhiyong Tao <zhiyong.tao@mediatek.com>,
        =?UTF-8?Q?Bernhard_Rosenkr=C3=A4nzer?= <bero@baylibre.com>,
        linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-mmc@vger.kernel.org,
        linux-gpio@vger.kernel.org,
        Alexandre Bailon <abailon@baylibre.com>,
        Fabien Parent <fparent@baylibre.com>,
        Amjad Ouled-Ameur <aouledameur@baylibre.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=0.0 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Le mar. 4 avr. 2023 =C3=A0 15:55, Linus Walleij <linus.walleij@linaro.org> =
a =C3=A9crit :
>
> On Fri, Mar 31, 2023 at 7:55=E2=80=AFPM Alexandre Mergnat <amergnat@bayli=
bre.com> wrote:
>
> > This SoC is able to drive the following output current:
> > - 2 mA
> > - 4 mA
> > - 6 mA
> > - 8 mA
> > - 10 mA
> > - 12 mA
> > - 14 mA
> > - 16 mA
> >
> > Then drive-strength property is set with enum to reflect its HW capabil=
ity.
> >
> > Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>
> > Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
> > Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
>
> This patch does not apply to my devel branch:
> https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-pinctrl.git/=
log/?h=3Ddevel
>
> Can you please rebase and resend?

According to your suggestion on the other serie [1], I rebased this
patch and added it to the other serie [2] to simplify the process

Regards,
Alexandre

[1]: https://lore.kernel.org/all/CACRpkdYndXqTXrTakwv1mbvJBs-tG+pjOpLLCgS9c=
rE0aBj0jA@mail.gmail.com/
[2]: https://lore.kernel.org/all/20230327-cleanup-pinctrl-binding-v3-0-6f56=
d5c7a8de@baylibre.com/
