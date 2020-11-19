Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 96A572B963D
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 16:32:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728543AbgKSPaY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 10:30:24 -0500
Received: from mail-ej1-f65.google.com ([209.85.218.65]:34004 "EHLO
        mail-ej1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728360AbgKSPaY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Nov 2020 10:30:24 -0500
Received: by mail-ej1-f65.google.com with SMTP id o9so8527002ejg.1
        for <devicetree@vger.kernel.org>; Thu, 19 Nov 2020 07:30:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Ax3xgQSZOCdMg8h0xdkcH89GubEwWIhrPc3WeTYqyKk=;
        b=l3fVJDyW5I0qHOLIAJuhVgaQyPV5v5wQ2sAvl/WDlVLXGAAvevt+N21t3N/xpFXmZk
         1dJfK+if+bXxIjhZDh+N1rRg+YFnnb8dTWtIrcHbr0GvLF0Q+wCN9/NzCcXfxTNCJ3dF
         sk+CRJ92AU/sY7kUftqilrz1sIXLd1BQvbjT5sLiy+VPDZt0b2vvRppyx8DIiDL1Frcg
         UW0zvEAmrDAs/1V5xBF1KnHmGRqR/2Pp9oqdPrK2oyiViirasgOw0oZ1H7QNMANPJe44
         caeApig8PSj2QSO6Z74YOlU8ty22Z/6OWVYK50qhqPN1fS1o9v36sbSblOEnk6qvxgVs
         szgg==
X-Gm-Message-State: AOAM530JpEKv3t+jqxZLK40A0YRiNQPs81AYmXK8I8KZo/nVzpLVQqWg
        2idpa52Gs/dLCMsK50WwB7I=
X-Google-Smtp-Source: ABdhPJxJzPHrf7Hafv/IhDMfMBEKd2kQzhY3zSrlMzuiHpWcXgkggIRA8cnm8p0uWTbYkwGqLKngvA==
X-Received: by 2002:a17:906:4cce:: with SMTP id q14mr8114858ejt.186.1605799822118;
        Thu, 19 Nov 2020 07:30:22 -0800 (PST)
Received: from kozik-lap (adsl-84-226-167-205.adslplus.ch. [84.226.167.205])
        by smtp.googlemail.com with ESMTPSA id dk14sm2362420ejb.97.2020.11.19.07.30.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Nov 2020 07:30:20 -0800 (PST)
Date:   Thu, 19 Nov 2020 16:30:18 +0100
From:   Krzysztof Kozlowski <krzk@kernel.org>
To:     Aisheng Dong <aisheng.dong@nxp.com>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        dl-linux-imx <linux-imx@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH 2/3] dt-bindings: arm: fsl: add imx8qm boards compatible
 string
Message-ID: <20201119153018.GA387077@kozik-lap>
References: <20201119125304.1279-1-aisheng.dong@nxp.com>
 <20201119125304.1279-2-aisheng.dong@nxp.com>
 <20201119132224.GB348129@kozik-lap>
 <AM6PR04MB4966A53D856AF7A5B10107A780E00@AM6PR04MB4966.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <AM6PR04MB4966A53D856AF7A5B10107A780E00@AM6PR04MB4966.eurprd04.prod.outlook.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Nov 19, 2020 at 03:25:38PM +0000, Aisheng Dong wrote:
> > From: Krzysztof Kozlowski <krzk@kernel.org>
> > Sent: Thursday, November 19, 2020 9:22 PM
> > 
> > On Thu, Nov 19, 2020 at 08:53:03PM +0800, Dong Aisheng wrote:
> > > Add imx8qm boards compatible string
> > >
> > > Cc: Rob Herring <robh+dt@kernel.org>
> > > Cc: devicetree@vger.kernel.org
> > > Cc: Shawn Guo <shawnguo@kernel.org>
> > > Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
> > > ---
> > >  Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
> > >  1 file changed, 6 insertions(+)
> > >
> > > diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml
> > b/Documentation/devicetree/bindings/arm/fsl.yaml
> > > index f793f90fe2e6..d69ac5c0554e 100644
> > > --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> > > +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> > > @@ -726,6 +726,12 @@ properties:
> > >            - const: zii,imx8mq-ultra
> > >            - const: fsl,imx8mq
> > >
> > > +      - description: i.MX8QM based Boards
> > > +        items:
> > > +          - enum:
> > > +              - fsl,imx8qm-mek           # i.MX8QM MEK Board
> > 
> > No, please include the boards DTS in this patchset.
> 
> Good suggestion. Should I resend as DT patchset using it was also under review?

Patchsets bringing new boards should be organized like this one:
https://lore.kernel.org/lkml/20201107144811.1977108-1-aford173@gmail.com/

First the vendor prefix binding (skipped above), then the board binding
and finally DTS patches.

Best regards,
Krzysztof

