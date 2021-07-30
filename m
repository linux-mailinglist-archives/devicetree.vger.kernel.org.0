Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8A0553DB5C7
	for <lists+devicetree@lfdr.de>; Fri, 30 Jul 2021 11:20:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238095AbhG3JUN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Jul 2021 05:20:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238103AbhG3JUM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Jul 2021 05:20:12 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 154FEC061765
        for <devicetree@vger.kernel.org>; Fri, 30 Jul 2021 02:20:08 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id r26so16643702lfp.5
        for <devicetree@vger.kernel.org>; Fri, 30 Jul 2021 02:20:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=KKZG0S9qwEGWm0OSlcLBmOZfT1ItwrCeisk1MzJrEFA=;
        b=e6lPLQZ7HyLlqf9WlzgvkEbohy1DKjczSKP6jz+DhU6n2QXJpJvdtUzmTcvUAVMvoq
         WxUe+x2+ibJM7Y+fREZspOMB8gDgGL/a9SEUrGG+w/g/jSidEZ6AP3O/2Ov4QcVqd9mu
         c4xMyu3PO2/Qat7YqxspJb7SvgwXba1BcZFUj2m/pZbrZ9pNJKeaJSgBWOApfy9mFTLo
         OGBt6+5HvRZMTLcyDJXvVPbvVJ8deuosAaRw6U1cGKhWLPPzFdCS/il4pQnX7aV/Hoek
         QQIuTmz563YaoA7mJXlT54NYPLPlVtoGNJEFmaA0lj5DxesChstqFZGyAVlwfkdidZBA
         AaZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=KKZG0S9qwEGWm0OSlcLBmOZfT1ItwrCeisk1MzJrEFA=;
        b=akV0BtJJgsq5TKjwJ3NjhhHlUuj5aMo6P0nm2Z767j+W4bnxQuSUvlacadTCyHRdOL
         Y9TQxa+PJggn0jmhDdDSDjL3TBLVQaJG4nXpkXIgTJ473AMGbFt5+4VwUro6ExNionMs
         iSuEPYa3UOLEhMHMM1Gt2XllL31UNB4uCWDQPcpKJavujBX7fuomiNWjzN9KOlG1cD5U
         juqEzuWC87IjWMhwe362004/Lg/URbBZq7QmwNbncFrkX98/T7sd8W7kcQ7kYd+bvAHz
         /jYhx/JJnfvF/b6F0gV8HBu5IYYPy4/nJWB1rKCv72dyjpflozA8POVaHScEDwmC89l8
         xxnw==
X-Gm-Message-State: AOAM5327TcrkxfKVt2Gm7jwCdeg6oif9cvIgf9Lq9iYQ6P7vDKM/5Bj4
        9eKnKHPNp9mj7RtgLySvESJN3M0YmQCzfHWWBIR5TGiT1pg=
X-Google-Smtp-Source: ABdhPJysUUYb/rzIjCtdah0RtoCcClmvvna+N8lpWHp+IIvY7Nn5Ca/btgfaMeSWcs6rtJwRwFGD66JNpjwGvv7lnZk=
X-Received: by 2002:a19:7b14:: with SMTP id w20mr1219650lfc.29.1627636806414;
 Fri, 30 Jul 2021 02:20:06 -0700 (PDT)
MIME-Version: 1.0
References: <20210709182234.47232-1-stephan@gerhold.net>
In-Reply-To: <20210709182234.47232-1-stephan@gerhold.net>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 30 Jul 2021 11:19:55 +0200
Message-ID: <CACRpkdZJ7y5uitEB4_KNZaQRDnayzicDWUozsGaRgeSMD=8apQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: ux500: ab8500: Link USB PHY to USB controller node
To:     Stephan Gerhold <stephan@gerhold.net>
Cc:     Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jul 9, 2021 at 8:23 PM Stephan Gerhold <stephan@gerhold.net> wrote:

> At the moment the AB8500 USB PHY driver still uses the old USB PHY
> subsystem instead of the generic PHY subsystem. This means that there
> is no explicit link between the USB controller and the USB PHY.
>
> In U-Boot the PHY driver is integrated in the generic PHY subsystem,
> so we need to use the typical PHY device tree bindings to specify
> which PHY belongs to the USB controller.
>
> Add the link between USB controller and PHY to both ste-ab8500.dtsi
> and ste-ab8505.dtsi. This is mainly for U-Boot for now and will just
> be ignored in Linux. However, if the AB8500 USB PHY driver in Linux
> is moved to the generic PHY subsystem at some point these device tree
> changes can be used as well.
>
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>

Patch applied!

Yours,
Linus Walleij
