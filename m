Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DDD1879B0E7
	for <lists+devicetree@lfdr.de>; Tue, 12 Sep 2023 01:50:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238305AbjIKUxu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Sep 2023 16:53:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235544AbjIKIxa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Sep 2023 04:53:30 -0400
Received: from mail-yb1-xb31.google.com (mail-yb1-xb31.google.com [IPv6:2607:f8b0:4864:20::b31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED9501A2
        for <devicetree@vger.kernel.org>; Mon, 11 Sep 2023 01:53:25 -0700 (PDT)
Received: by mail-yb1-xb31.google.com with SMTP id 3f1490d57ef6-d80089712e5so4780607276.1
        for <devicetree@vger.kernel.org>; Mon, 11 Sep 2023 01:53:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694422405; x=1695027205; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+uSuFkePcllXheKKrDKtEzRTd0oahV94Bg0tqz8sFvE=;
        b=EbMFixh28wQ4GZwVv4qxTXqipReLUX44kj/GBs9Y3Kx1i/SQvQn3OJj1Zl59gX52Lx
         Hjy/2uuPdX/VAXD3fIhJRcwEvlOHQdP1CI2fPCqKa/jFAHbA9a3a57XrYNjB1+6osOzX
         Z0J3wHkunK4a6WvJJg6v5L9H332DAyi5Djbxk4VBKdyJyFgLgrJV9KQP9TCAhTh+Hx2V
         jdP+hFcA5/M1YZ4oFC4llgfNgMx0XWWw8rLOWg6VVlas28Km3XQFsu9Fip8MU0xfMheH
         hUossyIQORJQLlN6Oq5b/+8YZWwonak9Jc6fBJvN8lP13RX/GxYts/iDUpr2eaDKWvZu
         BeSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694422405; x=1695027205;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+uSuFkePcllXheKKrDKtEzRTd0oahV94Bg0tqz8sFvE=;
        b=rzB0EoIwyN7CijkJ9rHd0Y6uPKuC3X9yoR01nbuv6AeZj39hqjPNDdzX5ppKASkYAn
         jmNXyJJ2Pd/Vkz9+GLrpHfHGEDtBV0w90gThMgeepZ6EcKjObsYWg5yFqcg8cjINl1BK
         wq/lK1BS8Ld7NFtr0WDI1YX83Sskh/F7sz16vIMBe0UjdwfVAwrG8P65sloi9mNLwPJv
         UHz4gubnbkCg9FOhjQmec5yVzj5d3H5yZf6IToSX3/y2w14VkD0lx1SEMbUlzRLkYAUv
         T0E+aN8ocupFHmTppqZ4tUElZEfO/AWP8AnT8sbyrv6Bc05vZnT4P7yon+0QebLH2cku
         jiuQ==
X-Gm-Message-State: AOJu0YyAAEqK+pNZ4C/loQ7g92paBia3iEDQO2Lii63kdyc/X+qr+331
        YejqaU2F2RKiJ9BO4YP20Y3EcSTJeAvedzK4GT0hLg==
X-Google-Smtp-Source: AGHT+IEpUVQ6pAi/5PvV7lvoYO9nqoagoZuqIl8EkSZivs/K/vJ4a0Wlk0i5y7BwzCtKeUmkF3ktqnt3UTq/4vNP5sA=
X-Received: by 2002:a25:db0f:0:b0:d71:c79c:86c1 with SMTP id
 g15-20020a25db0f000000b00d71c79c86c1mr12790563ybf.32.1694422404707; Mon, 11
 Sep 2023 01:53:24 -0700 (PDT)
MIME-Version: 1.0
References: <20230824105703.19612-1-tychang@realtek.com> <20230824105703.19612-8-tychang@realtek.com>
In-Reply-To: <20230824105703.19612-8-tychang@realtek.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 11 Sep 2023 10:53:13 +0200
Message-ID: <CACRpkdbSwF-9kuz4dLbRZiAFUB9qXvxAUXyin2BxLtq=hrzwSw@mail.gmail.com>
Subject: Re: [PATCH v2 7/7] dt-bindings: pinctrl: realtek: add RTD1619B
 pinctrl binding
To:     Tzuyi Chang <tychang@realtek.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
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

On Thu, Aug 24, 2023 at 12:57=E2=80=AFPM Tzuyi Chang <tychang@realtek.com> =
wrote:

> Add device tree bindings for RTD1619B.
>
> Signed-off-by: Tzuyi Chang <tychang@realtek.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
