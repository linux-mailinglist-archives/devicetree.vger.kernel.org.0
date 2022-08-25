Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1EFB15A1008
	for <lists+devicetree@lfdr.de>; Thu, 25 Aug 2022 14:11:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237197AbiHYML4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Aug 2022 08:11:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54576 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231283AbiHYMLz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Aug 2022 08:11:55 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EBB9A9A6BD
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 05:11:53 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id cu2so1200756ejb.0
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 05:11:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=TziEQIfT8hKfEDP5Z7t5yeF65uij4G57Cyknuu7/w6w=;
        b=vIrZ8NCWOU1CkG6yHxm1h2vu37U2EppV1GDep/d0CNJ7FjnqOjp+KnlxRwbhLN+fV9
         1HzYNRxXQAN3uaV1Y2RVhSnQrT4Kor+1K1a02Qk0uiUnXbTsh/hI0p+NxYEeRbuLo5rG
         HvS/JXP/d2palwSX1XzvFnEgrRmX0qPmINosLl3OrZv9zwFwPAitPBv+G2ZsUHwM2GHk
         5fH6W02XFhLtV37dPdho+DfDV+13JzfcrXMMPu2aayrvZqBDg9M15oT31nYQgZvkldtZ
         /xl1dRgFLTLUJFQOVP/GLEqSwV7cETI/EzWUNavg0XoOJt8xElSDbwlopT64MZi/p8Az
         ud2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=TziEQIfT8hKfEDP5Z7t5yeF65uij4G57Cyknuu7/w6w=;
        b=zUhoPwZ4IuZSagLsKYY71Kka49HHY5EX+nIwIt512v/R+egiseQ2GJPm4TQRIHSsQg
         5DnsBKrKi4JnPCduWW5IgeI1B9u0mWd6aoRcRzuI2LgQrOrzjOU9MpfbtqXqd4GBYlAh
         8XiTmgPzqVp4wZfS1NC6+oLke9AaRoVYpfgmLiP6KQ1cDSi9ynbQ9UbhqlPfi/7ajDmn
         2nemR+4YP9nOtT5+cAgLJmi0KsG0Mt42wE404O0sx7wXA044d0xO2CC0SktzZGklDdlf
         D8JhAqrBohdccbFbJFz4paXiD6TI2CX8cCiwPk2MlpVqnyAiUs2tD00ZbQpBsBTg/Gls
         oUlg==
X-Gm-Message-State: ACgBeo1GHfqGb5vlpLYvXqoK/g9J/orq9nt+1vZkkE5Qi4Lhg+4dORCd
        TshSOZxVQNVdnVbBNw7nJEugxHkFSeIDoFoQ/Z5sGA==
X-Google-Smtp-Source: AA6agR6q2ePXTxaY0mV4G4SJtgAsJHp4PGSggvEXvXlXh2b1VSgyWSlx4fhta3XCU0he7XtoCndciu/JYVdnWgxVmuk=
X-Received: by 2002:a17:906:478f:b0:73d:7919:b23 with SMTP id
 cw15-20020a170906478f00b0073d79190b23mr2147838ejc.690.1661429512495; Thu, 25
 Aug 2022 05:11:52 -0700 (PDT)
MIME-Version: 1.0
References: <20220816133016.77553-1-krzysztof.kozlowski@linaro.org> <20220816133016.77553-3-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220816133016.77553-3-krzysztof.kozlowski@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 25 Aug 2022 14:11:41 +0200
Message-ID: <CACRpkdY7Q7KmfjLYNZU7CwVTfoV+3UKZnA=sEJqjQE747SZzTw@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] dt-bindings: pinctrl: samsung: deprecate header
 with register constants
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Tomasz Figa <tomasz.figa@gmail.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Chanho Park <chanho61.park@samsung.com>,
        Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Aug 16, 2022 at 3:30 PM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:

> For convenience (less code duplication, some meaning added to raw
> number), the pin controller pin configuration register values
> were defined in the bindings header.  These are not some IDs or other
> abstraction layer but raw numbers used in the registers
>
> These constants do not fit the purpose of bindings.  They do not provide
> any abstraction, any hardware and driver independent ID.  With minor
> exceptions, the Linux drivers actually do not use the bindings header at
> all.
>
> All of the constants were moved already to headers local to DTS
> (residing in DTS directory) and to Samsung pinctrl driver (where
> applicable), so remove any references to the bindings header and add a
> warning tha tit is deprecated.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Reviewed-by: Chanho Park <chanho61.park@samsung.com>
> Acked-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

I assume this will be queued to one or another of the Samsung trees,
and I will get it by pull request. Just tell me if something else needs to
happen!

Yours,
Linus Walleij
