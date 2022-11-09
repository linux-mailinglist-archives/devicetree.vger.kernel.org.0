Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 352BA6236AC
	for <lists+devicetree@lfdr.de>; Wed,  9 Nov 2022 23:40:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231846AbiKIWkX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Nov 2022 17:40:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229835AbiKIWkX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Nov 2022 17:40:23 -0500
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 180C7D13D
        for <devicetree@vger.kernel.org>; Wed,  9 Nov 2022 14:40:21 -0800 (PST)
Received: from [192.168.1.139] ([37.4.248.71]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MpDRp-1pLKeR0zBX-00qfHz; Wed, 09 Nov 2022 23:39:56 +0100
Message-ID: <974b55c8-2b04-2792-fae9-36ac77f7c9d6@i2se.com>
Date:   Wed, 9 Nov 2022 23:39:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH 0/2] ARM: dts: bcm283x: Minor clean up
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Maxime Ripard <maxime@cerno.tech>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Scott Branden <sbranden@broadcom.com>,
        Ray Jui <rjui@broadcom.com>,
        Ariel D'Alessandro <ariel.dalessandro@collabora.com>,
        linux-rpi-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <20220925164021.3600-1-stefan.wahren@i2se.com>
Content-Language: en-US
From:   Stefan Wahren <stefan.wahren@i2se.com>
In-Reply-To: <20220925164021.3600-1-stefan.wahren@i2se.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Provags-ID: V03:K1:yu7rZFXEG6qXjYc3+v3VE4XESQnIXN8KDe0kRWCzv/LduooC8hj
 FUlMJfvCBHvVEVw82ToqV5cZeC3d0aCeOOdiqSpg2EvDpTIuHKUzfGW1xn47jDXl96Amcj6
 q4NIVyKkUa0achdJpacI3sKsQBXJPSbzJBuAn+nbkC+jjrhM+udL15oQrz/79npRjdi9MXD
 UHlbpRqYfYsXHL/zHo6hg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:x7SBWwsXwno=:BBG7XeSDtQ/IwruHNyKnwu
 S0fzOj55bUd7nXKategw/VTkxPHFYtvgWP4vTceCtN4hx/ltsqE88ZsMrIFWtR4oTxM8dL4Q+
 9lT3EvHtz+Bw34OFuZibkKRijoidVUH6mR17HBTs0PzojvgHMwaugwTMDccULOuVFdbZNBhOd
 Y1ZyIdmeTNbyzyAK4pODWGS5k8ufn3q9jrz/foE6GeesmYT9WA3Xis83UI8/U0CCjgWjeOwvi
 SxOB8pnvfCOygofQ6Vgnnr6Wp+/tGM4QT1PYSmQEiUJAxxDH4kGpkvq4fM6LRLaqRRlndf5IC
 +RddPKtJrsismgRisD3p6cw/rjMm1k4rk4nVD8bRTaTUR8qQ7CCyasw6/6ySuHsJajLKHBrrt
 F/wz+A1Hih57y+9CdAuRy583lsTUrw4yGMd/+9TWJkeSSDzQTzOAy6H3FQjCQ0AieeMv2ahWI
 zHYwHhBaPgmVPjx82LXAAXnOFbRoxRh2zeKZkLs5BP9YI/v3y6VITBgc7qj7x7F54r/afPwZa
 d5rhJ3fsvXK+ESFVb5ik88pGgNnGzKGjsQHR1pKDyxP1PieGurqT8LZF4Mp6uQr0uUXsNTwVu
 WGHxYqWxGNUkwEq609vDMbWIw8kVMohFFl4ukG1k2klXVwX77vGy9qcqZjdI8hbBrf0XJR4b2
 nlV/VWC6JwXA7yPbTfSmsnoFSJTgpf3tn+BEyL5/FzN17qXyPhOKC0RJLNk0J5Ci6W8NxylTI
 9lCy/BGP44X5rc+a3mstKGxRaA6+OW6m5rJEX9inYMg90ZgbFCqwt0mcL1WIja8C/PdvReCXF
 5INrx7Y/MwA+zBkg/rzqMnWkyqW9Gyzh5BuNJ6re2KUwaToeC2UYATJLqfjgrbmorZUWnhp4p
 EgXauiGZRfv9PaQK9p95PYtMa7J1DyX+RFnf8gMWua7h6OR+8ji37IwKAhzI+172Ress6+nd9
 eabJrDJ+3n5AsTQyPVlEVxUcxiXiKXvhXMSJIY2Mo2A0OsGW74VywKsJroe19R5d418T+dEQ1
 xo677qe3YRMPda3zDUOEDK3+qdDDGLOeCXOe/q5/Du8qrVFidGNBzSyo74sBIiSq7JYruY8q/
 JVEy99FPo37jKgYJZOqTAnC2dRMOZZhnM8J/NfTCuyYEE2PU5OJLUgAMB1HZmfQmj/63kd1/u
 vahjCQR/jjnnd9rd9uadnt0RvtkSofg8I8OB2wZrdDD5TeJNO7LLrYv0IFUD4QIUWrTg/54gv
 8hMIq3jc9auW4fVhYFzPC5sgZ3iTypBDnU1MTiIjlKte+YaSTHMz/eCpGdPmo4tAYr/G8mZcG
 hfhE+jUQwSgI1QX0fiezX08FWcuavw==
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Florian,

