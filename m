Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 777185783CC
	for <lists+devicetree@lfdr.de>; Mon, 18 Jul 2022 15:35:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233984AbiGRNfW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jul 2022 09:35:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233900AbiGRNfV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Jul 2022 09:35:21 -0400
Received: from mail-yw1-x1136.google.com (mail-yw1-x1136.google.com [IPv6:2607:f8b0:4864:20::1136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DEEB5BE1F
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 06:35:20 -0700 (PDT)
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-2ef5380669cso107030727b3.9
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 06:35:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=VA1ac5uvP0jL3b2/bdbOjZZsTK7eMBU+AUDAOCTSHWg=;
        b=GtcPSLBiM6uVu28CNcQ+3gFgolNxS+e7LoXMuTaGY+9J3FqlSMN48zcb+YRmQqN+oN
         8yg2vjgbFJKXZ6ARwY73Oev38+VSNgvVRd5/hHVF6BBwkx9yT1SeLXKStgbIr3gPN2Xz
         329Xjx+XXN34JXZ4nUnpv7f81QlqlZ3+duKUtDY5zEeILHRzEah+jGnZ4C/nF1g8KW0X
         8dfv0KtzwpORo7etwbhg7PIM+SQIJumTQmvhkQlv0bsTmDWWdi+8YsFl4ZSf+S8qqMHZ
         AdUiiI+ruf9YNMJSHKhu+wtddFY2l4MTFFuhoop5K9MhCNPKbyPmshgN2KioHUdtM7BC
         rzmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=VA1ac5uvP0jL3b2/bdbOjZZsTK7eMBU+AUDAOCTSHWg=;
        b=qVOTpVzLzuXs8Sc8yqklR4khfKPt8Nzq9byrPi3tgTYd9QNi2NQVWTGPf1f7qJhz9j
         9nZEtPEvMZsa4skVJ4RWotQA0MXac1nPkoAv9EuJ/qBjhmKbrAXCd7Om9bBvgpqE5UpL
         Fq9jxZqY/96hDpP87Tf4FuwOLrKWuf+M2Ps0zYH1nzrwXQUTBqktJQIDC9BGfs0aUcOt
         9ZitbvsKDs6pxiLAtGhDG0gN79tjgJkrECQhgh1t5JwAB4CQF6rhOwpn2JIgCC07KiSC
         aiHJ/aIxwN6MSlnUG0xt3GQDBZQkv9zlTGeYG6m1uSgeJDUFOCuaCot2lnZGLQjg4AQv
         vmOw==
X-Gm-Message-State: AJIora/z/3piGWpZhZuXCn/jjMnvtLFfbd+M7VA+LQzTPW+JlZvFD7FD
        e4JL4+5MqoWIBHEz4tXpHirIhdjpZQYIKgLyTm+mEw==
X-Google-Smtp-Source: AGRyM1sdYeiYVniKDN529cobMS4DD4f3Xk3cadvZzaf7otckgKV39IsVAGQFnrI/rZGNsEA726QcYYC4tiBj2zgCRpQ=
X-Received: by 2002:a81:548a:0:b0:31c:b7d6:b3ca with SMTP id
 i132-20020a81548a000000b0031cb7d6b3camr30351662ywb.500.1658151320156; Mon, 18
 Jul 2022 06:35:20 -0700 (PDT)
MIME-Version: 1.0
References: <20220715103029.204500-1-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20220715103029.204500-1-angelogioacchino.delregno@collabora.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 18 Jul 2022 15:35:07 +0200
Message-ID: <CACRpkdYagmVAim68q=AOzrQfPw=fk5Q1z+B7X3nRDa-X4XukOw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: mt8195: Use drive-strength-microamp
 in examples
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        matthias.bgg@gmail.com, sean.wang@mediatek.com,
        nfraprado@collabora.com, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
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

On Fri, Jul 15, 2022 at 12:30 PM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:

> The property mediatek,drive-strength-adv was deprecated: change the
> example for i2c0-pins to use drive-strength-microamp.
>
> Fixes: b6d9af2c6b69 ("dt-bindings: pinctrl: mt8195: Add and use drive-strength-microamp")
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

After finding this in my Inbox, drop my own uglyfix and apply this instead.

Yours,
Linus Walleij
