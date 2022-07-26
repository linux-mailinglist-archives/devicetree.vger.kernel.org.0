Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 90210580ED4
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 10:24:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232048AbiGZIYx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 04:24:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41108 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238037AbiGZIYw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 04:24:52 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 375222E69A
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 01:24:49 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id c12so9462763ede.3
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 01:24:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2eR2bajGRP/sgNFoTl95SKN8UfWncJyTcpIwCg8mZac=;
        b=oOPs8L9PuW7OKOkDNzZYO1z+kaxW19SG4MupZMavHPwr6wEwC5Pkc+a3zCWnbp37gB
         Q/XMOdE8bkMm20N5pufa1A7ii53GVMD+uoA6jY0MaPs/Mz3pXGymLuyqhabVcfCBVdNG
         FZKT+MEl5xFBxseEjwndE1xYUEu+A4yYJMxdrijrGgYMrqOgTib+1V3AwKxFYa0Q1Yv3
         lsKS/G21RNxtTJ160BPYSlnp7cgPcAMUXrSkZQHkwV5knNUojtbyLS9Lm//Lys8qBwvo
         MvYj4n8+5MWt1T59klH/XTflGtix7ZAMhi5ycY1UPpY2nrYkEFLEkCvdxZrYePspDuGY
         4aDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2eR2bajGRP/sgNFoTl95SKN8UfWncJyTcpIwCg8mZac=;
        b=Uuc8dq9Dm8q9G35Fd02303IX47Ntot2e1a05CQ4veCDqmMFMI/aqfHWghMmf0jXEvo
         7hKuAmbsOEzTVv5e3BJUzYF75pxsLF3JR5FfT7JEAEHQaDT7UCbpTH8VShX22ThYVP2c
         pmOiJMWXmdK1VWGZStoEZF0XIess0Y8em0lQ3gCIQlh0ApEaBLU1ZoCIOXXDCq2hEIO2
         mCRT097dxRo67biAll1dUqo1p4lVmpkkdXBJBn4ycpYJ79g7YEznNHL6WT9lJGeuQ6pd
         qlVO+guifXJwLfa+AJUhJXC4idkZN5+zWdr7Qz8lGmY/cr9wQApmcd5RkBnm738AZBzt
         dwOw==
X-Gm-Message-State: AJIora91dFOFy61r26Vb8RoyBB1Q9HFr7En1cp1HKPUxe519WsiKUGRN
        emiEbLctdYH1rjkXbRvH/qBLduCkBChiXSkx8HFzZQ==
X-Google-Smtp-Source: AGRyM1tstrOXHY8xgRH3GyE5OsoHHbrAl6kqR23c9IfUWFc8GJUD8u2uEM2ekizLdZ6HC2sstvliH1Jpc4Nk7Ibfn7A=
X-Received: by 2002:a05:6402:2696:b0:43b:eb8b:d0da with SMTP id
 w22-20020a056402269600b0043beb8bd0damr10851495edd.158.1658823887600; Tue, 26
 Jul 2022 01:24:47 -0700 (PDT)
MIME-Version: 1.0
References: <20220725110702.11362-1-allen-kh.cheng@mediatek.com> <20220725110702.11362-2-allen-kh.cheng@mediatek.com>
In-Reply-To: <20220725110702.11362-2-allen-kh.cheng@mediatek.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 26 Jul 2022 10:24:36 +0200
Message-ID: <CACRpkdbJai1X1iwY+qEGH_NwwsSWk=Ap6goZEat6o4Wb5E_FXw@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: pinctrl: mt8186: Add gpio-line-names property
To:     Allen-KH Cheng <allen-kh.cheng@mediatek.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        angelogioacchino.delregno@collabora.com,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
        Chen-Yu Tsai <wenst@chromium.org>
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

On Mon, Jul 25, 2022 at 1:07 PM Allen-KH Cheng
<allen-kh.cheng@mediatek.com> wrote:

> Add the 'gpio-line-names' property to mt8186-pinctrl, as this will be
> used in devicetrees to describe pin names.
>
> Signed-off-by: Allen-KH Cheng <allen-kh.cheng@mediatek.com>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Patch applied.

Yours,
Linus Walleij
