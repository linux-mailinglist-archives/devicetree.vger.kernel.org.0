Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1C21F589252
	for <lists+devicetree@lfdr.de>; Wed,  3 Aug 2022 20:33:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229765AbiHCSdh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Aug 2022 14:33:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57830 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236748AbiHCSdg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Aug 2022 14:33:36 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC89D5A3C0
        for <devicetree@vger.kernel.org>; Wed,  3 Aug 2022 11:33:34 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id c24so2191453ejd.11
        for <devicetree@vger.kernel.org>; Wed, 03 Aug 2022 11:33:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=XZCzsgK5M5q8NHzi6xmbpn9gZoRddz3iFPlOf7axKvY=;
        b=YsMk8HXIgSnPt5mzM6iWp0him4MjXKkA/oabwfudv/iVdDck0f5XFcrhAHm94TLKaa
         FVmrXILtDZhQR2QGQa3natCmZCcPto2ksYOM/B2ofRhAbbhUmjRM583QE3TdcU/MWrVh
         MkP+MuKuFgupQuaZp7A/GlNgGuyXOf3Ob+AfNI92aqnCYZ85AvcdPc4iwkdshnhSH7GX
         K227BeQFZPX0fZMjCvgarbyKz0Lp/kL60YHyNP6xu/kDY/7tZgHwhq0+P5pi23ukZ52/
         gBZRLOw/mSh3TTv4TAgEzvbHCR1wlz00w+aqA9xg61GuUWyTtQsHBfCxnjoN0SeX+TIn
         JUMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=XZCzsgK5M5q8NHzi6xmbpn9gZoRddz3iFPlOf7axKvY=;
        b=xh77TbzNar+812Ma4VjVn/79Xun99KZQtDtoMUUucEkUJnSimZvTU0SOWMdL5RiMIr
         pxRkR+VWAA6W8FBOkRomYv1YSvo5cerbWxSFkRSB34dWk+wDBYetnv1ntgAomYxck39u
         zZd/xhtkt1MMJpynCcmchdv1730X06i2vyifekkKIK2pMEi0HE/rFH6NziKhc+PHhoA9
         9sPqPx3JUrPt0ZMcx8InQWEViCGsNEmqsoJhn9BYq26bNvhEHd+w0cSx3TMH8zG1ksgq
         9a2vJfUBmGL5x/oFr8fL2HD37zNqw99EaFyO1HNkMtA7XDtY02R11y3TSgQEUH8PWlML
         Gw7A==
X-Gm-Message-State: ACgBeo2dyGYwm0OC4apl3NQPftccsTNmStR4aC4ORBdg6w6Yh0IX3e72
        k+X5U0C0qwI8RoNEvI498ijlhyySyKE0gM8TetJ5vQ==
X-Google-Smtp-Source: AA6agR4OstbR2Blalqyf5WPQMnigPvrCXTR7+IxtC9eyJeScjSiiGyZ90qL+i68vNdVIhdN0pk0iNNMFEQPaH/XqO5c=
X-Received: by 2002:a17:907:6890:b0:730:ba11:3bda with SMTP id
 qy16-20020a170907689000b00730ba113bdamr1975386ejc.208.1659551613320; Wed, 03
 Aug 2022 11:33:33 -0700 (PDT)
MIME-Version: 1.0
References: <20220726115202.99108-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220726115202.99108-1-krzysztof.kozlowski@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 3 Aug 2022 20:33:22 +0200
Message-ID: <CACRpkdaba9QoMi0J2icp91hBYC6x7VAi=Dh9fjOVHuLnNUmzwA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: qcom,pmic-gpio: add PM8226 constraints
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
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

On Tue, Jul 26, 2022 at 1:52 PM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:

> Document the constraints (number of GPIOs) for PM8226 variant.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Patch applied.

Yours,
Linus Walleij
