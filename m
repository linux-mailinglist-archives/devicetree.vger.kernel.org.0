Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 97B9564117D
	for <lists+devicetree@lfdr.de>; Sat,  3 Dec 2022 00:27:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233044AbiLBX1q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Dec 2022 18:27:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56344 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233561AbiLBX1q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Dec 2022 18:27:46 -0500
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com [IPv6:2607:f8b0:4864:20::b2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ABA7C64D4
        for <devicetree@vger.kernel.org>; Fri,  2 Dec 2022 15:27:37 -0800 (PST)
Received: by mail-yb1-xb2d.google.com with SMTP id y135so3258884yby.12
        for <devicetree@vger.kernel.org>; Fri, 02 Dec 2022 15:27:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=01Dh81m4jbKqJgneaTvo1zhRa3UD/HHJqjoMbOfF7J4=;
        b=a9xmb67lFpFoi4YEDWdAsR+kRrZg1Vr2lMYe1a6A8d0JpMMOlIXszaUkLarTleeNEU
         zBlly5tuIWV45UB2FUN6Z7ZOmgl8BiAWc9KUkjSw53Kovacvd7z75f2pGLL6E6+0mkUm
         D920BYaBXJl9eC4lWFhiue8lFdsSNE2c6wP/SWua7K+dcIPW644lswUb3Ssbj32OvMyq
         fc2nfO8dt6oeBIL7nsNhE54xSg7koqWTdY+52LbY27NYIHXsCvQoi6leYjwDyzm+g5zN
         Q1pt1EmqXyGUwqFmYTNsPZU6ZT8erB/sqm5hhRkoZLgSxvER4k5D+88zeFBOKhsjw6mk
         sc3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=01Dh81m4jbKqJgneaTvo1zhRa3UD/HHJqjoMbOfF7J4=;
        b=KN9uQyHSqdTrs0DjW8fHkWT6hJTBcnuXGAXJ+EMXWclGoDUemel17Frh23zvZshTFz
         DuzwpHR+0GFZeKuy9TEpNrn8l9mKLnX4BPqPH70XMCK20PgL1peyc9nR/SkexaErgTOH
         XMT7A9UL03tvFzxPglQ2TLPy167MD/AIG+VZ9cJp+CAPwjfAXY5vaJKwQVu3vvOnQINu
         GcUkrUhm1gnF117XWvd70KxWdI6ZyT+ZOqk6T7oB7ZqMNEyRLMoL2c5vVJLByKpPWIS6
         ryIzJKRIHQVRui7wTnnxLLEiOJ/FABy9Dp/RClDQ6mPeagplcBLky5dBuV8NI1xT2fUN
         bKUA==
X-Gm-Message-State: ANoB5pldgOFPpjDfdLc5Jv+2nyP1u+dDt6625wiAh39l2MqyVL4mge/F
        B3e9mdu5eA4kdBu69Ej2xeQIMjOb3sYrWZUVd/G8hg==
X-Google-Smtp-Source: AA0mqf6PJ/bVmIQ/wE4S1OExKpRT9O5k9pewZIINIWmGYbkjwPDqfiGxa28TxTOCYjDRDy8IyKB5CP3C62LgP1KqHhs=
X-Received: by 2002:a25:c7cb:0:b0:6fc:834c:9c89 with SMTP id
 w194-20020a25c7cb000000b006fc834c9c89mr7444498ybe.43.1670023656365; Fri, 02
 Dec 2022 15:27:36 -0800 (PST)
MIME-Version: 1.0
References: <20221129172912.9576-1-macroalpha82@gmail.com> <20221129172912.9576-2-macroalpha82@gmail.com>
In-Reply-To: <20221129172912.9576-2-macroalpha82@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 3 Dec 2022 00:27:24 +0100
Message-ID: <CACRpkdaW8d5w5tnn-vdKQpvqXjC0N=6nCB0QfzUJ5rUk0oTt9w@mail.gmail.com>
Subject: Re: [PATCH V4 1/3] dt-bindings: display: panel: Add Samsung AMS495QA01
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, maccraft123mc@gmail.com,
        heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, daniel@ffwll.ch, airlied@gmail.com,
        sam@ravnborg.org, thierry.reding@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Chris,

thanks for your patch!

On Tue, Nov 29, 2022 at 6:29 PM Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
>
> Add documentation for the Samsung AMS495QA01 panel.
>
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>

> +  reset-gpios: true

Can you add a description saying that this must always be specified
GPIO_ACTIVE_LOW.

With that change:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
