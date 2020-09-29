Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 54CFE27C7DA
	for <lists+devicetree@lfdr.de>; Tue, 29 Sep 2020 13:57:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730978AbgI2L5B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Sep 2020 07:57:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41416 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731554AbgI2L4z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Sep 2020 07:56:55 -0400
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com [IPv6:2a00:1450:4864:20::144])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B5639C061755
        for <devicetree@vger.kernel.org>; Tue, 29 Sep 2020 04:56:54 -0700 (PDT)
Received: by mail-lf1-x144.google.com with SMTP id d15so5134362lfq.11
        for <devicetree@vger.kernel.org>; Tue, 29 Sep 2020 04:56:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=wEyAKkg0BRNQb0XI+Fllxgmsp9nACuRk2KZy+Qn9luc=;
        b=yHaYZoOWCf/DHJ8zu/uGiwS87eaTWm5X0wFr6/CgM+gCpKVtO1OPRnU7MlwLFUI9p+
         mBBWvwggrUlrZvBFXfkwqtk502CUhlHOaT2t559bQqiY1oR4qARzAybhVKHCCgQHiZLT
         z69TeGvPcFpc3YXXgHwmSAOjmXQYzvcmKvNXmKoMPL/nwFhT6VHaXnL/m5pe2QWup9fT
         HkFJ5uGvhPyMuJZfZ0r1AsSxtKq16wvunbGCMvHBsESfALV2QBUJNT9JLStrZS4uJfHu
         GEs3vqIorBxvGYEIXEWYX/cEK5FE32k08PERFeKojMhszEQoYxqUrzdUjNTac2pDAHfi
         kuYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wEyAKkg0BRNQb0XI+Fllxgmsp9nACuRk2KZy+Qn9luc=;
        b=UaoQ7D9ALTDVp2xR9D2i676epvBXOi6+txg7H4jBE588uU7f9BkQFHdCwPF6gW89OP
         kh4ggJLGyyfaY8whVIVefhKq5yJLuHWzu2cpZwkOFiAnY2BUDz9tn879YWETKQXUmJz4
         howaAGv4p6ekh4PUT7xg8khQa7W2cQJARa5yrz5O95N3dXzpssUkTPBDfUhNkFrkm4/2
         ymhxO1bjZOt+/r7sglG/Yry0mY3dxQ6jt5+psw6ocss4qttwb+sZC57x0qJhU/MSX+M1
         zk8BOHvhSbRcbkDFflssUYpTOIEbafwbP22AHI7/WZSQ8RdJ3OSN+nrvXHk3DRMyMXof
         cq6w==
X-Gm-Message-State: AOAM532vHqDK3LPqf97IIEq+C0NXTYwCFJ5pLi/WL/eiO8Vyvb2e6LLp
        FnnrcQhtuKhDflE4Xt2x8nq9waXoFiB7FWEVCi9CSw==
X-Google-Smtp-Source: ABdhPJxD9RnJu9niLvXl7peBAqIn8XNlpZwat8yHk+I/9rvKMxpEJuaIW7mJjGdLPOSa+o71BKqK6zUX6arDevsifYk=
X-Received: by 2002:a19:1c8:: with SMTP id 191mr1004517lfb.585.1601380613115;
 Tue, 29 Sep 2020 04:56:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200916162250.16098-1-krzk@kernel.org>
In-Reply-To: <20200916162250.16098-1-krzk@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 29 Sep 2020 13:56:42 +0200
Message-ID: <CACRpkdacWQKgCY1E=ONegPRE001UA-DmvRKB+Yz1maapYQ5rVQ@mail.gmail.com>
Subject: Re: [PATCH 0/8] gpio: add common dtschema
To:     Krzysztof Kozlowski <krzk@kernel.org>
Cc:     Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>, Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Masahiro Yamada <yamada.masahiro@socionext.com>,
        Chris Packham <chris.packham@alliedtelesis.co.nz>,
        Anson Huang <Anson.Huang@nxp.com>,
        Sungbo Eo <mans0n@gorani.run>, Stefan Agner <stefan@agner.ch>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Magnus Damm <magnus.damm@gmail.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Yash Shah <yash.shah@sifive.com>,
        Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        linux-unisoc@lists.infradead.org,
        MSM <linux-arm-msm@vger.kernel.org>,
        linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 16, 2020 at 6:23 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:

> This is independent work of pca953x bindings:
> https://lore.kernel.org/lkml/20200916155715.21009-1-krzk@kernel.org/T/#u
>
> The DTS patches can be also applied independently.

I'm a big fan of this patch series and hope for a v2 soon
so I can apply them.

If you do not foresee any conflicts in the DTS files I can
apply also these, else you can apply them in the i.MX DTS
tree (wherever that is) or I can provide an immutable
branch, whichever you like!

Yours,
Linus Walleij
