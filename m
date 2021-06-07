Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C948D39E856
	for <lists+devicetree@lfdr.de>; Mon,  7 Jun 2021 22:23:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231184AbhFGUYy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Jun 2021 16:24:54 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:39686 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230454AbhFGUYx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Jun 2021 16:24:53 -0400
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 157KMuIE002997;
        Mon, 7 Jun 2021 15:22:56 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1623097376;
        bh=5530kfoXgMeaoQnV/qUIWd3OlDjHeRDX4LncEwY9dXE=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=dX+gCa89GSDphORGFqW96slaGejLK/M8j0kAQuXql0brdni8Qg/PqZjMzPCfxI00a
         iiZ0aSXWPOPmHu9I57sYujEZLsqkpy4okubaUczIZ3b8EbWZc3qbT5ZVzncHDX3pqm
         jVLCu7oSw5jaV2njhjaJknQhkIVrke4f0yEJD4nU=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 157KMuiI119409
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 7 Jun 2021 15:22:56 -0500
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Mon, 7 Jun
 2021 15:22:56 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Mon, 7 Jun 2021 15:22:56 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 157KMunX091934;
        Mon, 7 Jun 2021 15:22:56 -0500
Date:   Mon, 7 Jun 2021 15:22:56 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Sinthu Raja M <sinthu.raja@mistralsolutions.com>
CC:     Tero Kristo <kristo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Amarnath MB <amarnath.mb@ti.com>,
        Sinthu Raja <sinthu.raja@ti.com>
Subject: Re: [PATCH V2 2/2] arm64: dts: ti: Add support for J721E EAIK
Message-ID: <20210607202256.wi7n7d4u27bfgm6c@pacifism>
References: <20210607093314.23909-1-sinthu.raja@ti.com>
 <20210607093314.23909-3-sinthu.raja@ti.com>
 <20210607133526.3rn3othabu4uo3lo@defender>
 <CAEd-yTSVOchafETh+3CthtZhE4e4_BbWodcXRxyJRdRBWQ_Csg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAEd-yTSVOchafETh+3CthtZhE4e4_BbWodcXRxyJRdRBWQ_Csg@mail.gmail.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22:41-20210607, Sinthu Raja M wrote:
> On Mon, Jun 7, 2021 at 7:05 PM Nishanth Menon <nm@ti.com> wrote:
> >
> > On 15:03-20210607, Sinthu Raja wrote:
> > > From: Sinthu Raja <sinthu.raja@ti.com>
> > >
> > > J721E EdgeAI Kit (EAIK) is a low cost, small form factor board designed
> > > for TI’s J721E SoC. TI’s J721E SoC comprises of dual core A72, high
> > > performance vision accelerators, video codec accelerators, latest C71x
> > > and C66x DSP, high bandwidth real-time IPs for capture and display, GPU,
> > > dedicated safety island and security accelerators. The SoC is power
> > > optimized to provide best in class performance for perception, sensor
> > > fusion, localization, path planning tasks in robotics, industrial and
> > > automotive applications.
> > >
> > > J721E EAIK supports the following interfaces:
> > > * 4 GB LPDDR4 RAM
> > > * x1 Gigabit Ethernet interface
> > > * x1 USB 3.0 Type-C port
> > > * x3 USB 3.0 Type-A ports
> > > * x1 UHS-1 capable µSD card slot
> > > * x1 PCIe M.2 E Key with x1 USB2.0, x1 MCASP, x1 MMC, x1 UART
> > > * x1 PCIe M.2 M Key
> > > * 512 Mbit OSPI flash
> > > * x4 UART through UART-USB bridge
> > > * x4 CAN-FD interface
> > > * x1 DP interface
> > > * x1 HDMI interface
> > > * x2 CSI2 Camera interface (RPi and TI Camera connector)
> > > * 40-pin Raspberry Pi compatible GPIO header
> > > * Compact TI 20-Pin connector for JTAG debug
> > > * Interface for remote automation. Includes:
> > >    * power measurement and reset control
> > >    * boot mode change
> >
> > please reduce the description above, also add a url for the board.
> 
> Sure will reduce the description. The URL is not available until the
> board launch.
> 

[...]

> >
> > please also check other nodes that needs to be disabled or configured.
> 
> The intention of the patch is to keep only the initial support for the
> EAIK board. Subsequent patches will be posted as the testing
> completes.

For the nodes that are present in k.org, we should probably make up our
minds as to what needs to be the configuration. While I understand
incremental patches, please look through the list to make sure low
hanging items are addressed at the earliest. Commit message makes one
feel that there is tons of nodes that are probably functional, but your
response makes me feel, that is probably not the case - it is hard to
distinguish between the two.


-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
