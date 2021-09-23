Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EC01B416789
	for <lists+devicetree@lfdr.de>; Thu, 23 Sep 2021 23:34:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243355AbhIWVg2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Sep 2021 17:36:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243346AbhIWVgX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Sep 2021 17:36:23 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD134C061574
        for <devicetree@vger.kernel.org>; Thu, 23 Sep 2021 14:34:50 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id z24so32268380lfu.13
        for <devicetree@vger.kernel.org>; Thu, 23 Sep 2021 14:34:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hwjuFFEYUw6qLa4G4t6xm8xsFy3ftvS5x0wrGV04jCI=;
        b=jZRRTpXoykphrWtGlmCGTQm7+dQBcpLvtXMU5q9RLQM0B7ggtcFJa3+gDaU0MTRjXb
         qrf8++lzMfJ9Su9/48gHLCX+Xkj05jEIg6OM1kHpfLvAYl0CM6ADq1aMAY91cVUxdaOn
         teJAnWphmD6obyQ58pohl3myJKlJuw+X7RTja2JlOKjLePie59S9v83OuJpbvxgJOvGi
         cLV2/2rmV04Z7cOrtT7m1lM7q1zvh2DpQcH4FRVIWf8GEuo1zaI2QM4fyaP2y4PwuNGl
         fpAlC0iafp/00PEmOMRggaojTHb+O94Coa1B1TOkuCpsl4jYpyVH6W/eFHj/wzzR+WM/
         KTrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hwjuFFEYUw6qLa4G4t6xm8xsFy3ftvS5x0wrGV04jCI=;
        b=F7RAbUUY+4Hlx1VnFhtAk1RvYKsiEZ7hP9ImfWCX50xudc5fTi1Ij2rDVfig4mSnBo
         OIanPJBkxoTiNfuXJ2Of1y6oA1Pk3etvYvG+DbNKMDobMH3dRZ+T/Vrmozd9DJ5loway
         kKEe5WXBxXENEgCkEY3PaspjisltDk7bWb8ktGy7K02QLtOMX1Wo3n5ZjmUQP160PHV1
         gEi8kh3dED1ntBC0eECz06aEPnXqZIhbQPKbczGLN1JyP+artZNDVBTQYlle0tw6btRK
         8S9++ZOVgNv5isqCsvurA07R6b+CWdQVLIgQfs4Qcsd7TamAt6rKgzneLlRxQriKce9h
         D3EQ==
X-Gm-Message-State: AOAM5312FoR0cS6tl+XcoaYVfzwXa2+VPaJPpbjFV0mbSxq3PSMAr0Bd
        8//qCB0PeB9jtuyoH2WY73mLjHMJi2Ec80Hrtyj2Rw==
X-Google-Smtp-Source: ABdhPJyZtA3tDkqn1sMYlY6x+GteCF64qDi14tvZqfNnSjwpru/kvnvXoFyvMmItzPeo5xawCArcnw1gMI5lGq9oC0c=
X-Received: by 2002:a05:651c:4ca:: with SMTP id e10mr7854021lji.259.1632432887920;
 Thu, 23 Sep 2021 14:34:47 -0700 (PDT)
MIME-Version: 1.0
References: <1631588246-4811-1-git-send-email-quic_subbaram@quicinc.com> <1631588246-4811-2-git-send-email-quic_subbaram@quicinc.com>
In-Reply-To: <1631588246-4811-2-git-send-email-quic_subbaram@quicinc.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 23 Sep 2021 23:34:37 +0200
Message-ID: <CACRpkdYiK+KPjz8RZKcS6sgTk6-RgB=zVtbim6vaQyVszhhk7A@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: pinctrl: qcom-pmic-gpio: Add
 output-{enable,disable} properties
To:     Subbaraman Narayanamurthy <quic_subbaram@quicinc.com>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        MSM <linux-arm-msm@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Sep 14, 2021 at 4:57 AM Subbaraman Narayanamurthy
<quic_subbaram@quicinc.com> wrote:

> Add support for the pinconf DT property output-enable, output-disable
> so that output can be enabled/disabled.
>
> Signed-off-by: Subbaraman Narayanamurthy <quic_subbaram@quicinc.com>

Both patches applied! Thanks!

Yours,
Linus Walleij
