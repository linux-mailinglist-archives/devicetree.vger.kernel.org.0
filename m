Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 68B8B7481C0
	for <lists+devicetree@lfdr.de>; Wed,  5 Jul 2023 12:10:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231535AbjGEKKW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Jul 2023 06:10:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229850AbjGEKKV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Jul 2023 06:10:21 -0400
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com [IPv6:2607:f8b0:4864:20::b2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD3DA10A
        for <devicetree@vger.kernel.org>; Wed,  5 Jul 2023 03:10:20 -0700 (PDT)
Received: by mail-yb1-xb2d.google.com with SMTP id 3f1490d57ef6-bc379e4c1cbso7658276276.2
        for <devicetree@vger.kernel.org>; Wed, 05 Jul 2023 03:10:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688551820; x=1691143820;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S5BiZxAdo175caCNPuZri1kWZT7Qvo2b/jAKdwh4fGo=;
        b=OfyRAr1XW7hQ3Ug5ZYV83RPlh+OQjY+hZNUlo7TXuEAiE62322BbU2bzpy3jeDrn+O
         sOHHB8tlEdgWtyhJH1G1KfEBI8Myk45vygP4UCFwK+jqZBC6bK00Lhq8ZDeFzStzOUhL
         6+8iiOlPePTBoX/A5Z3ad9IvmVebeBa3k1UMzviqOxIqabHwgApVAvr9rxb1nCunAp0N
         KYcg2t7wqpbkN+SOaW+6BSdqqJAPbUeVZWRl4KhQ0cfqmdzofbSgnNzehST4aw+vel/Z
         zE1uF6JjFzyxrD9B/X0b+pmMZtrseJpyUBVAwc8+XOcTpyuCY1CvXJ3ei5UE3xb5y8Jl
         ATIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688551820; x=1691143820;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S5BiZxAdo175caCNPuZri1kWZT7Qvo2b/jAKdwh4fGo=;
        b=k4zDhY0Tn3Jqkns5LwNepzDEv8+6z5/Xwn0D8eM0xMCyDvj9cKPaCv3pX6a3smT+5Y
         xMeL3nM2voioJmXPQG9tTzT/nPy+td2LRKA0g48dpw0XeSweiMb/igZCY5kB8W7+egHE
         W6s1Ams5uhO31GaVWURnXFgRTU30W/r4e7/i1QI+AkNLYxa9qN7AIMAmCRoi6qiEJvzZ
         P09NuId1wJByh0tnOU2ZyLNJf4y/iOg5NAbPTiB4Wq14HKJUCgPFy7ygQxZkACH2D5/T
         wtnzbpOfQnuffy9PTV4HcM+7kGl4K1bPccrQnFEBPKtXR7MNStrAKYhbYUf9Py8jysUx
         3nyA==
X-Gm-Message-State: ABy/qLZhKMiTGxEo24sMFQe+Un/kgBiuUFigMUboS2zD1aNuH4yNG0Wp
        EYsIwtHLORkiODeY0kHTSON30cbbtnwk0ukBCf6zBQ==
X-Google-Smtp-Source: APBJJlE8B6kTceIEY/HjSKPVfI5dkey3d/+conMUwS2ilyTvOTa/wNNq2saaTt+P5NoFmmRDanVQ3M4oLG7R+EgRgwo=
X-Received: by 2002:a25:3621:0:b0:c65:1369:3f6c with SMTP id
 d33-20020a253621000000b00c6513693f6cmr184700yba.16.1688551820039; Wed, 05 Jul
 2023 03:10:20 -0700 (PDT)
MIME-Version: 1.0
References: <20230506-seama-partitions-v1-0-5806af1e4ac7@linaro.org>
 <20230506-seama-partitions-v1-1-5806af1e4ac7@linaro.org> <96c63925-91d5-994a-a531-2d7bdb3b642a@linaro.org>
In-Reply-To: <96c63925-91d5-994a-a531-2d7bdb3b642a@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 5 Jul 2023 12:10:08 +0200
Message-ID: <CACRpkdY5p9jVO0iyGhi7GACY+hBQ6a7OdoJ3W9hg22aUeNMvkA@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: mtd: Add SEAMA partition bindings
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Broadcom internal kernel review list 
        <bcm-kernel-feedback-list@broadcom.com>,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
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

On Wed, May 10, 2023 at 4:57=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:

> > +select: false
>
> You miss update to partitions.yaml. Anyway, for your testing,
> temporarily change it to true, to see errors.

This "select" just confuses me. I can set it to true and then I get
a flood of irrelevant errors, and the same if I change it to true for
any of the other childless partitions such as arm,arm-firmware-suite.yaml

So I do a best effort here...

> > +properties:
> > +  compatible:
> > +    const: seama
> > +
> > +  '#address-cells': false
> > +
> > +  '#size-cells': false
>
> You have children, so these must be true.

Not really, seama is childless.

I guess the example with fixed-partitions
was confusion, seama can be a subpartition in a set
of fixed-partions.

I'll try to write up something so it's clear.

Yours,
Linus Walleij
