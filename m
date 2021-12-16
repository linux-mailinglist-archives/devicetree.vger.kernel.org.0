Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5F023477C0B
	for <lists+devicetree@lfdr.de>; Thu, 16 Dec 2021 19:58:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235823AbhLPS6W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Dec 2021 13:58:22 -0500
Received: from lelv0143.ext.ti.com ([198.47.23.248]:32830 "EHLO
        lelv0143.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229814AbhLPS6W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Dec 2021 13:58:22 -0500
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 1BGIwIGh128870;
        Thu, 16 Dec 2021 12:58:18 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1639681098;
        bh=/eVUFmSqj+WeNM1aigDvD/bF0+5Xepmby3bX+b+Bofw=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=wpVoHPVulm0nWZu7Zd4kXMcaW0Vrf0KFR8PfHwDDAxA3s8gSt2gFZvk1KRea6H9+6
         ROJFAgLLgIKRaBXAfpRFFK3Pcvt5xLxWfS2oMz0AmxphfeS3JWKqLyEJ+1nudw8cFD
         NvWj9cxsMV8YT2pH1ogbH5sYwIrHuB36WXW4qfNY=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 1BGIwIZk109325
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 16 Dec 2021 12:58:18 -0600
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Thu, 16
 Dec 2021 12:58:18 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Thu, 16 Dec 2021 12:58:18 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 1BGIwHHv018875;
        Thu, 16 Dec 2021 12:58:17 -0600
Date:   Fri, 17 Dec 2021 00:28:16 +0530
From:   Pratyush Yadav <p.yadav@ti.com>
To:     Dinh Nguyen <dinguyen@kernel.org>
CC:     Dinh Nguyen <dinh.linux@gmail.com>, <devicetree@vger.kernel.org>,
        <broonie@kernel.org>, <robh+dt@kernel.org>
Subject: Re: [PATCHv2 1/3] dt-bindings: spi: cadence-quadspi: document
 "cdns,qspi-nor-ver-00-10"
Message-ID: <20211216185814.xmljmryvghdtojnj@ti.com>
References: <20211203181714.3138611-1-dinguyen@kernel.org>
 <20211206102242.e2ql7kcgzivh75v4@ti.com>
 <CADhT+wfrtqO6dDSUbq-eeyRodzigA7Gsce0xgK6mzLo0ujb5AQ@mail.gmail.com>
 <20211214200525.7tp2ovbh6vc6rks6@ti.com>
 <ad4bbd06-ef56-895c-f30c-4897420843c7@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ad4bbd06-ef56-895c-f30c-4897420843c7@kernel.org>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/12/21 09:36AM, Dinh Nguyen wrote:
> 
> 
> On 12/14/21 2:05 PM, Pratyush Yadav wrote:
> > On 08/12/21 05:45PM, Dinh Nguyen wrote:
> > > On Mon, Dec 6, 2021 at 9:51 PM Pratyush Yadav <p.yadav@ti.com> wrote:
> > > > 
> > > > On 03/12/21 12:17PM, Dinh Nguyen wrote:
> > > > > The QSPI controller on Intel's SoCFPGA platform does not implement the
> > > > > CQSPI_REG_WR_COMPLETION_CTRL register, thus a write to this register
> > > > > results in a crash.
> > > > > 
> > > > > The module/revision ID is written in the MODULE_ID register. For this
> > > > > variance, bits 23-8 is 0x0010.
> > > > 
> > > > When I looked at your original patches I was under the impression that
> > > > this was a SoCFPGA specific thing and did not apply to other
> > > > implementation of the IP in general.
> > > > 
> > > > If this is indeed a generic thing and we can detect it via the MODULE_ID
> > > > register [0], then why not just read that register at probe time and
> > > > apply this quirk based on the ID? Why then do we need a separate
> > > > compatible at all?
> > > > 
> > > > [0] I would like to see it stated explicitly somewhere that version
> > > > 0x0010 does not support the WR_COMPLETION_CTRL register.
> > > > 
> > > 
> > > I cannot for sure confirm that this condition applies to only 0x0010
> > > version of the
> > > IP. I can verify that the IP that is in all 3 generations of SoCFPGA
> > > devices, all have
> > > MODULE_ID value of 0x0010 and all do not have the WR_COMPLETION_CTRL
> > > register implemented.
> > 
> > I agree with Rob here. If you are not sure that this is a generic IP
> > thing then you should not use a generic compatible.
> > 
> 
> 
> I think using the binding of "intel,socfpga-qspi" should be fine? If we go
> by the MODULE_ID value as a indicator of versions, then the version hasn't
> changed for all revisions of the SoCFPGA, dating back to the original
> Cyclone5, which was introduced in 2012.

Yes, I think you should keep using the SoC specific binding unless you 
can find some documentation from Cadence that says all parts with this 
MODULE_ID value don't have the WR_COMPLETION_CTRL register.

-- 
Regards,
Pratyush Yadav
Texas Instruments Inc.
