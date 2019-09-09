Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8BDD5ADB4A
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2019 16:37:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727309AbfIIOhN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Sep 2019 10:37:13 -0400
Received: from mail-io1-f67.google.com ([209.85.166.67]:46995 "EHLO
        mail-io1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726523AbfIIOhN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Sep 2019 10:37:13 -0400
Received: by mail-io1-f67.google.com with SMTP id d17so7289487ios.13
        for <devicetree@vger.kernel.org>; Mon, 09 Sep 2019 07:37:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=MTv1Mbl9KcBOAl4SzU/Ny9Eh2P0M0x8Uu0yc522I0Ec=;
        b=sbx0IW1HxfaVI4vklahPVlyA5ldWtX+WKIRmkuStLP/Us1lKJOF56BLy0Gg10kzj8y
         Or2inBPdmIydnwaPl2OvJcwNd3tB7hrPim4cnDObONoVZtnDfj03aeJSdBziZ2MGo1I3
         4DWuh327IX2yyo6UcXUB4YsF2hUmsla+F4Udzn5dbU5FNiR91i4mQDf+MHh1OsmiyWAq
         wOlbeGuFxvdZ4RfSnTTSoG52E5gspyLsEk0jiX0EdJk5xXLn7fROTLl/f//CQ8BDdyRe
         /pS8alEIs7m6YKZ/TQ42vV3joVnlU+kOFw/gO1wtaKQ1va87bMDrMKVBEYMAI8Twn2ko
         QYXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=MTv1Mbl9KcBOAl4SzU/Ny9Eh2P0M0x8Uu0yc522I0Ec=;
        b=avCXS1lUQt1jdMKqa6OgXgkDQN6uQCHuI1c/fxol1KaZHxiKEyX31OJtMCgtSPJkU9
         A8/VIGXqKPab+xzrLO5gtgtXv/LooxmuD/HA5n9bCfbRdBbAOCQPEWNcPCTQPifjQ2HH
         SaQFCo44ng3Zlt2dtlNqeNBF5TlKj80leQsdNrRkozglRqd8+9b6vu8fB5oBC1bluak0
         wt7ycf9iZqGEPny303m+Ar6vQQjBwFtydkWjjAHjkDgL9vl1GmpWWxY0M9fwn2VcKdaG
         dXgEAtEbg9wbxy5WEod57j6/xAQlJyaGdm9kUnJNIZhu+U+3GlcAd6TH4r4thfFturHG
         XX5Q==
X-Gm-Message-State: APjAAAXTMJ1Ujl38lgq3lCPb/d8i9Um+xMBqeszPMSrrsaeshbfejFoI
        cNAjkp4vEkHZ90XdmtYl+WszSni5zf8AqvMTG/0=
X-Google-Smtp-Source: APXvYqz6ER7OcOSLuzzRgvm0n/yKD+xdIJZZvGdqGscjHRsmzolipTug9aQL+Z926VaGW1wQJaI9PyejiNgkrnaumEk=
X-Received: by 2002:a5e:8f41:: with SMTP id x1mr14959320iop.191.1568039832543;
 Mon, 09 Sep 2019 07:37:12 -0700 (PDT)
MIME-Version: 1.0
References: <1563290089-11085-1-git-send-email-aisheng.dong@nxp.com>
 <1563290089-11085-2-git-send-email-aisheng.dong@nxp.com> <20190829102009.GA22728@optiplex>
In-Reply-To: <20190829102009.GA22728@optiplex>
From:   Dong Aisheng <dongas86@gmail.com>
Date:   Mon, 9 Sep 2019 22:27:10 +0800
Message-ID: <CAA+hA=TNJt00hqdajYy0jrzMU9+K6Xsu+3hSyouPXmhGAyYxtg@mail.gmail.com>
Subject: Re: [PATCH v2 01/15] arm64: dts: imx8qxp: add fallback compatible
 string for scu pd
To:     Oliver Graute <oliver.graute@gmail.com>
Cc:     Dong Aisheng <aisheng.dong@nxp.com>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        devicetree <devicetree@vger.kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will.deacon@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        dl-linux-imx <linux-imx@nxp.com>,
        Sascha Hauer <kernel@pengutronix.de>,
        Fabio Estevam <fabio.estevam@nxp.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Oliver,

On Thu, Aug 29, 2019 at 6:20 PM Oliver Graute <oliver.graute@gmail.com> wrote:
>
> On 16/07/19, Dong Aisheng wrote:
> > According to binding doc, add the fallback compatible string for
> > scu pd.
>
> This Patch series (v2) is running fine for some weeks on my iMX8QM Board.
>
> So feel free to use my Tag:
> Tested-by: Oliver Graute <oliver.graute@kococonnector.com>
>
> Will there be an updated version of this Patch series which apply on
> latest linux next?

Thanks for the test.
I have a local version, will rebase to latest next and resend.

Regards
Aisheng

>
> Best Regards,
>
> Oliver
