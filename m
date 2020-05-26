Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D37181D4CFD
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2020 13:48:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726046AbgEOLsp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 May 2020 07:48:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726229AbgEOLso (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 May 2020 07:48:44 -0400
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com [IPv6:2a00:1450:4864:20::142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 221A2C05BD0A
        for <devicetree@vger.kernel.org>; Fri, 15 May 2020 04:48:44 -0700 (PDT)
Received: by mail-lf1-x142.google.com with SMTP id z22so1580577lfd.0
        for <devicetree@vger.kernel.org>; Fri, 15 May 2020 04:48:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zmHQ5oi+w1dpbsygDsoRqF7sOTAFHFbBfzdldzAPp9o=;
        b=N4PTtziTxHqM1fDkdSXxCv8Jg8FAni3IghpbZsnhKCoXYREBuI/Djyf0QrCyZON2o3
         uW91HJZeyAEd7QFZvCfGBj6IW72RQH4ooap6ejFY8+n9ddzl+DfpVB1fW64c2Y7UtIoS
         NbbnTyQ80k6T3D4MKAX59EysQOijXofxIm8nIbEZds5DRzahgX7amx/0KCt+RtHmCn5L
         ERXm3vPNmV3j/VWceLYoBFbvkr+ueFUofBitvDj88tLWX6oa6wY6NEzcCs1YWpPDIxf9
         PAG7IjNvBlsuvvnbZXQI6j8FAcN/Q/rkLLQIg+GxAHMsj5J3UhaM8aSZKn8aSS+YMf/6
         J7BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zmHQ5oi+w1dpbsygDsoRqF7sOTAFHFbBfzdldzAPp9o=;
        b=UqvQYnZAox0LvpNUIdzP4Wj4uHCGQV7d2Ut2Yx9+J3Q2IF/oF9CjZccNg01i7t3svP
         ZH4jnxljFxv9Lit5iDPFD+3B3W94kU/8OekyAO4LnM3j1xChQNlXBQh6idJxA7UrfXRh
         0lxi4toqh6gf6B3cP2r7pACfqx6X1LsENJCn7nuAdcZCPJ2hW3gBG3Kv57m3g+PquUNM
         rPl+F8sRJyNDd7PShtw6iYgoBqW5TuvlYPkCDRp1DCZO7YGyUnbBZ/6bHizwOB5/76zB
         XYYfLOIg2GKSd0Zi9/5QOBr6qy/EnJytJJaA3jOfSDlWNv+hWwwLFbIbo4/vTLtww/kL
         vLRQ==
X-Gm-Message-State: AOAM532XQYOxVsWogQruK2WKOuMVetDaaJ92Y/bWT6DJQ7TjJ4pGXb13
        omJlwNCZkuSmgfeDbA0wU+ykDuNmsSHDszNMhWzT7A==
X-Google-Smtp-Source: ABdhPJwtH+Xe/KX7TAFGDyQmYdkwB+GwNwnhINwGOKf6w5JzQCbvrgv8JDJazPsCnZbWVl7rRbd6+vTir3BwFcJbK04=
X-Received: by 2002:ac2:4823:: with SMTP id 3mr2156225lft.194.1589543322352;
 Fri, 15 May 2020 04:48:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200514204901.3199-1-xc-racer2@live.ca> <BN6PR04MB0660C7BA4CE07978AEC884E1A3BC0@BN6PR04MB0660.namprd04.prod.outlook.com>
In-Reply-To: <BN6PR04MB0660C7BA4CE07978AEC884E1A3BC0@BN6PR04MB0660.namprd04.prod.outlook.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 15 May 2020 13:48:31 +0200
Message-ID: <CACRpkdbucZ68KODd3shecm0uEkFgTzh4XiN08JdCM_chYApoXA@mail.gmail.com>
Subject: Re: [PATCH v2 7/7] iio: accel: Add bma150/smb380 support to bma180
To:     Jonathan Bakker <xc-racer2@live.ca>
Cc:     Jonathan Cameron <jic23@kernel.org>,
        Hartmut Knaack <knaack.h@gmx.de>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Peter Meerwald <pmeerw@pmeerw.net>,
        Rob Herring <robh+dt@kernel.org>,
        Kate Stewart <kstewart@linuxfoundation.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        linux-iio <linux-iio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 14, 2020 at 10:49 PM Jonathan Bakker <xc-racer2@live.ca> wrote:

> The bma150/smb380 are very similar to the bma023 but have a temperature
> channel as well.
>
> Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>

The temperature channel can be added later, let's go ahead with this!

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
