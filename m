Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CE81945888A
	for <lists+devicetree@lfdr.de>; Mon, 22 Nov 2021 05:05:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229904AbhKVEI6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 21 Nov 2021 23:08:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47426 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229544AbhKVEI5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 21 Nov 2021 23:08:57 -0500
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97ED1C061714
        for <devicetree@vger.kernel.org>; Sun, 21 Nov 2021 20:05:51 -0800 (PST)
Received: by mail-lf1-x132.google.com with SMTP id b1so74085059lfs.13
        for <devicetree@vger.kernel.org>; Sun, 21 Nov 2021 20:05:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=MEXpnLmyGEfL4QdZ+Rfyk6e7ekko34wkUVL3dw83Htw=;
        b=b3q40qxxvL/hojnrO+JRZoj+SZs3pclT654cL7B40cuKPhHA/oR6ivlykIgcXsDQU6
         alcQaelnfqp+CVGgQvc1d0D7Av0HkD+qG9cT31KMXbb5qCMldUdL07jopwZWqsHzENdt
         DRvTRZGQg6Dq8O2AOBHe0Ey0WDF9zXMJv+mJ0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=MEXpnLmyGEfL4QdZ+Rfyk6e7ekko34wkUVL3dw83Htw=;
        b=2mhL1Sd7zgcITF+OVXzXmHN0XGaXTO5Cslom19jPwWHodKgDuhGNEtO84tYcR9S5e0
         /py12fRNwkttjUrZAKdqCwID2ONyVt/LCzQ/0RfJt8AVWIf3wPDvRwQrNQLVLnppBUPg
         oX21nj0JUit1cAK6YRevwE2kjAZQGY7gH7F4JMBqfPWfT+nHusB8uMZXuMTRHf/YSwxz
         Cuz+oOhiNYeDOa+aLN6+i/89skOTebgJER0+RcW2uEOZDigOkWt0mjgpw/C2w2+3jMEK
         Csxkg7r7fe02tiNdOg2xMm9800Pk/UI5GUVCHvlFpmhosvJXSenLl95xSEzAHI6pywVY
         AZEA==
X-Gm-Message-State: AOAM5334SbnxlVLr1vywst8mhyAS6DOWGehuGC8BYbrqriC1o++nz1ln
        +nUR0i/Ti+hN6OavJrw6qiB+ZDrV/QmrcYpFdgjRSg==
X-Google-Smtp-Source: ABdhPJwi59W/Iebbn0+AUvtuYczG7cqI5vz1jJFcFkBoqjmIZWr7SxCmBZd9hholFHZChanwij52WsOGMVexUaabt1I=
X-Received: by 2002:a2e:a5c5:: with SMTP id n5mr40217324ljp.457.1637553949722;
 Sun, 21 Nov 2021 20:05:49 -0800 (PST)
MIME-Version: 1.0
References: <20211107075646.4366-1-chunfeng.yun@mediatek.com>
 <20211107075646.4366-4-chunfeng.yun@mediatek.com> <71f83770-b12f-2452-d24b-ae1be9b5b075@linaro.org>
In-Reply-To: <71f83770-b12f-2452-d24b-ae1be9b5b075@linaro.org>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Mon, 22 Nov 2021 12:05:38 +0800
Message-ID: <CAGXv+5GzP1SXi2ihhifK_Ui8Rt04UgeFyjivzHc532yvPFo3OA@mail.gmail.com>
Subject: Re: [PATCH 4/6] dt-bindings: phy: mediatek: tphy: support software
 efuse load
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>
Cc:     Chunfeng Yun <chunfeng.yun@mediatek.com>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Eddie Hung <eddie.hung@mediatek.com>,
        Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
        Yz Wu <yz.wu@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Nov 20, 2021 at 1:19 AM Srinivas Kandagatla
<srinivas.kandagatla@linaro.org> wrote:
> On 07/11/2021 07:56, Chunfeng Yun wrote:
> > Add optional property nvmem-cells and nvmem-cell-names to support
> > software efuse load, this helps to fix the efuse bit shift issue
> > on mt8195 etc.
> >
> > Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
>
> Applied thanks,

This is a PHY DT binding change. Shouldn't it go in with patch 5, the
phy driver patch, through the PHY tree instead?

ChenYu

> --srini
>
> > ---
> >   .../devicetree/bindings/phy/mediatek,tphy.yaml | 18 ++++++++++++++++++
> >   1 file changed, 18 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml b/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
> > index 9e6c0f43f1c6..05ee274b4b71 100644
> > --- a/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
> > @@ -160,6 +160,24 @@ patternProperties:
> >                   - PHY_TYPE_PCIE
> >                   - PHY_TYPE_SATA
> >
> > +      nvmem-cells:
> > +        items:
> > +          - description: internal R efuse for U2 PHY or U3/PCIe PHY
> > +          - description: rx_imp_sel efuse for U3/PCIe PHY
> > +          - description: tx_imp_sel efuse for U3/PCIe PHY
> > +        description: |
> > +          Phandles to nvmem cell that contains the efuse data;
> > +          Available only for U2 PHY or U3/PCIe PHY of version 2/3, these
> > +          three items should be provided at the same time for U3/PCIe PHY,
> > +          when use software to load efuse;
> > +          If unspecified, will use hardware auto-load efuse.
> > +
> > +      nvmem-cell-names:
> > +        items:
> > +          - const: intr
> > +          - const: rx_imp
> > +          - const: tx_imp
> > +
> >         # The following optional vendor properties are only for debug or HQA test
> >         mediatek,eye-src:
> >           description:
> >
>
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek
