Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5F1CB41F229
	for <lists+devicetree@lfdr.de>; Fri,  1 Oct 2021 18:31:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231992AbhJAQdB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Oct 2021 12:33:01 -0400
Received: from foss.arm.com ([217.140.110.172]:47542 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231950AbhJAQdA (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 1 Oct 2021 12:33:00 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CE316101E;
        Fri,  1 Oct 2021 09:31:15 -0700 (PDT)
Received: from e110455-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AD8B63F766;
        Fri,  1 Oct 2021 09:31:15 -0700 (PDT)
Received: by e110455-lin.cambridge.arm.com (Postfix, from userid 1000)
        id 6266E683E06; Fri,  1 Oct 2021 17:31:14 +0100 (BST)
Date:   Fri, 1 Oct 2021 17:31:14 +0100
From:   Liviu Dudau <liviu.dudau@arm.com>
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [RFC PATCH] arm: dts: vexpress: Set chosen 'stdout-path'
Message-ID: <YVc30mK2dP3BVyi9@e110455-lin.cambridge.arm.com>
References: <20210924214844.1890478-1-robh@kernel.org>
 <YVSG784Ev71DUZyR@e110455-lin.cambridge.arm.com>
 <20211001092505.sboaxhc5eobo4u3o@bogus>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211001092505.sboaxhc5eobo4u3o@bogus>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Oct 01, 2021 at 10:25:05AM +0100, Sudeep Holla wrote:
> On Wed, Sep 29, 2021 at 04:31:59PM +0100, Liviu Dudau wrote:
> > Hi Rob,
> > 
> > On Fri, Sep 24, 2021 at 04:48:44PM -0500, Rob Herring wrote:
> > > Using chosen 'stdout-path' is the preferred way to set the console, but
> > > several Arm, Ltd. platforms don't set it. Set it to the 1st serial port.
> > > 
> > > Cc: Liviu Dudau <liviu.dudau@arm.com>
> > > Cc: Sudeep Holla <sudeep.holla@arm.com>
> > > Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > > Cc: linux-arm-kernel@lists.infradead.org
> > > Signed-off-by: Rob Herring <robh@kernel.org>
> > > ---
> > > RFC because I don't have any idea what the baud rate is for real boards. 
> > > If anyone knows, please comment and I'll add it.
> > 
> > I believe all of them default to 115200,8n1 but I'm only sure about the first two
> > boards.
> > 
> 
> Sorry to contradict, but I ran TC2 this Monday with 38400 baud. So the first
> four must be 38400, as the uart is in the MB IOFPGA and we just change the
> coretile DB to get the first 4 platforms. Juno and N1SDP have SoC uart and
> they are configured by default to 115200 IIUC.

Huh, you're right! I guess I was trying to cover some painful memories :)
Sorry for the noise Rob, please listen to Sudeep.

Best regards,
Liviu

> 
> -- 
> Regards,
> Sudeep

-- 
====================
| I would like to |
| fix the world,  |
| but they're not |
| giving me the   |
 \ source code!  /
  ---------------
    ¯\_(ツ)_/¯
