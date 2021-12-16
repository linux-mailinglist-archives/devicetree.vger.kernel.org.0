Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AFD7E4768AD
	for <lists+devicetree@lfdr.de>; Thu, 16 Dec 2021 04:28:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233363AbhLPD12 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Dec 2021 22:27:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60840 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233342AbhLPD12 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Dec 2021 22:27:28 -0500
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com [IPv6:2607:f8b0:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 909DBC061574
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 19:27:27 -0800 (PST)
Received: by mail-ot1-x32b.google.com with SMTP id n17-20020a9d64d1000000b00579cf677301so27382708otl.8
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 19:27:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=OGfCOgui3LtT3q9T9qzB90ie9BosBfXB2FplBkH2YpE=;
        b=XB9wS+80fk8mU4DcQIMnqW/vt25+UQifdFJ/WVgs8XMWMXaVLax8S3Q1+dBV6KKFyn
         8NvPf+B4hBTFTAGJGB41Z76M/T35QwVBiB5eEit9f0d3CWeJ8lLtJrL0L4m6sYgW7ZEW
         2snX/KTc3kP3B0Ww1lIoef1e9lVHM+M6Yf5Ihx2LJ249dfxp00ovXe2dC6S2ssTxiF4J
         EEt5PXxBitZJbskSFOIPguOYV+wvq7kCywpE1i2MRShhnIYUyFOYsVRsz9AAAoyZ+jB5
         328yh2HWdKBEtIzuDDfivjNKPrSAaQ3aOdFPxmIUZJg6ixwseQDU71jOPLJ8IJykRCId
         M/CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=OGfCOgui3LtT3q9T9qzB90ie9BosBfXB2FplBkH2YpE=;
        b=3QmHBJbtZv8+zC8PJk4Kt9ULJeAjkVdX6lnK8Osdk1ouBqwA+gezRcKEymSmWF8PIM
         8UucLPYU4clwe7gaKhjGKEbTva3esfKCyKi2owoPF8FDFCDmIQrPmGsLTkxkFaBpM/Qc
         NyITJFmia/3dSh85FnTbC3sr5TGZQEXuMcxJ3DkGkI6q4I95LNoTSPVxt68ov3Sb1j1c
         M88f15uu9SoJTrq6KVRxdHgrhSaGi4ZpyUTwQDaDpvk0T0MYLS2GDyE7eKPPpb1Ei01w
         3jVdm8dhUKRppFLE9SQr+iFly4/bV9kwMQrA4ke1ijcC+k00mh3eqft13Q0Y8H3t0ZNm
         IC8w==
X-Gm-Message-State: AOAM530dI7p8guk3/ad2OaSOr47UAXt/LtTYd7UzrMgg5A5u71l+UTOY
        C7MLfiDiSLi0wRirHaw3JZULkRS6C5P2jJACHS1FIw==
X-Google-Smtp-Source: ABdhPJx/CxbB6ZeC0jtuzDlfsovBMgCah7FzcAPML1ZZCB/vj5gGvCvDQy0S/JfsqKSxR6d1/cksM1SJsu14tmfKzDw=
X-Received: by 2002:a9d:a42:: with SMTP id 60mr11514782otg.179.1639625246983;
 Wed, 15 Dec 2021 19:27:26 -0800 (PST)
MIME-Version: 1.0
References: <20211206092237.4105895-1-phil@raspberrypi.com>
 <20211206092237.4105895-3-phil@raspberrypi.com> <CGME20211214142139eucas1p1c100b7fd4b8c8ce85bc03e1ce6b783db@eucas1p1.samsung.com>
 <8671ebd8-a853-7394-9864-0457514337e2@samsung.com> <2ce5956f-ce8c-80f0-df9a-492a8da00a08@raspberrypi.com>
 <dbba6665-9688-9a5e-091b-eaa8e92e6886@gmail.com> <83bda801c9be665086f94acce46d44da5d24ba9c.camel@kernel.org>
 <45fa0de1-c2be-84dd-782e-184ab608895f@gmail.com>
In-Reply-To: <45fa0de1-c2be-84dd-782e-184ab608895f@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 16 Dec 2021 04:27:14 +0100
Message-ID: <CACRpkdbyi4QrHXpPaZvPaZZhuO0-iMwTi=UmVHy5XagSFqJnzQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] ARM: dts: gpio-ranges property is now required
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     nicolas saenz julienne <nsaenz@kernel.org>,
        Phil Elwell <phil@raspberrypi.com>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Rob Herring <robh+dt@kernel.org>,
        bcm-kernel-feedback-list@broadcom.com,
        Thierry Reding <treding@nvidia.com>,
        devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
        linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 15, 2021 at 6:14 PM Florian Fainelli <f.fainelli@gmail.com> wrote:
> On 12/15/21 1:02 AM, nicolas saenz julienne wrote:

> > As for channeling the path, would it make sense for linusw to take it alonside
> > GPIO fix?
>
> That would definitively work, Linus, are you comfortable with doing
> that? I will reply to the patch with an Acked-by if that helps.

Do you want me to merge this patch (2/2) into the pinctrl tree,
where patch (1/2) is already merged?

Sorry just a bit confused.

Yours,
Linus Walleij
