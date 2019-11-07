Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 77E95F2860
	for <lists+devicetree@lfdr.de>; Thu,  7 Nov 2019 08:49:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727119AbfKGHtB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Nov 2019 02:49:01 -0500
Received: from mail-lj1-f194.google.com ([209.85.208.194]:34367 "EHLO
        mail-lj1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726571AbfKGHtB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Nov 2019 02:49:01 -0500
Received: by mail-lj1-f194.google.com with SMTP id 139so1139468ljf.1
        for <devicetree@vger.kernel.org>; Wed, 06 Nov 2019 23:49:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ShPclsm9wNkguXhY/kITDe1JSSlg/MseBi87gM5UJKo=;
        b=A3aUeypHsz/9ckLm+t55HsyhXqAaIExjxWSz8uAx9RbfpCSSIa/dVQHvyFME/F1y3b
         cjwuorK0ZuySNvMdCc/p1tn/5VRABSDchR/mVNf6ghjDsddVL4I9JvLRmkliBw/HoM6q
         gouLsVgnhAJD7ykGs04H3OkxdC/rgWJJbwFF20gffEQRtgZdkQtPclcMaf3m0FzRy6sS
         yTsj2bmtYrn9pv678XFtPbZ1Q0FskcX0g16V4VcYWGKcUYv8VXLxGbRbXZZu/uc/MGTx
         e1cYcR+BdBd1YyuC87pel6dMiRAaVGa8c7Wcwdd0RfD7BSvEmzfXLz33yDmA5vgWw6lB
         v8Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ShPclsm9wNkguXhY/kITDe1JSSlg/MseBi87gM5UJKo=;
        b=tKhaDbnIIv1Pg6x2FMK0ciLVvhcE8T1jEmxeEcBBu+T4DzQYK5hnEByjwVHsP4XtNW
         YvvT5tIP5tU5wLyreAQb0wA1khz5TX5F0rOMAs7+FgSoYlaYJuU0qLEhBG4eGnWVymxJ
         d6TX1So0SwuwWTQoUYMHbmvdcNXQjBvlflUtc5jvdwVOZZMSIfTCxuAwSY4CyMTFyP4B
         ZVvHSvhjvyx9KSkv+c5u/LMsdvNbPGQRw38yzSkUAjfM/3QksIfhGZVvz5sil8BYZIY4
         QirbhPc92wGC/JngFAa2u4uKVyTP57yIUnQk+w3sn1568jFoSKXcZ/SdDtPbeC81/b5s
         eNXQ==
X-Gm-Message-State: APjAAAWPstND3s0ID5vgcAvYftQX8pW75w0DZgIAbRfmTvTIFFIbJgot
        o/jwVv12i6M8/usOKqV+WbZeg7SSzJ7ugv9nBCvhaw==
X-Google-Smtp-Source: APXvYqwUh2O0/Dijv6YknCg4fr4ezNaQXK4eE+1OY3XayGTb3mFeiVW9Mfng5Pe4DzuBPCwLlVkYMxHfC8VJPmvXJ/g=
X-Received: by 2002:a2e:90b:: with SMTP id 11mr1219439ljj.233.1573112939354;
 Wed, 06 Nov 2019 23:48:59 -0800 (PST)
MIME-Version: 1.0
References: <20191106060301.17408-1-joel@jms.id.au> <20191106060301.17408-3-joel@jms.id.au>
In-Reply-To: <20191106060301.17408-3-joel@jms.id.au>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 7 Nov 2019 08:48:48 +0100
Message-ID: <CACRpkdbwtf68seNW_qx2neCExfSZE7hy2kBw9eN5ObEw0_pxow@mail.gmail.com>
Subject: Re: [PATCH 2/4] clocksource: fttmr010: Set interrupt and shutdown
To:     Joel Stanley <joel@jms.id.au>
Cc:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Andrew Jeffery <andrew@aj.id.au>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Nov 6, 2019 at 7:03 AM Joel Stanley <joel@jms.id.au> wrote:

> In preparation for supporting the ast2600, pass the shutdown and
> interrupt functions to the common init callback.
>
> Signed-off-by: Joel Stanley <joel@jms.id.au>

Provided the latter patches making use of it are OKed;
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
