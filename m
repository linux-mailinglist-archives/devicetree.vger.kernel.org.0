Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 648392B94B
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2019 19:06:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726657AbfE0RGM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 May 2019 13:06:12 -0400
Received: from mail-it1-f182.google.com ([209.85.166.182]:51241 "EHLO
        mail-it1-f182.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726207AbfE0RGL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 May 2019 13:06:11 -0400
Received: by mail-it1-f182.google.com with SMTP id m3so215344itl.1
        for <devicetree@vger.kernel.org>; Mon, 27 May 2019 10:06:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=lYdSAXQyUGqWv3pohgAO1eFm6eyshOKb53ItjgPF5ks=;
        b=auQi4t0KIQSLbWB4Z3/yAh/KnB2pb4oKcMg6M1Gx1YaDHD7uLgx7WwJJ1FhdYG/1Xs
         8aN2djj//562uqI31UcrGRs0JFEOEO+OHJ9ampjWGDdibkvrHhItQw+d5E709vTiMsTu
         v+sVL+sb446cuOdU5LyXilMav80v7qcS2MR+j5gBSZGD4CtXN6jIdcw7o+hP2q7xQrde
         sX/BWJ4Up6ThjiJsRMNbuYwJxeGve8ISi5Nmy9y+kmxHYeYEAe58c/dC+NZci2N2ge45
         nTViFEk+JUHsP9dySfcj05/Vv3vwWqdP954c1a9NOjxLJRnR0K7eUiIx3yap+0rlY0U0
         dQZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lYdSAXQyUGqWv3pohgAO1eFm6eyshOKb53ItjgPF5ks=;
        b=Cv0yyO1/kFj9K47Fkdx8QgZg3zt7h4W6iiQufNLRd7JYrGFtRSYTX4W/AC3QR6gPWo
         cE7RkHRUUCnKRkZDxFY5dnUhiFvsUIYrYrEdps5wNEPTVlN3Yfadh4ItwpfPcipGk4FL
         w5WrZSA44KzZORuzXGqyWfiPFuolL1UusmMNzyklfnMXOcNsBY5PP6k1CDwX53VUVk0W
         6dtdLuHTbYtVj81nrhWJPd/88q+9K2nvjOJqLE7ACvuzM1C9Unnz620Ddj4g7pkmfiez
         UmugF9ERJPfbxpAOZ6yxB5jUY44ObZcG29647KPLBhiD77WuTHkZH1MMjlCTsKRkOUAZ
         RpGA==
X-Gm-Message-State: APjAAAV3q3hSe7a+LG6lsvJQ2xp+WuryhVSwb3/qhjI8xJGWwdJdw72t
        RYckfW9uTMBE6qWq31FVAHSWsQb3qUdUTQvS8Gs=
X-Google-Smtp-Source: APXvYqx24INfS3Cbe2Q1kuDvtcJ5neaDCp4EEGgGyfoDi+v9IFHULEO+fuC2Az+0KijNKVNAtmXVzkXsG7Sfwe8ofyw=
X-Received: by 2002:a02:b47:: with SMTP id 68mr34356990jad.66.1558976770940;
 Mon, 27 May 2019 10:06:10 -0700 (PDT)
MIME-Version: 1.0
References: <20180713171151.24699-1-pbrobinson@gmail.com> <CAOMZO5B+1atjr3Ur7EGMJSEbqT8zqWdKZWNHrkyCGvgGM4nJFg@mail.gmail.com>
 <CALeDE9N5AnQba5LirHegWgz2_3Rr6cCT_ttTUtg38OdvdegpFA@mail.gmail.com> <CAOMZO5BDEnFU__1iSuVpmRKx4SK5F+WFNho-ujTSCobQy-vzSw@mail.gmail.com>
In-Reply-To: <CAOMZO5BDEnFU__1iSuVpmRKx4SK5F+WFNho-ujTSCobQy-vzSw@mail.gmail.com>
From:   Peter Robinson <pbrobinson@gmail.com>
Date:   Mon, 27 May 2019 18:05:59 +0100
Message-ID: <CALeDE9OKkeMnM2paDmDRK0j5=ESujEk6M_n33PMYUy2WrBf5Ow@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: imx6sx-udoo-neo: enable i2c-2 and i2c-4 for
 onboard sensors
To:     Fabio Estevam <festevam@gmail.com>
Cc:     Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <fabio.estevam@nxp.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Fabio,

> > Enabling it to turn around and then disable it again seemed counter
>
> Other option would be to put i2c4 with status = "disabled" in the common file
> and enable i2c4 on the two dts files that suport it.

I've (finally) revisited this again and also got bluetooth working,
will send a new series out shortly.

Peter

> > intuitive to me hence the way I did, the WiFi in done that way even
> > though it's not on all boards and I would imagine it would cause
> > errors on the devices where there isn't wifi although I don't have
> > those model(s) to verify.
>
> If the Wifi is not present, then it will not be probed, so it would
> not cause problems.
