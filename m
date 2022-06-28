Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1F0BF55E6DE
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 18:31:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346262AbiF1N6x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Jun 2022 09:58:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36624 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344132AbiF1N6V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Jun 2022 09:58:21 -0400
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com [IPv6:2607:f8b0:4864:20::b2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A40142BB1F
        for <devicetree@vger.kernel.org>; Tue, 28 Jun 2022 06:58:20 -0700 (PDT)
Received: by mail-yb1-xb2c.google.com with SMTP id i7so22302492ybe.11
        for <devicetree@vger.kernel.org>; Tue, 28 Jun 2022 06:58:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2/l7W+OssRRYQModKHWxWKmgYil2AiQmmsO4Fs3j34E=;
        b=kzEgPie5pY0c0ahz2zTJxPOw01bu71JnTCUESsurSekWEfS5exSW/cJqaS2kOLFZW+
         IYpmXp4AnNxegO/cntNbrVoKNLN1a9RzN0hByEGTIGZ0L50g7PRTv0/vJx0CM+PPblJe
         jK72CWBbaR5L/ROcbOoguxAUkN/Cnp8hmNqMKpGJQSZABtr43cdVlJ2RzFp5z1Ow1zws
         O7+oGnxVXiWrkzHlM9OKxdq3zauWv5/gmlhxe0S0K8d618YrhFt356dAhBKX2q9KzgVL
         zTfEDnUiI+5FpceqZCWDdH7on3X2Mw8lhq5R5Sb2Mdg4hlGbSrCtepCFMp5Ym+uwCDEk
         Q8rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2/l7W+OssRRYQModKHWxWKmgYil2AiQmmsO4Fs3j34E=;
        b=XFIL4fVuRFx+Uj0IGXyF0NDMiL3XjomJM9nwX7hc6taV+4P5tOjXX5PMyTRI3Yrdhn
         PsWmXLURYxXe1E7tSd2J2dIXofDUmdFPhK3RsRut6c1Wg13u0/eBJ3wMvSaL62N+dew7
         bbHjwChl8rRbyy6AeBrgwy94W0uqD7mJ0cdWKO7YQHqZ7B9dQocjvpqFSMzRaLi3TcSO
         Dv0TW8kSr/KuAKmOX42krVrdziEqr9JIGz7zaKVttpMwyz87F81V/zTTFiFhbvB543+y
         ++ZS2CHzni9/X1nDEd8qU4+WOUAtw5CrsipqIqTZmHpecLXnos5ntBC4iOUMfxlIb8M4
         heuw==
X-Gm-Message-State: AJIora+Q64Pnp8kQWSg3nTlKjpYlGOEy+EW4hzKbaSEL7GDgzIxN7iXm
        oj9xCythLd07/5Jx7lmhyC5D+g/f4NrbbKEYh0p/6g==
X-Google-Smtp-Source: AGRyM1s6T+OzQpi21xhADOxFCQu+HizTLSBGEeUHU6KCbRefmRdacgeQvdx2yDE1xwu1Y/sLnazE19sz7Mfsu8aAT08=
X-Received: by 2002:a25:e7d4:0:b0:66c:899b:49c6 with SMTP id
 e203-20020a25e7d4000000b0066c899b49c6mr20150388ybh.291.1656424699840; Tue, 28
 Jun 2022 06:58:19 -0700 (PDT)
MIME-Version: 1.0
References: <20220623160801.240779-1-sebastian.reichel@collabora.com> <20220623160801.240779-2-sebastian.reichel@collabora.com>
In-Reply-To: <20220623160801.240779-2-sebastian.reichel@collabora.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 28 Jun 2022 15:58:08 +0200
Message-ID: <CACRpkdausrTN2c3QXLFJu0R1B6WsUda6POeUG2XasqBB6hSCtA@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: gpio: rockchip: add gpio-ranges
To:     Sebastian Reichel <sebastian.reichel@collabora.com>
Cc:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org,
        devicetree@vger.kernel.org, kernel@collabora.com,
        Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jun 23, 2022 at 6:08 PM Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:

> Allow usage of gpio-ranges with the rockchip gpio controller. The driver
> already had support for this since it has been added to the mainline kernel
> in the first place.
>
> Acked-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
