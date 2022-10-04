Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 90FDE5F3E84
	for <lists+devicetree@lfdr.de>; Tue,  4 Oct 2022 10:38:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229724AbiJDIit (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Oct 2022 04:38:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229569AbiJDIis (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Oct 2022 04:38:48 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5AAF13A163
        for <devicetree@vger.kernel.org>; Tue,  4 Oct 2022 01:38:43 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id nb11so27305823ejc.5
        for <devicetree@vger.kernel.org>; Tue, 04 Oct 2022 01:38:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=Pdti2+VhEQ2CFlIE/PBt8L7tRJaOHxC5L8ndWyKwiZU=;
        b=elp0SRfKxekqptIq4cG4gkRkrnMlQURZ7afE2SiDE5v44N9xYtH1F94+7TB6DFUIAo
         S9kdb+SLRpnBcsfWcxwWj1fsnKOGtoZzWKfcJkO2gBKoRYlU6DIsslOze7ds/MGdchNb
         WyyXd3l9ruuxyK6ErnfpYHTvmEKq9ZB+fuE20f+D/dvDrkj+QQAFe8KZkkkfFkjYOISX
         7ASOtgS4pGyk5LqNNqFbn0Oggl9hxVJ4PSf8O3H+xqw9Z/i9DuC0fx2JpfhBPhOA7u2Z
         upXElt1p/zJcGkST0CRd7uvGPPqwm21q/kEq4VQCGPhx2vZyP45gRxjOCHXAjuQPelgK
         9r/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=Pdti2+VhEQ2CFlIE/PBt8L7tRJaOHxC5L8ndWyKwiZU=;
        b=Wp/TayBCcLo7JZ6VFQhzk4T51Nj8IBPLoBVKVXU74BCFvuGJK005n56+XiSsQreqKe
         2lZ3ep8+XXHIZRGG/1dFHrF+fJ9NeWuiCcaQa3rr6DeIk8B6jBPRFYju+TU02QSPONH5
         rG3W7wv8ztvE5EbPKJ27ZlAEJN5xttz/7bmImG10mfLEmx3w9xG2BCefDbmjyhU5odi/
         Nx9YfF4XNUXMCWoZkKl+SjnOBAbrnYaNFDWlQywgq+fOHQxueoDdXmjzQ15jKVfECE9H
         IIJfrAvZMyTZ2ULFiaF0wLoj+zWZYR67sByUa4ngvhNXJBv502YGv+c4JyDerr6NTkv3
         C9lA==
X-Gm-Message-State: ACrzQf0CFGOsa0avjUpRvfbJj/V1CEkB97WNUi+8ygXEeu1oxqxC5HWa
        Iuu4kXD+4RpFNIAZZOlnEyxEcTDR6OVYkK11X2kZqw==
X-Google-Smtp-Source: AMsMyM4spjtMLizp56G5eP4S4o6K8cWN2P8PGJo/ZmF98Z9LCxo7Fcz3HCJKOpi6prC6ZYE5KdISvOTCqgwzo9uT1Nw=
X-Received: by 2002:a17:906:9b86:b0:73d:72cf:72af with SMTP id
 dd6-20020a1709069b8600b0073d72cf72afmr18268600ejc.440.1664872721922; Tue, 04
 Oct 2022 01:38:41 -0700 (PDT)
MIME-Version: 1.0
References: <20220926204735.381779-1-marex@denx.de>
In-Reply-To: <20220926204735.381779-1-marex@denx.de>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 4 Oct 2022 10:38:30 +0200
Message-ID: <CACRpkdbYndUNAoQ-bnf8O3Kdx38kt2Czx_N8J5jk0tasM6onTA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: st,stm32: Document gpio-hog pattern property
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-gpio@vger.kernel.org,
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

On Mon, Sep 26, 2022 at 10:47 PM Marek Vasut <marex@denx.de> wrote:

> Document gpio-hog pattern property and its subnodes.
> This fixes dtbs_check warnings when building current Linux DTs:
>
> "
> arch/arm/boot/dts/stm32mp153c-dhcom-drc02.dtb: pinctrl@50002000: gpio@50003000: 'rs485-rx-en-hog' does not match any of the regexes: 'pinctrl-[0-9]+'
> "
>
> Signed-off-by: Marek Vasut <marex@denx.de>

Patch applied.

Yours,
Linus Walleij
