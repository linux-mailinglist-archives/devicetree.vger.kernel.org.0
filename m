Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4E5BD392C23
	for <lists+devicetree@lfdr.de>; Thu, 27 May 2021 12:49:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236240AbhE0Kuy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 May 2021 06:50:54 -0400
Received: from foss.arm.com ([217.140.110.172]:55630 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S236217AbhE0Kuy (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 27 May 2021 06:50:54 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A43ED13A1;
        Thu, 27 May 2021 03:49:21 -0700 (PDT)
Received: from bogus (unknown [10.57.70.210])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1C3A53F73D;
        Thu, 27 May 2021 03:49:19 -0700 (PDT)
Date:   Thu, 27 May 2021 11:49:06 +0100
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Cristian Marussi <cristian.marussi@arm.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Jim Quinlan <jim2101024@gmail.com>,
        Etienne Carriere <etienne.carriere@linaro.org>,
        Peter Hilber <peter.hilber@opensynergy.com>
Subject: Re: [PATCH 8/8] dt-bindings: firmware: arm,scmi: Convert to json
 schema
Message-ID: <20210527104845.xof6ngrfsj2ybsmb@bogus>
References: <20210526182807.548118-1-sudeep.holla@arm.com>
 <20210526182807.548118-9-sudeep.holla@arm.com>
 <20210527103323.GS28060@e120937-lin>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210527103323.GS28060@e120937-lin>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 27, 2021 at 11:33:23AM +0100, Cristian Marussi wrote:
> Hi Sudeep,
>
> Some feedback down below.
>
> On Wed, May 26, 2021 at 07:28:07PM +0100, Sudeep Holla wrote:

[...]

> > +patternProperties:
> > +  '^protocol@[0-9a-f]+$':
> > +    type: object
> > +    description: |
> > +      Each sub-node represents a protocol supported. If the platform
> > +      supports dedicated communication channel for a particular protocol,
> > +      then corresponding transport properties must be present.
> > +
>
> Not sure if it's needed, but maybe a reference or an example to which
> are the transport properties could be useful in this description.
>

Good point, I will try to add that example.

> > +    properties:
> > +      reg:
> > +        maxItems: 1
> > +
>
> Shouldn't be expressed that reg is required for these protocol
> patternProperties ? (no sure how though...:D)
>

Hmm, right again need to explore on that.

> > +      '#clock-cells':
> > +        const: 1
> > +
> > +      '#reset-cells':
> > +        const: 1
> > +
> > +      '#power-domain-cells':
> > +        const: 1
> > +
> > +      '#thermal-sensor-cells':
> > +        const: 1
> > +
>
> Maybe it does not matter, but all the info present in the old .txt binding
> about references to external std bindings like:
>
> > -This binding for the SCMI power domain providers uses the generic
> > power
> > -domain binding[2].
>
> is no more reported in yaml. Is it fine ?
>

I think we can add it as $ref if there is yaml schema, I really don't
think old .txt based reference adds anything.

> > +required:
> > +  - compatible
> > +  - shmem
>
> Indeed shmem is required by chance all the transports defined in this
> binding, but it is not really something generally required, in fact
> virtio transport won't require it.
>
> But I'm not sure if it's better to move it now down under some kind of
> if: arm,scmi|arm,scmi-smc or just do it later when virtio transport binding
> will be defined/introduced.
>

Yes I was aware of that fact while I wrote this and expect it to be part of
virtio update.

--
Regards,
Sudeep
