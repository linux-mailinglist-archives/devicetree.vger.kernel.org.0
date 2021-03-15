Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 978BA33B097
	for <lists+devicetree@lfdr.de>; Mon, 15 Mar 2021 12:05:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229558AbhCOLFZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Mar 2021 07:05:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229562AbhCOLFK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Mar 2021 07:05:10 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0ECABC061574
        for <devicetree@vger.kernel.org>; Mon, 15 Mar 2021 04:05:10 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id 18so56093260lff.6
        for <devicetree@vger.kernel.org>; Mon, 15 Mar 2021 04:05:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Sgvr9igcXWBKUfY1IE4B67mheq905Em2jQKjOx4y1YE=;
        b=HKhfeeknB7kfXg9qqI7wWyr88d6N6N0MnUy9HDIvwsgFr28rpFNDBeukf2x56mBXZj
         7IlMrOSTUnj7+Vk9EhivUeiQ8sDpaVhccDqZR1tjkHXa2xLNGgg7ZCAwvsXHb3xGij6l
         0gfIx7huASrtnFKcJxIdY/WZww0WvTf8WgknDunIM7IcpqEnJ+aROCHqsrcfZDvir0t9
         hOgKn+wphPfw7jMHzivOFyB9L6174KZg3aYkaifYnqYxRyrGteoLhms1ppDCgZx+gK0p
         RVfXT2Shj+bfkssrku57lF2Gk7O+Mq2REwSnmJFEShEDAG5PMQl/DF/iexdibaQhMMCz
         NmoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Sgvr9igcXWBKUfY1IE4B67mheq905Em2jQKjOx4y1YE=;
        b=SaxDwXt9gb3W9m2NYZiEERSKPU3P/8NDfzCp48uPASGwXPOQjuhLG+TqUIhYNwEHzm
         yo7yk6dkq4s3sEXmOl6VICpH9BJSS+e/MHkpFF6/5GEXcF6grK051rg55MXp2XOhIZi6
         BqtB3YFQlKU+Ad9uEjpx8Ckg7MiEpMjruBqbM/lzdrtkyC1CJ624zn/CzKTHF4VzX2LG
         mMESSgaWk0iD+0kXul7mVWty/kfHjzCzc45uSjaQCpIfKx2eL/B34dGzyX0jCBO810vI
         nXrhYfn/jFPopi/cYjN0NFoVACAT+yOkTsdDMzebErjzJaGz1iLwIDudGYrdRhHLggR0
         zvzg==
X-Gm-Message-State: AOAM531QUWeAJDe83Cdk9QBGU3G2v2XRLOtr3q/63juZLAjmJcwAl7gj
        p2AWdHovrbmWb482RdDimEivbmL8v07xZabtGZo/qw==
X-Google-Smtp-Source: ABdhPJxgA++CWYgtrmM/Gv6XPeHInoxEYMwul217KfTlYslgm0DxKCREAH3B2IZa7VtwpBjIvONTWthCpwTuZd52zt8=
X-Received: by 2002:a05:6512:243:: with SMTP id b3mr7794596lfo.529.1615806308540;
 Mon, 15 Mar 2021 04:05:08 -0700 (PDT)
MIME-Version: 1.0
References: <20210313215302.4076765-1-linus.walleij@linaro.org>
In-Reply-To: <20210313215302.4076765-1-linus.walleij@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 15 Mar 2021 12:04:57 +0100
Message-ID: <CACRpkdZCoeb-uFgOrj5QETdiUPim9O=kXTXwqaFCZ-o76qzpuQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: Convert the BCM4329 bindings to YAML and extend
To:     Arend van Spriel <aspriel@gmail.com>,
        Franky Lin <franky.lin@broadcom.com>,
        Hante Meuleman <hante.meuleman@broadcom.com>,
        Chi-hsien Lin <chi-hsien.lin@infineon.com>,
        Wright Feng <wright.feng@infineon.com>,
        Chung-hsien Hsu <chung-hsien.hsu@infineon.com>
Cc:     linux-wireless <linux-wireless@vger.kernel.org>,
        brcm80211-dev-list.pdl@broadcom.com,
        SHA-cyfmac-dev-list@infineon.com,
        linux-mmc <linux-mmc@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

By the way, here is a question to the broadcom folks:

On Sat, Mar 13, 2021 at 10:53 PM Linus Walleij <linus.walleij@linaro.org> wrote:

> +          - brcm,bcm43143-fmac
> +          - brcm,bcm4341b0-fmac
> +          - brcm,bcm4341b4-fmac
> +          - brcm,bcm4341b5-fmac
> +          - brcm,bcm4329-fmac
> +          - brcm,bcm4330-fmac
> +          - brcm,bcm4334-fmac
> +          - brcm,bcm43340-fmac
> +          - brcm,bcm4335-fmac
> +          - brcm,bcm43362-fmac
> +          - brcm,bcm4339-fmac
> +          - brcm,bcm43430a0-fmac
> +          - brcm,bcm43430a1-fmac
> +          - brcm,bcm43455-fmac
> +          - brcm,bcm43456-fmac
> +          - brcm,bcm4354-fmac
> +          - brcm,bcm4356-fmac
> +          - brcm,bcm4359-fmac
> +          - cypress,cyw4373-fmac
> +          - cypress,cyw43012-fmac

Here the "-fmac" suffix is added to distinguish the function from
other functions
in a combochip, usually WLAN + Bluetooth.

Are there some of these that are just WLAN and not combochips? In that case they
shall not have the "-fmac" suffix.

Yours,
Linus Walleij
