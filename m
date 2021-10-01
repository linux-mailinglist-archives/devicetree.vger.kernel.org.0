Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 84BA041E993
	for <lists+devicetree@lfdr.de>; Fri,  1 Oct 2021 11:25:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230000AbhJAJ1Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Oct 2021 05:27:24 -0400
Received: from foss.arm.com ([217.140.110.172]:38600 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229906AbhJAJ1X (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 1 Oct 2021 05:27:23 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C7D4C101E;
        Fri,  1 Oct 2021 02:25:39 -0700 (PDT)
Received: from bogus (unknown [10.57.26.136])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 15AED3F70D;
        Fri,  1 Oct 2021 02:25:37 -0700 (PDT)
Date:   Fri, 1 Oct 2021 10:25:05 +0100
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Liviu Dudau <liviu.dudau@arm.com>
Cc:     Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [RFC PATCH] arm: dts: vexpress: Set chosen 'stdout-path'
Message-ID: <20211001092505.sboaxhc5eobo4u3o@bogus>
References: <20210924214844.1890478-1-robh@kernel.org>
 <YVSG784Ev71DUZyR@e110455-lin.cambridge.arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YVSG784Ev71DUZyR@e110455-lin.cambridge.arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 29, 2021 at 04:31:59PM +0100, Liviu Dudau wrote:
> Hi Rob,
> 
> On Fri, Sep 24, 2021 at 04:48:44PM -0500, Rob Herring wrote:
> > Using chosen 'stdout-path' is the preferred way to set the console, but
> > several Arm, Ltd. platforms don't set it. Set it to the 1st serial port.
> > 
> > Cc: Liviu Dudau <liviu.dudau@arm.com>
> > Cc: Sudeep Holla <sudeep.holla@arm.com>
> > Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > Cc: linux-arm-kernel@lists.infradead.org
> > Signed-off-by: Rob Herring <robh@kernel.org>
> > ---
> > RFC because I don't have any idea what the baud rate is for real boards. 
> > If anyone knows, please comment and I'll add it.
> 
> I believe all of them default to 115200,8n1 but I'm only sure about the first two
> boards.
> 

Sorry to contradict, but I ran TC2 this Monday with 38400 baud. So the first
four must be 38400, as the uart is in the MB IOFPGA and we just change the
coretile DB to get the first 4 platforms. Juno and N1SDP have SoC uart and
they are configured by default to 115200 IIUC.

-- 
Regards,
Sudeep
