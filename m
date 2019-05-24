Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C65752966E
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2019 12:54:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390680AbfEXKye (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 May 2019 06:54:34 -0400
Received: from foss.arm.com ([217.140.101.70]:40152 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2390654AbfEXKye (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 24 May 2019 06:54:34 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EEA61374;
        Fri, 24 May 2019 03:54:33 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9814F3F703;
        Fri, 24 May 2019 03:54:32 -0700 (PDT)
Date:   Fri, 24 May 2019 11:54:30 +0100
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Volodymyr Babchuk <Volodymyr_Babchuk@epam.com>
Cc:     "trivial@kernel.org" <trivial@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH] dt-bindings: arm: fix the document ID for SCMI protocol
 documentation
Message-ID: <20190524105430.GB13121@e107155-lin>
References: <20190523112312.24529-1-volodymyr_babchuk@epam.com>
 <20190523170938.GC4224@e107155-lin>
 <877eah84nr.fsf@epam.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <877eah84nr.fsf@epam.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 23, 2019 at 05:24:56PM +0000, Volodymyr Babchuk wrote:
> 
> Hi,
> 
> Sudeep Holla writes:
> 
> > On Thu, May 23, 2019 at 11:23:35AM +0000, Volodymyr Babchuk wrote:
> >> From: Volodymyr Babchuk <volodymyr_babchuk@epam.com
> 
> I accidentally deleted ending ">" symbol in the line above, so "git
> send-email" decided to move that line from headers to the message body.
> 
> >> arm,scmi.txt used the wrong document identifier. "ARM DUI 0922B" is
> >> the "ARM Compute Subsystem SCP, Message Interface Protocols". What we
> >> need is the ARM DEN 0056A - "ARM System Control and Management
> >> Interface Platform Design Document".
> >>
> >
> > Indeed, it's most stupid copy-paste mistake. Thanks for fixing this.
> > Applied now.
> It happens all the time. I also did stupid mistake in my patch file. It
> is described above. Could you please ensure that this line will be not
> in the resulting commit message? Thank you.

Ah OK, I didn't notice that, but the applied patch seems fine.

--
Regards,
Sudeep
