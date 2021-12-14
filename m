Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5D74D474C74
	for <lists+devicetree@lfdr.de>; Tue, 14 Dec 2021 21:05:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230215AbhLNUFd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Dec 2021 15:05:33 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:40292 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229795AbhLNUFd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Dec 2021 15:05:33 -0500
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 1BEK5Tdj073325;
        Tue, 14 Dec 2021 14:05:29 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1639512329;
        bh=sTq1XXltDvGWlTPqpx+R/8j2njkr9h2axc9qT8+IKR0=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=hZDGbsFzexBZmTlmK5unibgjTdzQr71reTA2YXbBqyZH7XvaJ5TgcBbtADqFKLjsA
         9LL1YTy20eHsHlOxWhAWT7y2xP5MjWW+5y7jRgaG7rGA6xyNxnxK0mBXuMXTEescVx
         AgWhgoqK5ISYOXn3eQTTK1NDuVQF1K+oelv1QZL8=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 1BEK5TSb128341
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 14 Dec 2021 14:05:29 -0600
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Tue, 14
 Dec 2021 14:05:29 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Tue, 14 Dec 2021 14:05:29 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 1BEK5S0t004398;
        Tue, 14 Dec 2021 14:05:28 -0600
Date:   Wed, 15 Dec 2021 01:35:27 +0530
From:   Pratyush Yadav <p.yadav@ti.com>
To:     Dinh Nguyen <dinh.linux@gmail.com>
CC:     Dinh Nguyen <dinguyen@kernel.org>, <devicetree@vger.kernel.org>,
        <broonie@kernel.org>, <robh+dt@kernel.org>
Subject: Re: [PATCHv2 1/3] dt-bindings: spi: cadence-quadspi: document
 "cdns,qspi-nor-ver-00-10"
Message-ID: <20211214200525.7tp2ovbh6vc6rks6@ti.com>
References: <20211203181714.3138611-1-dinguyen@kernel.org>
 <20211206102242.e2ql7kcgzivh75v4@ti.com>
 <CADhT+wfrtqO6dDSUbq-eeyRodzigA7Gsce0xgK6mzLo0ujb5AQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <CADhT+wfrtqO6dDSUbq-eeyRodzigA7Gsce0xgK6mzLo0ujb5AQ@mail.gmail.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/12/21 05:45PM, Dinh Nguyen wrote:
> On Mon, Dec 6, 2021 at 9:51 PM Pratyush Yadav <p.yadav@ti.com> wrote:
> >
> > On 03/12/21 12:17PM, Dinh Nguyen wrote:
> > > The QSPI controller on Intel's SoCFPGA platform does not implement the
> > > CQSPI_REG_WR_COMPLETION_CTRL register, thus a write to this register
> > > results in a crash.
> > >
> > > The module/revision ID is written in the MODULE_ID register. For this
> > > variance, bits 23-8 is 0x0010.
> >
> > When I looked at your original patches I was under the impression that
> > this was a SoCFPGA specific thing and did not apply to other
> > implementation of the IP in general.
> >
> > If this is indeed a generic thing and we can detect it via the MODULE_ID
> > register [0], then why not just read that register at probe time and
> > apply this quirk based on the ID? Why then do we need a separate
> > compatible at all?
> >
> > [0] I would like to see it stated explicitly somewhere that version
> > 0x0010 does not support the WR_COMPLETION_CTRL register.
> >
> 
> I cannot for sure confirm that this condition applies to only 0x0010
> version of the
> IP. I can verify that the IP that is in all 3 generations of SoCFPGA
> devices, all have
> MODULE_ID value of 0x0010 and all do not have the WR_COMPLETION_CTRL
> register implemented.

I agree with Rob here. If you are not sure that this is a generic IP 
thing then you should not use a generic compatible.

> 
> I'm almost certain this feature is not SoCFPGA specific, but
> since I only had SoCFPGA hardware, that was my initial patch. I made the mistake
> of not CC'ing the devicetree maintainers until I sent the DTS binding
> patch change,
> and he rightly suggested making the binding something more generic.
> 
> I do like your idea of making a determination in the driver without
> being dependent
> on a dts binding. I'd like to know the impetus behind your original
> patch of removing the
> dependency of "if (f_pdata->dtr)"  for the write to the WR_COMPLETION_CTRL
> register? Perhaps there's some other common property that we can key
> off for why the register
> is not implemented?

Please read the comment just above that line ;-)

  /*
   * SPI NAND flashes require the address of the status register to be
   * passed in the Read SR command. Also, some SPI NOR flashes like the
   * cypress Semper flash expect a 4-byte dummy address in the Read SR
   * command in DTR mode.
   *
   * But this controller does not support address phase in the Read SR
   * command when doing auto-HW polling. So, disable write completion
   * polling on the controller's side. spinand and spi-nor will take
   * care of polling the status register.
   */

-- 
Regards,
Pratyush Yadav
Texas Instruments Inc.
