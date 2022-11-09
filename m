Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F2A9562265A
	for <lists+devicetree@lfdr.de>; Wed,  9 Nov 2022 10:11:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230386AbiKIJLD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Nov 2022 04:11:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44410 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230241AbiKIJKZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Nov 2022 04:10:25 -0500
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E052713CC4
        for <devicetree@vger.kernel.org>; Wed,  9 Nov 2022 01:10:02 -0800 (PST)
Received: by mail-ed1-x52a.google.com with SMTP id v17so26243021edc.8
        for <devicetree@vger.kernel.org>; Wed, 09 Nov 2022 01:10:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=3QUCs5p4x20t+fA3jj3IjRsE5RgZihBpuubDFWuxLPM=;
        b=X7ZFhj2AXJWPd0iI5w+QPDsWjhrYZiOOtrpIQGvjlC67OqTz/9e3ssa7HsSjPKSZpG
         WerkuQ3NkDtMacm7+E4/erNkWbH80BVwwYUGXBmMvFuvLXWMwHs4T/qCjxnsrYgW8YKt
         Bm5rwb6G2jvYUgnQseyrh76DZ0t7ekEfNb4cF/YNcxaBBMfODf6F03oobV3wMGP/ROgO
         G5xKdB79391xsndcIVCWnRibFlPDkUhEesThSf9ggDwQhMbItRBGpDCEr/3wT0HE2iOq
         NMo/JZquZYniCu9Necst+YkX5hu5hUOI0ziXUiTi2AbPwmDOOHgsO65Lgb0muVborwQm
         QAsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3QUCs5p4x20t+fA3jj3IjRsE5RgZihBpuubDFWuxLPM=;
        b=cdidzLkoPUel9NQQ2cMkrUOqzQLkhKWd7uXkTaMk4A/JYdODt7pUcdJ+QoEyNEvdtB
         4ewnmQwYJ8uKQFMjwHGHyTBCDwofhbkVewXdJ8JdWUFSMEMJGm6v5CmzQ57wiz0idA23
         rekkQGjde0Ejl5DhRvcL3yhU2OgPNMAWgrYA3ud0cpp1TfHRVC/ijmU7+Mo36EJwVeTZ
         A494OIpW66Qeu1KpebWJVze80wBJgawkYNEvlzq1JsUx/q7gVVWNtKVyKL+LIX/y+0EA
         K33xB5loQDG17/mAsceogAdW8F5D6EOp4gYXgkJPY0H7W98qfww5IUNru3a0BBADe/6J
         DT2A==
X-Gm-Message-State: ACrzQf288HSRISw6rnN2Y4eEAiKtWmN16+fbek92oA0D0xuczpAMr62z
        g1Rg3ZeAfLre4+Ch30jT9fzWjDBXUZybsXM00Ywqfw==
X-Google-Smtp-Source: AMsMyM5Ms2bgWpyDJeWDMgwaZHZ3U7mXuubQ4gvDoxzd/6h/EDQt+5r7O/Txn907C7Bam5j9KMqfqGhyu2J6efHTrpI=
X-Received: by 2002:aa7:c718:0:b0:462:ff35:95dc with SMTP id
 i24-20020aa7c718000000b00462ff3595dcmr57980811edq.32.1667985001514; Wed, 09
 Nov 2022 01:10:01 -0800 (PST)
MIME-Version: 1.0
References: <20221108142357.67202-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221108142357.67202-1-krzysztof.kozlowski@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 9 Nov 2022 10:09:50 +0100
Message-ID: <CACRpkdYTyd4c-pZMmz=bZtgsgfHFMbUNDW=71HqxFtXow5bfkg@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: pinctrl: qcom,ipq8074: convert to dtschema
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 8, 2022 at 3:24 PM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:

> Convert Qualcomm IPQ8074 pin controller bindings to DT schema.  Keep the
> parsing of pin configuration subnodes consistent with other Qualcomm
> schemas (children named with '-state' suffix, their children with
> '-pins').
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
