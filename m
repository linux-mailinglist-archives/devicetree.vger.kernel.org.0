Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 35FFF43320C
	for <lists+devicetree@lfdr.de>; Tue, 19 Oct 2021 11:21:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234914AbhJSJXN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Oct 2021 05:23:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234933AbhJSJXK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Oct 2021 05:23:10 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53D3DC061745
        for <devicetree@vger.kernel.org>; Tue, 19 Oct 2021 02:20:57 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id ec8so10335494edb.6
        for <devicetree@vger.kernel.org>; Tue, 19 Oct 2021 02:20:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=toRRVEqTLUd3SSxzIDP/+DUaLEtYke19fi6Pz2sUJkE=;
        b=Cf18QzOp+PRhe6QqZXXGOa4O7FcIcT8tM6VPOG1htKyJ1o5kTmJFuUaCM3AI4CWu3s
         Kh+keaBzAGxQygo9i8deGphOkop3SLutGrTs2ukML7vLZ/vSvRkWQZFS4YfdoyXOkcjg
         9MueBURbdbqni8kwo6RPOs8F1cVzS3nDxLl16afPJBfbdKclb387x3ZtXgT90MS/ydPS
         z7nDn6GTXp+SswME3vjPhHMaUF+zyQg5kvjNVfzTw95BdRCk+7paJWKFGR8VYyjsZSjB
         +TxMnqCQiGou0u0rE6TaY3tx0yNlgJFYq5CdiYl3qj0P2ZFm3Y36xbGtK7IpJiOTr18P
         hzhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=toRRVEqTLUd3SSxzIDP/+DUaLEtYke19fi6Pz2sUJkE=;
        b=BURJaB6v8xsvbdNqWJIsbnJ2QF7dTaPTReHYpVe70mKjWoXDDmMzqlj2KkGIL2yY3B
         TIXUH0Ds8ycd3HZNRXKFGrJqNOtYCdzWBv7kZnMXeNeVcB9u0TvuSmlyaHau8lcbIfaK
         4WYCXts3Cvcw/gQVvhdJaMXu/V+oHLydh4ouZI8v84KoMCLp6NBIXLXh/MHUzVEZ1abA
         BmW0PgxegwHtNKEqBhZkkVMNCOdxmkwpnoFWe566KODtr4lJdxsVYdS361gobm7ZGLXr
         tq50vl79zT9KUzzobjEGWU9Tzjkr8kXnDt9PRzu7T+Lq19klD+MVIVPelsO/9sdfTVwn
         0OWQ==
X-Gm-Message-State: AOAM530i+jndIC5BpmXbE10sKQhsWs0aDSXVfce8WAQUOxLjRpFEl/hv
        zMYRsqunsFBND3WI3KN7aeDNc+fI88uR9LhyILLr7w==
X-Google-Smtp-Source: ABdhPJzEQhtxbot5YkrZdRE19sSa4f2O5W5kZNzagpESU86f9Z1ZP1xca6lG0VyOTvQlnZg+aWhg3uov1zMvvMMgn2Y=
X-Received: by 2002:a17:906:d975:: with SMTP id rp21mr36538913ejb.104.1634635255802;
 Tue, 19 Oct 2021 02:20:55 -0700 (PDT)
