Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B2A6B3AE6D7
	for <lists+devicetree@lfdr.de>; Mon, 21 Jun 2021 12:16:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229576AbhFUKS3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Jun 2021 06:18:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57350 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229651AbhFUKS1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Jun 2021 06:18:27 -0400
Received: from mail-qk1-x72f.google.com (mail-qk1-x72f.google.com [IPv6:2607:f8b0:4864:20::72f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F03E9C061574
        for <devicetree@vger.kernel.org>; Mon, 21 Jun 2021 03:16:12 -0700 (PDT)
Received: by mail-qk1-x72f.google.com with SMTP id j62so28935589qke.10
        for <devicetree@vger.kernel.org>; Mon, 21 Jun 2021 03:16:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=g028qSMBY+7FHWgQ6byFnFnLj87H/85dq+TSG5LPRDc=;
        b=dMbw0sPtLnVNky0bvbL7n2B8G/cNnJmwjklXdSXZIf4sPm0yxisaD0h/UaTt9mizJu
         O6ty+V4qDjctKMRD4PppsLpCr2wb0c9fhvwvxqcDTYHzPZvhmqMIDZbT/cN3ngnLhU2/
         nx8nqXsYupY7RZVXbQAHb+k60TosOqyf+YhUScjIlQ7KPvevxs2XObWNQ6JlMn6MVZ3Y
         clX9xTnbEDXtit8ZLjn/ks5b2mepW18e/LpoTnRRvwYKdLbneVyFASMBjAtjsWBPyLio
         LW9Ff+HZmmVJi7qfnSDp185Y1PDAfBw4dm8RvUBKzKn1XhMRPtGuCn1QQAt1BmlkSFc7
         w+Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=g028qSMBY+7FHWgQ6byFnFnLj87H/85dq+TSG5LPRDc=;
        b=Y5gWvmz2TfyjC3QECCKbHeZ/zL4eEp4wIG5GqYkPfSN6j8qjOc8VnGRksY/UjEPP8e
         rLWCGLprHlsTIUwLlRaHwN7mcAPf03Vo2hmfiyOvCIepjum98yShkeeDodUUsja5BQSe
         k7AfAytO2xR216BY1yWbblOJOQv9fusXYzEGQlgswDZvay9Kpkh0AaNar3KCDPlItyAb
         7CUM0HNlmv9UYYm0MHf3eojsxTSkotpCAefsl44wMihQaHBub/REHn4BG/fLdBpo3WSk
         2h5mnysC4XDFD7D4ryRyn1DDApWp/YBLUt3Ltg6OGw6H9Uiq9N35XSccy7+5eMQnEnhg
         PMCQ==
X-Gm-Message-State: AOAM5324Huu8MPmPoBbRzO7Vz3qIUtKd+m7k9SG/QOncIGB2djSLJF6A
        DkyfunEPlfKUJ0+nKdK4ANtDE7jAetvAnGk47mjTIA==
X-Google-Smtp-Source: ABdhPJypDMFj176dMc1i21SogoUeaBrzqgXepxpRClZ0RyTAaV46g6mff8kXjUE9/OM3Vs2YaCa93iw06eaodU246lE=
X-Received: by 2002:a25:aae2:: with SMTP id t89mr32046600ybi.302.1624270572214;
 Mon, 21 Jun 2021 03:16:12 -0700 (PDT)
MIME-Version: 1.0
References: <20210524151955.8008-1-a-govindraju@ti.com> <20210524151955.8008-3-a-govindraju@ti.com>
In-Reply-To: <20210524151955.8008-3-a-govindraju@ti.com>
From:   Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date:   Mon, 21 Jun 2021 12:16:01 +0200
Message-ID: <CAMpxmJVY40F3m_PyQFMbDFNjr4b9sUB8t2efEAP+ComcxQKqSQ@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] dt-bindings: gpio: gpio-davinci: Convert to json-schema
To:     Aswath Govindraju <a-govindraju@ti.com>
Cc:     Lokesh Vutla <lokeshvutla@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, Keerthy <j-keerthy@ti.com>,
        Sekhar Nori <nsekhar@ti.com>,
        David Lechner <david@lechnology.com>,
        linux-gpio <linux-gpio@vger.kernel.org>,
        linux-devicetree <devicetree@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 24, 2021 at 5:20 PM Aswath Govindraju <a-govindraju@ti.com> wrote:
>
> Convert gpio-davinci dt-binding documentation from txt to yaml format.
>
> Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
> ---

Patch applied, thanks!

Bart
