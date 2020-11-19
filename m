Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 44C6F2B963A
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 16:32:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728228AbgKSP1b (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 10:27:31 -0500
Received: from mail-ed1-f65.google.com ([209.85.208.65]:37926 "EHLO
        mail-ed1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728518AbgKSP1a (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Nov 2020 10:27:30 -0500
Received: by mail-ed1-f65.google.com with SMTP id y4so6241609edy.5
        for <devicetree@vger.kernel.org>; Thu, 19 Nov 2020 07:27:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=DjeEquiAwCCxcnhChhQrrakaLFcV+SvnCrE4uL8Le4c=;
        b=Z5EuHWKcAZs0UXdXjccYlq5uaaUALEh6mkwnhiByG/H1voyo8dOdXMruasZFrR3v1r
         tQKFVeOw/A10rt7nzLvYXQIc6nEBm6uHvdLKI2YO24pUHI4WJXO3CwRJFBeY7RFCALVO
         Wg8RPFLfpJ6H+zhkpliVrCdlA9Y8PRGz/dIDW68JJopLHp97GKM0ysTc9yRhWJGy3cnu
         jZsv4qMXYjLc4r9s1ud62tC0MPxOZ6P8RGgwqGn6OUSAObpDcVdTepPYtwygsyvB+Gvt
         ZYUZMdwJeB0QdJGQLWSg1Pr6PxSeYO6LBQIxPz9z0mnTtV0oOuMsUTlDPMTEzCze0E4L
         3/Aw==
X-Gm-Message-State: AOAM531bBsrDuEj09LEnjXQAqF/zxwmfNxYrr7GXG8oGXTnaEs4v/xNf
        5nvLs0DAQkyMb8mS7ac4tRKPnmCjmfM=
X-Google-Smtp-Source: ABdhPJyIZFMap0GO1qtAUdO89jXrQ32ZdGQ4YjNVv5CuVfPxy6cPLvUHXwtGY2QNSK7tO1ioj0dV/w==
X-Received: by 2002:a50:d582:: with SMTP id v2mr32069058edi.218.1605799648719;
        Thu, 19 Nov 2020 07:27:28 -0800 (PST)
Received: from kozik-lap (adsl-84-226-167-205.adslplus.ch. [84.226.167.205])
        by smtp.googlemail.com with ESMTPSA id a12sm1239483edu.89.2020.11.19.07.27.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Nov 2020 07:27:27 -0800 (PST)
Date:   Thu, 19 Nov 2020 16:27:26 +0100
From:   Krzysztof Kozlowski <krzk@kernel.org>
To:     Aisheng Dong <aisheng.dong@nxp.com>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        dl-linux-imx <linux-imx@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH 3/3] dt-bindings: mailbox: mu: add imx8qm support
Message-ID: <20201119152726.GB386850@kozik-lap>
References: <20201119125304.1279-1-aisheng.dong@nxp.com>
 <20201119125304.1279-3-aisheng.dong@nxp.com>
 <20201119132314.GC348129@kozik-lap>
 <AM6PR04MB496627CCC7C5CE769719D74980E00@AM6PR04MB4966.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <AM6PR04MB496627CCC7C5CE769719D74980E00@AM6PR04MB4966.eurprd04.prod.outlook.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Nov 19, 2020 at 03:24:21PM +0000, Aisheng Dong wrote:
> > From: Krzysztof Kozlowski <krzk@kernel.org>
> > Sent: Thursday, November 19, 2020 9:23 PM
> > 
> > On Thu, Nov 19, 2020 at 08:53:04PM +0800, Dong Aisheng wrote:
> > > Add imx8qm support
> > >
> > > Cc: Rob Herring <robh+dt@kernel.org>
> > > Cc: devicetree@vger.kernel.org
> > > Cc: Shawn Guo <shawnguo@kernel.org>
> > > Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
> > > ---
> > >  Documentation/devicetree/bindings/mailbox/fsl,mu.yaml | 5 ++++-
> > >  1 file changed, 4 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/Documentation/devicetree/bindings/mailbox/fsl,mu.yaml
> > > b/Documentation/devicetree/bindings/mailbox/fsl,mu.yaml
> > > index 15cef82cd356..1a3dff277e2b 100644
> > > --- a/Documentation/devicetree/bindings/mailbox/fsl,mu.yaml
> > > +++ b/Documentation/devicetree/bindings/mailbox/fsl,mu.yaml
> > > @@ -34,12 +34,15 @@ properties:
> > >                - fsl,imx8mm-mu
> > >                - fsl,imx8mn-mu
> > >                - fsl,imx8mp-mu
> > > +              - fsl,imx8qm-mu
> > 
> > You add the compatible below, so decide which one is it. Please provide also
> > users of this compatible - DTS.
> 
> There're two SCU MU protocol bindings, both can be used, just like exist fsl,imx8qxp-mu.

Makes sense. Still please send the bindings as first patch in series
implementing them. Upstream also the DTS with the bindings - the best in
the same series.

Best regards,
Krzysztof
