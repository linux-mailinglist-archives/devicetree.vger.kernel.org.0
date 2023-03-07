Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 65E706AF887
	for <lists+devicetree@lfdr.de>; Tue,  7 Mar 2023 23:24:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230025AbjCGWXb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Mar 2023 17:23:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48788 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231502AbjCGWXC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Mar 2023 17:23:02 -0500
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com [IPv6:2607:f8b0:4864:20::b2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C17DABB36
        for <devicetree@vger.kernel.org>; Tue,  7 Mar 2023 14:22:47 -0800 (PST)
Received: by mail-yb1-xb2a.google.com with SMTP id k23so12913736ybk.13
        for <devicetree@vger.kernel.org>; Tue, 07 Mar 2023 14:22:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678227766;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5YjSGVFL23aGYtOKm1Ftz/b64+tciORVkVlETDnLgUk=;
        b=D2t4vF6DzPY+77yDIu1t4LFweWOShObHecQg5NqGy/oZK9AjKf5QnwOAFUwW2JwrY+
         vo2Ko3K76Hufbxsgketu/Kq7FNcZwnlOIgaF8CahifqfRieoDIA68MGTO/Nqua8tBp9o
         sa8B540PwXujUNNmfJ2jXarBM0DGPOOEQ3M24Opk+JJCqaza+atah7OXtgMVIFD49esI
         ARhh+ixJG6ViSTC+YegTevzvt35O5lZj9CVx5b3JLS3NMLsZxahY5NZmThxCFv53KokQ
         vWK+kPd40Cg7PJ//fEwHLYiMVoo5EUvsbysXQnchoSHa+i8LrZHgIIU6pe26OiY5IWio
         W/qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678227766;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5YjSGVFL23aGYtOKm1Ftz/b64+tciORVkVlETDnLgUk=;
        b=BsA9LwV6mub5/yxb2PtkOkkqIerWNnxAbm+BqADFb6gtd9Wuby3LAF3bdD05zdig2x
         mrq5B6MwH4kd4uJY5piCYf5DcnuL9E+3BWoQBJFssmXZsajgrJpJxY8J6muUiQL2WZqk
         qPbaeFM2ChxaSgzEHd+c+F36zR7FocBsG9MYiOjiCnszyGpgnSoKtSbC0/V+u2Z2+9sT
         TgC9CJuHCgtGBllaV4g1rsnvGCedcLOPGosmYYFHu6ySFS+b921KEzi893CGJmZ1rBH5
         nWjtbK5uvPfzViY27fP3CK+5Zc91yGgp3eZc5SPZ4j6igHK4ThI3WZez/qUW0/eNu41t
         +ZxA==
X-Gm-Message-State: AO0yUKXNIyVxIbHI/7DXPfBSb0eU/YDpI0Z4EiR4I6BAnwBNSBNRYoi5
        k5dXKLhcBhgQrjnXy7BXMb+XkF8xgHBC2FiKYy9cYQ==
X-Google-Smtp-Source: AK7set9r2P3aZtqkFd8o65fo0pR9pujvbwTr8Q0ckC+reGxZ6RbMx9OnXFP41k7NDPtIp8qWJODCk28Yw6NompBM0ek=
X-Received: by 2002:a05:6902:c3:b0:9f1:6c48:f95f with SMTP id
 i3-20020a05690200c300b009f16c48f95fmr7759792ybs.5.1678227766488; Tue, 07 Mar
 2023 14:22:46 -0800 (PST)
MIME-Version: 1.0
References: <20230220121258.10727-1-lujianhua000@gmail.com>
In-Reply-To: <20230220121258.10727-1-lujianhua000@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 7 Mar 2023 23:22:35 +0100
Message-ID: <CACRpkdZ=6bU2gPv4zVzMBFaCgEY+fkRbrnLAB6NGOhWus1gwaA@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: display: panel: Add Novatek NT36523 bindings
To:     Jianhua Lu <lujianhua000@gmail.com>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Feb 20, 2023 at 1:13=E2=80=AFPM Jianhua Lu <lujianhua000@gmail.com>=
 wrote:

> Novatek NT36523 is a display driver IC used to drive DSI panels.
>
> Signed-off-by: Jianhua Lu <lujianhua000@gmail.com>
> ---
> Changes in v2:
>   - Drop unnecessary description
>   - dsi0 -> dsi
>   - Correct indentation

I'd like Konrad and Neil to look at this before we merge it.

> +required:
> +  - compatible
> +  - reg
> +  - vddio-supply
> +  - vddpos-supply
> +  - vddneg-supply

It appears vddpos and vddneg are not necessary on
all variants, can they be made non-required?

It is also possible to do some - if -construction of course
based on the compatible, if we want to be fancy.

Yours,
Linus Walleij
