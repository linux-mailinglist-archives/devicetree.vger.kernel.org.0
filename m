Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B88ED3201D
	for <lists+devicetree@lfdr.de>; Sat,  1 Jun 2019 19:26:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726547AbfFAR03 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 1 Jun 2019 13:26:29 -0400
Received: from mail-lf1-f67.google.com ([209.85.167.67]:44582 "EHLO
        mail-lf1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726210AbfFAR03 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 1 Jun 2019 13:26:29 -0400
Received: by mail-lf1-f67.google.com with SMTP id r15so10416176lfm.11
        for <devicetree@vger.kernel.org>; Sat, 01 Jun 2019 10:26:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=FHptL7zfnF1m2FdPFd/6eUaxLNWNAM6Dt9dgYrixSuY=;
        b=srpi2hByezotfENbCGCrv66us8KaJ0u5/OqAcyBrE8JY3f6mzgbaNyXt89Qk5LxC2x
         T6Ga3UJnGO59zM8eJnwagM+ps6GSFmwWvaJ13ddUMZMeMR38asYpJpSlQ55B7to2hdYo
         +ucWGoRE7IVaSa3DnQQ1dmeBpFb4UE04Z2+cJC6l3Rai4Xrk3WW6CkHZM6LKg/0w05Ph
         EMmv7g1BM25I2scEK8ENa3b0ekGqHp3g+w3PunUQocOsC26KC51o3Rj7J5CHkDrYDkD5
         JItRaQrsS08gZH+kRGoQAMtNPjxWqoPz4qFaWqoNdEPTnzUczks2ViGb1iW7t1ILRnZV
         lneQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=FHptL7zfnF1m2FdPFd/6eUaxLNWNAM6Dt9dgYrixSuY=;
        b=XHCgyg+xNCGWCNRBA58xFI/YMhaEFe40bd04z6zapV53bwVQpUP4/SIl4EzSMvYdMQ
         9KOMxnzk28F/GEGFamqH82Bnqkapmxrh4i0C+w0NUnkWXXASiCLcndE6lHQvAlm+77Ov
         ZLAFEmnbgm2Ufx6+47wKHDgfrnYSKb9vzv0iYzL5jWTIJzNCP4cB5TCMe6tsiqIogh/9
         b+8tGr6jMXa5DWcRwYAh7lP4KYj12I93pK/AQMa1dTtCY+p0+6n8wizDU5V4J1CPUn3N
         hC2V/kYRFKRKNEUcwEoHOJOiC0rB0I7MkG8MZIcKcYGzomVyYV7/ug0Xqbioq1z18fLV
         CsKg==
X-Gm-Message-State: APjAAAWnkAh48DUtU9RckPwtfqaReqCDZC2KtzblyQcHtQ/u99mmEo9U
        xKhshMircqGoIFB1EwaS1dkkoPWuy77MGjaZ5YLBmQ==
X-Google-Smtp-Source: APXvYqxyDcM5T7cPR2O1upgFuOVBtRLY7i9cZ8Wfnrcs3leDvRcsQxnLNvhpVp5c1+nqaJ8cr9vMq8JGhhfgUpW6r74=
X-Received: by 2002:ac2:598d:: with SMTP id w13mr8883951lfn.165.1559409987952;
 Sat, 01 Jun 2019 10:26:27 -0700 (PDT)
MIME-Version: 1.0
References: <1558007594-14824-1-git-send-email-kyarlagadda@nvidia.com> <1558007594-14824-4-git-send-email-kyarlagadda@nvidia.com>
In-Reply-To: <1558007594-14824-4-git-send-email-kyarlagadda@nvidia.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 1 Jun 2019 19:26:16 +0200
Message-ID: <CACRpkdYOJydUhSOh7Pn47x0xjYP1HbfNA-2+8O48AA6PnTMNoQ@mail.gmail.com>
Subject: Re: [PATCH V3 4/4] soc/tegra: select pinctrl for Tegra194
To:     Krishna Yarlagadda <kyarlagadda@nvidia.com>
Cc:     "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
        Jon Hunter <jonathanh@nvidia.com>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        linux-tegra@vger.kernel.org,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Peter De Schrijver <pdeschrijver@nvidia.com>,
        Joseph Lo <josephl@nvidia.com>,
        Suresh Mangipudi <smangipudi@nvidia.com>,
        Laxman Dewangan <ldewangan@nvidia.com>, vidyas@nvidia.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 16, 2019 at 1:53 PM Krishna Yarlagadda
<kyarlagadda@nvidia.com> wrote:

> Select PINCTRL_TEGRA194 by default for Tegra194 SOC needed
> for dynamically controlling PCIe pins
>
> Signed-off-by: Krishna Yarlagadda <kyarlagadda@nvidia.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

I guess this needs to be applied by the Tegra SoC maintainers and
go upstream through the ARM SoC tree.

If nothing happens and you lose patience, do not hesitate to poke
me back and I might just apply it to the pinctrl tree.

Yours,
Linus Walleij
