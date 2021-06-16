Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 336A43AA2AC
	for <lists+devicetree@lfdr.de>; Wed, 16 Jun 2021 19:54:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230350AbhFPR4Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Jun 2021 13:56:24 -0400
Received: from foss.arm.com ([217.140.110.172]:43242 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230291AbhFPR4Y (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 16 Jun 2021 13:56:24 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7DA0F1042;
        Wed, 16 Jun 2021 10:54:17 -0700 (PDT)
Received: from bogus (unknown [172.31.20.19])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 973433F70D;
        Wed, 16 Jun 2021 10:54:16 -0700 (PDT)
Date:   Wed, 16 Jun 2021 18:53:57 +0100
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org,
        Linus Walleij <linus.walleij@linaro.org>,
        Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH v2] dt-bindings: interrupt-controller: Convert ARM VIC to
 json-schema
Message-ID: <20210616175357.uv4tocyyzhmogxfk@bogus>
References: <20210611111033.2818949-1-sudeep.holla@arm.com>
 <20210616173459.GA3578389@robh.at.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210616173459.GA3578389@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jun 16, 2021 at 11:34:59AM -0600, Rob Herring wrote:
> On Fri, Jun 11, 2021 at 12:10:33PM +0100, Sudeep Holla wrote:
> > Convert the ARM VIC binding document to DT schema format using
> > json-schema.
> > 
> > Cc: Rob Herring <robh@kernel.org>
> > Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> > ---
> >  .../bindings/interrupt-controller/arm,vic.txt | 41 --------
> >  .../interrupt-controller/arm,vic.yaml         | 93 +++++++++++++++++++
> >  2 files changed, 93 insertions(+), 41 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/interrupt-controller/arm,vic.txt
> >  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/arm,vic.yaml
> > 
> > v1->v2:
> > 	- Added arm,versatile-vic to the list of compatibles as suggested
> > 	  by Linus W and added his review tag
> > 	- Updated the SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > 	  Original txt file doesn't carry anything and is not sure about
> > 	  it, but just followed what I have done with scmi/scpi ones
> 
> It's default GPL-2.0, so you'd need permission to dual license.
>

You are the author 😉, so it's really up to you.

[...]

All comments taken, will be fixed in next version.

> GIC?
>

Sorry I am so not use to VIC 😄

--
Regards,
Sudeep
