Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F10C44ED721
	for <lists+devicetree@lfdr.de>; Thu, 31 Mar 2022 11:39:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229680AbiCaJlA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Mar 2022 05:41:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57094 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232626AbiCaJk7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 31 Mar 2022 05:40:59 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.73])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACB4020F7D
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 02:39:10 -0700 (PDT)
Received: from mail-lj1-f173.google.com ([209.85.208.173]) by
 mrelayeu.kundenserver.de (mreue108 [213.165.67.113]) with ESMTPSA (Nemesis)
 id 1MRTIx-1nLCA51DsL-00NShS for <devicetree@vger.kernel.org>; Thu, 31 Mar
 2022 11:39:08 +0200
Received: by mail-lj1-f173.google.com with SMTP id q5so31212769ljb.11;
        Thu, 31 Mar 2022 02:39:08 -0700 (PDT)
X-Gm-Message-State: AOAM533wMBW/Ggd7zCIDhHS35PZSzwosBO+uCMczfQCzDbsmJg+ebrup
        eA3tiXZE3nwYNJUfH12LivXLzpzoXL5ysjP20uI=
X-Google-Smtp-Source: ABdhPJwfRFXUt4OqOk81tKu7LM5gxC4c3u5ZlWSR5HmES53I0aChYbGQncx+2OGAT9B1zXjl61ywA7U1ZfgbuUggEKw=
X-Received: by 2002:adf:e54e:0:b0:205:a9be:c66e with SMTP id
 z14-20020adfe54e000000b00205a9bec66emr3308561wrm.192.1648717132578; Thu, 31
 Mar 2022 01:58:52 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1648714851.git.qinjian@cqplus1.com> <6abf8de01fa2f24e13e9b78b3dc3b206ea551c9c.1648714851.git.qinjian@cqplus1.com>
In-Reply-To: <6abf8de01fa2f24e13e9b78b3dc3b206ea551c9c.1648714851.git.qinjian@cqplus1.com>
From:   Arnd Bergmann <arnd@arndb.de>
Date:   Thu, 31 Mar 2022 10:58:36 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1APzs74YTcZ=m43G3zrmwJZKcYSTvV5eDDQX-37UY7Tw@mail.gmail.com>
Message-ID: <CAK8P3a1APzs74YTcZ=m43G3zrmwJZKcYSTvV5eDDQX-37UY7Tw@mail.gmail.com>
Subject: Re: [PATCH v12 2/9] dt-bindings: reset: Add bindings for SP7021 reset driver
To:     Qin Jian <qinjian@cqplus1.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Rob Herring <robh+dt@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Russell King - ARM Linux <linux@armlinux.org.uk>,
        Arnd Bergmann <arnd@arndb.de>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        DTML <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-clk <linux-clk@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:j973ME9aw8JHNEZ8C9UTatOFteHKfVKwcE2/ox794MERajrcoQj
 4HYAdJr1lVdJc4+FtyarqrXMjdhmLwXkQP+RW1A2L3F3aStkrgy2Tg79OW66cecsJuuQ0vE
 +khsPl6rlgnSxJ2k1zLYOf1b3L93rjUqq/+UHf3J+iyVDs6NXWiFxuR/VOxO7LgaDhvZanB
 Js+TM9SzCGvegLI1+R7Yg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:e6wclvi538s=:Y0juwupRNnsDoJmMnl20gA
 pNlUBDu5MM5zbxC8fdU9WgeClgfnLXAptm+UazouFsd5p4IQo0HKqUxFR9D5YbdihB6ltDjkO
 Gby9GAdxTdu7f82BtKWeeP+NpEh8SUPLEz6AxlA8CxfMAxxoKSIQN122YNMoc6zLSx6CFYEjV
 ZSx76bn+WETCV7D7N67Uqc3F9DYHdjsIsB8DyP+8u2tdFpOx5DU7rgemTiSD/8IDbSiTwlom4
 lcF62J52xzv6jR013nTAOihjyRjD6SC87Il5qU3ZivC8EWvVxBuSbkSLmu7LqZLJVXrQFjAST
 71f34JPRJ8bWDnmK3JoS5RMRx76BM/0x0hOA8KdrAfazBjE+VSOcB7bQFeNmv32r8w9o52fjH
 iZLF7tOLb6smMs8NkzaKO5YWjcsdZTzuuwpZ2ztPwT/y0rsPk5x/+Cxt+adLiS9pc7Y3Nt3la
 wcpCHk6+K4v0L6R2XWjwuqKmkjyiWQO7+3qxf7N92bZXJLRqPv2k8fjP1PLDRztTXktozHjBb
 NwrPJj6W8mraxTSO/EnjURFhyFACoAJq8SohetkOt3LRAOhqOtpsUypCEGoahXBCvyM5vIylr
 kS528GSlWcQys4qvifdV9Q2loLUwREsHp5BYrDq8V5/GykYeLjtN1nVAQKMvKQOkL6lMJuKMy
 udr+woboBkAdafs/kR0IyCJl4u9hGvW4+AOFKnLCUVQk5DHRYwv7C4jsnvHXaOtOfet2FPmRb
 P96hh6WmZ5FHupiX6KFzINYH+OerrL0CYKx/O3s5FAqzVsl4DKky/zorypFoMEUYHAlFQvz+6
 CyBMywBSweg1kdle7+/V1lAjmZWPmFuVVWscTI2E/noyZrDnVNLZeV0ccr7R3k8PAIWEZtt
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Mar 31, 2022 at 10:29 AM Qin Jian <qinjian@cqplus1.com> wrote:

> +/* mo_reset0 ~ mo_reset9 */
> +#define RST_SYSTEM             0x00
> +#define RST_RTC                        0x02
> +#define RST_IOCTL              0x03
> +#define RST_IOP                        0x04
> +#define RST_OTPRX              0x05
> +#define RST_NOC                        0x06
> +#define RST_BR                 0x07
> +#define RST_RBUS_L00           0x08
> +#define RST_SPIFL              0x09
> +#define RST_SDCTRL0            0x0a
> +#define RST_PERI0              0x0b
> +#define RST_A926               0x0d
> +#define RST_UMCTL2             0x0e
> +#define RST_PERI1              0x0f
> +
> +#define RST_DDR_PHY0           0x10
> +#define RST_ACHIP              0x12
> +#define RST_STC0               0x14
> +#define RST_STC_AV0            0x15
> +#define RST_STC_AV1            0x16
> +#define RST_STC_AV2            0x17

The list looks like these definitions just match the hardware, which means you
don't have to define them as a binding at all, just use the hardware numbers
directly in the dt, as you do for interrupts or gpio numbers.

If the hardware does not have a sane way of mapping reset lines to a particular
hardware number, then you may have to define a binding, but in that case just
use consecutive integer numbers, not hexadecimal numbers.

       Arnd
