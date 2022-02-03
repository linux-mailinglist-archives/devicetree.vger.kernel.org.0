Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 29E454A8A91
	for <lists+devicetree@lfdr.de>; Thu,  3 Feb 2022 18:47:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352916AbiBCRrI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Feb 2022 12:47:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47868 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232547AbiBCRrG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Feb 2022 12:47:06 -0500
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com [IPv6:2607:f8b0:4864:20::b36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4DEE2C061714
        for <devicetree@vger.kernel.org>; Thu,  3 Feb 2022 09:47:06 -0800 (PST)
Received: by mail-yb1-xb36.google.com with SMTP id j2so11462723ybu.0
        for <devicetree@vger.kernel.org>; Thu, 03 Feb 2022 09:47:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=v5dZWO2zmkTU1RVWjuesiHDlAcvosB8eIhfb8TkkDW4=;
        b=fWjIkmzvsJ8zoAcq7Jc5ZmyO+/LLei8lOf89EOTKrjbv8VmqxicG8D8XTEienF/D01
         cb7RXvb02KtgLw5HlmlHMdjoaucdPUTQWs8R86dySiqbqJC8afVqzvDWgJTae+ZuWYJk
         JJaHG6o0T1+HJBVvn1Btr6m6ME2WoVRAwnkoX0Pb/bCUt4PXxvaRPy+pGjm7BbmhtE36
         YiIMxPEw+H0Jl1rUG8FPzOiiZU1KblPn8V7pJ3UBVk1B6qBIInRzLj9yuwQrgY56zWr+
         Gpw4+5/v0QmrR99MCddwYsyOHxuZcoQ3MObje78mPaZoEHBzyaPGL+Yemgy8whpB80nJ
         ZziA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=v5dZWO2zmkTU1RVWjuesiHDlAcvosB8eIhfb8TkkDW4=;
        b=G/4RIXZY6BXHZ/0XkHovlhhxj6frNv3faEVFwiUDhSZoCE6tDTNIUdWJHpTyOp/Kew
         YOYLpCPPtXfj3sqCYmH8W66w8NqYdbr7QLx1r4rlYgFoQfg5cIbRn1dYtbZnHaZtv4WL
         GMpQhh1W/jDrA/p86ykHDBqZixEgaItazyrRdtKFnOgjNRSzWfjKOixhazKceZiSZ+EX
         rhofHnaHtlfCSoCzM9r35K00ZfcbYI1nHnmqzA/BLjbeP9kcQ5iNkk5UEKTmLtI04Ut5
         exphvCko+NDo2XDGzIndqXMZoy6BZ5+gWWNysiqQX3gzIlBvcrC1plB4NX0n45mahWQb
         TkDQ==
X-Gm-Message-State: AOAM532ojx+Tmn6NR+fkndegjUZd3pcOAydCtYpmjIFc+62TykDXc0r0
        uzvQ3DWnENiKip7XXZzvzgTCkJWCRhCc8qGvMv6qSg==
X-Google-Smtp-Source: ABdhPJz0+rQtUI8LuvWp2eey3xD0y133oWhVArETGjYikU7HVNZG/2q32vKkVmbl7w29e5uYkgM8sM1xerFpoQ3AU8c=
X-Received: by 2002:a25:df56:: with SMTP id w83mr46318988ybg.110.1643910425506;
 Thu, 03 Feb 2022 09:47:05 -0800 (PST)
MIME-Version: 1.0
References: <20220202113722.7550-1-michael.srba@seznam.cz> <20220202113722.7550-4-michael.srba@seznam.cz>
In-Reply-To: <20220202113722.7550-4-michael.srba@seznam.cz>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 3 Feb 2022 18:46:54 +0100
Message-ID: <CACRpkdbxMU=Sf7HofDpNr4pGdPWNs7Ga4ACikZYF5bFJwivnLw@mail.gmail.com>
Subject: Re: [PATCH v5 4/5] drivers: bus: add driver for initializing the SSC
 bus on (some) qcom SoCs
To:     Michael.Srba@seznam.cz
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Arnd Bergmann <arnd@arndb.de>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Saravana Kannan <saravanak@google.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Feb 2, 2022 at 12:40 PM <michael.srba@seznam.cz> wrote:

> In combination with drivers for resources on the SSC bus, this driver can
> aid in debugging, and for example with a TLMM driver can be used to
> directly access SSC-dedicated GPIO pins, removing the need to commit
> to a particular usecase during hw design.
>
> Finally, until open firmware for the hexagon core is available, this
> approach allows for using sensors hooked up to SSC-dedicated GPIO pins
> on mainline Linux simply by utilizing the existing in-tree drivers for
> these sensors.

So the idea is to access the SSC-dedicated GPIO pins with a special
instance of the TLMM driver and then enable the sensors normally
managed by the sensor hub?

This is a GREAT feat, as we don't know if we will ever be able to
get any proper Hexagon firmware for the sensor hubs.

Yours,
Linus Walleij
