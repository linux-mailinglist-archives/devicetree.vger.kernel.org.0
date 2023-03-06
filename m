Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6DD776AC1B7
	for <lists+devicetree@lfdr.de>; Mon,  6 Mar 2023 14:46:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230154AbjCFNqY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Mar 2023 08:46:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35360 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230298AbjCFNqD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Mar 2023 08:46:03 -0500
Received: from mail-yb1-xb2e.google.com (mail-yb1-xb2e.google.com [IPv6:2607:f8b0:4864:20::b2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B98F92FCD1
        for <devicetree@vger.kernel.org>; Mon,  6 Mar 2023 05:45:51 -0800 (PST)
Received: by mail-yb1-xb2e.google.com with SMTP id t39so8134703ybi.3
        for <devicetree@vger.kernel.org>; Mon, 06 Mar 2023 05:45:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678110351;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ZFIbx50TOAGdusihLynH+ae6XYzZvYwEgeedQokViGg=;
        b=fOwimeAvFap0D1nJ4fRL/t/XFIqYbLk6E2TjJZhuqZ7QV5/u+mnJ5+1dulmMyELHdY
         XS7Gy32QSSGjFo6M4C6VIsagaVPJh4ZfsCsJywBqKDKrW+WF/hgJB1bAtuXMWW5LM2X1
         ij55xg+RX5QmRul/7fZIk+pAT72rl+YJJV9vPZTkGLC2jtn/D3SDRhLpnp584+CuzE0C
         Sej1CC+LaWJyeLpr7HMiyuCQL/KM9NOwlymzz3QO/AzAAsebchYCopVjjjsuTbkHB5Ei
         CqPH1xteZIfWSMZQJ3nIpm9XsWcBqU7Sp0badquFUs0pD/wpwhRW9ZHHas824EgET5J1
         VYWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678110351;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZFIbx50TOAGdusihLynH+ae6XYzZvYwEgeedQokViGg=;
        b=bH+catPHhOtTZzri5Gt3Be2u6jADya65Srst4kCH802YdEyoqrWSmzZW+t1qz2eNje
         bmsreNY0LeKEhMEgD81w4BIJjxojguRUN2Iwjabhts5qpLDH7DAD55XIdmIK95siioaH
         9b0CLXPNna6UnfuQISCns/uec/iPAjNrbSduUhkVxgS1P/rcyH0nLHPl0vsJlRMDDv5K
         ZvGpRWolGXEB2711cRYEjgjhN1Jx5+2rcPfuH/iUMK4LJQafFkbgIbIBIDdjv865ihhn
         kh1nAqAtsd4Yb0Baqq/UldKwsGltXk9CYDy+DgjmMjH+oWTbjyd/8ZTOMGESFo+9d8gg
         SqmQ==
X-Gm-Message-State: AO0yUKWM8+V8BxQo56Y9DJTJmMq4+kSAj00PTt3ABATeqrgEngK+6RFJ
        pOjNQAB68q8YpaehJUnuNPEll4LrAnp7bpDZXH0J9g==
X-Google-Smtp-Source: AK7set+ajV0Y/vEoRv05zU+DieyfXzWUrA2TqJ74hoKUUvOh0iDfOBK7W4aTQ1ilVZx9eCSHsyDwVi9JVzBmfW8VvDY=
X-Received: by 2002:a5b:38a:0:b0:ac9:cb97:bd0e with SMTP id
 k10-20020a5b038a000000b00ac9cb97bd0emr4956436ybp.5.1678110350935; Mon, 06 Mar
 2023 05:45:50 -0800 (PST)
MIME-Version: 1.0
References: <20230222115020.55867-1-avromanov@sberdevices.ru> <20230222115020.55867-2-avromanov@sberdevices.ru>
In-Reply-To: <20230222115020.55867-2-avromanov@sberdevices.ru>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 6 Mar 2023 14:45:39 +0100
Message-ID: <CACRpkdbWubk3A3qYuYqDc4OBGP6T7TaKwFeW17CwAzPvttk=WQ@mail.gmail.com>
Subject: Re: [PATCH v1 1/3] meson: pinctrl: use CONFIG_PINCTRL_A1 with CONFIG_ARM
To:     Alexey Romanov <avromanov@sberdevices.ru>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        neil.armstrong@linaro.org, khilman@baylibre.com,
        jbrunet@baylibre.com, martin.blumenstingl@googlemail.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        kernel@sberdevices.ru
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Feb 22, 2023 at 12:50 PM Alexey Romanov
<avromanov@sberdevices.ru> wrote:

> Tested A1 pinctrl support for ARM and it works.
>
> Signed-off-by: Alexey Romanov <avromanov@sberdevices.ru>

This patch applied to the pinctrl tree for v6.4.

Have you considered also adding || COMPILE_TEST?

Or does that break builds?

Yours,
Linus Walleij
