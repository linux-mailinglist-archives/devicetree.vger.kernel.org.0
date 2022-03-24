Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 692F94E6AB7
	for <lists+devicetree@lfdr.de>; Thu, 24 Mar 2022 23:33:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355404AbiCXWdd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Mar 2022 18:33:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355411AbiCXWdb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Mar 2022 18:33:31 -0400
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com [IPv6:2607:f8b0:4864:20::b36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D95AABA33B
        for <devicetree@vger.kernel.org>; Thu, 24 Mar 2022 15:31:57 -0700 (PDT)
Received: by mail-yb1-xb36.google.com with SMTP id t11so10991334ybi.6
        for <devicetree@vger.kernel.org>; Thu, 24 Mar 2022 15:31:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=unhdPMLIAUACVz2ta5YZx0FTmwWyjrB4gDaU+iEB1D0=;
        b=hTxSAKsIg82thRj0mm7BUZlMO/6avdMpZ4WQZLkmubMUZsQmzFQD4lf+Ue3YZ3ipGg
         kaDNjK90NoVMsiE8EIwqEzt/UnmDCb+cv/eCMAYOeeQdhaXpvkWMCpfeZZrMyVivbx9o
         VD9S256lHvqxsLAxAKSWnc8mKXOR9GX3fzn5bzT2Ov5omnwHkN9dlm6EGAHjLvz+B6db
         Vcna5veV5wPbWfjqmYEKb2gOEZeZfoPlYKcZstebnzbNkUNQSRLSrFQeodD12Q+3oDnd
         IZVAPqvB718vY1HW1kyALmOqR8kfQJm1Mpu8blPawVV/ZLGbrwdl2criTUpSdVhbBPzc
         yExg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=unhdPMLIAUACVz2ta5YZx0FTmwWyjrB4gDaU+iEB1D0=;
        b=4x8NbMSWrC+aBvLlBUwsZRa4VOnmzHMaMuQPeIqoetVW7SYu4GCcpooCqLVMBqaFDg
         zmLrWScYJiM5obMzhAmMi2jTB3w86UjMa62wLGvlBME28fiJvRZaEO9SBFDQLbsYS2cX
         TkrE6XYPaTN1Anbh2nih+T70vTmNREDOKiJv8yz0d9a3kAE2Nty8PZFeOkzORoL42zIi
         srkXJZTsCuwLZI359wkX57veYs5o0tObQJjcuTyokhmB9+kYuwe84EC0rgnOmIsgn09J
         8ssN0vg9esq9QoOTqruReq1U9FCwM651oHkCyC8SZ2Kyj0qsUIC/m+kwXH6x2eTElxeU
         zD/w==
X-Gm-Message-State: AOAM533NGvhjmxTt2Qw/qYG7GK5i0Ang+wcmHaJ3t6A8OsZoeGLudx+d
        YZhAbcSuZ9MzEXd2NFUULi0EVReYLyty6qM/Df5M4Q==
X-Google-Smtp-Source: ABdhPJxs4t3J1ZErfS66y2YUQTZDig4sOog2fYt/B4CvIl2Z0L955zjdE1XtxSV7OohXD8tfBdoEtvvGGYDr1YIrbyE=
X-Received: by 2002:a5b:dc5:0:b0:624:f16d:7069 with SMTP id
 t5-20020a5b0dc5000000b00624f16d7069mr6922497ybr.295.1648161116855; Thu, 24
 Mar 2022 15:31:56 -0700 (PDT)
MIME-Version: 1.0
References: <20220315091106.613153-1-dmitry.baryshkov@linaro.org>
In-Reply-To: <20220315091106.613153-1-dmitry.baryshkov@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 24 Mar 2022 23:31:45 +0100
Message-ID: <CACRpkdbJVe1AhOfGNYQcnsNV9gQWXEui1iv09-KT4Yd1JocFzw@mail.gmail.com>
Subject: Re: [PATCH v2] pinctrl: qcom-pmic-gpio: Add support for pm8450
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org
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

On Tue, Mar 15, 2022 at 10:11 AM Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:

> PM8450 provides 4 GPIOs. Add a compatible entry for this GPIO block.
>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Patch applied.

Yours,
Linus Walleij
