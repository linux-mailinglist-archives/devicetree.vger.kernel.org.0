Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B1C3146077D
	for <lists+devicetree@lfdr.de>; Sun, 28 Nov 2021 17:29:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1358270AbhK1Qcr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 28 Nov 2021 11:32:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33738 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344426AbhK1Qaq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 28 Nov 2021 11:30:46 -0500
Received: from mail-ua1-x930.google.com (mail-ua1-x930.google.com [IPv6:2607:f8b0:4864:20::930])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D225C0613F2
        for <devicetree@vger.kernel.org>; Sun, 28 Nov 2021 08:26:37 -0800 (PST)
Received: by mail-ua1-x930.google.com with SMTP id n6so29008047uak.1
        for <devicetree@vger.kernel.org>; Sun, 28 Nov 2021 08:26:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/ccB47tdeti47CvDM6R5rYXfeqjwA3nH7VkbP1EBuzs=;
        b=bb8iROMPL4xY9YKCKh0LcMj6ctNvNaAZS+EVGTP+2em16DnWvURJFBwKiZgQ14kpFx
         Nk0yod58G1GSRAXhbEmJSlcSr5H+7E+VRw2oFQ49OQGFlI0NaPsYM76X/VH5tGjQ6CYh
         WoFk8Gn8q0COPBUli/NDsEWR6bc+iXAJ019W+PmGTj4jAV8rJApYX0PUUsYpzjqrLwrj
         Gu7/GiaJ0CKIqr+7VglKPoUwlrTg9rFOnRoOgI70LWhYsailfiQ4Cqkz2G0dLY83lvMz
         8sS5BykmV2FyfWNqpRXjubhzLMPxPi1RfEDwJU0dc9fs5dv57ePDFc/y2awY/aQP9Fja
         ZJmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/ccB47tdeti47CvDM6R5rYXfeqjwA3nH7VkbP1EBuzs=;
        b=dS+VYfVn4Q/gI9AnRdkPfYHqM0Cpne1Q6MSYCbirx68BXvyW8owcGql/rhR+tcNwdv
         wUNfQ9hTBS4Y8ART7kS6JOooBbhxG7DRsaSUYCyPXb7Y/C34qQTp+Isa12an6W1ZpeDt
         feX+a/+QTxK5pwl/cRxMH9izLY91sjifilTqPpm7jzgK5eJaN61DXdXv99gdW267xinZ
         ruDS+U/y86chVFMJX3kOKDA9Gp8xj0ldKaDHQDHOBRYeoi5XJTwJBz1WIIB7dcZ3lNcj
         hFE74wM4jko09kziYFaRyD4OQ+HxzRrut8m+Jm1a4XSGM8ts5UkCFkF/kzP4tmPVG1NT
         K1cQ==
X-Gm-Message-State: AOAM533KKQfR1tW29d0/ive44MaQz6ph9lFDJf+hYYp7TObNOuyj3RHQ
        8ISFuLK2pRPHt4PahM0isiGxaC1h3C/GJepXnahV3w==
X-Google-Smtp-Source: ABdhPJzu4Sg8mGJhx58EsQjBE9m8h7oKRpTbBEmqiNm24rO+Vi7sjel3oyR2vWLi6046pK/x0t8RLwwXmEN3LNKN6pg=
X-Received: by 2002:a9f:2431:: with SMTP id 46mr44679918uaq.114.1638116796127;
 Sun, 28 Nov 2021 08:26:36 -0800 (PST)
MIME-Version: 1.0
References: <20211127223253.19098-1-semen.protsenko@linaro.org>
 <20211127223253.19098-5-semen.protsenko@linaro.org> <YaOR+TbcR1V4ovf/@kroah.com>
In-Reply-To: <YaOR+TbcR1V4ovf/@kroah.com>
From:   Sam Protsenko <semen.protsenko@linaro.org>
Date:   Sun, 28 Nov 2021 18:26:24 +0200
Message-ID: <CAPLW+4mG8AMPCXGWYwURVJhCw0Cv=mYYzNAZf0i7akVcqc384w@mail.gmail.com>
Subject: Re: [PATCH 4/8] tty: serial: samsung: Remove USI initialization
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Brown <broonie@kernel.org>,
        Jaewon Kim <jaewon02.kim@samsung.com>,
        Chanho Park <chanho61.park@samsung.com>,
        David Virag <virag.david003@gmail.com>,
        Youngmin Nam <youngmin.nam@samsung.com>,
        devicetree@vger.kernel.org, linux-spi@vger.kernel.org,
        linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
        linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 28 Nov 2021 at 16:28, Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Sun, Nov 28, 2021 at 12:32:49AM +0200, Sam Protsenko wrote:
> > USI control is now extracted to dedicated USIv2 driver. Remove USI
> > related code from serial driver to avoid conflicts and code duplication.
>
> What conflicts?
>

There might be possible conflicts when accessing the same USI register
from both serial driver and USIv2 driver. Also there will be conflicts
when trying to access the same I/O address space in those both
drivers.

> What duplication?  All you did here was delete code.
>

It's all explained in [PATCH 0/8], but long story short, I've added
USIv2 driver (in this series) which handles the code that's removed
from serial driver in this patch.

> confused,
>
> greg k-h
