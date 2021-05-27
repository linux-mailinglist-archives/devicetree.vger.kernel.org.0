Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7CD493933AC
	for <lists+devicetree@lfdr.de>; Thu, 27 May 2021 18:25:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235319AbhE0Q1V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 May 2021 12:27:21 -0400
Received: from foss.arm.com ([217.140.110.172]:60084 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229696AbhE0Q1V (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 27 May 2021 12:27:21 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AD9CC11D4;
        Thu, 27 May 2021 09:25:47 -0700 (PDT)
Received: from bogus (unknown [10.57.70.210])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A312C3F719;
        Thu, 27 May 2021 09:25:46 -0700 (PDT)
Date:   Thu, 27 May 2021 17:25:03 +0100
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Rob Herring <robh@kernel.org>
Cc:     Cristian Marussi <cristian.marussi@arm.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Sudeep Holla <sudeep.holla@arm.com>,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 6/8] dt-bindings: mailbox : arm, mhu: Fix arm, scpi
 example used here
Message-ID: <20210527162503.4w7sch36ov6ew4mo@bogus>
References: <20210526182807.548118-1-sudeep.holla@arm.com>
 <20210526182807.548118-7-sudeep.holla@arm.com>
 <1622125407.781075.731789.nullmailer@robh.at.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1622125407.781075.731789.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 27, 2021 at 09:23:27AM -0500, Rob Herring wrote:
> On Wed, 26 May 2021 19:28:05 +0100, Sudeep Holla wrote:
> > Now that the arm,scpi binding is converted to YAML format, the following
> > errors are seen when doing `make DT_CHECKER_FLAGS=-m dt_binding_check`
> > 
> > 
> 
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> Documentation/devicetree/bindings/mailbox/arm,mhu.example.dt.yaml:0:0: /example-1/soc/scpi: failed to match any schema with compatible: ['arm,scpi']
> Documentation/devicetree/bindings/mailbox/arm,mhu.example.dt.yaml:0:0: /example-1/soc/scpi/power-domains-0: failed to match any schema with compatible: ['arm,scpi-power-domains']
> 
> See https://patchwork.ozlabs.org/patch/1484218
> 
> This check can fail if there are any dependencies. The base for a patch
> series is generally the most recent rc1.
> 
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
> 
> pip3 install dtschema --upgrade
> 
> Please check and re-submit.
> 

Just curious if this is built as past of the series as I am unable to hit
this issue. However I get this if I remove 5/8 which is adding the scpi
yaml schema. Am I missing something ?

-- 
Regards,
Sudeep
