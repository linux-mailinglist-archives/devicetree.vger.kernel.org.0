Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B4F55296F2
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2019 13:19:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390980AbfEXLSs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 May 2019 07:18:48 -0400
Received: from mail-lj1-f193.google.com ([209.85.208.193]:42174 "EHLO
        mail-lj1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390906AbfEXLSs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 May 2019 07:18:48 -0400
Received: by mail-lj1-f193.google.com with SMTP id 188so8298105ljf.9
        for <devicetree@vger.kernel.org>; Fri, 24 May 2019 04:18:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2peW6HqQkWUW+gSiVSqq2LhrRA/8zFUHT/OOexWrJ7U=;
        b=B87X4ShB9NkC+MOPhwk8HPyvcO3PkkdHwojp6+E8o0MihsFdKTzu2Yw53JssT8Z+MV
         e0reDyN/FTfF4UpHMln9YociCvietZjQasoDoIUDSibkaYEpwvA28ZcZGVbU+qJA4bqe
         nSg5CPHzl7Histd1kA/d5W4KfXURvZNGpFdsTnc4/SxZLF3kWoXRcr7IxDK/uImTZnoN
         8SO67f3NrXVdhCsjy3YMOpsWpj26WL4oveV6iT+EAoes4YL3jdUjhWi9CgRl7WuMaZ0c
         qgcJCIhg/A1p4IeVwptdAejJqoZaPvH066EfOj8qKiTUUx33oQyFMo2q7Cg23b5KfK2G
         YDbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2peW6HqQkWUW+gSiVSqq2LhrRA/8zFUHT/OOexWrJ7U=;
        b=L/sWDWxXm3Y7KI7CglhZj8G91ycaG881wDz11ev/xmli+o7ZhN5n2+HBRn7JAmmVI/
         iBxTQ6LBZ3FGGZpUwzqOBoj0W+sCGirEMeSskUIEBO/9wWvPXPixO/4MTSsnLmRm0GSV
         bzpgYxvIHjr9JpX7hjacDHWOXccXGAIjJjDRMG40mRGKx1h7Bfcb0GUH1aZVH55PkVZm
         NRqe1CWINacVKe/xrHUmPTd9hUirS1j+ZureCWWowzPWj8jCEYNRP8ghqVAJvmvfHh9i
         yW7h2/8cTYiilbMQsMbo8uHvQx/LRWygVaPliJaQhoKEwCG4gyH7AkSWPzfmPa1spLgd
         ZIEQ==
X-Gm-Message-State: APjAAAVZzeIpN6YezQtBvQSPPwvSk0nIYKHIHrXbA/tUHbJ0f92GjCLm
        PYr40e4Jtfn9sLqKDzLNDWAzjDwM+jroKA0yMEtUpA==
X-Google-Smtp-Source: APXvYqySUTFUwtqsVu7peqTFry7ckapDnXMraEZeN13DWhiqn0x6IoFkQd+OxM0zC+G9OLOSMAE0+m/N2T6BVnhx0XA=
X-Received: by 2002:a2e:9456:: with SMTP id o22mr2546591ljh.56.1558696726287;
 Fri, 24 May 2019 04:18:46 -0700 (PDT)
MIME-Version: 1.0
References: <1558007594-14824-1-git-send-email-kyarlagadda@nvidia.com> <1558007594-14824-3-git-send-email-kyarlagadda@nvidia.com>
In-Reply-To: <1558007594-14824-3-git-send-email-kyarlagadda@nvidia.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 24 May 2019 13:18:33 +0200
Message-ID: <CACRpkdYqFn0sdLcQgiSJyOXH0nFrHNsOkMBjO9H2aD9Eedr-tw@mail.gmail.com>
Subject: Re: [PATCH V3 3/4] pinctrl: tegra: Add Tegra194 pinmux driver
To:     Krishna Yarlagadda <kyarlagadda@nvidia.com>,
        "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
        Jon Hunter <jonathanh@nvidia.com>
Cc:     "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
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

On Thu, May 16, 2019 at 1:54 PM Krishna Yarlagadda
<kyarlagadda@nvidia.com> wrote:

> Tegra194 has PCIE L5 rst and clkreq pins which need to be controlled
> dynamically at runtime. This driver supports change pinmux for these
> pins. Pinmux for rest of the pins is set statically by bootloader and
> will not be changed by this driver
>
> Signed-off-by: Krishna Yarlagadda <kyarlagadda@nvidia.com>
> Signed-off-by: Suresh Mangipudi <smangipudi@nvidia.com>
> ---
> Changes in V3:
> Fix build issue observed with previous version

All looks good to me but it would feel so much better if Thierry
or Jonathan ACKed this patch set before I merge it.

Yours,
Linus Walleij
