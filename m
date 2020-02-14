Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DCA1B15D610
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2020 11:51:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728890AbgBNKvN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Feb 2020 05:51:13 -0500
Received: from mail-lf1-f67.google.com ([209.85.167.67]:37461 "EHLO
        mail-lf1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729149AbgBNKvN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Feb 2020 05:51:13 -0500
Received: by mail-lf1-f67.google.com with SMTP id b15so6472596lfc.4
        for <devicetree@vger.kernel.org>; Fri, 14 Feb 2020 02:51:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CR6bHnHZoiHbW3grDbPXu+tcCdPNxFUy7DMGVKDxrdU=;
        b=ZB/WaJEEHKN4vlxH4Q77+OOPAi+yH8uvWMar/Wo92sc05nEqDy1nHiHv81sCC4R5HR
         zTc4dktstCFOctS7NkFCXjG+Ipo/IDcXN9dbAhdXA+B2L199AvWrW6QOtw8hJOD90GWm
         F1Q/Jj6J4kTXfQoaifWXQg25FyCdxlrApHVxhQ+t3RBpoNRuL8PfBf7DEe1OUc/5qAi9
         Ah5TKSHu2uHQjeQJyaw1GaOiOWzQ3ogpcfBf4wBNsZG/Wfe0llzLv5cMm0evS8OofkAo
         ud43w92m7GJDNyF7Lhn70lpUJLD4Gd11c5o0rSba9R9yAHy/hlq9rFPX7p4Zfnzd7K8o
         EhXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CR6bHnHZoiHbW3grDbPXu+tcCdPNxFUy7DMGVKDxrdU=;
        b=LFq9PwCrj6Uq7MRPC5v15xvI4Is99JcHSlo5yVRKypgNZAv2t1FinQVJ9Y9CxM3iCP
         G4sxV2p3ajCMMIftwbGrhY2mYr4kFsPkq7MTTziJWn4iB8PgMYOFgOKgmuc+Ai8Dkm0E
         x9sAaZqIYJGfvyn8SmKoocClpIcjmTXRw2kbcVvSjtWNtUKcJgewmJGKbXyhPATswWjg
         HAZRx9DBCY6PGCLyXciyg7Ob/g1Jq2He7UWJ/DGW/18A8XqaH/D+tl7oAHG/TWETsduz
         Mr3A23OnrgBAYzGcSRvw7fj2bBIwfOR/zp+J2mFkMnvHCvksRQ/jZCrj3SH/LR1tkqge
         +fTg==
X-Gm-Message-State: APjAAAUhA38Uu6F0J2cd3JTNtqe+iJAsH7yAHzXtBirY22Xw+KWNCs7J
        R56dCz5zYjKJq6qsJQysFDh59epvFqu3fVZR4N3/mLixuDM=
X-Google-Smtp-Source: APXvYqxkkMaDIwfsdOgCTxqXpmc37h41kvnDJyCa02wuDmWXS8mAwsvAa4bQZ7hGMY56bSP/KNt/TUd5+tIUbXiS0ig=
X-Received: by 2002:a19:dc14:: with SMTP id t20mr1374192lfg.47.1581677469885;
 Fri, 14 Feb 2020 02:51:09 -0800 (PST)
MIME-Version: 1.0
References: <1581166975-22949-1-git-send-email-stefan.wahren@i2se.com> <1581166975-22949-5-git-send-email-stefan.wahren@i2se.com>
In-Reply-To: <1581166975-22949-5-git-send-email-stefan.wahren@i2se.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 14 Feb 2020 11:50:59 +0100
Message-ID: <CACRpkda1M_B9VXjsTPmcR3zG=xS0uVQMPPYJ5H-BAj3=fQk4eA@mail.gmail.com>
Subject: Re: [PATCH 4/4] ARM: dts: bcm2711-rpi-4-b: Add SoC GPIO labels
To:     Stefan Wahren <stefan.wahren@i2se.com>
Cc:     Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Feb 8, 2020 at 2:03 PM Stefan Wahren <stefan.wahren@i2se.com> wrote:

> This adds the labels for all the SoC GPIOs on the Raspberry Pi 4.
>
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Please funnel this through the ARM SoC tree.

Yours,
Linus Walleij
