Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DF735570172
	for <lists+devicetree@lfdr.de>; Mon, 11 Jul 2022 14:00:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229805AbiGKMAP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Jul 2022 08:00:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54476 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229624AbiGKMAO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Jul 2022 08:00:14 -0400
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com [IPv6:2607:f8b0:4864:20::b2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35DE4371BC
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 05:00:13 -0700 (PDT)
Received: by mail-yb1-xb2a.google.com with SMTP id 75so7026803ybf.4
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 05:00:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=uBRnReI/EWbnz6sUhTBWAlqOUHOEPxHS7DXa09LHTHk=;
        b=cZCX7qE4GJaHsrdfxQTALnTMCRUcRiYD08jxqjnZY8YlcqIjCeLTikKt8znUSUKs60
         slwaH/HKyOJlCq9Bv0rFBL/ttcPEAVMmOqYaS8qKhqH1iqB5lcKnOgW2M4jQUOSxKWjU
         ZRonmVfGrdIxLEOUxxTrkwvZvKdA2FD+OUUWNxwjZteWX9ZITT9Cv+Orz3pAbQbW+DLF
         PbvXeCQ1zLkVppClLM+cq3IajdCtYcDJnA/lVUIw2SlLN/J7HkIRsu7A/9/MkwbKXPmI
         xJfB7ZrLVSxM+4brh3ykcnnIr4PO9MvnEX6wYUodtu4A30jqXRZAea37mHqBQxruLtqB
         DB/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=uBRnReI/EWbnz6sUhTBWAlqOUHOEPxHS7DXa09LHTHk=;
        b=lroa7Ohf/nDgIbEJXUfsnxMut/ibQLtmwGJ7dXaDNgHr4qB79l5P3CuHFZRmqA6zb8
         sD0nowGJO1eF6RqQ2E3BaXTEtcHt4/vTUG948rcVSeD00funItqX89bSu5nzmB+8fvK3
         3m4QOScTJ1pwSFVU4C6LOhtySGTC2EPyq/JhafT9x35pzZunIw+E/glHgNiN5G6uolca
         WnLKFUHKWqYpgQqS/y0VzZ8pIk9B8J6mvDfltDcQAeMV7VGnIWxcywNyVejRItSXsD0h
         ZAqhMs7G2cXstfiFzqrjjhm1g2mX0uqewOOlKrsoCO2ruZQAK+0YG0/OXev/WbIvuAFo
         Fsxw==
X-Gm-Message-State: AJIora+ny+mZ6FUUsyRV5Z7dpeiqY82gryeluXftHUGr/Miaw420TdPo
        DsxoAx2KVteQIUi05X67yIrpuDChZd9XXGHgIf+eaQ==
X-Google-Smtp-Source: AGRyM1uFGpCTROuCfVKjWlz+hz544UUzULXGIlRp7bn/8BuvhxzWdGAKXTMOr2Q1EKlBr6eoRV7167vFOm7xhSPQT9c=
X-Received: by 2002:a25:fe04:0:b0:66e:1f8a:8e89 with SMTP id
 k4-20020a25fe04000000b0066e1f8a8e89mr17205797ybe.514.1657540812354; Mon, 11
 Jul 2022 05:00:12 -0700 (PDT)
MIME-Version: 1.0
References: <20220630110453.186526-1-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20220630110453.186526-1-angelogioacchino.delregno@collabora.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 11 Jul 2022 14:00:01 +0200
Message-ID: <CACRpkdb3m=7AbkEYvFrDYyh4OYLUmbt2OmZ=bnON_OfOJ4GXig@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: mt8195: Add gpio-line-names property
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        matthias.bgg@gmail.com, sean.wang@mediatek.com,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        nfraprado@collabora.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jun 30, 2022 at 1:05 PM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:

> Add the 'gpio-line-names' property to mt8195-pinctrl, as this will be
> used in devicetrees to describe pin names.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Patch applied!

Yours,
Linus Walleij
