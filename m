Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D32F6CC9D7
	for <lists+devicetree@lfdr.de>; Tue, 28 Mar 2023 19:58:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229560AbjC1R6p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Mar 2023 13:58:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229489AbjC1R6o (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Mar 2023 13:58:44 -0400
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com [IPv6:2607:f8b0:4864:20::b2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06C0E10A84
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 10:58:26 -0700 (PDT)
Received: by mail-yb1-xb2a.google.com with SMTP id i6so16202885ybu.8
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 10:58:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1680026305;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VfZn72mHdpGHn/5tkQZH0YGYSOz2tOScf6YCxBUYQ0Q=;
        b=RaMYP06uIY3kYzM/ESIWeEyOkeoNXiLitIfvAYO5QczB2OqBIfhD6OCkLKLbU/1t+r
         MtBrE1HCpaF5v+ljbNyxrkAZEe8HHmoZ8yd3vtUy02pQ06gHHzQPJ/obCO30bASDL0e+
         6Jhk6WrRuc/yywCrMmhiLAgh2YpUzDodHDIpQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680026305;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VfZn72mHdpGHn/5tkQZH0YGYSOz2tOScf6YCxBUYQ0Q=;
        b=7ZZCdEXVX30iTFu5ty8nJ+h+Q2NPhuW6gy1Zl43P5SEHt+zihgWnVwkOhq/10xLIFY
         +rupswTZhllhL3K1IgDHtJ6Tb5KWMj8NmUmhuJQCK+S+kYyo7soY6CGW0MuAxhD/wM/N
         jvwkdzcI85fE+mEwAAhAnWXB3nXv1+VmHVxqk3sWivz4FFupQ5cnvzKQkK5Onqz8Rl6a
         lsdDnVzO+BXwUEJjqrxBXkDiUeHmZH2Z9BCSVRDCyI2MjoC3Sc3QkPtAmpn5Lkj7h9SL
         cv3LzxbaQf/re4308zjxY7kwc0MbV3ih+2J1rHa7mKrG+DhWDraFEfdUmMg3Zfwdzup6
         XPlQ==
X-Gm-Message-State: AAQBX9efVvUnTlenEt1/Tuai2BgLQLxwrxWcOX/q46B+82Oi7nI130hh
        5dfcQLJ2upA25qIQwQ0/yyUQYPOJSjYUmUMeC0XbOQ==
X-Google-Smtp-Source: AKy350bgVPG6io9JT47uYAvPLrhwFbLdfgwRhCDZXvop6+TTXGiPnx0ASefaxBFQLyTxgs/qcQtxhZ52zLayyuNGkSE=
X-Received: by 2002:a05:6902:920:b0:b76:ae61:b68b with SMTP id
 bu32-20020a056902092000b00b76ae61b68bmr8179053ybb.5.1680026305274; Tue, 28
 Mar 2023 10:58:25 -0700 (PDT)
MIME-Version: 1.0
References: <20230326204224.80181-1-krzysztof.kozlowski@linaro.org> <20230326204224.80181-3-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230326204224.80181-3-krzysztof.kozlowski@linaro.org>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Tue, 28 Mar 2023 23:28:13 +0530
Message-ID: <CAMty3ZC_zJXFESh325736LHJHCtENjmU8twhU8Jy5GwW-bOz1Q@mail.gmail.com>
Subject: Re: [PATCH 3/4] dt-bindings: display: elida,kd35t133: document port
 and rotation
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Neil Armstrong <neil.armstrong@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Mar 27, 2023 at 2:12=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> Panels are supposed to have one port (defined in panel-common.yaml
> binding) and can have also rotation:
>
>   rk3326-odroid-go2.dtb: panel@0: 'port', 'rotation' do not match any of =
the regexes: 'pinctrl-[0-9]+'
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Reviewed-by: Jagan Teki <jagan@amarulasolutions.com>
