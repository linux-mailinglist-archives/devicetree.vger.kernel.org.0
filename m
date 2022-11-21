Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 25BEF631866
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 02:58:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229891AbiKUB6g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Nov 2022 20:58:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229814AbiKUB6f (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Nov 2022 20:58:35 -0500
Received: from mail-oo1-xc2e.google.com (mail-oo1-xc2e.google.com [IPv6:2607:f8b0:4864:20::c2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35CD917E1E
        for <devicetree@vger.kernel.org>; Sun, 20 Nov 2022 17:58:34 -0800 (PST)
Received: by mail-oo1-xc2e.google.com with SMTP id r76-20020a4a374f000000b004988a70de2eso1612138oor.2
        for <devicetree@vger.kernel.org>; Sun, 20 Nov 2022 17:58:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nw7lJeHpRVDFo2y9OeZfhTiqPLPx6ObPD3zTI8pHiMo=;
        b=BslRvuvHwq4RffX7b09RlXn1jTkjG3TGMGXA/Vyqku5kVB+AvSsZSpQQpQ44pA20x2
         rpBsAj4NEStFpWGiZHIaz39M8+PYkky8wvkZxNnVIkXfNtSWDYiQWbAHyf6NFTdp0xsP
         CNlb5ycaWaWzmfBaWf2JVAsG7DpnhdaULtnw39l3mWKvPC2h1PkeBh8s07QFpsBUrYMq
         TgmdZ3Znp5HLFu298d6/UGS4Dwk0x4HBYyqUkmT7g1JRhJEAGNznk8Cf1j80PMsyIFs8
         oW+jtkPwt6PBnIIvNk+ILl5gGUUwDHpZfKEiEySXiaY3cxJ7VPy+n1F7QA8m2tqUkgCb
         w+6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nw7lJeHpRVDFo2y9OeZfhTiqPLPx6ObPD3zTI8pHiMo=;
        b=mxMlVYWaqK1lv6aZU0L5tpQRgoh6vHjfOlV0tttNmqGt4X6CEjXzvICVZvSRtX+cod
         A1fLw3y6+fTVkXxFuO5jKdMlSP3aokEpvdpoS6QpwU6VIhrzVvkgG6PJ1Z297oh7J1ku
         qbtp2At0TLZyhWosd8NK7NSYmhJW3nR59C0ejU+4OJegt+nyOtiSow7pkLwY5NfX06AG
         C6bqfTVIiNB26cRBcr+weQF/04ugPQm6IMYUx/5PNMDwSqHqb1YrctmsMMe7Js636q+T
         VVMJZwbnwHN1mOH6SUk8kvr4n/dkhcNAp2wpO2GiZXlLyJbmIeYyEXzXvVycE8d0yySR
         RyFg==
X-Gm-Message-State: ANoB5pl5xtPa+hR5DBOw/RxkjzmamKgRBgaxj7ihYosttoKsqysaDad5
        CytkIOGC1ProyNF3QdUxy9W0tkahpJCKLVT5Q/x/IA==
X-Google-Smtp-Source: AA0mqf5hC3CJKCmoMVgnBmKcIAMXKJfznqI2sQVGVTw1Ezc/VASK11qwClHjwj9WF5iZe3T6Z8EE7/1wxyO7PEjW+jI=
X-Received: by 2002:a4a:1486:0:b0:49f:542:819 with SMTP id 128-20020a4a1486000000b0049f05420819mr7638371ood.71.1668995913588;
 Sun, 20 Nov 2022 17:58:33 -0800 (PST)
MIME-Version: 1.0
References: <20221117210356.3178578-1-bero@baylibre.com> <20221117210356.3178578-5-bero@baylibre.com>
 <06e916b7-f8f2-6de5-f86e-7b020c052451@linaro.org> <7ha64o9h1d.fsf@baylibre.com>
 <76cae9bf-c81a-684a-c22b-9548dd82c8d4@linaro.org> <CAP2ifjMQAx23xc0p_LZ9Dj79Hx1cyLZ-tx8HrGUbtDR-SmdECw@mail.gmail.com>
In-Reply-To: <CAP2ifjMQAx23xc0p_LZ9Dj79Hx1cyLZ-tx8HrGUbtDR-SmdECw@mail.gmail.com>
From:   =?UTF-8?Q?Bernhard_Rosenkr=C3=A4nzer?= <bero@baylibre.com>
Date:   Mon, 21 Nov 2022 02:58:22 +0100
Message-ID: <CAP2ifjNeGqrr+LcMBAsVjEm8ciZ=zXxZxq3wppQ3Y37LbmvroQ@mail.gmail.com>
Subject: Re: [PATCH v3 4/7] dt-bindings: pinctrl: add bindings for Mediatek
 MT8365 SoC
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Kevin Hilman <khilman@baylibre.com>,
        linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com,
        "angelogioacchino.delregno@collabora.com" 
        <angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Nov 20, 2022 at 3:38 PM Bernhard Rosenkr=C3=A4nzer <bero@baylibre.c=
om> wrote:
> I can prepare a "remove pins-are-numbered" patchset

... and I did.
https://lore.kernel.org/linux-devicetree/20221121015451.2471196-1-bero@bayl=
ibre.com/

Best regards
bero
