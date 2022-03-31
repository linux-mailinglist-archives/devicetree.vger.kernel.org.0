Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6C6134EDC22
	for <lists+devicetree@lfdr.de>; Thu, 31 Mar 2022 16:53:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237855AbiCaOy6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Mar 2022 10:54:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41996 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233106AbiCaOy5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 31 Mar 2022 10:54:57 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B448821FF5B
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 07:53:09 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id bu29so42082375lfb.0
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 07:53:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=vmDoeYM65y2kqs1U0FjAeUg/McAYeZD0ngDAl5aKrAo=;
        b=RyouiGpySHcPSY1tsZUMswdSX4nK4ERJpUB2Jf6J4w+z5hEQxrSjwCW+IAK/hlZwBb
         anzNUweszLBngBNRSBC8Hug/rfUXNkVWFw80eICjp+0uWUUuJFHBHFFwLmUfNujpdt0J
         kze90T27WMBs/JcG/5/NvBjUrNQQoNCQ6A92E9KfGxZzenaOjyEAhP3IqYF3ZAM4t2Zo
         dfTtXsLrVkbaHcUn344NwSum040Exb3Mx5Z+0oCAmdeRWdIcAJza/Y52YivP/MqNxqjf
         mlJH8zbT1EoTdFrFUOyoz6flgmDNhuq4KDeXE42VvSIg4wt1MheoUKg+AqFY2Xlthymr
         FTPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=vmDoeYM65y2kqs1U0FjAeUg/McAYeZD0ngDAl5aKrAo=;
        b=58DhuEVA7qYhf2jU3F54GO2HB2l9WcgsTZ5WCweGFgO7/5vbF8XzWHrdhsaNXGlwFz
         +7t6yX8cGsJual+dPXO/nCCHf+brUabkXq5hO4hEX7/BlmpkFSTLJgnvvXd9uRAvNvi/
         nQO7MpzHbrgt5uQs/6On/pDH//BugV0PwBEpax/VLPNziY9GJNseRDMIbEwL8pkQwCB9
         mspPDSr5KJjSxTg142NpcvNe7SA/c8D/3teQg3pZaPADK6AVVmR3qxC4CI5h+JlJ/+uk
         5PMhsHLwItwe+mJ8LKaSkcaoMeC4EBHH8NSmEUOzEp5DBZzRb2bvMSgCgIOkgnRK3QR0
         j50A==
X-Gm-Message-State: AOAM53244fSro0vBH5ANFtx21LmyMf0JMQS0/764BC/MH6R1ww+iFD3X
        OlOWP5bZdKq/wsFlC7jH0WQ=
X-Google-Smtp-Source: ABdhPJyDO0bLXzl2vQOY9DGHFBCDhJm9sy6FjUb5x2hdqVvfwTTSfCqYy0LZtN6iLHXj8GSY+7rYDQ==
X-Received: by 2002:a05:6512:1148:b0:448:39c8:89d with SMTP id m8-20020a056512114800b0044839c8089dmr10802007lfg.644.1648738387780;
        Thu, 31 Mar 2022 07:53:07 -0700 (PDT)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl. [31.178.191.245])
        by smtp.gmail.com with ESMTPSA id bu1-20020a056512168100b004437db5e773sm2692814lfb.94.2022.03.31.07.53.06
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 31 Mar 2022 07:53:07 -0700 (PDT)
Content-Type: text/plain;
        charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH v9 00/23] drm/rockchip: RK356x VOP2 support
From:   Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <af8445e0-f4af-721b-709e-2eb7c488a8a4@rock-chips.com>
Date:   Thu, 31 Mar 2022 16:53:05 +0200
Cc:     Sascha Hauer <s.hauer@pengutronix.de>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>,
        Sandy Huang <hjc@rock-chips.com>,
        dri-devel@lists.freedesktop.org,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        kernel@pengutronix.de,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: quoted-printable
Message-Id: <B7CD9D55-9F2D-42F4-9D04-17C6A5FEBB08@gmail.com>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
 <20220330072822.GX12181@pengutronix.de>
 <0D8F5951-5375-46B5-BFF0-7ED410371EB7@gmail.com>
 <20220330094556.GZ12181@pengutronix.de>
 <D3DA14F9-C9C6-4927-B015-5B7D25689DAA@gmail.com>
 <20220330102046.GA12181@pengutronix.de>
 <60601619-EF07-457B-91F2-64FEB598FEBE@gmail.com>
 <20220330192054.GA4012@pengutronix.de>
 <af8445e0-f4af-721b-709e-2eb7c488a8a4@rock-chips.com>
To:     Andy Yan <andy.yan@rock-chips.com>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



> Wiadomo=C5=9B=C4=87 napisana przez Andy Yan <andy.yan@rock-chips.com> =
w dniu 31.03.2022, o godz. 14:13:
>=20
>=20
> Piotr:
>=20
> What soc is on you board? rk3566 or rk3568?

it is rk3566 in x96-x6 tvbox


>=20
> I have a scripts[0]  use io[1] command to dump the VOP2 register you =
can use it dump the register configuration when you meet a display =
failure,
>=20
> then send the dump to me, maybe I can figure out something.
>=20
> =
[0]https://github.com/andyshrk/buildroot/blob/2022/board/andyshrk/rootfs_o=
verlay/usr/bin/vop2_dump.sh
>=20
> [1] https://github.com/andyshrk/io

Andy

Pls see https://pastebin.com/CHmu9s22

I put dumps for following scenarios:

1.
-boot
-modetest -s 69@67:1920x1080 -> ok
-modetest -P 43@67:1920x1080@NV12 -> green screen


2.
-boot
-modetest -s 69@67:1920x1080 -> ok
-modetest -P 49@67:1920x1080@NV12 -> ok (but shifted horizontally by =
about 5% of screen width)
(setting palne#49 fixes plane #43. Here i set plane #49 but not yet =
setting #43)


3.
-boot
-modetest -s 69@67:1920x1080 -> ok
-modetest -P 49@67:1920x1080@NV12 -> ok (but shifted horizontally by =
about 5% of screen width)
-modetest -P 43@67:1920x1080@NV12 -> now ok (but shifted horizontally by =
about 5% of screen width)

