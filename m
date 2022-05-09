Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 56A0651F5CC
	for <lists+devicetree@lfdr.de>; Mon,  9 May 2022 09:55:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233313AbiEIHlh convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Mon, 9 May 2022 03:41:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56810 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236070AbiEIHZn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 May 2022 03:25:43 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.187])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18E6A703F9
        for <devicetree@vger.kernel.org>; Mon,  9 May 2022 00:21:47 -0700 (PDT)
Received: from mail-yb1-f170.google.com ([209.85.219.170]) by
 mrelayeu.kundenserver.de (mreue010 [213.165.67.97]) with ESMTPSA (Nemesis) id
 1M89bP-1nkPKa1NRr-005LVG for <devicetree@vger.kernel.org>; Mon, 09 May 2022
 09:21:23 +0200
Received: by mail-yb1-f170.google.com with SMTP id v59so23243774ybi.12
        for <devicetree@vger.kernel.org>; Mon, 09 May 2022 00:21:23 -0700 (PDT)
X-Gm-Message-State: AOAM531R7IJl0vf9Ql3pY1NJLcCZpYpWsCTNcKSPdkn/yHSlVNJyKOk3
        2h2kBy/KP8xFFw01VzO69FfeqNMwvY0fMpDaMTM=
X-Google-Smtp-Source: ABdhPJwvjfmW3GgAEYucjWilsiTVRxV9KEk9VA/Dchxs5csGbKWTID7oJ1ta/6hj1CCB5EwTLtq6wr0NNUzpVpQcQow=
X-Received: by 2002:a25:c604:0:b0:645:d969:97a7 with SMTP id
 k4-20020a25c604000000b00645d96997a7mr11469239ybf.134.1652080882146; Mon, 09
 May 2022 00:21:22 -0700 (PDT)
MIME-Version: 1.0
References: <20220427162123.110458-1-maukka@ext.kapsi.fi> <CAK8P3a0p-ev50UfGiHCpMM5Jz5Mf8pdfQtNep0M7qi7PANSBVg@mail.gmail.com>
 <1509d16c-d244-19c7-610b-4c8ea8ca1624@ext.kapsi.fi> <CAK8P3a3g4CZjiVHHoBqJLrdN0chghaskODVvtWY1Fjj8TcB8KQ@mail.gmail.com>
 <b09847c4-90f8-509d-835b-85613712344d@ext.kapsi.fi> <CAK8P3a1miLk8YU+T5ozyf-X8qUB3sJq6cyTovBs9XWb9MrJxMw@mail.gmail.com>
 <20220508152237.3hw657gcba2fvheq@pali> <20220508154126.3wubyyunpuxetswm@pali>
In-Reply-To: <20220508154126.3wubyyunpuxetswm@pali>
From:   Arnd Bergmann <arnd@arndb.de>
Date:   Mon, 9 May 2022 09:21:05 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3WZBOPDH8CxnK3H7bqTbytU_+KJg7SHhAS-PN3KQoxnQ@mail.gmail.com>
Message-ID: <CAK8P3a3WZBOPDH8CxnK3H7bqTbytU_+KJg7SHhAS-PN3KQoxnQ@mail.gmail.com>
Subject: Re: [RFC RFT PATCH v1 0/1] ARM: orion5x: convert D-Link DNS-323 to
 the Device Tree
To:     =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>
Cc:     Arnd Bergmann <arnd@arndb.de>,
        Mauri Sandberg <maukka@ext.kapsi.fi>,
        SoC Team <soc@kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        DTML <devicetree@vger.kernel.org>,
        Olof Johansson <olof@lixom.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andrew Lunn <andrew@lunn.ch>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8BIT
X-Provags-ID: V03:K1:HdtdMl90G98c0/EiWktVohDCnHoIjKJQqSMGaHbyUDKq0hcJm/j
 21/e79WAss/lNZoSwJyDxo8n0jalzzaibJZokCHhVeOBeJSaB5phr20wzgHIB9OStTTiK8A
 3e7SQz30TsiAjewohGIEnqav1uiNbybnYsBf0J/GS7cqcUSMcJVgLIemwF8vNm1V8YCcEMu
 XfVWQawSbnenLBqU7NPfQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:+jRh0v+uYFE=:QlGx2pSmqT46cluFg1g4yE
 mtuOIxNC2SqlhAL3ciQpfsx5ChdbRvQ4yCWrv60QlTP7Jb2JKjiiunzfOnsNRX1t4VAszPwDW
 1btRRb+uXia1yZMdu6RLX2Kn6OlGpJ+QFlxC/tH6ZYqjoj+G+xDcwI7CWJJ+1Khyny/RUb6v8
 iw8CSQkBrA6eMRU35v8gl9ifeayYOqWEN/YYJ+kc9BISJGAmiyybjVtgvjxbIPPWM55BHaPrB
 prXKpGJMDlgINo+VlNUCrWPOYkY4fshPqvqT4bQN+WaJKCtS4S+udLKc129iflpaya16FPhZC
 qfC2G+Fr60fAgwwz/ndCxWy0zo2aZvCv4KZ5nQpbbxZIVNmZVKUzGVm6RMyayj7TUbhafpxJX
 1/1MliCA28pSdhyNzHnqeNIV2HxFoPBfq7rD4oUgTw705zNJrBEtz6q400HXLucUYdTzNRoH6
 pKyimlnyy4xdVwJGIR/QOIQfR0aGuuUh7P7c6qBHnFdsDY51QlpL33mj81rCa53k6Q3G7SnWy
 4+EM4/Cz4wmEz5JmYbjqBIbYJLn6AuRk08NX7XZyOOcHhE9gFS9cjCg+I+3G9NKY3+iav6UN0
 dUvH9JKay2Ld8hBmzeuwojr/XtSBJ7OncGPRd0WMpbQSDj1tdyBXKVhyuonL0yelAHqBpQr9g
 srnMMsMouTDUi4vlFWD4Gt4yT0o/Gh/CBQ7fkf0ce9Z05CWSnw4jYUf7hBd5ZbLog3/WBMGz9
 gnXEJWpCQaw6U/8SSArmhpSLPY0IN8UX8+Zid6TAuPMsD0jk+kKMsiMkn4cxIQy7rB2W1BBkz
 tKqOXRfaDatyey+8umbxqMTXgeQJCWlmH7ldFKbwsZgc6ksyfY=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, May 8, 2022 at 5:41 PM Pali Rohár <pali@kernel.org> wrote:
> On Sunday 08 May 2022 17:22:37 Pali Rohár wrote:
> > On Sunday 08 May 2022 17:02:17 Arnd Bergmann wrote:
> > > >
> > > > Can the existing pci code still be used to init the PCI bus and describe
> > > > the rest in the DT or is it a futile attempt?
> >
> > Hello! Orion uses arch/arm/mach-orion5x/pci.c driver for both PCI and
> > PCIe buses. This is not device tree driver.
>
> Correction, Orion PCIe driver is arch/arm/plat-orion/pcie.c and it calls
> common functions from mach-orion5x/pci.c driver.

FWIW, I have an older patch series that turns the plat-orion/pcie.c and
mach-orion5x/pci.c into standalone host bridge drivers that no longer
use the arm/kernel/bios32.c helpers. If anyone wants to work on DT
support for the legacy-pci side (not for this machine but maybe another
orion5x one), I can try to rebase those patches to make it easier to
add the missing DT support.

          Arnd
