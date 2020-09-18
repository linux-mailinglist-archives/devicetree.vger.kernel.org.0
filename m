Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 72D6326FBAC
	for <lists+devicetree@lfdr.de>; Fri, 18 Sep 2020 13:39:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726528AbgIRLjo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Sep 2020 07:39:44 -0400
Received: from mout.kundenserver.de ([212.227.126.133]:54883 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726121AbgIRLjm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Sep 2020 07:39:42 -0400
X-Greylist: delayed 323 seconds by postgrey-1.27 at vger.kernel.org; Fri, 18 Sep 2020 07:39:42 EDT
Received: from mail-qt1-f182.google.com ([209.85.160.182]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MTi9N-1juJGu2Jg5-00TzGO; Fri, 18 Sep 2020 13:34:17 +0200
Received: by mail-qt1-f182.google.com with SMTP id r8so4592851qtp.13;
        Fri, 18 Sep 2020 04:34:17 -0700 (PDT)
X-Gm-Message-State: AOAM5331lbpKJop+RpHXhr+BmIY9mKunn++UU++H33RDSavq4PKO4ChL
        nd/LKxDmzh+837zwoxDoATT3b6675qXfaRTeZtI=
X-Google-Smtp-Source: ABdhPJyR7zz5So72V6SYhWYgwZh755GPHRackIOcSX7igL5IA735dwZVSQSG8A3tNsW/k/LOoRgJv264m3fyry8q1/w=
X-Received: by 2002:aed:31e5:: with SMTP id 92mr23933594qth.18.1600428856277;
 Fri, 18 Sep 2020 04:34:16 -0700 (PDT)
MIME-Version: 1.0
References: <20200918104949.3260823-1-daniel@0x0f.com>
In-Reply-To: <20200918104949.3260823-1-daniel@0x0f.com>
From:   Arnd Bergmann <arnd@arndb.de>
Date:   Fri, 18 Sep 2020 13:34:00 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0maQhfaerwG4KgFZOrUPwueKOp2+MOeG9C=+8ZNzc2Kg@mail.gmail.com>
Message-ID: <CAK8P3a0maQhfaerwG4KgFZOrUPwueKOp2+MOeG9C=+8ZNzc2Kg@mail.gmail.com>
Subject: Re: [PATCH 0/3] ARM: mstar: wire up interrupt controllers
To:     Daniel Palmer <daniel@0x0f.com>
Cc:     Linux ARM <linux-arm-kernel@lists.infradead.org>,
        DTML <devicetree@vger.kernel.org>, mark-pk.tsai@mediatek.com,
        Marc Zyngier <maz@kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:ZLTm1dOtWm2PCZmPhXJpOWUvMIa2mQq/w3KitFF+MUsUBHcqSMU
 x/u2iMUH9q6NpzTNjuKhQpeBIYpdk9rxa6f+5b4a4dhcB6SX4nBH7vX2E0dY3FL4KoAXsOe
 q4tKtnGAljvEpfW3W1TVJeH/XBuBj4PzSdRMFrKdo4G+p0LYgbM6HtqZBwGKqsuwuDz5ZTH
 BVtPJC8XkPUieR/9KknoQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:0i5DYDuQr0M=:SEU9GLMn2T4Pbc+uQToUXJ
 3fcK8TKBTpLZzUvHcE9YevliiFFZUdCeVHKWF24YAswTRqP74FEMw1cbht1naop4UMHQpx4VT
 AGzu71GMhGuxP8P8JYp1Q9NisNcx3p+2uZtvRxrDYPr4dpbcN0DPgeCHY7i1Ez0jjRShAEQE1
 RIzrmJjqkW6LmEwKN+PD3+HcniOTSxjwkSnRovXSCCybj9YVBtta3LK/QMQ9MC0Y4TYpVAFl/
 MlHRIeuRqGM25QWZtfDYJTIo8gi+FalOmJp9K/NFhiJgN2WpumSrXo9HDfsRN2E+R8p2hB7iz
 78oZLiS4M+rtsfI3J+ZYiQUf6Df8fl9j07ilvU7CYfPvHHCgRm9Gk0q+luNYOyGwY6dWMWQUL
 lPmVHNYX2x+qPm065y5rBMQkw7Yvj/EGh1HhxjfO6s08qeA+VeN0a2CfszGt1guOCIzXTQgUI
 up21+y7ZVdZLgxYdFgxNuAyx5mIQcvTYMrf9Up6sxYagVP2SMGUjXhV9dwMQzCWbIIz/fXUYz
 CX3x/PQcZE7z48AbwKSEQp2OGLX9X/yJqTaWCwThr/to/Uu0PXQB7Tr2ie9JIUlav3qxCHJqb
 dmRFu/LN6UBwgaV8iazLRK0jA7+RS/UdGGwOCdYUfexHnXB3WM2J2GYhleVcudlRzxftZg2sx
 ZuQaDxnKRlylUTXht3yNbDFBs/MO7LLJrydLrpu5Ndreh1+bHt+ZThSHaKVSt5NWTBuz5k+Wm
 ZKMuk5aj0zifIYXL6oRBz29V2gzDUhQ0KM9EV5fv1gUpFuZDg+1qltmNsFRuZEhuOf9dYqdRD
 0qGpymzwaW5UMTWraqQNiTWyL68sqeAbbPERKtDzuJk+pzG8rYVQZhcXEXeN5LTT5O4QbIj
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Sep 18, 2020 at 12:49 PM Daniel Palmer <daniel@0x0f.com> wrote:
>
> Mark-PK Tsai's driver for the MStar interrupt
> controller should be going into 5.10[0].
>
> This small series selects the driver when building
> support for MStar/SigmaStar Arm v7 SoCs, adds the
> instances of it to the base dtsi and wires up the
> interrupt for pm_uart.
>
> 0 - https://lore.kernel.org/linux-arm-kernel/87lfhdr7l6.wl-maz@kernel.org/

Whole series,

Acked-by: Arnd Bergmann <arnd@arndb.de>

Please send these to soc@kernel.org for inclusion.

On a different note: I realized too late that the dts files should have been
named more consistently when we originally merged them. Can you
also add patches to rename the infinity and mercury files to start
with "mstar-"?

    Arnd
