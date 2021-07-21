Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CF7433D0D0B
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 13:10:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238587AbhGUK2e convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Wed, 21 Jul 2021 06:28:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55872 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239045AbhGUJlP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jul 2021 05:41:15 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 177ECC061768
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 03:21:31 -0700 (PDT)
Received: from lupine.hi.pengutronix.de ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <p.zabel@pengutronix.de>)
        id 1m69Lz-0004IP-Rt; Wed, 21 Jul 2021 12:21:27 +0200
Received: from pza by lupine with local (Exim 4.92)
        (envelope-from <p.zabel@pengutronix.de>)
        id 1m69Lz-0005EK-Iu; Wed, 21 Jul 2021 12:21:27 +0200
Message-ID: <61f678dc579f24f7eca763afe3034313eccb455f.camel@pengutronix.de>
Subject: Re: [PATCH v3 0/5] Enable miscellaneous hardware blocks to boot WPSS
From:   Philipp Zabel <p.zabel@pengutronix.de>
To:     Sibi Sankar <sibis@codeaurora.org>
Cc:     agross@kernel.org, robh+dt@kernel.org, mani@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, bjorn.andersson@linaro.org,
        sboyd@kernel.org
Date:   Wed, 21 Jul 2021 12:21:27 +0200
In-Reply-To: <19cc1c3cceaedd1e899732d874e6160a@codeaurora.org>
References: <1619693465-5724-1-git-send-email-sibis@codeaurora.org>
         <19cc1c3cceaedd1e899732d874e6160a@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8BIT
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Sibi,

On Mon, 2021-07-19 at 21:57 +0530, Sibi Sankar wrote:
> On 2021-04-29 16:21, Sibi Sankar wrote:
> > This series enables miscellaneous hardware blocks to boot Wireless
> > Processor Subsystem (WPSS) on SC7280 SoC.
> > 
> > V3:
> >  * member placement and style changes [Philipp]
> > 
> > V2:
> >  * place resets and num_resets adjacent to each other [Stephen]
> >  * drop incorrect useage of tcsr_mutex_regs [Bjorn]
> >  * Qualcomm is expected to drop master/slave naming from its mproc 
> > nodes
> >    in future SoCs.
> > 
> > Sibi Sankar (5):
> >   dt-bindings: mailbox: Add WPSS client index to IPCC
> >   dt-bindings: reset: aoss: Add AOSS reset controller binding
> >   dt-bindings: reset: pdc: Add PDC Global bindings
> >   reset: qcom: Add PDC Global reset signals for WPSS
> 
> Philipp,
> 
> Can you pick the reset bindings
> and the reset driver changes
> through your tree, Bjorn has
> picked up the remainder of the
> series.

Done, thank you.

regards
Philipp
