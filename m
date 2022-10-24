Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 14FAB60B1B5
	for <lists+devicetree@lfdr.de>; Mon, 24 Oct 2022 18:33:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232615AbiJXQdh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Oct 2022 12:33:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232698AbiJXQdJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Oct 2022 12:33:09 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA1E63E75E
        for <devicetree@vger.kernel.org>; Mon, 24 Oct 2022 08:19:59 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id z24so3221788ljn.4
        for <devicetree@vger.kernel.org>; Mon, 24 Oct 2022 08:19:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6jLzWTJgQOtlVe+72Zg3h4fi2g2V5ar4l63Y1PCLPjc=;
        b=Z42jI/gXhcXG5YxoueNeDtIC3JesqUpHJU8cD7xjqdpFe/r+2T9oqnaaDn/+VCsi8+
         7nv6qZR7KznLY2jF8bhwMHq7P2w5ZoLClauIm6K2swABZF28/nRRVphkYBlqNrI5p+hD
         B1qoWm8NR+r79EtsEM8ogTfNZhOQtQCK7lNx0axp6JDqRTeHm3Bvgd6DfkGHL0bOuqP1
         dICzUk7rly8w9FubrYQmbfogXHNIRrel9h/z6IF1n4sm1Sa0ecfWGuW1Nf5OuViMEKhA
         QApQJlHPCSbXoOyTMuLWi7ERjPCpf2ACGcJep+PvEl4m9Tp16dGSFEqNX36ivjvW0InD
         zklw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6jLzWTJgQOtlVe+72Zg3h4fi2g2V5ar4l63Y1PCLPjc=;
        b=hXteESwyt2zRRVZ6ogyG7TUT0gn7U02dNbMETwMrlMoeFfX+hLFsZtQ8MEsrC5Ol/o
         iYbexq/q/VfE7+DeuPXf0oUK+yFE891pBCs1I1ISjmw+hGy9Gw/wze45M/LfKd6+vXeU
         pUfYJJ6J7FTV2iPiaJjRLlUli2f3DgYjfGlWUdpTfw+wDrJmhneCGPt8YcIO/uqzx4RB
         DAcykxkEhGCGBFS9UUMBewLYUh/Go9g3eIaB+OXL9xpy074slHAYuKbGCEU5zgbd+SjY
         obqylDzpu+J07+m/glTWHVq6Xgpz50IRWZdO7bznmJ1IcjDr6Ssi8bsw6MdLh/dOYAjj
         c+7A==
X-Gm-Message-State: ACrzQf1uQxFoeDgMkagc0h+8KihrQmbS+8FrhpEd3iwwH4NOoS0MO+VS
        6KeM6NNZ1I0BM4qMTPc89FuY6ZJuHOeQNcTzgLY6c2WmbB2xig==
X-Google-Smtp-Source: AMsMyM7GEkmV9v4atHnaNyKsdWev7GfMxpVpWKrPHXn2WJtejlHSWRanZiQZYYiLQFAsWnFgfPu5INCphD8i9o7t760=
X-Received: by 2002:a19:c205:0:b0:4a4:60e5:5a25 with SMTP id
 l5-20020a19c205000000b004a460e55a25mr12642060lfc.139.1666617869321; Mon, 24
 Oct 2022 06:24:29 -0700 (PDT)
MIME-Version: 1.0
References: <20221020130957.25197-1-fchiby@baylibre.com> <20221020130957.25197-2-fchiby@baylibre.com>
 <aaf7d4a9-c767-6a63-691d-e3ae00b206fc@linaro.org>
In-Reply-To: <aaf7d4a9-c767-6a63-691d-e3ae00b206fc@linaro.org>
From:   Fadwa Chiby <fchiby@baylibre.com>
Date:   Mon, 24 Oct 2022 15:24:18 +0200
Message-ID: <CAL8gX1d53p3WQkmFrpxLZ6AUg+x_ZtBxUw08eNbkCBMRgj=jQw@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: soc: mediatek: pwrap: add MT8365 SoC bindings
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Johnson Wang <johnson.wang@mediatek.com>,
        "Zhiyong.Tao" <zhiyong.tao@mediatek.com>,
        Fabien Parent <fparent@baylibre.com>,
        Rob Herring <robh@kernel.org>,
        Tinghan Shen <tinghan.shen@mediatek.com>,
        Sen Chu <sen.chu@mediatek.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Le jeu. 20 oct. 2022 =C3=A0 18:19, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> a =C3=A9crit :
>
> On 20/10/2022 09:09, fchiby@baylibre.com wrote:
> > From: Fabien Parent <fparent@baylibre.com>
> >
> > Add pwrap binding documentation for
> >
> > Signed-off-by: Fabien Parent <fparent@baylibre.com>
> > Acked-by: Rob Herring <robh@kernel.org>
>
> This is not exactly v1 then. Please use patch versioning and add
> changelog (to cover letter or to individual patches).
>
> Best regards,
> Krzysztof
>

Hello,

Thanks for your feedback. Everything is fixed in a new series.

Regards,
Fadwa CHIBY