Am 25.09.22 um 18:40 schrieb Stefan Wahren:
> This series cleans up some minor issues, but this affects most of
> the bcm283x DT sources.
since you already applied Maximes patches, i want to know if you are 
fine with this series?
>
> Stefan Wahren (2):
>    ARM: dts: bcm283x: Fix underscores in node names
>    ARM: dts: bcm283x: Move ACT LED into separate dtsi
>
>   arch/arm/boot/dts/bcm2711-rpi-4-b.dts         | 31 +++---
>   arch/arm/boot/dts/bcm2711-rpi-400.dts         | 16 ++--
>   arch/arm/boot/dts/bcm2711-rpi-cm4-io.dts      | 27 +++---
>   arch/arm/boot/dts/bcm2711-rpi-cm4.dtsi        |  4 +-
>   arch/arm/boot/dts/bcm2711.dtsi                | 94 +++++++++----------
>   arch/arm/boot/dts/bcm2835-common.dtsi         | 18 ++--
>   arch/arm/boot/dts/bcm2835-rpi-a-plus.dts      | 27 +++---
>   arch/arm/boot/dts/bcm2835-rpi-a.dts           | 11 +--
>   arch/arm/boot/dts/bcm2835-rpi-b-plus.dts      | 27 +++---
>   arch/arm/boot/dts/bcm2835-rpi-b-rev2.dts      | 11 +--
>   arch/arm/boot/dts/bcm2835-rpi-b.dts           | 11 +--
>   arch/arm/boot/dts/bcm2835-rpi-cm1.dtsi        | 11 +--
>   arch/arm/boot/dts/bcm2835-rpi-zero-w.dts      | 11 +--
>   arch/arm/boot/dts/bcm2835-rpi-zero.dts        | 11 +--
>   arch/arm/boot/dts/bcm2835-rpi.dtsi            | 10 --
>   arch/arm/boot/dts/bcm2836-rpi-2-b.dts         | 27 +++---
>   arch/arm/boot/dts/bcm2836.dtsi                |  2 +-
>   arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts    | 27 +++---
>   arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts    | 27 +++---
>   arch/arm/boot/dts/bcm2837-rpi-3-b.dts         | 11 +--
>   arch/arm/boot/dts/bcm2837-rpi-cm3.dtsi        |  8 --
>   arch/arm/boot/dts/bcm2837-rpi-zero-2-w.dts    | 11 +--
>   .../boot/dts/bcm283x-rpi-led-deprecated.dtsi  | 18 ++++
>   arch/arm/boot/dts/bcm283x.dtsi                | 70 +++++++-------
>   24 files changed, 260 insertions(+), 261 deletions(-)
>   create mode 100644 arch/arm/boot/dts/bcm283x-rpi-led-deprecated.dtsi
>
