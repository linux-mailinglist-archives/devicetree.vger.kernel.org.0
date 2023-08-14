Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 517D377BFC0
	for <lists+devicetree@lfdr.de>; Mon, 14 Aug 2023 20:25:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230267AbjHNSY1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Aug 2023 14:24:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55040 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231431AbjHNSYD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Aug 2023 14:24:03 -0400
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com [IPv6:2607:f8b0:4864:20::b32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 206411703
        for <devicetree@vger.kernel.org>; Mon, 14 Aug 2023 11:24:02 -0700 (PDT)
Received: by mail-yb1-xb32.google.com with SMTP id 3f1490d57ef6-d63457dd8b8so4536433276.1
        for <devicetree@vger.kernel.org>; Mon, 14 Aug 2023 11:24:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692037441; x=1692642241;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qrwZWKpcUQ6ywsnRpddsQP2IFiaWoqi0FS5jyHuJPzg=;
        b=eZsLL/gfVVE2euiE2X73cpQxmVcDZCJVd4oMJunnNeSdAdx/OrjjTNiuVJ+H03jYo/
         6p4zmdr/adzjBxTyJ3bJR3N95XDZjgYv1ALCxgjx8ZhiO2qTe1uhMLWaAFO/7xhxZnUu
         NYa3cbglMyY8x9WB55YioZS6v9QXm8flKlbi/uvj+6CLfLqIIW7+cNXO1aCmzRZUSuEl
         50ra5BfkErNwxl4lsYUkxhctUZbEpEJ2e7GJv/H8j7GdzWiEAFy4E/1A5iIp7jpOh3vK
         3dDSGbA69VZitmjKyfUCwPWupFkT/PYkSGn1RJ2S8XBLhcmgcMfIPcZ2O2U+3zYEUmQu
         mOuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692037441; x=1692642241;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qrwZWKpcUQ6ywsnRpddsQP2IFiaWoqi0FS5jyHuJPzg=;
        b=epQFoS8YHjPFPQR2DFDuo2aU5gh+71pn7geIBP5mffmTBEfb39VPj2NfiK2tHn6d0B
         gQiYA5OXdTm07N1zsG2nssLBD+USd+JoafEKCmlx08Ds8OxWvc3w315Ti1WI5yc8zJbt
         wLilMBbifUJnPLrZCxdh4CMBjoqNvaSCE9mMdFPRPw5zE2etbNInC3KlLexRfzNsYcfF
         uNB3v9p9pU8n/ADLCf1K0YHcK0UlWAOX8tw0tfblXDZ/H15LkkFDoi0gUB43VZvP8qJ3
         reK1+ws4qe7HSrTPF+JCvJcHaan6SdYNaCXkoYzdP2POFRy1juGu4dpnO0NDVGnWfTa0
         fDqw==
X-Gm-Message-State: AOJu0YwT6Jy0e3BwO3eAC61MDW1nmV166JpndfsXAgEpOdSxXWBKdcQP
        S1Kue8D6VxhAX963C5krlAVzTUNvlOWhmmjTThbaKQ==
X-Google-Smtp-Source: AGHT+IERi6eZmI/ElbK4uixepZX9ZgHY63TL7MK4mEhG/I1VHJAIPHCbmJKpXlEusBuAPWNPEZvFWEdC2NzTmbKCAPw=
X-Received: by 2002:a05:6902:565:b0:ce7:919f:38f8 with SMTP id
 a5-20020a056902056500b00ce7919f38f8mr11726256ybt.52.1692037441373; Mon, 14
 Aug 2023 11:24:01 -0700 (PDT)
MIME-Version: 1.0
References: <20230812091708.34665-1-arinc.unal@arinc9.com> <20230812091708.34665-4-arinc.unal@arinc9.com>
In-Reply-To: <20230812091708.34665-4-arinc.unal@arinc9.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 14 Aug 2023 20:23:50 +0200
Message-ID: <CACRpkdYTKLxzFWJP2YwPm-db8HSvpCQTfGwFK3Rh0nGY-0Y_4A@mail.gmail.com>
Subject: Re: [PATCH 3/4] dt-bindings: net: dsa: realtek: require compatible
 property under mdio node
To:     =?UTF-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>
Cc:     Andrew Lunn <andrew@lunn.ch>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Vladimir Oltean <olteanv@gmail.com>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Woojung Huh <woojung.huh@microchip.com>,
        UNGLinuxDriver@microchip.com,
        =?UTF-8?Q?Alvin_=C5=A0ipraga?= <alsi@bang-olufsen.dk>,
        Daniel Golle <daniel@makrotopia.org>,
        Landen Chao <Landen.Chao@mediatek.com>,
        DENG Qingfang <dqfext@gmail.com>,
        Sean Wang <sean.wang@mediatek.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, mithat.guner@xeront.com,
        erkin.bozoglu@xeront.com, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Aug 12, 2023 at 11:17=E2=80=AFAM Ar=C4=B1n=C3=A7 =C3=9CNAL <arinc.u=
nal@arinc9.com> wrote:

> The compatible property must be defined under the mdio node. Enforce it.
>
> Signed-off-by: Ar=C4=B1n=C3=A7 =C3=9CNAL <arinc.unal@arinc9.com>

Right.
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
