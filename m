Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2CBEC2D10AF
	for <lists+devicetree@lfdr.de>; Mon,  7 Dec 2020 13:38:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725772AbgLGMiZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Dec 2020 07:38:25 -0500
Received: from mickerik.phytec.de ([195.145.39.210]:53030 "EHLO
        mickerik.phytec.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725972AbgLGMiZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Dec 2020 07:38:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1607344662; x=1609936662;
        h=From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:Mime-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=ejlGt20c6QsD7RyttJQJ22vTkgGsnxE/NXQwD1EPp5c=;
        b=qyyLFQC0w+K3C8ZHwfRL2+tay9XKH9BkMxzsqnOR7O8+5uAOpje0JN3Uw3xSaQS5
        2UdvCuI0Sv8jjARrECND0ertVFohpgLK1h1BHyl8MDZqaTo7d38Guc/9BdiODbVh
        2VrbcfZ8xSRLpAm1KzZvamiGvQFkH/bZrJLXAd5rgYQ=;
X-AuditID: c39127d2-96bff70000006435-0e-5fce2216da73
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 99.0B.25653.6122ECF5; Mon,  7 Dec 2020 13:37:42 +0100 (CET)
Received: from llp-tremmet ([172.16.5.100])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2020120713374275-929346 ;
          Mon, 7 Dec 2020 13:37:42 +0100 
Message-ID: <821f7f841b1636aedfdd67a8e7f4da131d2e7745.camel@phytec.de>
Subject: Re: [PATCH 3/4] bindings: arm: fsl: Add PHYTEC i.MX8MP devicetree
 bindings
From:   Teresa Remmet <t.remmet@phytec.de>
To:     Krzysztof Kozlowski <krzk@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Catalin Marinas <catalin.marinas@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Date:   Mon, 07 Dec 2020 13:37:42 +0100
In-Reply-To: <20201207115958.GA27266@kozik-lap>
References: <1607113982-109524-1-git-send-email-t.remmet@phytec.de>
         <1607113982-109524-4-git-send-email-t.remmet@phytec.de>
         <20201207115958.GA27266@kozik-lap>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
Mime-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 07.12.2020 13:37:42,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 07.12.2020 13:37:42,
        Serialize complete at 07.12.2020 13:37:42
X-TNEFEvaluated: 1
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="UTF-8"
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrJLMWRmVeSWpSXmKPExsWyRoCBS1dM6Vy8wc1Fphbvl/UwWsw/co7V
        4uFVf4vz5zewW2x6fI3VonXvEXaLv9s3sVi82CLuwOGxZt4aRo+ds+6ye2xa1cnmsXlJvUf/
        XwOPz5vkAtiiuGxSUnMyy1KL9O0SuDK65uQWdHNXnPt+mLGBcTFHFyMnh4SAicTcHefYQGwh
        ga2MEseOuHUxcgHZxxglWnfcYAdJ8Aq4SSw5dwKoiINDWCBUornbHCTMJqAh8XTFaSYQW0RA
        U+L63++sIL3MAn8ZJZYvfscCkmARUJVY1v2XFaSXU0BfYvfeTIhdSxglJn0Og7hBR+LD/U+M
        ICW8AoISf3cIg4yREGhkkpi05yUbRI2QxOnFZ5lBbGYBeYntb+dA2ZoSrdt/s09gFJyF0D4L
        SdUsJFULGJlXMQrlZiZnpxZlZusVZFSWpCbrpaRuYgQG/+GJ6pd2MPbN8TjEyMTBeIhRgoNZ
        SYRXTepsvBBvSmJlVWpRfnxRaU5q8SFGaQ4WJXHeDbwlYUIC6YklqdmpqQWpRTBZJg5OqQbG
        1gOqu49mbdi58slyC1mRjj3bRQO/hEzdes8qW2lmEfesoxscGL9x3f618MVtb7F7hrPE1wTe
        a1j2UVB7/u9fAc61MZdeXcpQ3eDCVf6iSMdyzaqO6nU5Qjq3WhQv3XK3aLGKYetOzpq56E16
        kq7S4cL6hdZN88VCq0IlAm0n1nDz7/PjaG5RYinOSDTUYi4qTgQAooyOm2wCAAA=
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Montag, den 07.12.2020, 12:59 +0100 schrieb Krzysztof Kozlowski:
> On Fri, Dec 04, 2020 at 09:33:01PM +0100, Teresa Remmet wrote:
> > Add devicetree bindings for i.MX8MP based phyCORE-i.MX8MP
> > and phyBOARD-Pollux RDK.
> > 
> > Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
> > ---
> >  Documentation/devicetree/bindings/arm/fsl.yaml | 7 +++++++
> >  1 file changed, 7 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml
> > b/Documentation/devicetree/bindings/arm/fsl.yaml
> > index 934289446abb..880d93092f37 100644
> > --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> > +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> > @@ -433,6 +433,13 @@ properties:
> >                - fsl,imx8mp-evk            # i.MX8MP EVK Board
> >            - const: fsl,imx8mp
> >  
> > +      - description: PHYTEC phyCORE-i.MX8MP SoM based boards
> > +        items:
> > +          - enum:
> > +              - phytec,imx8mp-phycore-som         # phyCORE-
> > i.MX8MP SoM
> > +              - phytec,imx8mp-phyboard-pollux-rdk # phyBOARD-
> > Pollux RDK
> 
> These do not look correct. In this way, you should include them in
> "i.MX8MP based Boards" entry. Probably you wanted all "const"
> instead.

I will change them to "const" in v2. 

Thank you,
Teresa

> 
> Best regards,
> Krzysztof
> 
> 
> > +          - const: fsl,imx8mp
> > +

