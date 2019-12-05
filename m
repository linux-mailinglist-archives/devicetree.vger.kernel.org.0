Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A320D11485C
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2019 21:46:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730384AbfLEUqS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Dec 2019 15:46:18 -0500
Received: from mail-io1-f66.google.com ([209.85.166.66]:33963 "EHLO
        mail-io1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730381AbfLEUqS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Dec 2019 15:46:18 -0500
Received: by mail-io1-f66.google.com with SMTP id z193so5096393iof.1
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2019 12:46:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=humTQycd0vFrkIxQZiWiqgySySbeGFmTzkUhXf3KboE=;
        b=XdU6/ypkhmReLxd03n6s8HpHulakpvc3pASxdTKIXH5An0XRvRpiR5gmD8jxcctCtu
         AZ1hpqEmX4HDZOW36C/slJrG6ubHNk+86q7aGjG8lowWjq77rYGQtIffDTiLvwr5fz2X
         hwEAbOrYCHKci7lvtvy4hU6VjIYmeZLACNF2KEJSM2ULPOd9XZsWwwgCsuktqFOhSXqV
         6l26BDcvq/AIf4qgZsSjRnYm3f5T2Mpy3MY215s7XVGWsn0E8PW8g4FHLQRhawKHmCdQ
         cMISuBMCKa6YMp2kZnqgIJ9nmsLIcf4uACpYaNEVYws2f5xAhk0ed6bLJ78sgl+dT+xi
         dBpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=humTQycd0vFrkIxQZiWiqgySySbeGFmTzkUhXf3KboE=;
        b=HAWoDoaI9TQ+12peqsv+B1EQd5AD8pxdCT3BP1YP+0zpmuknVSoJtDOHKjsvF8dtwL
         19tZmTp4iZWMndZNoNWrZDnXO2l4BTF3DBIhZyaceHrP/ZBI2AJAU0MDa6IL3W06kZzC
         2E6pstkV/3342FI7fzPoK/ZqvTedHxn1UYS+YA0c5HaVDI0c5ofQmsR132A/sU/xNjPE
         DQjTFeO4C4N63zyml+Zw3gFKTaQX8xv0RVkLqBQsjeTi6vy8Ozp/FEF8uVPtc2VUjo5k
         8T4n3gUCW0QSEF20DQrlFk0pVxWcttUMDu26+9Ac7sePlM94ZdH7jRY8CKXuhZn6jSpx
         usuQ==
X-Gm-Message-State: APjAAAXfIa5U5dtIRWFXJ2J4QLjLYByedMZFbLiyNfr6iIimvNsE0kq7
        lz1kaCdGp7t8bsiLA/jrCRAsa+6MY1WQ2Qh5qUJQRw==
X-Google-Smtp-Source: APXvYqz7Sg7e83fq0vHcuOBJBouB7Eicn+xN/Pzkb8SFrEF/cGfUJr2/1zhC8EK8+W4Iqy3mBKDJlZEWDlP9p4WjktI=
X-Received: by 2002:a02:6a2f:: with SMTP id l47mr10252363jac.132.1575578777145;
 Thu, 05 Dec 2019 12:46:17 -0800 (PST)
MIME-Version: 1.0
References: <20191021205426.28825-1-rjones@gateworks.com> <CALAE=UAEFobA2SXOTJWAqexg+VNN_VTXGLGH+VwqqjKkuFwddg@mail.gmail.com>
 <20191204113307.GH3365@dragon>
In-Reply-To: <20191204113307.GH3365@dragon>
From:   Bobby Jones <rjones@gateworks.com>
Date:   Thu, 5 Dec 2019 12:46:06 -0800
Message-ID: <CALAE=UBFWvBpxODRgzM0YiM2uaBefCTvGjYj4Se=ZUU8g5fihg@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: imx: ventana: add fxos8700 on gateworks boards
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Marco Felsch <m.felsch@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 4, 2019 at 3:33 AM Shawn Guo <shawnguo@kernel.org> wrote:
>
> On Thu, Nov 07, 2019 at 11:10:19AM -0800, Bobby Jones wrote:
> > Hello Shawn,
> >
> > I just wanted to follow up with this and see if you had a chance to
> > look at this. I submitted this after responding to Marco on my initial
> > submission but haven't heard anything since and didn't want it to fall
> > through the cracks. It may be worth mentioning that both the bindings
> > for the fxos8700 and lsm9ds1 have been accepted by iio.
> >
> > In addition to this submission I have the following that I'd like to
> > check in on as well:
> >
> > [PATCH] ARM: dts: imx: imx6qdl-gw553x.dtsi: add lsm9ds1 iio imu/magn support
> > [PATCH] ARM: dts: imx: Add GW5907
> > [PATCH] ARM: dts: imx: Add GW5912
> > [PATCH] ARM: dts: imx: Add GW5913
> > [PATCH] ARM: dts: imx: Add GW5910
> >
> > Please let me know if there's anything I can do. Thanks!
>
> Hmm, did you copy me on those patches?  I cannot find them in my
> mailbox.

I just double checked and they all have you in the recipient list.
However I just had my coworker check who's also subscribed to
linux-arm-kernel and he's only seeing this thread and the "add lsm9ds1
iio imu/magn support" thread. Maybe something funny with our mail
server.

Interestingly enough they appear on the marc.info archive for Oct 3rd:
https://marc.info/?a=147430901100002&r=1&w=2

I'm not sure what happened but I'll send them out again now.

Thanks,
Bobby
