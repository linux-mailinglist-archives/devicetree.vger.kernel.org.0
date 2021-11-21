Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4858F458702
	for <lists+devicetree@lfdr.de>; Mon, 22 Nov 2021 00:21:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229665AbhKUXYb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 21 Nov 2021 18:24:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41944 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229821AbhKUXYa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 21 Nov 2021 18:24:30 -0500
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com [IPv6:2607:f8b0:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A5B0C061748
        for <devicetree@vger.kernel.org>; Sun, 21 Nov 2021 15:21:23 -0800 (PST)
Received: by mail-ot1-x333.google.com with SMTP id x43-20020a056830246b00b00570d09d34ebso26221818otr.2
        for <devicetree@vger.kernel.org>; Sun, 21 Nov 2021 15:21:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/h9j+VohNLyIgef0fdgxHddKdl2XvTPyEkgWayghi4w=;
        b=v0jEuVRIAiBdxpvfqAJDWpd3PVQ3hH1sW2ZiMhzZbekRIOfkm8S4YoknYa/ngAcMO4
         6ewyTDV64dLIlE1hvvsU8E8k+tf/gwfKum9MC4eIRvNbwzoYIvhUfGeQr/ac9bNkmKAi
         TlvgU4kDY9sql5silScA/QiB3hdOmPTJ5MwlKd0ZNCiMizxjrBsTr3dHsVOCUF2AFUxi
         8NJI0sPnAhjrMMZSz5xOsGvpwMQQCi29eIn+dDCU+c7Bci/Aha98qs6iVuPbKQM2fznt
         QhyPL2LZD44RjAx0oharIUzvA7jYIdlYcGX9M39Gb7XdfbeaT5RhEIi8l0sr3nzdc/tl
         lDpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/h9j+VohNLyIgef0fdgxHddKdl2XvTPyEkgWayghi4w=;
        b=pL3rgO/+UHH7LlziXTn6T7rikZ3lXG6SYbx47wOB/6pTt8pBhNXXbuGlH/aUHhvL4h
         cDQIT6QY+bmaJwYCTzDcw/v4JfeHPDD16Gb34nrlhq2WV8VKt04mUSzMcH9aFk2zAXJ7
         hDz8vcveou7Q5WNm+n8ISFc1zsg9G/rSdkn9BNB2ffOjScOfcI1aY2LKeXWjW9GRsmS3
         JCnXHP5olu+Y0fi3ceLFMD++aFzMA3UbWC2BSntL1zQdYx/ZC0zhdjZTGGsEEW46Z36S
         g+25WGp6p6Sba/0YTBskkVRz8QdPqG7pwWgh1Eiv1ubyhnwsV5byAhLHYqHqdedv3oRd
         OeHw==
X-Gm-Message-State: AOAM530MntEuOhVnEWzseHbMHDpVphBWkM/RJPHAz/+9JYlNE2NtfKCk
        I7l94JvNjbyZisQsD1s3R7CoYiMWuBKuNA4CBZ/c5oDSpTQ=
X-Google-Smtp-Source: ABdhPJw3DT1NKCGNYyVT8P//H748Ne9pjIKj8dMw7dLTJAXIwlTvzJvEJCcKUCLCX9Vku7LTpXvU09bW30xfB9yqs3I=
X-Received: by 2002:a9d:74d0:: with SMTP id a16mr19960895otl.237.1637536882884;
 Sun, 21 Nov 2021 15:21:22 -0800 (PST)
MIME-Version: 1.0
References: <20211112115342.17100-1-konrad.dybcio@somainline.org>
In-Reply-To: <20211112115342.17100-1-konrad.dybcio@somainline.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 22 Nov 2021 00:21:11 +0100
Message-ID: <CACRpkdYMNDGhR6aKyyhW+YLOoNYLQOoQ=vh=qwY2C2AJR3Qd9w@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: pinctrl: qcom,pmic-gpio: Add
 compatible for PM8019
To:     Konrad Dybcio <konrad.dybcio@somainline.org>
Cc:     ~postmarketos/upstreaming@lists.sr.ht, martin.botka@somainline.org,
        angelogioacchino.delregno@somainline.org,
        marijn.suijten@somainline.org, jamipkettunen@somainline.org,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Nov 12, 2021 at 12:53 PM Konrad Dybcio
<konrad.dybcio@somainline.org> wrote:

> Add pmic-gpio compatible string for pm8019 pmic.
>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>

Patch applied for v5.17!

Yours,
Linus Walleij
