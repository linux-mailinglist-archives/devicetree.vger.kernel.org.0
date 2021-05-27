Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6B3B9392C2C
	for <lists+devicetree@lfdr.de>; Thu, 27 May 2021 12:53:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236221AbhE0KzP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 May 2021 06:55:15 -0400
Received: from foss.arm.com ([217.140.110.172]:55692 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S236233AbhE0KzO (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 27 May 2021 06:55:14 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B831913A1;
        Thu, 27 May 2021 03:53:41 -0700 (PDT)
Received: from bogus (unknown [10.57.70.210])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2FE3D3F73D;
        Thu, 27 May 2021 03:53:39 -0700 (PDT)
Date:   Thu, 27 May 2021 11:53:34 +0100
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Etienne Carriere <etienne.carriere@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Cristian Marussi <cristian.marussi@arm.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Jim Quinlan <jim2101024@gmail.com>,
        Peter Hilber <peter.hilber@opensynergy.com>
Subject: Re: [PATCH 8/8] dt-bindings: firmware: arm,scmi: Convert to json
 schema
Message-ID: <20210527105334.ouz3pgth7whmqxzl@bogus>
References: <20210526182807.548118-1-sudeep.holla@arm.com>
 <20210526182807.548118-9-sudeep.holla@arm.com>
 <CAN5uoS_xdGRMki4jTM2tz5nGqjn8BmA5r0egWnngK=L94Y6uxQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAN5uoS_xdGRMki4jTM2tz5nGqjn8BmA5r0egWnngK=L94Y6uxQ@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 27, 2021 at 08:37:58AM +0200, Etienne Carriere wrote:
> Hello Sudeep,
>
> On Wed, 26 May 2021 at 20:28, Sudeep Holla <sudeep.holla@arm.com> wrote:
> >
> > Convert the old text format binding for System Control and Management Interface
> > (SCMI) Message Protocol into the new and shiny YAML format.
> >
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Cc: Cristian Marussi <cristian.marussi@arm.com>
> > Cc: Florian Fainelli <f.fainelli@gmail.com>
> > Cc: Jim Quinlan <jim2101024@gmail.com>
> > Cc: Etienne Carriere <etienne.carriere@linaro.org>
> > Cc: Peter Hilber <peter.hilber@opensynergy.com>
> > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> > ---
> >  .../devicetree/bindings/arm/arm,scmi.txt      | 224 ---------------
> >  .../bindings/firmware/arm,scmi.yaml           | 270 ++++++++++++++++++
> >  2 files changed, 270 insertions(+), 224 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/arm/arm,scmi.txt
> >  create mode 100644 Documentation/devicetree/bindings/firmware/arm,scmi.yaml
> >
> > Hi,
> >
> > I have converted all the bindings except the below regulator part of the
> > binding. This needs to be addressed before merging ofcourse. Just posting
> > the remaining changes to get feedback and also ask suggestion for the below:
> >
> >         scmi_voltage: protocol@17 {
> >           reg = <0x17>;
> >           regulators {
> >             regulator_devX: regulator@0 {
> >               reg = <0x0>;
> >               regulator-max-microvolt = <3300000>;
> >             };
> >
> >             regulator_devY: regulator@9 {
> >               reg = <0x9>;
> >               regulator-min-microvolt = <500000>;
> >               regulator-max-microvolt = <4200000>;
> >             };
> >           };
> >         };
> >
> > I will reply with things I have tried separately to avoid confusion with this
> > the patch here.
>
> Few minor typos, but LGTM for this part, aside a comment on SCMI
> version reference.
>
> Both old and new descriptions refer to SCMI v1.0 (DEN0056A) in both
> description text and URL reference.
> Not mentioning the version would age better. From the implementation,
> versions are already well managed at discovery and enumeration so we
> don't expect regressions due to spec version.
>
> At:
>   -  the SCMI as described in ARM document number ARM DEN 0056A ("ARM
> System Control
>   +  the SCMI as described in ARM document number ARM DEN 0056 ("ARM
> System Control
> and at:
>   -  [0] http://infocenter.arm.com/help/topic/com.arm.doc.den0056a/index.html
>   +  [0] https://developer.arm.com/documentation/den0056/latest
>

Good point, most of the recent specs, I am referring to latest. This predates
that practice. I will update this and fix typos pointed out. Thanks for taking
a look at this.

--
Regards,
Sudeep
