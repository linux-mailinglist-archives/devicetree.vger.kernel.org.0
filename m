Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 474BD25B147
	for <lists+devicetree@lfdr.de>; Wed,  2 Sep 2020 18:18:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728484AbgIBQRa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Sep 2020 12:17:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57366 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728282AbgIBQRZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Sep 2020 12:17:25 -0400
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com [IPv6:2a00:1450:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28D1AC061245
        for <devicetree@vger.kernel.org>; Wed,  2 Sep 2020 09:17:25 -0700 (PDT)
Received: by mail-ej1-x643.google.com with SMTP id j11so1799437ejk.0
        for <devicetree@vger.kernel.org>; Wed, 02 Sep 2020 09:17:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=p+VjSP7tWh9A7Uo1/vh88a9JUwYsjFZ9oMpqJyM2gdY=;
        b=MPFeFxv4rz28exekZb65X+RzUZbSJI6wj3xc5X+1ubXwzX2F32DFftTcr+fFuEvoHn
         3h3ncpRSXJUD9WxPpbJs29Zh2PBe9OGw4RV80EEL4sJsfWNjwnrM80cUbv4MXaEt+yLn
         +/arP/dsNH9bw+n5vMFzeXJsdQBr+gJdw7KZk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=p+VjSP7tWh9A7Uo1/vh88a9JUwYsjFZ9oMpqJyM2gdY=;
        b=c8rOM3s+tKyZOtdXBkqwBXVWQqwAnri27CiOGfdFwAQ9V5C9tL08SmZWaSdMnuZLsh
         sPtSl+0lJb5tBr6w0zavGvQ1Y7/9/+WuUOEHsN/sZm6QDZZEBBOPRW8MU22ikP0G38Az
         /P5cJlXTTDp8xxkbYnYPFADVGPOitvSVEh625DbOjW3DCPPTmmqjt4qzs0kRYd3LcS/P
         fxNtWAMFIRhOjFy1Osx5rBJyF/aLsRg//wtArN66j8J9uSVgcb5g6ubxXsud0cAAo4Tr
         I3KavQ9npiS+4qf/6YjK19Qf72hs9gyroThMJs051C64AE5SsyAP3bwMO2DxfB34Wnry
         zopg==
X-Gm-Message-State: AOAM532u8FUklkc5uYhb3eSXxu/jdh1q/Sbwzyi0qY7PaYCUTq/0bwCX
        2yulNEszbLyCWsiSRq6qmPPJXb3D4WZutw==
X-Google-Smtp-Source: ABdhPJyxQE8oYw/aaIVrqI8uSxXnxTuOm7MvSEAPpJ4VFe6kXgefm57qg3Ryf4UL/EERBSOKzylAdA==
X-Received: by 2002:a17:906:4750:: with SMTP id j16mr806811ejs.143.1599063442816;
        Wed, 02 Sep 2020 09:17:22 -0700 (PDT)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com. [209.85.221.44])
        by smtp.gmail.com with ESMTPSA id n26sm4452667eds.71.2020.09.02.09.17.19
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Sep 2020 09:17:20 -0700 (PDT)
Received: by mail-wr1-f44.google.com with SMTP id j2so14158wrx.7
        for <devicetree@vger.kernel.org>; Wed, 02 Sep 2020 09:17:19 -0700 (PDT)
X-Received: by 2002:adf:d0cb:: with SMTP id z11mr6506581wrh.192.1599063439238;
 Wed, 02 Sep 2020 09:17:19 -0700 (PDT)
MIME-Version: 1.0
References: <1597380295-6297-1-git-send-email-wuxy@bitland.com.cn>
 <20200831180211.GQ31019@paasikivi.fi.intel.com> <tencent_0189E021005C2124231E353A@qq.com>
