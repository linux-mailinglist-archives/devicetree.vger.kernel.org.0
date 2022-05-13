Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CC67C526D6D
	for <lists+devicetree@lfdr.de>; Sat, 14 May 2022 01:20:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229450AbiEMXUT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 May 2022 19:20:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230313AbiEMXUS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 May 2022 19:20:18 -0400
Received: from mail-yb1-xb31.google.com (mail-yb1-xb31.google.com [IPv6:2607:f8b0:4864:20::b31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3287EBC6CC
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 16:18:42 -0700 (PDT)
Received: by mail-yb1-xb31.google.com with SMTP id j2so17854362ybu.0
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 16:18:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=peFPtL0ZhzsJZHNucBDtSwt3F1izphFO+BREPiZmQjc=;
        b=neoc4bliNIEuwITc3td2ZW08qZUSbSxEOpHqeR4p8ZRBmPCnGFYguhLglAwZ+Zg7GD
         IHiTKfAwBSBXj7zRbP+cFmi6g6NOO26eqWMaoEdHKOEqxwwVH7Sas76I3p9g5NJHnV3j
         UTZnJJHhKUxrjf/+krI5Du+FGuy3MSr/HUPLfnZYZCf4sLJsQUT6O/jh9YTkbrBQBBP6
         6ukMi/1/AukIUqqMlEqPnDoE25XZyk57RvDoJOxucC5Qln8wTzBuHoUXMac9Pc7evjuq
         ou0AQn4ZteR4wxH0ZzwnY4OpDeFAx58uf/pZ59dN0BdDBLIQayLelu0NaoS8mxsQKyZp
         /WMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=peFPtL0ZhzsJZHNucBDtSwt3F1izphFO+BREPiZmQjc=;
        b=2xy8PFyjHeBeOQGxDpev79gf6hem6mRj2Wz5907oZc39Dx3I9aDAXvfcXByfj+klO8
         ZZGjfwppb5Y4T+Utm5J20viZRVQMJo6mpZtxGSYXhi6vltyJvuxtvdZviYre6YXLpugh
         fIRc/6qJna162hCPnppD1moReBlJ4rVPVyIn7xBqQQrYmSLPQTDM507s7PuPEQfIY3+r
         wMDQaSGLFq+Rm0pWXXegNtFI2MXNK8ilhe3EgaV/JMAEbnbf7wKXprDmfMVgbQzAFWiY
         zdlkW4v5ddG+6KGvEUGbmI5j5zBtVn8QOglf1LdYXG2TLlXSmzODUm9IxaagG8+uZKSK
         6cNA==
X-Gm-Message-State: AOAM531he3pfXYEHiGQocEXL/GYX9R8STyBc7KHMxPk+zjDJppVUeu2g
        ME5d5tIJqR9vtnPzZuIvkmsJjlxijJvSXpmTMnNYAA==
X-Google-Smtp-Source: ABdhPJzq/anb8INHniF8SiNul15kIbegKtWUZLQxaVHXqzCkz8MczW1Rtjm+OV0/55vE2qrtnxfGrJFNvmZgkA2MHhQ=
X-Received: by 2002:a25:bcc3:0:b0:648:7360:8e75 with SMTP id
 l3-20020a25bcc3000000b0064873608e75mr7252850ybm.533.1652483921333; Fri, 13
 May 2022 16:18:41 -0700 (PDT)
MIME-Version: 1.0
References: <20220508135932.132378-1-krzysztof.kozlowski@linaro.org> <20220508135932.132378-2-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220508135932.132378-2-krzysztof.kozlowski@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 14 May 2022 01:18:30 +0200
Message-ID: <CACRpkdZLsw7rU113x88MKxTUEPgueLHf+7Pu4FevCAQLP2jBqg@mail.gmail.com>
Subject: Re: [PATCH 1/4] dt-bindings: pinctrl: qcom,pmic-gpio: add 'gpio-reserved-ranges'
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Luca Weiss <luca@z3ntu.xyz>, David Heidelberg <david@ixit.cz>,
        Konrad Dybcio <konrad.dybcio@somainline.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, May 8, 2022 at 3:59 PM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:

> 'gpio-reserved-ranges' property is already used and supported by common pinctrl
> bindings, so add it also here to fix warnings like:
>
>   qrb5165-rb5.dtb: gpio@c000: 'gpio-reserved-ranges' does not match any of the regexes: '-state$', 'pinctrl-[0-9]+'
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

This does not apply on top of pinctrl's devel branch, am I doing
something wrong?

Yours,
Linus Walleij