MIME-Version: 1.0
References: <20211018114046.25571-1-etienne.carriere@linaro.org> <YW2xhRXQ+MA/Cxm1@robh.at.kernel.org>
In-Reply-To: <YW2xhRXQ+MA/Cxm1@robh.at.kernel.org>
From:   Etienne Carriere <etienne.carriere@linaro.org>
Date:   Tue, 19 Oct 2021 11:20:44 +0200
Message-ID: <CAN5uoS_ab2Te6++JPAQ2UJqjdO46t=vyT2Ek0DvWG8umSibTnQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: Add OP-TEE transport for SCMI
To:     Rob Herring <robh@kernel.org>
Cc:     linux-kernel@vger.kernel.org,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Cristian Marussi <cristian.marussi@arm.com>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 18 Oct 2021 at 19:40, Rob Herring <robh@kernel.org> wrote:
>
> On Mon, Oct 18, 2021 at 01:40:45PM +0200, Etienne Carriere wrote:
> > Introduce compatible "linaro,scmi-optee" for SCMI transport channel
> > based on an OP-TEE service invocation. The compatible mandates a
> > channel ID defined with property "linaro,optee-channel-id".
> >
> > Cc: devicetree@vger.kernel.org
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Signed-off-by: Etienne Carriere <etienne.carriere@linaro.org>
> > ---
> > Changes since v2:
> >  - Define mandatory property linaro,optee-channel-id
> >  - Rebased on yaml description file
> >
> > Changes since v1:
> >  - Removed modification regarding mboxes property description.
> > ---
> >  .../bindings/firmware/arm,scmi.yaml           | 44 +++++++++++++++++++
> >  1 file changed, 44 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/firmware/arm,scmi.yaml b/Documentation/devicetree/bindings/firmware/arm,scmi.yaml
> > index 5c4c6782e052..12154ecc081b 100644
> > --- a/Documentation/devicetree/bindings/firmware/arm,scmi.yaml
> > +++ b/Documentation/devicetree/bindings/firmware/arm,scmi.yaml
> > @@ -38,6 +38,9 @@ properties:
> >                       The virtio transport only supports a single device.
> >          items:
> >            - const: arm,scmi-virtio
> > +      - description: SCMI compliant firmware with OP-TEE transport
> > +        items:
> > +          - const: linaro,scmi-optee
> >
> >    interrupts:
> >      description:
> > @@ -83,6 +86,11 @@ properties:
> >      description:
> >        SMC id required when using smc or hvc transports
> >
> > +  linaro,optee-channel-id:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description:
> > +      Channel id required when using OP-TEE transports
> > +
> >    protocol@11:
> >      type: object
> >      properties:
> > @@ -195,6 +203,9 @@ patternProperties:
> >          minItems: 1
> >          maxItems: 2
> >
> > +      linaro,optee-channel-id:
> > +        maxItems: 1
>
> Why is the same property in 2 different spots? That doesn't seem ideal.
>
> Unfortunately, you have to duplicate the definition.

Property linaro,optee-channel-id for compatible linaro,scmi-optee
is like properties mboxes and shmem for compatibile arm,scmi.
There are mandated in the scmi node and are optional in its subnodes:
an scmi protocol (a subnode), can have a dedicated scmi channel.

The yaml description is expected to reflect that.

Regards,
Etienne

>
> > +
> >      required:
> >        - reg
> >
> > @@ -226,6 +237,16 @@ else:
> >        - arm,smc-id
> >        - shmem
> >
> > +  else:
> > +    if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            const: linaro,scmi-optee
> > +    then:
> > +      required:
> > +        - linaro,optee-channel-id
> > +
> >  examples:
> >    - |
> >      firmware {
> > @@ -340,7 +361,30 @@ examples:
> >                  reg = <0x11>;
> >                  #power-domain-cells = <1>;
> >              };
> > +        };
> > +    };
> > +
> > +  - |
> > +    firmware {
> > +        scmi {
> > +            compatible = "linaro,scmi-optee";
> > +            linaro,optee-channel = <0>;
> > +
> > +            #address-cells = <1>;
> > +            #size-cells = <0>;
> > +
> > +            scmi_clk: protocol@14 {
> > +                reg = <0x14>;
> > +                #clock-cells = <1>;
> > +            };
> > +
> > +            scmi_dvfs: protocol@13 {
> > +                reg = <0x13>;
> >
> > +                #clock-cells = <1>;
> > +                linaro,optee-channel = <1>;
> > +                shmem = <&cpu_scp_hpri0>;
> > +            };
> >          };
> >      };
> >
> > --
> > 2.17.1
> >
> >