In-Reply-To: <tencent_0189E021005C2124231E353A@qq.com>
From:   Tomasz Figa <tfiga@chromium.org>
Date:   Wed, 2 Sep 2020 18:17:00 +0200
X-Gmail-Original-Message-ID: <CAAFQd5AQ7nmOqTrGOtmqAk9PHGdypzBb3woG1QS45bO8yfaVJQ@mail.gmail.com>
Message-ID: <CAAFQd5AQ7nmOqTrGOtmqAk9PHGdypzBb3woG1QS45bO8yfaVJQ@mail.gmail.com>
Subject: Re: [PATCH V3] Add GalaxyCore image sensor driver
To:     =?UTF-8?B?5ZC05YW06IKyQjAxNzc5?= <wuxy@bitland.com.cn>
Cc:     Sakari Ailus <sakari.ailus@linux.intel.com>,
        mchehab <mchehab@kernel.org>, "robh+dt" <robh+dt@kernel.org>,
        davem <davem@davemloft.net>, "shawnx.tu" <shawnx.tu@intel.com>,
        hverkuil-cisco <hverkuil-cisco@xs4all.nl>,
        "dave.stevenson" <dave.stevenson@raspberrypi.com>,
        "manivannan.sadhasivam" <manivannan.sadhasivam@linaro.org>,
        "bingbu.cao" <bingbu.cao@intel.com>,
        drinkcat <drinkcat@chromium.org>,
        linux-media <linux-media@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        "dongchun.zhu" <dongchun.zhu@mediatek.com>,
        "sj.huang" <sj.huang@mediatek.com>,
        darfur_liu <darfur_liu@gcoreinc.com>,
        "hao.he7" <hao.he7@gmail.com>, "hao.he" <hao.he@bitland.com.cn>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi everyone,

On Tue, Sep 1, 2020 at 7:19 AM =E5=90=B4=E5=85=B4=E8=82=B2B01779 <wuxy@bitl=
and.com.cn> wrote:
>
> Hi Sakari,
>
> It seems the e-mails you're sending do not end up to LMML nor kernel.org
> Patchwork.
>  =3D=3D=3D>It looks like we need to fix this before patch can land in pat=
chwork.
>

FYI, I'll take care of addressing the comments to v3 and posting v4 to the =
list.

PS. Please use plain text only messages when communicating with the
mailing lists as HTML emails are often blocked. Please also use bottom
posting. More guidance can be found at [1] (the specific question the
link points to and other questions too).

[1] http://vger.kernel.org/lkml/#s3-9

Best regards,
Tomasz

> Thanks.
>
> ------------------ Original ------------------
> From:  "Sakari Ailus"<sakari.ailus@linux.intel.com>;
> Date:  Tue, Sep 1, 2020 02:02 AM
> To:  "Xingyu Wu"<wuxy@bitland.com.cn>;
> Cc:  "mchehab"<mchehab@kernel.org>; "robh+dt"<robh+dt@kernel.org>; "davem=
"<davem@davemloft.net>; "shawnx.tu"<shawnx.tu@intel.com>; "hverkuil-cisco"<=
hverkuil-cisco@xs4all.nl>; "dave.stevenson"<dave.stevenson@raspberrypi.com>=
; "manivannan.sadhasivam"<manivannan.sadhasivam@linaro.org>; "bingbu.cao"<b=
ingbu.cao@intel.com>; "tfiga"<tfiga@chromium.org>; "drinkcat"<drinkcat@chro=
mium.org>; "linux-media"<linux-media@vger.kernel.org>; "linux-kernel"<linux=
-kernel@vger.kernel.org>; "devicetree"<devicetree@vger.kernel.org>; "dongch=
un.zhu"<dongchun.zhu@mediatek.com>; "sj.huang"<sj.huang@mediatek.com>; "dar=
fur_liu"<darfur_liu@gcoreinc.com>; "hao.he7"<hao.he7@gmail.com>; "hao.he"<h=
ao.he@bitland.com.cn>;
> Subject:  Re: [PATCH V3] Add GalaxyCore image sensor driver
>
> Hi Xingyu,
>
> On Fri, Aug 14, 2020 at 12:44:51PM +0800, Xingyu Wu wrote:
> > This patch series add GalaxyCore GC5035 image sensor driver.
> >
> > Change in v3:
> > 1.Optimize gc5035 driver.
> > 2.Redescibe reset-gpio in documentation.
>
> It seems the e-mails you're sending do not end up to LMML nor kernel.org
> Patchwork.
>
> I'm not sure why, but that needs to be fixed.
>
> --
> Kind regards,
>
> Sakari Ailus
