Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6587827E55A
	for <lists+devicetree@lfdr.de>; Wed, 30 Sep 2020 11:40:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727657AbgI3JkR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Sep 2020 05:40:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44938 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725823AbgI3JkQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Sep 2020 05:40:16 -0400
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com [IPv6:2a00:1450:4864:20::544])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B807C0613D0
        for <devicetree@vger.kernel.org>; Wed, 30 Sep 2020 02:40:16 -0700 (PDT)
Received: by mail-ed1-x544.google.com with SMTP id g4so1119810edk.0
        for <devicetree@vger.kernel.org>; Wed, 30 Sep 2020 02:40:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=O0Cz0Zm8YQoZqX3ZdlzcOSzBf2shLCSEiyc7EaC/Ajs=;
        b=TY5abaFEhAX8cf/YA0ezETfk+qya2no/nSWgqGwoVSy9JShJGpKxq0/9JBBA91gZVa
         ttKOPn4riaDEeLms5hRZBUgqMM0gC61qDUnDqJ8+VHRokeaj7Z3bvuxXB4vfHOfsvaYr
         8jAoDUr/LPhpUGFUl8S6zq1gAm6iRo0zM70bv19WtFckWNE60hld5hOQqXgYT1lvIVJE
         3O18evHFBU3EEJFWPjgyyzPZdTn/y39ajS+abk9qI9zUHh49B/kXXmzufu37P1zHCSMa
         KmFiUgUxQhqCN/YIDJVpp9hDoMv/ojd4NguQQP3gTWChL2plFTJNPDqvBsnQdqGDMSk/
         aLmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=O0Cz0Zm8YQoZqX3ZdlzcOSzBf2shLCSEiyc7EaC/Ajs=;
        b=DI3KsZ9y0n5zDhr5oADK1aCFnR6low6uM9EZ2ibrFr+fDx7ttieQAMc9WR+JNEabFZ
         hBV5i9hn1Tlsjyx8LN4PNFBQLLTyysISli3tlfXhMfHtG7n4IIx5bLO1xtAaooy7pXdt
         403BBzX99EEWHWKZddD6XxXlclzlyKsxSsM/Gj3okhI+kquPesZecMUNLJuX9lxwC9fR
         LnqqZKiq7mnNAW6B8j3+rOTYbYWlD7FfLsO4FHzyr8CeUbCuqCs2EC8/B6IdeVUKTcaf
         r+3dAEqq822ddC0nUP9zwAkcNDwrPiRF3RsHtn+Ib2ZZqYHm6BfgIth+sbeRtwegS4Wz
         c+jQ==
X-Gm-Message-State: AOAM53154aJAsxe8B5Hg87GjGmfMYibDnXF/CO/hERj6QXMBjDwS+uC4
        k5zOhWxVbKnfeGfraCpGUAjb8R5LqB1FDcWRBbIUOA==
X-Google-Smtp-Source: ABdhPJyWWGgUn2oNtUsYmqSpl1Se2ijc4eYlRCDYw6awgB9A2KYqB+xFkLzp7nwqUKd/wq++N/1FAD+6QV2ogzXRzdk=
X-Received: by 2002:a05:6402:2c3:: with SMTP id b3mr1717194edx.213.1601458815102;
 Wed, 30 Sep 2020 02:40:15 -0700 (PDT)
MIME-Version: 1.0
References: <20200930092053.2114-1-mike.looijmans@topic.nl> <20200930092053.2114-2-mike.looijmans@topic.nl>
In-Reply-To: <20200930092053.2114-2-mike.looijmans@topic.nl>
From:   Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date:   Wed, 30 Sep 2020 11:40:04 +0200
Message-ID: <CAMpxmJW+we06L0cCGOQL6vOzw+ZFhwkoMtw--CpEB0TKAsCZMg@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] gpio: pca953x: Add support for the NXP PCAL9554B/C
To:     Mike Looijmans <mike.looijmans@topic.nl>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        linux-gpio <linux-gpio@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-devicetree <devicetree@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 30, 2020 at 11:21 AM Mike Looijmans <mike.looijmans@topic.nl> wrote:
>
> The NXP PCAL9554B is a variant of the PCA953x GPIO expander,
> with 8 GPIOs, latched interrupts and some advanced configuration
> options. The "C" version only differs in I2C address.
>
> Signed-off-by: Mike Looijmans <mike.looijmans@topic.nl>
> ---

Reviewed-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>

I'll let Linus pick it up, I already sent my final PR for v5.10.

Bartosz
