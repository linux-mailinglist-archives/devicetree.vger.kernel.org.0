Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 87D4A435D03
	for <lists+devicetree@lfdr.de>; Thu, 21 Oct 2021 10:38:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231441AbhJUIkb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Oct 2021 04:40:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42144 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231406AbhJUIkb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Oct 2021 04:40:31 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8DF22C061749
        for <devicetree@vger.kernel.org>; Thu, 21 Oct 2021 01:38:15 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id r4so1916186edi.5
        for <devicetree@vger.kernel.org>; Thu, 21 Oct 2021 01:38:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Hwoj81YxB7VWM7dvncdJ8OpR+NMluH2LlzM00l2Vz3o=;
        b=x9OoWCZce8X0MQUprhV+HZBOWv4OVVRGRgfCJZyDl7r11AMpmH7VBKWLbXV+tPlRHe
         IPmgA4rQJfM9Mu/VtSfgSweq73eJhzHgCh55KB5UzQpsmhhd+HCPfqfvp1s+jUJORAY8
         Z5FNEGF9THBfk5EfnD7Jx0jzCblR5olTZSTuiQK+yY/6U/6jQOVlcJGQKux+sHkKUGFO
         dJwGXk+9BkwvKlPzeKteaGvEO+XjKW+CD+JgpD2Edf1Kj8Kml19r8n/yx9YmxeMMLbt1
         E4LmYWhi4UDOfoxbbThoEaIx2mxo0zr48BETGq/zzrzNWskonqCrCGaiixBMnMarZEet
         9fqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Hwoj81YxB7VWM7dvncdJ8OpR+NMluH2LlzM00l2Vz3o=;
        b=oQK1kLB+WHX0YSpWZ9M4gM9pl/ibT1EWnsvDkKvPDOdoD6fdhKvDgK8ekPZbUhQL3Y
         nMQUodVxeMqPcRzBJ89zJ6fWUKZ+K0Omk4xzLgVXMlzsjhHbX1rZogHiqquoKpOh+8m/
         ez8LQxf3Rrdb5mnHcR8uS2+B8h+WbKQBiI3uKxqJFaNB4Ffrq6OBKMClzSRfcNruszXN
         +leoc0ENkx3G0ka1fwjAESE1pxomkPZXov/qrzlfsPlnrANQV2K/CDlUJ5JATuUWuUcs
         wXbv5CJ+C08YH3jlV+A8SthIKt/lr6uF3/INAGxtll17/4qYw7p2JZxoF3edD+TCjBTa
         cRqw==
X-Gm-Message-State: AOAM533oIFzSFF9ohawM+nbUeANTHzbwS49Lqzq100i7qQ14zb7O6EEW
        q5fNErAF7/3ePoejY5HhjZkjF0UtXxOMGwCSCFOvaBRzGpU=
X-Google-Smtp-Source: ABdhPJwFQdOnK6BQKPQss3CSGijkzSbe8n7aukCqg2Irq1R/pFKFX0bG76Afd1HVpET9Kglve4nQKFMZ+w1QG+ONDOQ=
X-Received: by 2002:a17:906:7fc9:: with SMTP id r9mr5380680ejs.542.1634805492770;
 Thu, 21 Oct 2021 01:38:12 -0700 (PDT)
MIME-Version: 1.0
References: <20211020175747.28449-1-etienne.carriere@linaro.org> <1634764487.047202.2962588.nullmailer@robh.at.kernel.org>
In-Reply-To: <1634764487.047202.2962588.nullmailer@robh.at.kernel.org>
From:   Etienne Carriere <etienne.carriere@linaro.org>
Date:   Thu, 21 Oct 2021 10:38:01 +0200
Message-ID: <CAN5uoS-0N_ccKYPCHdf9EPOF4ctmU4rUGFOBxoNH7DOoM0aJDw@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: arm: Add OP-TEE transport for SCMI
To:     Rob Herring <robh@kernel.org>
Cc:     Sudeep Holla <sudeep.holla@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        linux-kernel@vger.kernel.org,
        Cristian Marussi <cristian.marussi@arm.com>,
        devicetree@vger.kernel.org,
        Vincent Guittot <vincent.guittot@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Rob,

On Wed, 20 Oct 2021 at 23:14, Rob Herring <robh@kernel.org> wrote:
>
> On Wed, 20 Oct 2021 19:57:46 +0200, Etienne Carriere wrote:
> > Introduce compatible "linaro,scmi-optee" for SCMI transport channel
> > based on an OP-TEE service invocation. The compatible mandates a
> > channel ID defined with property "linaro,optee-channel-id".
> >
> > Cc: devicetree@vger.kernel.org
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Signed-off-by: Etienne Carriere <etienne.carriere@linaro.org>
> > ---
> > Changes since v3:
> >  - Add description for linaro,optee-channel-id in patternProperties
> >    specifying protocol can optionaly define a dedicated channel id.
> >  - Fix DTS example (duplicated phandles issue, subnodes ordering)
> >  - Fix typo in DTS example and description comments.
> >
> > Changes since v2:
> >  - Define mandatory property linaro,optee-channel-id
> >  - Rebased on yaml description file
> >
> > Changes since v1:
> >  - Removed modification regarding mboxes property description.
> > ---
> >  .../bindings/firmware/arm,scmi.yaml           | 66 +++++++++++++++++++
> >  1 file changed, 66 insertions(+)
> >
>
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
>
> yamllint warnings/errors:
>
> dtschema/dtc warnings/errors:
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/firmware/arm,scmi.example.dt.yaml: sram@51000000: 'optee-shm-section@0' does not match any of the regexes: '^([a-z]*-)?sram(-section)?@[a-f0-9]+$', 'pinctrl-[0-9]+'
>         From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/sram/sram.yaml
>
> doc reference errors (make refcheckdocs):
>
> See https://patchwork.ozlabs.org/patch/1544001
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

For info, i've upgraded dtsschemas, tested on v5.15-rc6 but don't get any error.

Yet, i'll fix the DTS example accordingly in the v5.

Regards,
Etienne
