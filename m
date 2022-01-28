Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F3D0449EF2D
	for <lists+devicetree@lfdr.de>; Fri, 28 Jan 2022 01:19:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235414AbiA1ATI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Jan 2022 19:19:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235174AbiA1ATI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Jan 2022 19:19:08 -0500
Received: from mail-yb1-xb30.google.com (mail-yb1-xb30.google.com [IPv6:2607:f8b0:4864:20::b30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 348ADC06173B
        for <devicetree@vger.kernel.org>; Thu, 27 Jan 2022 16:19:08 -0800 (PST)
Received: by mail-yb1-xb30.google.com with SMTP id v186so13757414ybg.1
        for <devicetree@vger.kernel.org>; Thu, 27 Jan 2022 16:19:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3DCG3jSFRCxm0g2kfV3cHNqgsx01TK2wuMVMrv3kOZs=;
        b=nJX6+UI8YTCimbpcv+pq777gCdLu0/GnEx3ZTjHpS2o0yUjh9ly2WBhhLtEun0n18v
         0w1UV21RMSfZv8hSpUqL1dSFQJ8X5FfR0IOlMgzcb7ywgkd+ZRzMzOcdenlzemlIGqxO
         XRQrQuOw6IbkMajKB5hoZqZS/I91t1ghfvNomkXWxCWOTTxQrPwZTPH3N4gdsOtz814r
         JXfvW7M9c/aS5ykLbFEH0mW8HLFkswy8tt2zL9sFb+0rfjAHILk4LoTt38qYFPZ6DnKq
         CJt0+ULHi5RzCfFguwZ+IOVnFREAXtbOkBv9l3rQ+YQhjJDtbkDwvzPsoo6fyIkPPJ7t
         RBvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3DCG3jSFRCxm0g2kfV3cHNqgsx01TK2wuMVMrv3kOZs=;
        b=LjwH1HS1GwSMuVCzGDUkJOO1mks4vN3X2lklbKSShfr1Ub3wFNO2cPbGm8xAIUvOM6
         rxucs1v6TwA53V4Nbsacy0CrFIH0NvaGN8aNPQKw94Ml06n707bNtBvfVmLU3Yq30B4y
         Piwa+kt4FRO62PDo2Iol9Qy1WSiN141lEv0H03O3Pga+pL3TTV8ik+4a4xYxr06foz5k
         QziCNI/bmF9GrxHcbtJefqIGaPW3w/vV/br27wflU/6XT5da8bmUViOKTam+CcW/C24N
         yoJs2e3Ke03DlGWyZIPvZe/xZUqsy86WlzHe7rWJRrJymXeVirgZ12oVNaC8A6TLpTsM
         BovA==
X-Gm-Message-State: AOAM530JQi2uKvXtZInaTpjl2ZZ0REmESf0Ckzdh4UGsw4dimUW5P4TU
        UPMVwxGlOy53droolRy4gN2KAnPSrcxsDU3baNotLp5u4WQ=
X-Google-Smtp-Source: ABdhPJyykXdIj7dPguTyjg62i8Gn1/OIXWg5z8qwoIkr3LKwT6wwILgx7t7DttiqJWU5ru3WZYNPOodW/GSuSJ6/0a8=
X-Received: by 2002:a05:6902:124a:: with SMTP id t10mr8266567ybu.634.1643329147454;
 Thu, 27 Jan 2022 16:19:07 -0800 (PST)
MIME-Version: 1.0
References: <20220127200310.4150981-1-clabbe@baylibre.com>
In-Reply-To: <20220127200310.4150981-1-clabbe@baylibre.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 28 Jan 2022 01:18:55 +0100
Message-ID: <CACRpkdY7O=KjhbeBZiokchFhSo8dTM+JAeBOTq+qkKE7-63jPw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mtd: drop mtd/cortina,gemini-flash.txt
To:     Corentin Labbe <clabbe@baylibre.com>
Cc:     miquel.raynal@bootlin.com, richard@nod.at, robh+dt@kernel.org,
        vigneshr@ti.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jan 27, 2022 at 9:03 PM Corentin Labbe <clabbe@baylibre.com> wrote:

> Drop mtd/cortina,gemini-flash.txt since it is nearly already handled by
> Documentation/devicetree/bindings/mtd/mtd-physmap.yaml.
>
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>

Thanks for fixing this Corentin!

> +      $ref: /schemas/types.yaml#/definitions/phandle
> +      description:
> +        Phandle to the syscom controller

syscon?

With that small fix:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
