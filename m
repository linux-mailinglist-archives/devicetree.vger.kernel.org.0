Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4172C5A03E7
	for <lists+devicetree@lfdr.de>; Thu, 25 Aug 2022 00:25:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229607AbiHXWZQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Aug 2022 18:25:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229502AbiHXWZO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Aug 2022 18:25:14 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4AFE962A93
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 15:25:12 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id gb36so36136150ejc.10
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 15:25:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=kDVToxNABKExacQDRas3ZfiqJDBEhrku2fBWS/e4Ums=;
        b=QbWgY9eUD1zG3WgOqqUfxW9fMX6snU4715+IcBpKmh1MrmLrkYTcH7lzfjFBS6FSGH
         HbfJ62NYzu26g5TV7/ztucYz5h/oIUBCz2B8gewsoMFUe59eaQbk927rosFU98AJ2H1L
         cBzYjyAevj3H55ar+M+fMUIRIvtNwlnzcUCg5uWhbGudTsq204asxcleL7jvn3QA2Vf4
         PY2KXQ2xcP2S8EVArXU67iI9bdjzKG77xc0CkzoVIEffBeqenB4DytFkV0RvGb4y9aLT
         Kih8d2Jda6WqiZSYF9lGzhEbrnhfV2Tp+Vk5rbFzfgx0LSDmKlaBMRiZq0F6mQy0oybv
         /uig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=kDVToxNABKExacQDRas3ZfiqJDBEhrku2fBWS/e4Ums=;
        b=eqztRq0Y1zFblkbGVAGgsA9H9OMB6x2vduXpeZdSSnVOrPrY4rYhvRGcnQ00tySIFZ
         eZ8iqnl85Hif1pZSbZhOKOAQtHtyVlaScA+FbqLG3uyZfY/PhltAJs4MTCBeKtjQQ8FG
         KYPdCOb456PWmgv2h/vtR2gerTDAqjgw3zVs6gnq9F3f5oDxw0DdJS0MYUvqj8nYJyl1
         6CYQAG4TvuH/5pB7U4ONybnv1pM/b9OlJg3s+U5QwJEevWK/4Hhjg+xnWwex0FD4eZVP
         Q9tVbskbuMZTNYMXg3pQGc2LutF+OXDGsQl0HNsWXYeL4x+YhCoOPRK4dW0qWppbjhK/
         lN6g==
X-Gm-Message-State: ACgBeo2xtyRdsQ+wO8CGj77GUsVHXqW7I4B0sZmOj7TicFOarxXzTUqK
        PpxkIWIh2Yg8zLvpLcZY8QwNKLknu8XLLkEsSgiC0Q==
X-Google-Smtp-Source: AA6agR6ZYmN5BEtXa49LjztHM12ysUmgfCda/hpQKJfdUpqjhL3Q7V1u/tTNdkmkXGp1bJMtNEXZRj9TD13SM/iJsDU=
X-Received: by 2002:a17:906:974f:b0:73d:716a:7d98 with SMTP id
 o15-20020a170906974f00b0073d716a7d98mr662932ejy.208.1661379910763; Wed, 24
 Aug 2022 15:25:10 -0700 (PDT)
MIME-Version: 1.0
References: <20220816054917.7893-1-patrick.rudolph@9elements.com> <20220816054917.7893-2-patrick.rudolph@9elements.com>
In-Reply-To: <20220816054917.7893-2-patrick.rudolph@9elements.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 25 Aug 2022 00:24:59 +0200
Message-ID: <CACRpkdaEjTKXn-hcDAtt-Tfq5Ggo01YJBhicWby1fAR7zPJoag@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-binding: pinctrl: Add cypress,cy8c95x0
To:     Patrick Rudolph <patrick.rudolph@9elements.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Aug 16, 2022 at 7:49 AM Patrick Rudolph
<patrick.rudolph@9elements.com> wrote:

> Added device tree binding documentation for
> Cypress CY8C95x0 I2C pin-controller.
>
> Signed-off-by: Patrick Rudolph <patrick.rudolph@9elements.com>

Patch applied!

Yours,
Linus Walleij
