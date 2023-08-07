Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3BC2C7725D3
	for <lists+devicetree@lfdr.de>; Mon,  7 Aug 2023 15:33:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234085AbjHGNdw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Aug 2023 09:33:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48616 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231917AbjHGNdt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Aug 2023 09:33:49 -0400
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com [IPv6:2607:f8b0:4864:20::b33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E8B61737
        for <devicetree@vger.kernel.org>; Mon,  7 Aug 2023 06:33:32 -0700 (PDT)
Received: by mail-yb1-xb33.google.com with SMTP id 3f1490d57ef6-bcb6dbc477eso3688952276.1
        for <devicetree@vger.kernel.org>; Mon, 07 Aug 2023 06:33:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691415210; x=1692020010;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=en68Hk5YkXu0QzfPLpo4IL6bAGnqYjgXL/o6plCTV7k=;
        b=Ibb8gGvtNpS9mXokJnl9/y9PaAkxssmL5HrYU3QgoPIRuRrzBTi7Sddme3kPhwa/cz
         se3PrdLp03h/Kn/u3Mhg6Hd2TE3OzMuRHt8aLAyF8axqMrij0c9obTm9U/O/OBuHZMvk
         3eor4w23MX9PuMT/fYZX3h1zFTtaUTnwZkpzJmbgsXAOlwrdRLOOIWAX5lFgn6zIeQT+
         kmnUkq0VjJ4M41gt3bNIh2vd9vjfeSeXUKOUZhZAxNz6sWKpwLjKrW47f2U99y6+QSms
         AU5slnJZ2CLzYr294LVnNuny+gIrJFZr0cij4VR5NG+rTIFc8sQEdREiFKFKU0Q97u/Q
         NNjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691415210; x=1692020010;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=en68Hk5YkXu0QzfPLpo4IL6bAGnqYjgXL/o6plCTV7k=;
        b=bQBxidMOgJEsPk108kySyjH1IT4JfBJSH6L6J0Ch/osQIJ5QjRKdmVnNlf4ujcs0H0
         ARtBj7aSrAqwZrK/oMFGjHTP98Q0uwFKZ0oP3ZWX6oi6i30LI6gy75ASBcdTse67Q7Vv
         U2m9C43WeZcvKj87fLbpBhQ+mWjkrUy9OWwxw83TQbDn8upi2W/EqJw0/h+qBAJRvmWT
         X+vL6YIUK8anC2psPj9AS7LyKOFJMxwKzWLTX4maPKNqLCevnpEj6zWgqagNELWf/oog
         NxRygXGbRgS75ZucikgxEnHTylPNRgcrF911jj4dCpoDxWmNib1PV3POIQ4MUm0BCJjp
         voDw==
X-Gm-Message-State: AOJu0YxYa02TYyr+OvwwaxdyQ+8CyQgkkHFZQnlf7Scmq5YCQYKZMLv7
        +FGYjDy3pgSQWmCkxu5cVPW7ty5PGs1YbBgoWVR+fw==
X-Google-Smtp-Source: AGHT+IGQPsx5D6IyG2kU5dOvzyCUpWr87ALPQZqBoCIrbm5TPADd32SF6ZybnoqgVU98baZxTUYykMbZn94oFyeRojQ=
X-Received: by 2002:a25:ea53:0:b0:d07:bce0:be77 with SMTP id
 o19-20020a25ea53000000b00d07bce0be77mr6273439ybe.61.1691415210619; Mon, 07
 Aug 2023 06:33:30 -0700 (PDT)
MIME-Version: 1.0
References: <20230721082654.27036-1-tony@atomide.com>
In-Reply-To: <20230721082654.27036-1-tony@atomide.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 7 Aug 2023 15:33:19 +0200
Message-ID: <CACRpkdbOMAGYm2WBJ_opNyfmo55MdMA5YaGiqf_DanCCwix6Ug@mail.gmail.com>
Subject: Re: [PATCH v7 1/1] dt-bindings: pinctrl: Update pinctrl-single to use yaml
To:     Tony Lindgren <tony@atomide.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org,
        Nishanth Menon <nm@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        devicetree@vger.kernel.org, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jul 21, 2023 at 10:27=E2=80=AFAM Tony Lindgren <tony@atomide.com> w=
rote:

> Update binding for yaml and remove the old related txt bindings. Note tha=
t
> we are also adding the undocumented pinctrl-single,slew-rate property. An=
d
> we only use the first example from the old binding.
>
> As we are mostly using a generic compatible across various SoCs, let's no=
t
> start adding matches for random pin group node naming. Let's standardize =
on
> pin group node name ending in -pins with an optional instance number
> suffix.
>
> As a pin group may have additional pins added to it later on, let's alway=
s
> use -pins rather than -pin for the gropu name.
>
> Most of the dts files have been updated already for the pin group node
> names with a few changes still pending.
>
> Cc: Nishanth Menon <nm@ti.com>
> Cc: Vignesh Raghavendra <vigneshr@ti.com>
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> ---
>
> Changes since v6:

Phew!

Patch applied. Any remaining issues can certainly be fixed in tree.

Yours,
Linus Walleij
