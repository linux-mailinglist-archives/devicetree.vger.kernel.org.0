Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C27DF10824
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2019 15:10:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726224AbfEANK2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 May 2019 09:10:28 -0400
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]:59084 "EHLO
        foss.arm.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726083AbfEANK2 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 1 May 2019 09:10:28 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 904FA80D;
        Wed,  1 May 2019 06:10:27 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.72.51.249])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 417773F5C1;
        Wed,  1 May 2019 06:10:25 -0700 (PDT)
Date:   Wed, 1 May 2019 14:10:22 +0100
From:   Will Deacon <will.deacon@arm.com>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     Frank Li <frank.li@nxp.com>,
        Andrey Smirnov <andrew.smirnov@gmail.com>,
        "mark.rutland@arm.com" <mark.rutland@arm.com>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        dl-linux-imx <linux-imx@nxp.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        Aisheng Dong <aisheng.dong@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "lznuaa@gmail.com" <lznuaa@gmail.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH V10 2/4] drivers/perf: imx_ddr: Add ddr performance
 counter support
Message-ID: <20190501131022.GB15437@fuggles.cambridge.arm.com>
References: <1556660398-25450-1-git-send-email-Frank.Li@nxp.com>
 <1556660398-25450-2-git-send-email-Frank.Li@nxp.com>
 <CAOMZO5DA6hikyYEc8wgP5D6jrYksRqbKnyNmU5Fs-yJD82BcyQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOMZO5DA6hikyYEc8wgP5D6jrYksRqbKnyNmU5Fs-yJD82BcyQ@mail.gmail.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 01, 2019 at 10:08:40AM -0300, Fabio Estevam wrote:
> Frank,
> 
> On Tue, Apr 30, 2019 at 6:40 PM Frank Li <frank.li@nxp.com> wrote:
> >
> > Add ddr performance monitor support for iMX8QXP
> 
> Please keep Andrey on Cc as he made lots of comments in v9.

FWIW: I won't be merging this until both Frank and Andrey are happy with the
patches.

Will
