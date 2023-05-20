Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9CB9870AA7A
	for <lists+devicetree@lfdr.de>; Sat, 20 May 2023 20:33:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232291AbjETSdD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 20 May 2023 14:33:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53724 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232421AbjETScl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 20 May 2023 14:32:41 -0400
Received: from mail-yw1-x1133.google.com (mail-yw1-x1133.google.com [IPv6:2607:f8b0:4864:20::1133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3AEA11988
        for <devicetree@vger.kernel.org>; Sat, 20 May 2023 11:32:13 -0700 (PDT)
Received: by mail-yw1-x1133.google.com with SMTP id 00721157ae682-561da492bcbso55762707b3.3
        for <devicetree@vger.kernel.org>; Sat, 20 May 2023 11:32:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684607446; x=1687199446;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dHaeH/28s7PsVGCT9Un4rGQpylmYDe0BAlRJYyH4E6I=;
        b=EvKF7+TsJokXC+pCCfJACae4RXivDGRKt4xPs7TBjbQ4nOh8N263oCdR3Li9jkI0kS
         vmIb4xrEvm/cjGWHCxWgPd76R6R7jvG29yvng/tJ9IPQD494ZytvBfuTeVfqJDeglj9Y
         PKX9mND0oYkBCx1dQr45rHTAVCaOBxdhm6dY95DFzBtI/NhWUCuob7qWYkj61Oqiv0kt
         kF6G0QM+V/uVoZ0Mpd/GTGZ53+RiMG4HlLIOI2LBY4xx2FR6X7D4xz9+q0IXjPBtVh5l
         AnqLc40/2Cab3UdfL48VY/hY34LCpXBNOrV8PKRWW+b3EJiQemMNT5tWXSL/Fwo0pBW0
         oJqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684607446; x=1687199446;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dHaeH/28s7PsVGCT9Un4rGQpylmYDe0BAlRJYyH4E6I=;
        b=Dw6DXjdDwSEzDZAsVvhbfRbOmH68lJ8e961VsuRs2FHx7vR+gS/zYfWJpIkfQ2dY1K
         8U3gdqo5SVdJTiwkQ7m0hF8boKV0VRFvclVd9/o5lDVFy6XgU1FDirVUUYc6P973+vB3
         9cBXw9FgCmHw63y8OlGvdkoX24jg1hrTZaGZXMLSOzptW+Rf4q9EsIMjglA+Un36pKTU
         RxhnaOHOsWMCv5L+WnKV3/d3T3lpk1scxLHN2qyLPYcDFWre54bUQuH47P0slIwJYa3n
         SPeFKIgmI5rUlw4FKJEe7IyJl79XaA58ik/xTGd3gjU6qjKVgkA72GQdyKAiqX+B03ot
         qoMg==
X-Gm-Message-State: AC+VfDz7GTIxyjAYMo/jw9Z/Shd/UUNSZrwSnABhbqM6Jq3s4EL/4mZL
        nBIop6wghnW/EH/e9Yp/ZyuNIKjws0PC7l8YHNgZIGN5diD9qtup
X-Google-Smtp-Source: ACHHUZ6IBVSP/UQLC5thk+e9iwNT4WlQiimgJwS/nEJJ2ypxfkbbUJo2GFYCjSIC/MAA26qmvWjzOfBZ98eZITfGSxQ=
X-Received: by 2002:a81:7287:0:b0:562:1850:bbf0 with SMTP id
 n129-20020a817287000000b005621850bbf0mr5942727ywc.21.1684607446262; Sat, 20
 May 2023 11:30:46 -0700 (PDT)
MIME-Version: 1.0
References: <20230520112601.11821-1-zajec5@gmail.com>
In-Reply-To: <20230520112601.11821-1-zajec5@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 20 May 2023 20:30:35 +0200
Message-ID: <CACRpkdaSU6vdOibMd2eDkOjsamH=Q0+JoQriMop1BVZ+hPWPNw@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: bcm: unify version notation of
 Northstar devices
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        bcm-kernel-feedback-list@broadcom.com,
        Jonathan Cameron <Jonathan.Cameron@huawei.com>,
        Sebastian Reichel <sre@kernel.org>,
        Christian Lamparter <chunkeey@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, May 20, 2023 at 1:26=E2=80=AFPM Rafa=C5=82 Mi=C5=82ecki <zajec5@gma=
il.com> wrote:

> From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
>
> Always use a minus/hyphen char to separate model from version. This
> unifies binding's "compatible" strings.
>
> Signed-off-by: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>

Makes sense,
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
