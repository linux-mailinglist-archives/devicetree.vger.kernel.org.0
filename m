Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9F63442B093
	for <lists+devicetree@lfdr.de>; Wed, 13 Oct 2021 01:48:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234252AbhJLXue (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Oct 2021 19:50:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46454 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232772AbhJLXue (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Oct 2021 19:50:34 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB158C061746
        for <devicetree@vger.kernel.org>; Tue, 12 Oct 2021 16:48:31 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id i20so2473891edj.10
        for <devicetree@vger.kernel.org>; Tue, 12 Oct 2021 16:48:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Vc3CH5v4CBSXLkSVO9jLX0r7Nwhcrzxe9j4W7AySQ0A=;
        b=YiYwmX9uZwhLPGxi7YYAyH1b7YCNSdYLJBQQQo8XkaUlp5MBhCvNlkmvNNKwGAVb/h
         XLZ/+Bt5Y7JVQQG6o5ysOyO1NeB32cFZWCLGBzYvXDwmeCLZMH9TW2eHtHUN2esOJrBc
         1nJr05dIxcDvBSDU2wE4relg4p6aNfdPOQyL2G3b2l1HRHJXL29/LA6zeQreq3Yevwzn
         3vR9BCW23XkQZRExUHQsvigdweyc2Y2gXO032aEFxF2dXmT4lDEolY/k4LIFNU92ZCjo
         q43xIbAHyyosboB4j+OEMwt1RJjxoqn4dY9xb4SilxHsQz12Cz6WGSD+vUIsfwepnire
         DWsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Vc3CH5v4CBSXLkSVO9jLX0r7Nwhcrzxe9j4W7AySQ0A=;
        b=cPecIZGdM0IEc4VYLTexTpBnor65qTzzyrlnbCEcQa6XcGzMzZiNb5ZB6t+zKdi8iD
         OQ1Lac4TnBV7RT+2qy3ePlk0H/FRh5xnl7II0SS+9wT2jrt0dxjIS31kuN/vg64M0Lu8
         jnFHiD8PbOYYC32rcTpjMxFuzcJ6MuXtII0wy2sPifu20YKPk7Qapk8rb6rsCwTbCpae
         IotqvBrELgQ2WMLACJ4l44cP3GrT64x42+vKn15fIo5C/8NS36geLivxemUyXYao5m+N
         MnXuNX9BKh6+Mgx3jeRzKvB8awgsngRGwNadgDsnc5KJgDySrRpOIvR6aq6Cx4C7qFlj
         D8Nw==
X-Gm-Message-State: AOAM530Vb+gMdZajSlijCet5xTJDVM3d1fl8zOjdiEGHLHZLH4MzxKcy
        qFkA796dzTlWj3YU9GZDXxUO0kqrJBBD9gNzV4waS9cbywY=
X-Google-Smtp-Source: ABdhPJz5Gqo2ypBZPFh79sWzBRrMyiHHhGRW+TvFqxOmmo8tMMyafTzE6U4WIDqmviR4WoadTP4iD5T4YS9aBr8UrDQ=
X-Received: by 2002:a17:906:5e52:: with SMTP id b18mr23544441eju.560.1634082510434;
 Tue, 12 Oct 2021 16:48:30 -0700 (PDT)
MIME-Version: 1.0
References: <20211007212444.328034-1-luca@z3ntu.xyz> <20211007212444.328034-5-luca@z3ntu.xyz>
In-Reply-To: <20211007212444.328034-5-luca@z3ntu.xyz>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 13 Oct 2021 01:48:19 +0200
Message-ID: <CACRpkdYPh-fHi-MkZRn4jq4J9oaAiHDSe-0vTokJZCfv4osnLA@mail.gmail.com>
Subject: Re: [PATCH v2 04/11] dt-bindings: pinctrl: qcom,pmic-gpio: Add
 compatible for PM6350
To:     Luca Weiss <luca@z3ntu.xyz>
Cc:     MSM <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS
        <devicetree@vger.kernel.org>, Hans de Goede <hdegoede@redhat.com>, Andy
        Shevchenko <andy.shevchenko@gmail.com>," 
        <~postmarketos/upstreaming@lists.sr.ht>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Oct 7, 2021 at 11:25 PM Luca Weiss <luca@z3ntu.xyz> wrote:

> Add pmic-gpio compatible string for pm6350 pmic.
>
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>

Patch applied as obviously uncontroversial.
No need to resend this one.

Yours,
Linus Walleij
