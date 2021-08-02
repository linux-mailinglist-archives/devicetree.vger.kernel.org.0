Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 200133DD6D2
	for <lists+devicetree@lfdr.de>; Mon,  2 Aug 2021 15:19:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233778AbhHBNTj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Aug 2021 09:19:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59486 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233621AbhHBNTi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Aug 2021 09:19:38 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF9ECC06175F
        for <devicetree@vger.kernel.org>; Mon,  2 Aug 2021 06:19:28 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id a7so23851151ljq.11
        for <devicetree@vger.kernel.org>; Mon, 02 Aug 2021 06:19:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hJM5ZCvKgC8eQ0kPpge6XKSN4iTKO7yNBaLGlM9S+lM=;
        b=e1LoWT/8fsnaMq8nG6pnHW7pRXYn5rICiBbIuelEsEjW4akkXOPidg0GF/kMuPJoDS
         Vy2kXHulT6QVOzM6G2IVkxUsXTseKxqjfjbxG4vXRVWulPxYL2CfWf8YQEdYd9rv4aW2
         j8LhLSoR2S45HNOoZDoMFGNw2M6r7l3bENzCkgvL/dKjekAV+a5XsRSZ7MCYy5ht37YK
         9cUA8Em5tXssSxODfjLaRZdP2JzR4A60atnvIaEvnosVBEQguHmzSbI6oFNSi1O7yKeO
         3ouxgZKRpwq0wgNIzj5rUfYWIMRJVeWTXx0YfL4tZbTiLZuWbyExAE5OlNem3byQIVaH
         LeXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hJM5ZCvKgC8eQ0kPpge6XKSN4iTKO7yNBaLGlM9S+lM=;
        b=BzmvpfCXCkJ6Min+s5nRwjFaTTUyh0siJzmSxhNV+83ON+uXSH3ukxWscRxkZHow76
         Uv3V5AE0yBODGLKLqiIO7TyyZStAKKEQMALLi5q5dTmlLBYUsACjercVrRezYuy5tD1X
         x+2v+OZAgqFsMujG6poOWh+7iwQfiJsjlTzZFnh9LrvMuK0hTlzqEFmAEOCdxjNOS2Xb
         epkfgL9CziKSrkGVzqyWPwr/ikkhyahtlPIxeTKenP0i8jjaxAK3MSAAf24rXTs2NIOF
         BZkbElR/KHYxlXFH91lc4G4WWXhdPc3Y3fiuH0AmLNu2Qnn2Oi5wmGVW+gLUQ4CAwsJp
         Bt2A==
X-Gm-Message-State: AOAM531QkGA8qeD+09G6NGCdlf/FNxxqGgiq3Y2/+m7w3PU5YnDQ51or
        HdnVxckekZLvYHqpfQWjam6oCQFk9AbuiqlNDtzp1Q==
X-Google-Smtp-Source: ABdhPJwU0SPMw8r5qBhku5qCgwvkuKIVBr4Voxz2sci0C63jCAhPlLwVqSAwS7/OIGWp4o7fddK707JvTiltM0kff2o=
X-Received: by 2002:a2e:b04e:: with SMTP id d14mr11727782ljl.74.1627910367088;
 Mon, 02 Aug 2021 06:19:27 -0700 (PDT)
MIME-Version: 1.0
References: <1626868353-96475-1-git-send-email-lakshmi.sai.krishna.potthuri@xilinx.com>
 <1626868353-96475-5-git-send-email-lakshmi.sai.krishna.potthuri@xilinx.com>
 <YQMIhBPwcNw1YqMq@robh.at.kernel.org> <CACRpkdYrHTMLL_CQi0BoNZsXV3=2dBK38pkvd+EEkuPrzoG_Cw@mail.gmail.com>
 <2f5d9197-4a5e-08b5-7e47-595d337478d2@xilinx.com>
In-Reply-To: <2f5d9197-4a5e-08b5-7e47-595d337478d2@xilinx.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 2 Aug 2021 15:19:15 +0200
Message-ID: <CACRpkdZu2-EE1hqJ4nVA5uxaPuJRGWDH_ciKxRvrNncQ2Pyd5w@mail.gmail.com>
Subject: Re: [PATCH 4/4] arm: dts: zynq: Replace 'io-standard' with
 'power-source' property
To:     Michal Simek <michal.simek@xilinx.com>
Cc:     Rob Herring <robh@kernel.org>,
        Sai Krishna Potthuri <lakshmi.sai.krishna.potthuri@xilinx.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        git <git@xilinx.com>, saikrishna12468@gmail.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jul 30, 2021 at 2:46 PM Michal Simek <michal.simek@xilinx.com> wrote:

> Linux Zynq pinctrl driver and in tree dts files are using io-standard
> properties at least from 2015.

Ooops my wrong.

What about supporting both the new property and io-standard as
a fallback, simply?

Yours,
Linus Walleij
