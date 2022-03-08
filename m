Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 904014D1963
	for <lists+devicetree@lfdr.de>; Tue,  8 Mar 2022 14:40:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234369AbiCHNly (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Mar 2022 08:41:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48090 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233002AbiCHNlx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Mar 2022 08:41:53 -0500
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.74])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F83A496B4
        for <devicetree@vger.kernel.org>; Tue,  8 Mar 2022 05:40:57 -0800 (PST)
Received: from mail-wr1-f43.google.com ([209.85.221.43]) by
 mrelayeu.kundenserver.de (mreue108 [213.165.67.113]) with ESMTPSA (Nemesis)
 id 1Mirb8-1o4C5j2P5A-00ewqR for <devicetree@vger.kernel.org>; Tue, 08 Mar
 2022 14:40:55 +0100
Received: by mail-wr1-f43.google.com with SMTP id r10so28638131wrp.3
        for <devicetree@vger.kernel.org>; Tue, 08 Mar 2022 05:40:55 -0800 (PST)
X-Gm-Message-State: AOAM5322/Ta3ee/SZwGVcl79/edkeXoEq7tyih8PAQDOQwwL3gJ5Bs2f
        CcJ61juyJkRKXe8/CpM/QhurkuRNuA7Qec4pPa8=
X-Google-Smtp-Source: ABdhPJy4i4S2Td2DIwViO6a2d4Sf3lMdP84U7BC96iZ7illHQ8jOEHBv73Ig/cIeTLgrsoD3sDhn22NUtkKMGcU2wFI=
X-Received: by 2002:adf:d081:0:b0:1ef:9378:b7cc with SMTP id
 y1-20020adfd081000000b001ef9378b7ccmr13058079wrh.407.1646746855181; Tue, 08
 Mar 2022 05:40:55 -0800 (PST)
MIME-Version: 1.0
References: <20220307143421.1106209-1-andre.przywara@arm.com>
 <20220307143421.1106209-14-andre.przywara@arm.com> <CAK8P3a1FxfZj0=T=cvLNfagP+c_d+SEYYuV30+-UTU+B+HVXmQ@mail.gmail.com>
 <20220308120750.0bbe0122@donnerap.cambridge.arm.com>
In-Reply-To: <20220308120750.0bbe0122@donnerap.cambridge.arm.com>
From:   Arnd Bergmann <arnd@arndb.de>
Date:   Tue, 8 Mar 2022 14:40:39 +0100
X-Gmail-Original-Message-ID: <CAK8P3a3g_zPW5xEFRku3TsZTdovevwyxyWVaN_=eD+FN2G8YLg@mail.gmail.com>
Message-ID: <CAK8P3a3g_zPW5xEFRku3TsZTdovevwyxyWVaN_=eD+FN2G8YLg@mail.gmail.com>
Subject: Re: [PATCH 13/14] ARM: configs: sync multi_v5_defconfig from savedefconfig
To:     Andre Przywara <andre.przywara@arm.com>
Cc:     Arnd Bergmann <arnd@arndb.de>, Maxime Ripard <mripard@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mesih Kilinc <mesihkilinc@gmail.com>,
        Icenowy Zheng <icenowy@aosc.io>,
        Jesse Taube <mr.bossman075@gmail.com>,
        Giulio Benetti <giulio.benetti@benettiengineering.com>,
        George Hilliard <thirtythreeforty@gmail.com>,
        DTML <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-sunxi@lists.linux.dev, Russell King <linux@armlinux.org.uk>,
        Olof Johansson <olof@lixom.net>, SoC Team <soc@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:I5c7y3Hrngi+S0kHZQcgfnZSQJzZ6Q7l0D7IW/r76z8Dn/8cgbP
 jNPBAWf783QOPqMMHpZnirsOcaCKE30Kdpg110clSKeCMrhCu2lbDNqOiskMt9+rKMY0Jum
 ljNQzyQmAAQSQj7LSHngV2gSsirmPxpiJnu2aGhSkDM34kEdXfvoj98sL+6VKaQqejUt/cx
 OFG8d04nGH+gHxaXydxrQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:Uss587I9zlI=:79HCpjC8V9wiD31FQ7X/cQ
 5NKvwUEXLZ7ZAb7arnWmpql3bC4SfOXQad4XTx4o5SnqVFszPqeoz3NFayCxi4BLu8P6eX8eh
 AmROqyp13YtKHwD3fJsB2E5qDm55kkGljsqWeLlYWeFI1T5giwkpXoRVSJxHl5APLdg8Wdtl5
 MD52ZsDdPp/gcHxEh9nPAWls6SeaiYS+4UtW0p7sEPjks8k/2y1W77I8Oy08halFc3yLi85Ud
 KltOnX+A+CFNIZ7B+3B74NnT+OEaHqNh//+M18TLQiTgkSnM5XsmnlLvDYCHkNAmgYqOqOeDz
 A+N14NQg5Jmyvt0ZQdW2mQK8MDTMkFilljrf5cWnlB1gPI6vxqFKZxM5AjBsjy54tsJ+taAfI
 ceAGBEz7pGjahuEDSwGB6m+IIxQ6vsXgiLuEdRnj3HiBc+sHUojZROZ7rP3AtKM+t09456Sb8
 zOR+oyosuKor6lkAvn3BJLdP6HubQkPeLGHRvkhIHozqX8fnjypA4kMpxFhD+u9PU5FznWZ1f
 Dkti5Kih8eknXRNdrEbG2yXAUo5DI1ydhPeO1ETfgppZPi05sZLG+dnX3TcFpCjnRqVTgYmMW
 NPHvyH//7oHoIle8xB4/pbaDH8mZq0p+EtOby/zJzpx3LJLlbi6YKZa3Chcnv4AXMsZ4U5uVn
 8Q/CcwzlHn1yUCjFBEuwcAtinrEtwqbulLoltVIyxpnFIXiHu///ql7qU8JwzX0/Anu7kForL
 zISKFdfxrtlmoH4dkzueM2pA3OsnEOsu2LB0tJ9Dvs6IX7OITwCK8fsLZaRLjikPzQdJOKOb8
 cyvY+ystdmxnDX9YMMh+pUZCLzUW29qLSUmKa61FFnUKIGq8Uo=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Mar 8, 2022 at 1:07 PM Andre Przywara <andre.przywara@arm.com> wrote:
> If you find that useful, I can try to find those dependency chains for the
> other options, but I definitely lack the knowledge about the history of
> those old platforms, so I can't reason about them. But I could present you
> the findings and you can then say what to do?

Back to this point: the most interesting ones are those that broke because of
some added dependency, or an option that got renamed. This is what I would
use to find the root cause in a scripted way (after identifying the last "good"
version):

$ git bisect run bash -c "make -s O=obj-arm ARCH=arm
multi_v5_defconfig && grep CONFIG_DRM_PANEL_SIMPLE  obj-arm/.config"

You can group the ones that went away because of a deleted platform
or driver, or those that are just default-enabled now, but for cases that
no longer use a driver that may be needed by some platform, just
having the information about what patch broke them usually tells us
what happened. We still need to decide on an appropriate action then,
which could be to include the new dependency explicitly, or to remove
the entire platform that used the driver because we find that the maintainers
never noticed it breaking.

         Arnd
