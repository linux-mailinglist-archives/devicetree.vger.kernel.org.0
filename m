Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F219B3E93E4
	for <lists+devicetree@lfdr.de>; Wed, 11 Aug 2021 16:45:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232482AbhHKOpl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Aug 2021 10:45:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33890 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232364AbhHKOpk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Aug 2021 10:45:40 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA739C0613D3
        for <devicetree@vger.kernel.org>; Wed, 11 Aug 2021 07:45:16 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id y7so5035192ljp.3
        for <devicetree@vger.kernel.org>; Wed, 11 Aug 2021 07:45:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6v9hHCZVHAmYgbnWmMzGUr44DlUe75gTidfZaeJXFqM=;
        b=ixasY3I7+egTqHiYwBpn7xtvMOB0ubWh0dHree5YQRsOXjfoZLiZcoMtIJ+YZMA1KC
         QLIH+wpRjXQ+40tIMdWVHT5fHp2+y4BlqZOXDkt3LERoqmIYNij8izzIYqtmT8kInG/y
         8e/b19oe2nAPywFHDVO4W2kMB6/e+tEFf05dEiOWavZs7/dXkRLdwBPdABA63ebtcxLE
         GHhiqYKTqhzsudkCEB8ktzP3FkUIdnjYUVeZ2+83X7hRDrPkhK1sOqwnNNngBH9y/HP4
         kQaJq1h5gX9j6hUFcgyXckbDJDPP0t3ZzIeWAvDjGY+SG6AfNpv8j8aVvFGP4os2KnLU
         FjVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6v9hHCZVHAmYgbnWmMzGUr44DlUe75gTidfZaeJXFqM=;
        b=aKl+OiA//O4JpDTGHxK2th+8mLWRw1dJVl+y6ghyVWXTp1dZT3wq6Cu8NpNdcocMQF
         werWl7hhcoHT1/0ZMADd6UpsdfrN6UF7Td5H5+9snjspJT74vGrIPo9zVp7Zih3nk4gc
         JcEL8nd76ZmxKu2FuSxixP6VT9zbyNQ1Pfghamfr9ig/N0GZYN3ohiWn4WOTpWi+HCqA
         cW4i19syzILcg44H6KgPZhzuYJF+4zBa5J3CLnvVEf4r8UDsG1yNj7lJvsxaK3p6nHld
         rOk6WK1Stkr9Xz9BnaZN4PysPBNFO/lW6FLphTTaKVzUrfo0wkosV2CDgFTpJFaLPh7T
         R2Fw==
X-Gm-Message-State: AOAM532moFpF/Bm1k1x+owsyJScZ437kWqoaGKOLbBV/UnOhXpV6evQc
        2kQfTdv0Ajp9TDCIhR90DwLSboybwbiE+VmW9Eg63w==
X-Google-Smtp-Source: ABdhPJxLhduWN/mt3ervtvbNLFqT3qSQ+hT6DmUXLPRYj76K2NG8pRMv3ca/z6GWKiGtYDR8kRc+zxzqFBMKyYGGHDg=
X-Received: by 2002:a05:651c:327:: with SMTP id b7mr24076891ljp.74.1628693115248;
 Wed, 11 Aug 2021 07:45:15 -0700 (PDT)
MIME-Version: 1.0
References: <20210805174219.3000667-1-piyush.mehta@xilinx.com>
 <20210805174219.3000667-4-piyush.mehta@xilinx.com> <CACRpkdZ=WRhTTQOvQcDEQhbf5Fone0GHopZfJhsQfsS-NRQUUw@mail.gmail.com>
 <974df9ef-6cdb-cb7b-2b9d-2eddaf1171f7@xilinx.com>
In-Reply-To: <974df9ef-6cdb-cb7b-2b9d-2eddaf1171f7@xilinx.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 11 Aug 2021 16:45:04 +0200
Message-ID: <CACRpkdZ5owo0rfOqysLpu+La+0p5SgNkjW6OFbG9tsOmtNJEtA@mail.gmail.com>
Subject: Re: [PATCH V2 3/3] gpio: modepin: Add driver support for modepin GPIO controller
To:     Michal Simek <michal.simek@xilinx.com>
Cc:     Piyush Mehta <piyush.mehta@xilinx.com>,
        Arnd Bergmann <arnd@arndb.de>, Zou Wei <zou_wei@huawei.com>,
        Greg KH <gregkh@linuxfoundation.org>, wendy.liang@xilinx.com,
        Nobuhiro Iwamatsu <iwamatsu@nigauri.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>, rajan.vaja@xilinx.com,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, git <git@xilinx.com>,
        Srinivas Goud <sgoud@xilinx.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 11, 2021 at 3:30 PM Michal Simek <michal.simek@xilinx.com> wrote:

> They are bootmode pins because that pins are designed and used by ROM to
> get information which boot device should be used.
> But after this is it is really behaving as generic purpose I/O pins.
> Xilinx is using them for years for usb phy resets. I have also seen them
> to be used for other reset functionality.

OK if they are used for general purpose tasks then a GPIO driver
is fine, I was worried that it was just a way to read these pins from
userspace.

Go ahead with this patch series!

Yours,
Linus Walleij
