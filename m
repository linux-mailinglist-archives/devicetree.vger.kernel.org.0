Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 71D0440EDDD
	for <lists+devicetree@lfdr.de>; Fri, 17 Sep 2021 01:33:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234627AbhIPXeY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Sep 2021 19:34:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59730 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234450AbhIPXeY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Sep 2021 19:34:24 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BCF0FC061764
        for <devicetree@vger.kernel.org>; Thu, 16 Sep 2021 16:33:02 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id m3so23281035lfu.2
        for <devicetree@vger.kernel.org>; Thu, 16 Sep 2021 16:33:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rjHqvEYv6+gMyg4Tq+Rh/G8JnWMIR7cUG1Fmcv07v/Y=;
        b=mVwI96FJbGbROeb+waDs8Fr9jg58Ppg3G2f/qwPZr8axanVXE1bqdoj0ztls5rFeZs
         7VP7jjoGJfuz3jYXmZXGUUni8EfJ0lHPi6gBIwHP/3X+JyNUfkM64ieQN7Eup9QB3k9+
         vuJiV+V11n2Sz8DjTwNiUX7vhU6ELwHZd9a1rYo3jBA8DojYTwgzZN1KmzCSV73sP+lr
         XQiXPoqQ9zuPRQKFU7kB7mBZs4lDHUt202CByLC5d9bKgKa3M18kMIbzFQ/7AvVQvp2f
         Mv4pVqPYTnLLv3IYLLOI9QoERjjqo3vdcr/qYaQ/3TiL0X0yeZOBfspENrBEt6KUVBUs
         6vIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rjHqvEYv6+gMyg4Tq+Rh/G8JnWMIR7cUG1Fmcv07v/Y=;
        b=so552/O7FMLamN1JEYOxaKzXD42dPwY/wNGrFoqpknA4uaYcKjH978YMn9kOT3BM7F
         BgeHMYJHQPxtCb6h8LJP9tBhrUAIptCDnow5zT/Vgpy5BIjJ+bpggyKhWqm7kQm1SoNu
         +BRRtg76Zp1yHCNUhtxult78GduS3pPI5RshNSfDcJsIEGyUSLqebbf4DrcQ+cbRnz+N
         APNs5X5xUD8aojD4qEuqwcvpYekZnfuJw619FTTnwlcwWm3QH6ITXP8y1TVda5Toq49+
         id+dJD4anvV6eW9jb9zOftrFXgkAYOXsLwQxMTXsrdlHJygil8RFezLTvPeKdzAGmBje
         qh6g==
X-Gm-Message-State: AOAM533ADkdAS7vcVQt+nnZXEMW+MahKJXjbZhSYtz79pg1JNdvGuIGe
        zzEekCKJ1AGSzjFHAAiOCxGFuzCyCXyaxLgunLKo3A==
X-Google-Smtp-Source: ABdhPJx3qUqm8D+MvhzJv8yo3TmSo9hTYPFYIbXvo26tL6U4gur7fI6B/LsMvGG2bOFUWelJ1aarRW0hBAjmL6Wq+v0=
X-Received: by 2002:a19:f249:: with SMTP id d9mr5952890lfk.229.1631835180984;
 Thu, 16 Sep 2021 16:33:00 -0700 (PDT)
MIME-Version: 1.0
References: <20210908013218.29702-1-wenbin.mei@mediatek.com> <20210908013218.29702-2-wenbin.mei@mediatek.com>
In-Reply-To: <20210908013218.29702-2-wenbin.mei@mediatek.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 17 Sep 2021 01:32:50 +0200
Message-ID: <CACRpkdYxSwr05eK1x+BAgHxgccQWGUxW-_q_xSGmfkTHEbs+5w@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: mmc: mtk-sd: add hs400 dly3 setting
To:     Wenbin Mei <wenbin.mei@mediatek.com>
Cc:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Chaotian Jing <chaotian.jing@mediatek.com>,
        Avri Altman <avri.altman@wdc.com>,
        Wolfram Sang <wsa+renesas@sang-engineering.com>,
        Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
        Yue Hu <huyue2@yulong.com>, Bean Huo <beanhuo@micron.com>,
        Adrian Hunter <adrian.hunter@intel.com>,
        linux-mmc <linux-mmc@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 8, 2021 at 3:32 AM Wenbin Mei <wenbin.mei@mediatek.com> wrote:

> Add hs400 dly3 setting for mtk-sd yaml
>
> Signed-off-by: Wenbin Mei <wenbin.mei@mediatek.com>
> Acked-by: Rob Herring <robh@kernel.org>

Excellent doc!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
