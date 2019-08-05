Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BC3EB8183D
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2019 13:35:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728502AbfHELfv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Aug 2019 07:35:51 -0400
Received: from mail-lf1-f65.google.com ([209.85.167.65]:46606 "EHLO
        mail-lf1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727868AbfHELfv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Aug 2019 07:35:51 -0400
Received: by mail-lf1-f65.google.com with SMTP id z15so53390440lfh.13
        for <devicetree@vger.kernel.org>; Mon, 05 Aug 2019 04:35:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=PA5LKqLUZg6N/15oENr417+maCymYksiJN1leg5uDv0=;
        b=bK1ttl7iKTWceqtx19Sa/7+DM3zapBwSA9/ODu5KX3kw1ViYsxO9FzDhuFhtu4Aj0O
         uvOO4Lr5/qCu/BnfldETVo9wEXNSTiYLl1E6BI+PA8iNoaCFM7V4mLGiPtDueh/7QeX1
         0KZMMyDinoMb5DuxX91zavTTt5WuGGXQRBP6AZxT9TjOHQsMbwofrPVhJU8A1JtJX22V
         hUBJx7XXThV0mbzKr9FWPaVVLRtElVwiERrWn+ctopnWdVw+kUrj/vsas0MNCrA+3pe2
         T+r9Qq6eoZVNJ4I3L5I0e23wL8LCzQLzqDETEUxcMTYet8+SfCKJ0RBJpbh8sXIMBiFT
         NX+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PA5LKqLUZg6N/15oENr417+maCymYksiJN1leg5uDv0=;
        b=LP7vaDfg87i9UAW7VMYqtLZEWkQ+2i3D59+DtwFcISauhkewbjSEOtNksXcTsy431M
         1p4KECj+IF6ay2S2nwGYkUKtWipcKKeXuq6iXYbUIK35nkO/1gQyfGTBbXVi4TF191bG
         JRpxE5b6frxM0s0ZX3UMdc2/kJ+LJiWXkPI0z9WtvqFmTrtI9g4XPAdEEvC4+wnCeTwB
         QBX3LM6FUWTBbXZSqnr9GxpGLfh0ML2Nho6QjqCXoba9p2MJ3V+jllt7Msnpt7D0nsMB
         Pf6no2X6Oe+XICgHCR613iqF+nRMOHcalgFlBIPBAzae/INzsB5zjUCgHJll3UWtXnJm
         XgYA==
X-Gm-Message-State: APjAAAXm6SsCjBoL8NxPvJa0KMc5agB2pCMcwwVC5K2Q1UVbmos70bn8
        W5Io8X4pCuPTNoQY+j8v4dSvMjmVNHQ2ma70mBx2gQ==
X-Google-Smtp-Source: APXvYqxpziKgKxkC0CLx9svUiuECS9qp3k4Ke29MQa+w28OfxT6UG3D8k/lLoKpht7+O8PeX6bA1nQoVqBuP0bOPSsc=
X-Received: by 2002:a19:e006:: with SMTP id x6mr69629944lfg.165.1565004948937;
 Mon, 05 Aug 2019 04:35:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190801100717.23333-1-rnayak@codeaurora.org> <CACRpkdYLb-WWSEL8yG3yy8Qq7bOKP9JjUGV51mY6=aEwrQAJvg@mail.gmail.com>
In-Reply-To: <CACRpkdYLb-WWSEL8yG3yy8Qq7bOKP9JjUGV51mY6=aEwrQAJvg@mail.gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 5 Aug 2019 13:35:37 +0200
Message-ID: <CACRpkdaoOuyUmysb3OmErbLJ6zZuHGGt7RRzG9wULDkg=hLCAw@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: pinctrl: qcom: Add SC7180 pinctrl binding
To:     Rajendra Nayak <rnayak@codeaurora.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        MSM <linux-arm-msm@vger.kernel.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Jitendra Sharma <shajit@codeaurora.org>,
        Vivek Gautam <vivek.gautam@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 5, 2019 at 1:34 PM Linus Walleij <linus.walleij@linaro.org> wrote:
> On Thu, Aug 1, 2019 at 12:07 PM Rajendra Nayak <rnayak@codeaurora.org> wrote:
>
> > From: Jitendra Sharma <shajit@codeaurora.org>
> >
> > Add the binding for the TLMM pinctrl block found in the SC7180 platform
> >
> > Signed-off-by: Jitendra Sharma <shajit@codeaurora.org>
> > Signed-off-by: Vivek Gautam <vivek.gautam@codeaurora.org>
> > [rnayak: Fix some copy-paste issues, sort and fix functions]
> > Signed-off-by: Rajendra Nayak <rnayak@codeaurora.org>
>
> Patch applied with Bjorn's ACK.

Ooops there is v2 and even v3 coming, OK I wait for v3 and
backed this out.

Yours,
Linus Walleij
