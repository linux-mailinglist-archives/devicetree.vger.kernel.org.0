Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D25AC3DB6EB
	for <lists+devicetree@lfdr.de>; Fri, 30 Jul 2021 12:10:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238377AbhG3KKY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Jul 2021 06:10:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59974 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238375AbhG3KKY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Jul 2021 06:10:24 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF686C0613C1
        for <devicetree@vger.kernel.org>; Fri, 30 Jul 2021 03:10:19 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id u20so11676682ljo.0
        for <devicetree@vger.kernel.org>; Fri, 30 Jul 2021 03:10:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=sFJWAT6+yMXBU3J+rhlr9bsyK6eGtQ9oxA2zJ2Hz9Us=;
        b=yacaUotO0pAuhrSnK8U7CsNGg8eT108HSb6UUXyeFRlA1hD2cL8Yx3LsJbhn2jKnRR
         40m2ECOdR3mX/RLMjn+N0vksVfdKYEA9m6mweSt8CKk8pH9osHcguKrx+Qk5Si7EuG57
         Rv7tYKEExZwBeyCg5DFFStN21IKrCm8ZR5wVu/8MFn8vXS6gCbg3Ud27IA3j+0nIQC3m
         +RmSdrpycP6z4aVNJSx8K59CP73QrsR3V5CeXRNE+f0cthnm8wFGMdCt+fvFzHmspBJK
         zd0vV5lSY277z3IxnvAolc4xBIoSLL2G2lWzW+g+j4On5txYMFNI1IuXRYlZEHFqJwcr
         owBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=sFJWAT6+yMXBU3J+rhlr9bsyK6eGtQ9oxA2zJ2Hz9Us=;
        b=RKZQYV9qBxTcxyAcuN1ipn/wEMW7ZcDxsW+9JPQKtJpVLi9tejg027tkF/XD42XW5i
         x+YZ5i1qxuUcpZmu0m7jFnc84NnL5++NyZgFSL1v2fWB6xfV9EBTQkjcZWu9wRcDbKXF
         UiuMdcvzcdP0JYoa0t4A2nDxFyzjlYOuqnU1AfWqOOkJRTQCKxSfbXIEZxo/fGKQ6h5a
         mN3eHx/Agr3VP7DJnCDHW/gRMA8XQf688MbA/KruZVv57DmaTZ7pmau8JLJDaSi/tULb
         RvyuBkMkHVoVVMgjr16NVKX/q1LglYuoPjwyZtgO9A//FTtNwORCeTkcKVA+FFoFkjIU
         SP7Q==
X-Gm-Message-State: AOAM532NVivEDYtS3GMVVPa1ir7wcRBnO9AfX7TIDWJSALz4cMioM7mE
        eODT+aw/lV7s4wnFgFIbqqnDfq2Wil06xwDuwpNP9g==
X-Google-Smtp-Source: ABdhPJwuivHtX33drvirx0EUGhFWd7FU9b9FPwibFhbzPtrz6ATn/2Lusr18tOPv36nla21F5HPy85DL4diBaQ2TMPo=
X-Received: by 2002:a2e:7c04:: with SMTP id x4mr1152070ljc.273.1627639818222;
 Fri, 30 Jul 2021 03:10:18 -0700 (PDT)
MIME-Version: 1.0
References: <20210717045627.1739959-1-daniel@0x0f.com> <20210717045627.1739959-4-daniel@0x0f.com>
In-Reply-To: <20210717045627.1739959-4-daniel@0x0f.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 30 Jul 2021 12:10:07 +0200
Message-ID: <CACRpkdbiQpNCK0fXE3A=05UqYP_LSuJJM38antzpWkf29j+upA@mail.gmail.com>
Subject: Re: [PATCH 03/10] gpio: msc313: Code clean ups
To:     Daniel Palmer <daniel@0x0f.com>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Rob Herring <robh@kernel.org>,
        Romain Perier <romain.perier@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Jul 17, 2021 at 6:56 AM Daniel Palmer <daniel@0x0f.com> wrote:

> - Remove the unneeded assignment of ret before returning it.
> - Remove an unneeded blank line
>
> Signed-off-by: Daniel Palmer <daniel@0x0f.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
