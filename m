Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3FF79430C5A
	for <lists+devicetree@lfdr.de>; Sun, 17 Oct 2021 23:35:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235598AbhJQViG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 17 Oct 2021 17:38:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47344 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235720AbhJQViF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 17 Oct 2021 17:38:05 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 729F3C061768
        for <devicetree@vger.kernel.org>; Sun, 17 Oct 2021 14:35:55 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id 204so5251388ljf.9
        for <devicetree@vger.kernel.org>; Sun, 17 Oct 2021 14:35:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8XHO07CjfAiTXPl758twudtVcw2vHwNkceOH/ry/8xw=;
        b=guYeVmWXzDbgRUAHIqydQ1HPqOt9+ayfTiWOPrnO4himbg2lwQVeWQJmvM2V+5IL5O
         Sqsn+CIzEYDk+fFZzCDYhqj0Ie7z6p3Yc64/jMldGYEh7a3D0z5Fzjn0Jmpqlf6eHUSz
         GtEtBhByBNHr7gyaqkVqkqrKDBZIEWcEaV599BInyWQHHEPaYNdH3YVvq2nGsKSnicKz
         9D+q1MnvvGrE1oBMxIrCPnJ1wqqvxQQ3RhDDAMCcZeMT7BNwtW/+1gq+GZSKA62EDZdZ
         vffq02QkUL4oINr1iHkkQYENu8NQGjm/b7WJLz4lpClrqwyRzvfzpReaOJVJjH9QtiPH
         SINg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8XHO07CjfAiTXPl758twudtVcw2vHwNkceOH/ry/8xw=;
        b=jFvsiYZeMlOsiyGudALwL35wmK+72cCqqhAQGkTepAfrlgBfZ16KSYqGqq71AmS59L
         IKeukk7yhSPoJeNsNRjw65zgt2+sMyS0oDKg4/XO/Bvwr9x2RZqHtuHgDf4JA63UYOP1
         10D5zwFuSwEkZwgLDwK1jJwVSZC4FFsZS9jPqI20RvTx0HRCDfGnJCH8OkGdCAQFanv2
         vbKBk3vMAu56/lI/XbHARqIT/FL4Rp8Takv/Dnc8CCEZ1mwFtjTJPS/brHZOW6M9asWh
         bp7qki836wXL2J+b+vK7Poeu6fMOhpc4E92L5Pt8bDItLVaclqf+aVQIODs4ao3z2PWy
         p8Vw==
X-Gm-Message-State: AOAM5304C6cw3LyvbFjYTtPuerW5sFp6oaFmOAHzIsXiYFeTOluxmNCM
        p534S4dq2PZE0o9NTmM/ydxXiseTI9H9PRQCD8kChg==
X-Google-Smtp-Source: ABdhPJxnealbYRqpGVxJqqNmVYfGtFJz7kFs75zSNWhK+f6ZtZcG2rQCYhHLVT/ikteFpTreTMXZpzpCbsps0uX3ltM=
X-Received: by 2002:a2e:7f05:: with SMTP id a5mr27633482ljd.261.1634506553490;
 Sun, 17 Oct 2021 14:35:53 -0700 (PDT)
MIME-Version: 1.0
References: <20211008012524.481877-1-dmitry.baryshkov@linaro.org>
In-Reply-To: <20211008012524.481877-1-dmitry.baryshkov@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 17 Oct 2021 23:35:42 +0200
Message-ID: <CACRpkdbuJmrnPUtOvchqS+h3upuwnKPUkFqWyW7bh-PFBanW+Q@mail.gmail.com>
Subject: Re:
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, MSM <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

I queued thes patches in the pinctrl tree for v5.16:

On Fri, Oct 8, 2021 at 3:25 AM Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:

>       dt-bindings: pinctrl: qcom,pmic-mpp: Convert qcom pmic mpp bindings to YAML
>       pinctrl: qcom: ssbi-mpp: hardcode IRQ counts
>       pinctrl: qcom: ssbi-mpp: add support for hierarchical IRQ chip
>       pinctrl: qcom: spmi-mpp: hardcode IRQ counts
>       pinctrl: qcom: spmi-mpp: add support for hierarchical IRQ chip
>       dt-bindings: pinctrl: qcom,pmic-mpp: switch to #interrupt-cells

Any breakages will be fixed when Bjorn applies the DTS changes to his
tree.

I wonder about the MFD patch, maybe Lee can expedite merging that too
or ACK it for Bjorn to merge with the remainders.

Yours,
Linus Walleij
