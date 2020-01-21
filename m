Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C01BD1439D0
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2020 10:51:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728826AbgAUJvG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Jan 2020 04:51:06 -0500
Received: from mail-wr1-f66.google.com ([209.85.221.66]:46166 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727220AbgAUJvG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Jan 2020 04:51:06 -0500
Received: by mail-wr1-f66.google.com with SMTP id z7so2335759wrl.13
        for <devicetree@vger.kernel.org>; Tue, 21 Jan 2020 01:51:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=ZI0atwJ3s6X/StOieAcUPING7QLdESS+gVuKdESoeM8=;
        b=nUOfHjOz93uo00Ul9JjHIYcdpXRpD91FGhXKiI3DbvxV2BO2aWgkLtnZjTUxfmDW2I
         5wIjUPAD3CzImoTZMmLQ0tdqq7owN/2wAWIgtyc1Slp/tQJa7ONrJG/tX1IOk2iNx3ps
         zKOatbgNJTJ9Wm869mOIX92Ypbuo/2KCMP+cN2yU1ZftTtlMXsr31wiBQDonV/Y81i/C
         JlegtyqVzaVGNXZ5PRRX9N0NLM/lLz0bw9imTqJpvFskBb6jf4N7D4CntVRBplsZ8sof
         T4Zz0YfiHYja9NZzcrxHfnDGnqq+jK+w7KXA9sMdIN2/gSWsULahN+ko5SxdZQZBxuKP
         ouug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=ZI0atwJ3s6X/StOieAcUPING7QLdESS+gVuKdESoeM8=;
        b=dva91FNg3kdeG1zSPw5553/2w0HXvIFDYqQa9vpEqfYlRflIs8JT/fAmW/DCp8zJTF
         gHYoNRon88fJHFqjsbjJcPAb74duYA7yegl0dgEXu/ekXMTtdm8DfpiXze9h8lSE3Gvw
         3yjFnrIzfRDj0S0YNKMArMQCtJmF2SUrqUdZnXkYYajW7e0+ozp/8sqIU9/tvZsqDZ0x
         Usx7Bkn5jH7warKKxj6snJPcc6TVcWRQdieYn0JuUnRihwTKe3oZxPkJmMahigV5Ibo+
         EbuSSO+B4U0+9CrggM8g6d0ocUFYuZceC3RclPt+QNpJ2IYI8+D6EEfaO6ys6J3IJOh/
         /SoA==
X-Gm-Message-State: APjAAAWX2k231uQKusCNo1GKqrXTZX6sWRlD7ZCv2OGKH/+O3g0Rz2Ws
        RZwWYDs7aMWDegg1tudgQmVZmv6bMr6IZPSOs78KrQ==
X-Google-Smtp-Source: APXvYqxAKCqSHMRYwdAc4+G8YAFujr0n0Lp3fm9R3/wAR6Pi012ThbAAQo6Ca5vAsTFhTl5nyeRAizZaA/Jf2zrnUbU=
X-Received: by 2002:a5d:530e:: with SMTP id e14mr4242678wrv.250.1579600262652;
 Tue, 21 Jan 2020 01:51:02 -0800 (PST)
MIME-Version: 1.0
References: <cover.1578578535.git.michal.simek@xilinx.com>
In-Reply-To: <cover.1578578535.git.michal.simek@xilinx.com>
From:   Michal Simek <monstr@monstr.eu>
Date:   Tue, 21 Jan 2020 10:50:50 +0100
Message-ID: <CAHTX3dJZ+fsHKpen=wtw2g2fPWq1FZwKmvn5mWJpE7m3ZJSM7Q@mail.gmail.com>
Subject: Re: [PATCH 0/7] arm64: zynqmp: Enable iio-hwmon based on iio ina226
 driver with labels
To:     linux-arm <linux-arm-kernel@lists.infradead.org>,
        git <git@xilinx.com>
Cc:     Anurag Kumar Vulisha <anurag.kumar.vulisha@xilinx.com>,
        Harini Katakam <harini.katakam@xilinx.com>,
        Jan Kiszka <jan.kiszka@siemens.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Rajan Vaja <rajan.vaja@xilinx.com>,
        Rob Herring <robh+dt@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Venkatesh Yadav Abbarapu <venkatesh.abbarapu@xilinx.com>,
        DTML <devicetree@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

=C4=8Dt 9. 1. 2020 v 15:02 odes=C3=ADlatel Michal Simek <michal.simek@xilin=
x.com> napsal:
>
> Hi,
>
> the patch 2c3d0c9ffd24 ("iio: core: Add optional symbolic label to device=
 attributes")
> added support for labelling IIO devices that's why I can enable iio based
> ina226 driver with label property.
>
> Thanks,
> Michal
>
>
> Michal Simek (7):
>   arm64: zynqmp: Enable iio-hwmon for ina226 on zcu100
>   arm64: zynqmp: Enable iio-hwmon for ina226 on zcu111
>   arm64: zynqmp: Add label property to all ina226 on zcu111
>   arm64: zynqmp: Enable iio-hwmon for ina226 on zcu102
>   arm64: zynqmp: Add label property to all ina226 on zcu102
>   arm64: zynqmp: Enable iio-hwmon for ina226 on zcu106
>   arm64: zynqmp: Add label property to all ina226 on zcu106
>
>  .../boot/dts/xilinx/zynqmp-zcu100-revC.dts    |   8 +-
>  .../boot/dts/xilinx/zynqmp-zcu102-revA.dts    | 145 +++++++++++++++---
>  .../boot/dts/xilinx/zynqmp-zcu106-revA.dts    | 145 +++++++++++++++---
>  .../boot/dts/xilinx/zynqmp-zcu111-revA.dts    | 113 ++++++++++++--
>  4 files changed, 360 insertions(+), 51 deletions(-)
>
> --
> 2.24.0
>

Applied.
M


--=20
Michal Simek, Ing. (M.Eng), OpenPGP -> KeyID: FE3D1F91
w: www.monstr.eu p: +42-0-721842854
Maintainer of Linux kernel - Xilinx Microblaze
Maintainer of Linux kernel - Xilinx Zynq ARM and ZynqMP ARM64 SoCs
U-Boot custodian - Xilinx Microblaze/Zynq/ZynqMP/Versal SoCs
