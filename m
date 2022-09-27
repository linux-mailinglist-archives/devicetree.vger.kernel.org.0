Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B52C05EC273
	for <lists+devicetree@lfdr.de>; Tue, 27 Sep 2022 14:21:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231917AbiI0MU6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Sep 2022 08:20:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37644 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231733AbiI0MUi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Sep 2022 08:20:38 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07D8111E5DA
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 05:19:11 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id hy2so20255482ejc.8
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 05:19:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=0ZK1eijlfuB75W2R5VMV3jU4dLlENKu7GQ8sbTsnldo=;
        b=AssFJQ50nKYv9yXu5A0ATQRovpLXsd174gZnDiKQQK3Uxr82lwlViEkQ8hhOLcnedu
         QJSy8EE8GBOibVWRJ7PDOY6sOLhOG0FSB2/xbsGTRbs7BezNc2QNmksjXwSqvcRZJPwm
         srl+gGbXWj+qHX2h+3wUAClvyzrHWs51LC3VDL8kFPFHH7p65GOcWaHQTycA/VVxj5K7
         ZkIRtgZJ9yy6160sQVOFeAYxdhZnKdRINmchwd5KlKmz+M48+ZZdYaW1q7JrHRmC41/0
         wMCjuyvifCkYikZFk/uFiJL3CXCZEt8tbf5OMhxyh/r+WPRgtXIHGAOB6UnlUoSfjj1q
         fnLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=0ZK1eijlfuB75W2R5VMV3jU4dLlENKu7GQ8sbTsnldo=;
        b=oPQ3CczyuQgz8LwOd6HkGZ7u8TBNPS6R4+v9ZWoPb/7PhPvvQfkE+P84T4Yy3ezcTb
         PllYRpnvHbahSz9RqKmcljmO3jWggSqg5Csuqc++zq+/t/3bbNvUtr7fshz+FkrFCs3C
         nCtJSVzhFsSDugzUeJKW1TeVfxQHTptAY2AGQfgPF0UbNnE4A4ZBtu2X+8VuwWIRZXTg
         IYy2rpAuN9d9noJpws14lpJHDNOCnBMtSLQdCJGA3sKWjO9Hbkx3RiRNgf/5t/vVJJkd
         uxiEP24jNLTPlCwOCBQMV1ZxZ9NZ7tvorqf7tWejVnsX+p/osryEcl2vmPnAiJ4Vq/SY
         YjRg==
X-Gm-Message-State: ACrzQf0P2jiICP3oi25oyzqVRIjDxkxo10CID2qiF2IduRQz53fi3zm2
        OTrnxm3p1P2YTWYiAk4RLfSnFQiVPJim8dtypEXlnw==
X-Google-Smtp-Source: AMsMyM4DBYJmlp+aMpC8DVQo7RHtEZBA4GNatpgLZtI9iqTDVOWQDaV5gCeqqOh4C6ZJbQPRD5NTCS6UK/7FcGYWGVo=
X-Received: by 2002:a17:906:58c8:b0:6fe:91d5:18d2 with SMTP id
 e8-20020a17090658c800b006fe91d518d2mr23079321ejs.190.1664281149918; Tue, 27
 Sep 2022 05:19:09 -0700 (PDT)
MIME-Version: 1.0
References: <20220927104138.5924-1-marex@denx.de>
In-Reply-To: <20220927104138.5924-1-marex@denx.de>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 27 Sep 2022 14:18:58 +0200
Message-ID: <CACRpkdaA=3QU+_HQkK6RSe4qQJ28O4BbtT6jHuKeVjKqaqLJaQ@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: mmc: arm,pl18x: Document interrupt-names property
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Yann Gautier <yann.gautier@foss.st.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Rob Herring <robh+dt@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        devicetree@vger.kernel.org, linux-mmc@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com
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

On Tue, Sep 27, 2022 at 12:41 PM Marek Vasut <marex@denx.de> wrote:

> --- a/Documentation/devicetree/bindings/mmc/arm,pl18x.yaml
> +++ b/Documentation/devicetree/bindings/mmc/arm,pl18x.yaml
> @@ -99,6 +99,9 @@ properties:
>      minItems: 1
>      maxItems: 2
>
> +  interrupt-names:
> +    const: cmd_irq

This hardware come in variants with one or two IRQs.

Either two: "cmd_irq", "data_irq"

Or one combined IRQ (logic OR between those two!)
I don't know what that should be called, perhaps
"cmd_data_irq".

Since all DTS:es then have to be patched an alternative
is as Arnd says to just delete the names. We should however
at the very least patch the bindings description: for the IRQs
to make the above situation clear.

Yours,
Linus Walleij
