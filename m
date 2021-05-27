Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D48FD393382
	for <lists+devicetree@lfdr.de>; Thu, 27 May 2021 18:17:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236365AbhE0QTI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 May 2021 12:19:08 -0400
Received: from foss.arm.com ([217.140.110.172]:59964 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232565AbhE0QTD (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 27 May 2021 12:19:03 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BCE2011D4;
        Thu, 27 May 2021 09:17:24 -0700 (PDT)
Received: from bogus (unknown [10.57.70.210])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D8E4E3F719;
        Thu, 27 May 2021 09:17:22 -0700 (PDT)
Date:   Thu, 27 May 2021 17:17:12 +0100
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Rob Herring <robh@kernel.org>
Cc:     Cristian Marussi <cristian.marussi@arm.com>,
        devicetree@vger.kernel.org, Jerome Brunet <jbrunet@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Kevin Hilman <khilman@baylibre.com>,
        linux-arm-kernel@lists.infradead.org,
        Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 5/8] dt-bindings: firmware: arm,scpi: Convert to json
 schema
Message-ID: <20210527161702.wzilr4z5tuzqfy5g@bogus>
References: <20210526182807.548118-1-sudeep.holla@arm.com>
 <20210526182807.548118-6-sudeep.holla@arm.com>
 <1622125407.773675.731787.nullmailer@robh.at.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1622125407.773675.731787.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

On Thu, May 27, 2021 at 09:23:27AM -0500, Rob Herring wrote:
> On Wed, 26 May 2021 19:28:04 +0100, Sudeep Holla wrote:
> > Convert the old text format binding for System Control and Power Interface
> > (SCPI) Message Protocol into the new and shiny YAML format.
> > 
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Cc: Kevin Hilman <khilman@baylibre.com>
> > Cc: Neil Armstrong <narmstrong@baylibre.com>
> > Cc: Jerome Brunet <jbrunet@baylibre.com>
> > Cc: Viresh Kumar <viresh.kumar@linaro.org
> > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> > ---
> >  .../devicetree/bindings/arm/arm,scpi.txt      | 204 -------------
> >  .../bindings/firmware/arm,scpi.yaml           | 284 ++++++++++++++++++
> >  MAINTAINERS                                   |   2 +-
> >  3 files changed, 285 insertions(+), 205 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/arm/arm,scpi.txt
> >  create mode 100644 Documentation/devicetree/bindings/firmware/arm,scpi.yaml
> > 
> 
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mailbox/arm,mhu.example.dt.yaml: scpi@2f000000: $nodename:0: 'scpi' was expected
> 	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/firmware/arm,scpi.yaml
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mailbox/arm,mhu.example.dt.yaml: scpi@2f000000: reg: [[0, 788529152, 0, 512]] is not of type 'object'
> 	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/firmware/arm,scpi.yaml
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mailbox/arm,mhu.example.dt.yaml: scpi@2f000000: 'shmem' is a required property
> 	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/firmware/arm,scpi.yaml
> 
> See https://patchwork.ozlabs.org/patch/1484217
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

I have fixed this in 6/8. I can merge them but since I wasn't aware of how
this might get merged, I split the patch. Converting to yaml triggered issue
with mhu yaml schema as the example is wrong.

-- 
Regards,
Sudeep
