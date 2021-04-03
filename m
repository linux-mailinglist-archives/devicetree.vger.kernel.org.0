Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D098D353386
	for <lists+devicetree@lfdr.de>; Sat,  3 Apr 2021 13:01:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236479AbhDCLBM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 3 Apr 2021 07:01:12 -0400
Received: from mout.kundenserver.de ([217.72.192.74]:42423 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235604AbhDCLBL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 3 Apr 2021 07:01:11 -0400
Received: from mail-ot1-f46.google.com ([209.85.210.46]) by
 mrelayeu.kundenserver.de (mreue107 [213.165.67.113]) with ESMTPSA (Nemesis)
 id 1MLhwM-1lAycD1uxU-00HitC for <devicetree@vger.kernel.org>; Sat, 03 Apr
 2021 13:01:05 +0200
Received: by mail-ot1-f46.google.com with SMTP id w21-20020a9d63950000b02901ce7b8c45b4so7054974otk.5
        for <devicetree@vger.kernel.org>; Sat, 03 Apr 2021 04:01:05 -0700 (PDT)
X-Gm-Message-State: AOAM532aOuocyTUTLFIccEBFRopcpmUpfsvWFGMgUC1eoGy0KKsXBqZN
        tSXuL8ZcbHKxzkkb9h+Akauwq/y3/yhFy61v3Zk=
X-Google-Smtp-Source: ABdhPJxmDCy40BnQNDuza+e7TX61A2LzhXZ16Jpv7p6mVUu7ZW5dEILJ8jTvtCVrNM2gnG2hno7+2QGM1n/9qSSi0z0=
X-Received: by 2002:a9d:316:: with SMTP id 22mr14641784otv.210.1617447664188;
 Sat, 03 Apr 2021 04:01:04 -0700 (PDT)
MIME-Version: 1.0
References: <20210402074318.8582-1-shc_work@mail.ru>
In-Reply-To: <20210402074318.8582-1-shc_work@mail.ru>
From:   Arnd Bergmann <arnd@arndb.de>
Date:   Sat, 3 Apr 2021 13:00:00 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2kkRX1YpU4LPsxezYQWZBOPB8vxGr-03y78m3u=9OnjA@mail.gmail.com>
Message-ID: <CAK8P3a2kkRX1YpU4LPsxezYQWZBOPB8vxGr-03y78m3u=9OnjA@mail.gmail.com>
Subject: Re: [PATCH RESEND 1/5] ARM: dts: clps711x: Add SYSCON nodes where it
 is used
To:     Alexander Shiyan <shc_work@mail.ru>
Cc:     Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Russell King <linux@armlinux.org.uk>,
        Olof Johansson <olof@lixom.net>,
        Rob Herring <robh+dt@kernel.org>,
        DTML <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:InlHdQHgbcX0Ss/IuZbS5JxRo9kxHwjeBxa1GlGOFklHhVrJTf+
 HuSMJrwFqjYz/OzUam+Jk/Djbw7EpOo6OH/mKrsXvcnKuTeP3/DL5EltvOTVEeQm85ajaze
 uTGIrNCjIPEpYFzveftLS19tID9xBt1R8Le3zOovlvLFtpXiB0dTwaRT17GzKE3yLJorBN0
 uX4c/qDUd6CxuFMToYPFA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Pd6quimOZOo=:/M9gZSbUheTlKkjf8IqJwd
 klhBFDvvKiQQ5wAT7KJ56y1l0GeHBMPNs5S1iUlI2aTBhZwMI5iA3bu9s7up9PbEbMX0qr/ic
 NIOsi+8nm0L/tkDa2lCAMwCamkz+38V54UP57AqX395SR1XRltKtnbhWWt+3LzKiEv5xzOrCb
 z1OAl6rB10uFNWcDmoxETAUz9yGiPHmIE3lwg1Gm1fSQP8CTOt7Y4hnyxV/yF6GaN4+1tEFsU
 EpQn277fCSehEsipQTK6OwmZ6992XkInfv91yIRrjvBQEQePj/jCFgrFnLiG6YSztrXE0eyQ5
 GZWPLlOHC/Bx6HHofEsewjsg75xZ0BsE9cV18t3kz7U0615avscXBZK+bLN3O4SpMzeFHRaYa
 Hx1jQ4k6cImTPIfo8nMilR/8FpwVUbITOHnsqFZU6B8fqPCnCCVR15QBLOkTiR/8mMxFkCAg8
 UTijfp/taPH/5fMv8IWyPRA5Xiuudp4c+2liEqTvULk04bJecHy+3W4wjKfWZHrsn/UwRcRxA
 tEi74XcIDvqS734jrZE32KrTaK2YP6q/bUJhiqFLhh1/3D17J8eR7D1J03PhIwFj2twxp6bIE
 VT5Y2uSYKWWKorgwsCSAAfS1UXjkj0z7xn
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Apr 2, 2021 at 9:43 AM Alexander Shiyan <shc_work@mail.ru> wrote:
>
> This patch adds SYSCON descriptors to framebuffer, SPI, DAI
> and modem control GPIO nodes to further rework these drivers
> to remove the call to the syscon_regmap_lookup_by_compatible() function.
>
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  arch/arm/boot/dts/ep7209.dtsi | 4 ++++
>  1 file changed, 4 insertions(+)

The patches all look good. Can you resend them to soc@kernel.org
to make them end up in patchwork for me to pick them up into the soc tree?

Thanks,

        Arnd
