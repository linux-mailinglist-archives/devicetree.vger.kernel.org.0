Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E6F1734D1AF
	for <lists+devicetree@lfdr.de>; Mon, 29 Mar 2021 15:47:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231847AbhC2NrL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Mar 2021 09:47:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36278 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231698AbhC2NrC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Mar 2021 09:47:02 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C19D0C061762
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 06:47:01 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id b83so18492366lfd.11
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 06:47:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=53xSj5DfXd9H1GpbknrIL485EwLdmQCgbXSAs/QT+/o=;
        b=yhPWMG13vhBx59H2VpJc5BK8cY4/JSTE4JcwVrJ+ZIjc4fA911utIUFjfl5tIzLq9R
         qSfY+azU5HU3eE/ivaeU6HdLvDQGMnm2jBcupDt95pGHdfk1ZLCrY7g4kZYAEc22Pgtt
         1UIhdAr0aERFI/nNcSGaOsQ8y2EgROOz85LpRyvAZkQZQGTlIwu8+7UdEGXUOZX2rE6g
         pEo3efviOuF+PXy+3kLaX3SMNQtB32DCX1BFNfDRHYzmWO1YX99xPNkOylJWee+UVa6m
         1jkomPURjQile+F4rkWZZMoYX1oPwop3LBFUwA1hOU+4kHE4AEiArUXJmVY59ROOZPvf
         PbWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=53xSj5DfXd9H1GpbknrIL485EwLdmQCgbXSAs/QT+/o=;
        b=SSshtsdht/BtVIzrfMU/qMIGkMkG4JYubcmMSv9YKZ/Z8UHu5xQT+fmv6qPRTwTgBw
         6FvhNSf+KZU/nY2WFDdWZzGLfqzRhKT4aDzfaNjxdqnyDs/fDITJnzLOTcXuteMNS7Fh
         zsGF+176LWyni7GIPMlT1Jg81WZrOuHIQQ1MRNVK5fZxKTkayJS9R9EcgfbJbKKA16R8
         MzMh0Zd5nsiVGPUOVVXNCMoB4ZnepXlJ/KTcCg+P0Qg1WbbvWBRddYE1eZa8QgVYRKB+
         Bsy/wysMH8QSy2l/fgX2w86L/sm+4Xwq3r8AY8EVCZ9qvtR7KH3KFld6k6GIc+exif1P
         Plmg==
X-Gm-Message-State: AOAM530m5k85SN+73t6yPJq9qqr0KSwRYwQTohdbs00ApvXAOLQtblyb
        Z8pUoYwz2n4IaVTsuFYWHcobBzUkGuSgV33J/JP0TA==
X-Google-Smtp-Source: ABdhPJx6Axg9ofLpquCRIjMCOhfnJFBxvPAErT/NqyJYw09/tE2YGisLWKD/dFqP42J60embz/z2dwtQ7xqxrQLa49s=
X-Received: by 2002:a19:548:: with SMTP id 69mr16333313lff.465.1617025620232;
 Mon, 29 Mar 2021 06:47:00 -0700 (PDT)
MIME-Version: 1.0
References: <20210329015938.20316-1-brad@pensando.io> <20210329015938.20316-2-brad@pensando.io>
In-Reply-To: <20210329015938.20316-2-brad@pensando.io>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 29 Mar 2021 15:46:48 +0200
Message-ID: <CACRpkda2XvgoLENQbh2dFVQqgm=fxF4=ZwG-T-DBmLjLWxABCA@mail.gmail.com>
Subject: Re: [PATCH v2 01/13] gpio: Add Elba SoC gpio driver for spi cs control
To:     Brad Larson <brad@pensando.io>
Cc:     Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Arnd Bergmann <arnd@arndb.de>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Mark Brown <broonie@kernel.org>,
        Serge Semin <fancer.lancer@gmail.com>,
        Adrian Hunter <adrian.hunter@intel.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Olof Johansson <olof@lixom.net>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        linux-spi <linux-spi@vger.kernel.org>,
        linux-mmc <linux-mmc@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Mar 29, 2021 at 3:59 AM Brad Larson <brad@pensando.io> wrote:

> This GPIO driver is for the Pensando Elba SoC which
> provides control of four chip selects on two SPI busses.
>
> Signed-off-by: Brad Larson <brad@pensando.io>

You have not addressed mine nor Andy's comments
on v1. Go back, read and reply, and rewrite.

Yours,
Linus Walleij
