Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ED6DE3883BF
	for <lists+devicetree@lfdr.de>; Wed, 19 May 2021 02:28:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237301AbhESA30 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 May 2021 20:29:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234616AbhESA3Z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 May 2021 20:29:25 -0400
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4436C061761
        for <devicetree@vger.kernel.org>; Tue, 18 May 2021 17:28:05 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id e2so7184216ljk.4
        for <devicetree@vger.kernel.org>; Tue, 18 May 2021 17:28:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ht3HQ9bxacMTfT6I3FfUJ3J7S7nbkDcvYxZIjBScjJ0=;
        b=CfQ585UskHxoWGkItuzyQTKz3IN16vWY7mK0y9GLJvbCh8++XzHtu5wus9b9o02/Wp
         jqZBu/xvw0pPYeW4NTFDUOrDj4DwlBrUIwsjmeJm6irlCwEpMNJNPWvcCIcHIRdfvytl
         6PcAWEdZggP+sLoAkUbFOGDsTFN55/puxgqewNedlUVFqm5FGowP1KX7Q2XG4kVSZEzJ
         nUcNnDLOy1rjtC0+qoVQ0PXqppCS/RnjvkrBNkKFdfeIiDgjX5+RWKxH76t7Jd4HfgbO
         zhM8SLCijMZHFrElM7Ccmmg80h2WRwlFMdNOv+hrZQesRFtIsLzqau3kCYmDfJpPhhAW
         tc/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ht3HQ9bxacMTfT6I3FfUJ3J7S7nbkDcvYxZIjBScjJ0=;
        b=jI36Co3QciE2ucoxtw+Xnc8pIR7ldg+DH2Q69ghTCK4+PN+2DYUxt9ReZsvHZ6x59K
         WpFYXcrQxJuH/kaiHGqoKcjzJZqWk8oRBk93/V36Ada50XKFB9SEjkYNeRb4iixlujiS
         TIOX79CXdSQA6uvdiVKD3UFfBkJeQeYKrzR8d5nwJkNVXqxN7twwNwvRGbw/ak3QrkRl
         XUgumUI4UlsgL7HXu7dNWRywF5TPikrmtNamy1Q8ypThfd02TYXBJx1ixnMjHYThPunX
         crfJEEcXPQUmBNdlTdM5d5Q/coBNF5sF34cDGz08/opEDLO6p19PYM2yyS+CENKb/KiE
         P78Q==
X-Gm-Message-State: AOAM533l75Vnbi/9Vgtfd/LyTpEyqwX9r2x8hUVgsZOMtdMtGCLJ+V4Z
        o87MCvj5aMDYYOQs8Vd/A0RVNEMdqd8UHOFEWxZeEw==
X-Google-Smtp-Source: ABdhPJxLpppqudrabuhF5o9ZlLsbEiV1Tb0mqbmVtz8CcdhBR1Z10UaabEpkE5AxXCUSNz7R42gFp96tA2qfkAbWoc4=
X-Received: by 2002:a2e:814d:: with SMTP id t13mr5936495ljg.467.1621384084026;
 Tue, 18 May 2021 17:28:04 -0700 (PDT)
MIME-Version: 1.0
References: <20210429003751.224232-1-bjorn.andersson@linaro.org>
In-Reply-To: <20210429003751.224232-1-bjorn.andersson@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 19 May 2021 02:27:53 +0200
Message-ID: <CACRpkdbtGFKoeo2zdun3cPBvZqTMnKP+dnbf5k14BHjhd-09cg@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: qcom: spmi-mpp: Add compatible for pmi8994
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Brian Masney <masneyb@onstation.org>
Cc:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        MSM <linux-arm-msm@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Apr 29, 2021 at 2:37 AM Bjorn Andersson
<bjorn.andersson@linaro.org> wrote:

> The PMI8994 has 4 multi-purpose-pins, add a compatible for this hardware
> block to the MPP driver.
>
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Patch applied!

> PS. I see that while the related gpio driver was converted to hierarchical IRQ
> chips the mpp driver didn't get the same treatment. We should fix this at some
> point...

Oooups. I think Brian & I discussed that and that we "take GPIO first"
or so, and then forgot step 2. It should pretty much be a copy/paste
operation of the gitlog of what Brian did with the GPIO driver.

Yours,
Linus Walleij
