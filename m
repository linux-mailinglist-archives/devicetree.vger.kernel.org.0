Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E74D774B5DF
	for <lists+devicetree@lfdr.de>; Fri,  7 Jul 2023 19:34:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232682AbjGGRen (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jul 2023 13:34:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232394AbjGGRem (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Jul 2023 13:34:42 -0400
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com [IPv6:2607:f8b0:4864:20::b32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1381D1FE5
        for <devicetree@vger.kernel.org>; Fri,  7 Jul 2023 10:34:41 -0700 (PDT)
Received: by mail-yb1-xb32.google.com with SMTP id 3f1490d57ef6-c1aad78d5b2so4953621276.0
        for <devicetree@vger.kernel.org>; Fri, 07 Jul 2023 10:34:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688751280; x=1691343280;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4T7IMxN0TP5UXWRADoHIlZLwq+oACmj5uQt2K3uBHp8=;
        b=ua0N9EikGOR3PcFTrAJY6G11Vfgf3l/sbCakQgDc6n8aUXs9GX/k0AcJXtPvSLKw2L
         wU72VhSqIXgNsPwPmw9cgMA8yzYOf3k7fWn+18GbY47N5ivDXR9CfEHnxAJ7Fd4IUQI+
         EP1A+9Eti1IsdimXcmT7+7S1sbS528fTnZlNe12g6AfETIkY8d2JSdgNmAxrrJTLOeJo
         QL0123RRJBW8qC/xQAaRShDQabXW4dfYtU5zUa6wDK3TPjrLj+sydSZJSa4sTBMqdrY7
         Y8WBQ1EW+aBIyulIV3s4YGmjT2FnXyjtjcISV6h3l4EZiMMFsKguqla3YNxEQBOs3ldx
         iVKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688751280; x=1691343280;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4T7IMxN0TP5UXWRADoHIlZLwq+oACmj5uQt2K3uBHp8=;
        b=i7N1qUj54iR+wfkxQJOfb7BWPRWEDqR6Ud/VVjwTPFrPqy/ySNvHdstV2h+VdTkpD9
         zwuMX0O1jDkTnrHklyy1fqXF//qAW3wYyyZc04owDH1Foe48S+9WRjSjFExAVlaiyF+C
         kwJ00brwKGuKfqDz++Bf4yR4x9G04fPfR99BT/GXeLr1vK29u73a5rm202Dvg620ESvU
         ui8sZ4rYRWjFTVmQtpSOaLA7r+jykZkZSk54i+58k+3cJfju3hHWXsicI6L5PI3VffdL
         t+oxKUmuNTQ+RW7r4uJgLbBrMjHoCoDeitqZTQG9ypHOtYe4/u2k1WaDUxefpQONUHyC
         FEkg==
X-Gm-Message-State: ABy/qLb0D4ns1nW78h/49Rj81qSG5FtjcYMRUA8Ndl3lzzQ4zbmtRY/+
        KaZHBsvW3QZ2u34TbAEKqBwIfCzLvIWnzmDgLf1anA==
X-Google-Smtp-Source: APBJJlF6NiXDPI9P8bH5HuRqAOnEAHZSiuJMz7y6h3P1N9fjLRuXkXl3vrm1y7HqnhUUPw2k5JPsRuq1E4Z7cYeqVxo=
X-Received: by 2002:a25:aea6:0:b0:bd7:6e9d:656 with SMTP id
 b38-20020a25aea6000000b00bd76e9d0656mr6339219ybj.17.1688751278764; Fri, 07
 Jul 2023 10:34:38 -0700 (PDT)
MIME-Version: 1.0
References: <20230705-seama-partitions-v2-0-9d349f0d5ab7@linaro.org>
 <20230705-seama-partitions-v2-1-9d349f0d5ab7@linaro.org> <20230705195154.GA1702900-robh@kernel.org>
In-Reply-To: <20230705195154.GA1702900-robh@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 7 Jul 2023 19:34:27 +0200
Message-ID: <CACRpkdbwCYknVbyNdPivTsdbc+R3ndCkkgMTsryoautimpQguA@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: mtd: Add SEAMA partition bindings
To:     Rob Herring <robh@kernel.org>
Cc:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
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

On Wed, Jul 5, 2023 at 9:51=E2=80=AFPM Rob Herring <robh@kernel.org> wrote:
> On Wed, Jul 05, 2023 at 12:17:46PM +0200, Linus Walleij wrote:

> >    - $ref: redboot-fis.yaml
> > +  - $ref: seama.yaml
>
> I think this is in the wrong place. These should be device level
> partitioning schemas, not an individual partition type. (Though nesting
> is possible)

OK it wasn't there in v1, then Krzysztof said it should be there
(if I understood correctly) and I will remove it again then.

> > +select: false
>
> Remove this and your example will fail. You need unevaluatedProperties.

OK

> There's a problem in partitions.yaml. It never gets applied, so this
> schema never gets applied. The default 'select' is generated based on
> $nodename or compatible, but it has neither. This needs some more
> thought on how to fix given the variable way partitions can be combined.
> Probably at a minimum, all the 'select: false' need to be removed.

I don't think I can fix this problem, I'm not that good with schema.
I don't even understand the thinking around the existing partitions.yaml.

Yours,
Linus Walleij
