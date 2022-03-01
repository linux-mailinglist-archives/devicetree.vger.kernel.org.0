Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DF4E54C8D5D
	for <lists+devicetree@lfdr.de>; Tue,  1 Mar 2022 15:12:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234544AbiCAOMj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Mar 2022 09:12:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59910 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233223AbiCAOMj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Mar 2022 09:12:39 -0500
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF0DB6550
        for <devicetree@vger.kernel.org>; Tue,  1 Mar 2022 06:11:57 -0800 (PST)
Received: by mail-ej1-x632.google.com with SMTP id qa43so5182774ejc.12
        for <devicetree@vger.kernel.org>; Tue, 01 Mar 2022 06:11:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=MfimAMOL9WrDUaU8ysDXEywlIYs/LjUgbSBpoFo63aY=;
        b=diqOb2yAU+tqO43un6fTJiInrvAguRgXo6fKbg98DcAITNF7Gl/ir+uwUFM4exGOnE
         YWlZD/j93Kus3CV+xQR5OC5IMibNE7XQ2pB/aTfiI/1KZNPNXcOO3N9Wf3Vm40eucwnf
         KCZsoDpcY3RlPvtOsdJvp3hvhWagp6mK0k8X9hB4q0IxoucacjoWQi8jZW0I4mBzsyy9
         n6oZMx4YJlf1gFF12Wsy9ZDaGuUem8Mt98GLD1DxF50P0y5ScMfaySWjOjxxNE6G+z7v
         xyulVL4kfYG9fG3Wd3tJMX78+QbEpgZ8N6/qMfJwekH8lawM05Io640S/r6Xl6082e7W
         cILg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=MfimAMOL9WrDUaU8ysDXEywlIYs/LjUgbSBpoFo63aY=;
        b=4x+ZmAJE61nItPjx36xtk8wM2fg67jHirA3LIb0K++VHF7VF00ZNv3yoYn0IYF2P1g
         j0Is392M+HYzCbk0jp4+UBFO1k8t8yPB5CV1QTWdbuBwCFWFx30HUIQEHRsiqDln60gW
         Q1rgJnH7GM6GkyXsn4uOR4Xq68RRpTNLEVmjn7x+yckEmhMHl6H+HIXTJ/9CBe3cO3k8
         jccGkgLkCYXmOLkrtDUEHAMHL0tg8b7/4iX0Y4Rxcy7xNnEPWs/fbbBSviVn/pdwi5Z6
         09MpNj3bWEdGkQ9Oe0RjlP0btngKYevCjIobPwNhFrJYeEvwyyryHaiDPUzp9flYZXit
         0Vqg==
X-Gm-Message-State: AOAM532T00y8XGSQ5SK72oxQX5rsLFTw8FBpLk0OHz3P20cDLPFmRT4p
        GJ7rWwI2dp8dvMvW5qCu8ybPRH1+gw4DLnoSzmfs3A==
X-Google-Smtp-Source: ABdhPJyQzWax9/NRtsMdZsexRmcWnD7j8+o1lWNAilFPrZ3u8SDBbGi9pMoyHhZ+JtbcuqS+XYYSjU6RcqlDOS3fzRU=
X-Received: by 2002:a17:906:2ecd:b0:6d3:d7c9:8fa4 with SMTP id
 s13-20020a1709062ecd00b006d3d7c98fa4mr18884616eji.144.1646143916142; Tue, 01
 Mar 2022 06:11:56 -0800 (PST)
MIME-Version: 1.0
References: <20211028140009.23331-1-etienne.carriere@linaro.org>
 <58a0e791-9573-99c2-0cc5-3920a1048113@pengutronix.de> <CAN5uoS_DQNkG8J0C-oT8aC-Xfozy9hgwAge_x2e4S-HOhSn5=w@mail.gmail.com>
In-Reply-To: <CAN5uoS_DQNkG8J0C-oT8aC-Xfozy9hgwAge_x2e4S-HOhSn5=w@mail.gmail.com>
From:   Etienne Carriere <etienne.carriere@linaro.org>
Date:   Tue, 1 Mar 2022 15:11:44 +0100
Message-ID: <CAN5uoS8QotrsoWYX3rCjxCKQFJNhFBXHc6JDYAn1rcX6N5mj4w@mail.gmail.com>
Subject: Re: [PATCH v8 1/2] dt-bindings: arm: Add OP-TEE transport for SCMI
To:     Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc:     linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Sudeep Holla <sudeep.holla@arm.com>,
        Cristian Marussi <cristian.marussi@arm.com>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi sorry,

I sent the mail while i was still typing it...
Here is with the full answer.


On Tue, 1 Mar 2022 at 15:05, Etienne Carriere
<etienne.carriere@linaro.org> wrote:
>
> Hello Ahmad,
>
> On Mon, 28 Feb 2022 at 17:01, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> >
> > Hello Etienne,
> >
> > On 28.10.21 16:00, Etienne Carriere wrote:
> > > Introduce compatible "linaro,scmi-optee" for SCMI transport channel
> > > based on an OP-TEE service invocation. The compatible mandates a
> > > channel ID defined with property "linaro,optee-channel-id".
> >
> > I just found this thread via the compatible in the STM32MP131 patch set:
> > https://lore.kernel.org/all/20220225133137.813919-1-gabriel.fernandez@foss.st.com/
> >
> > Linux doesn't care whether PSCI is provided by TF-A, OP-TEE or something
> > else, so there is just the arm,psci* compatible.
> >
> > What's different about SCMI that this is not possible? Why couldn't the
> > existing binding and driver be used to communicate with OP-TEE as secure
> > monitor as well?
>
> Compatible "linaro,scmi-optee" denote a alternate SCMI transport to
> those already in v5.16.

It is names scmi-optee because the interface exposed to access SCMI services is
based on TEE's interface (UUID to open a session with and invoke commands).

The compatible is described in the Linux Documentation but not yet
merged in the linux-next.
It can be found in the tree of arm_scmi driver maintainers:
https://git.kernel.org/pub/scm/linux/kernel/git/sudeep.holla/linux.git/log/?h=for-linux-next

This commit:
https://git.kernel.org/pub/scm/linux/kernel/git/sudeep.holla/linux.git/commit/?h=for-linux-next&id=b7d2cf7c817b86e705b97f72c6be192a6760a14f

Br,
Etienne

>
>
> >
> > Cheers,
> > Ahmad
> >
> > >
> > > Cc: devicetree@vger.kernel.org
> > > Cc: Rob Herring <robh+dt@kernel.org>
> > > Signed-off-by: Etienne Carriere <etienne.carriere@linaro.org>
> > > ---
> > > Changes since v6:
> > >  - Remove maxItems from linaro,optee-channel-id description
> > >
> > > No change since v5
> > >
> > > Changes since v4:
> > >  - Fix sram node name in DTS example: s/-shm-/-sram-/
> > >
> > > Changes since v3:
> > >  - Add description for linaro,optee-channel-id in patternProperties
> > >    specifying protocol can optionaly define a dedicated channel id.
> > >  - Fix DTS example (duplicated phandles issue, subnodes ordering)
> > >  - Fix typo in DTS example and description comments.
> > >
> > > Changes since v2:
> > >  - Define mandatory property linaro,optee-channel-id
> > >  - Rebased on yaml description file
> > >
> > > Changes since v1:
> > >  - Removed modification regarding mboxes property description.
> > > ---
> > >  .../bindings/firmware/arm,scmi.yaml           | 65 +++++++++++++++++++
> > >  1 file changed, 65 insertions(+)
> > >
> > > diff --git a/Documentation/devicetree/bindings/firmware/arm,scmi.yaml b/Documentation/devicetree/bindings/firmware/arm,scmi.yaml
> > > index 5c4c6782e052..eae15df36eef 100644
> > > --- a/Documentation/devicetree/bindings/firmware/arm,scmi.yaml
> > > +++ b/Documentation/devicetree/bindings/firmware/arm,scmi.yaml
> > > @@ -38,6 +38,9 @@ properties:
> > >                       The virtio transport only supports a single device.
> > >          items:
> > >            - const: arm,scmi-virtio
> > > +      - description: SCMI compliant firmware with OP-TEE transport
> > > +        items:
> > > +          - const: linaro,scmi-optee
> > >
> > >    interrupts:
> > >      description:
> > > @@ -83,6 +86,11 @@ properties:
> > >      description:
> > >        SMC id required when using smc or hvc transports
> > >
> > > +  linaro,optee-channel-id:
> > > +    $ref: /schemas/types.yaml#/definitions/uint32
> > > +    description:
> > > +      Channel specifier required when using OP-TEE transport.
> > > +
> > >    protocol@11:
> > >      type: object
> > >      properties:
> > > @@ -195,6 +203,12 @@ patternProperties:
> > >          minItems: 1
> > >          maxItems: 2
> > >
> > > +      linaro,optee-channel-id:
> > > +        $ref: /schemas/types.yaml#/definitions/uint32
> > > +        description:
> > > +          Channel specifier required when using OP-TEE transport and
> > > +          protocol has a dedicated communication channel.
> > > +
> > >      required:
> > >        - reg
> > >
> > > @@ -226,6 +240,16 @@ else:
> > >        - arm,smc-id
> > >        - shmem
> > >
> > > +  else:
> > > +    if:
> > > +      properties:
> > > +        compatible:
> > > +          contains:
> > > +            const: linaro,scmi-optee
> > > +    then:
> > > +      required:
> > > +        - linaro,optee-channel-id
> > > +
> > >  examples:
> > >    - |
> > >      firmware {
> > > @@ -340,7 +364,48 @@ examples:
> > >                  reg = <0x11>;
> > >                  #power-domain-cells = <1>;
> > >              };
> > > +        };
> > > +    };
> > > +
> > > +  - |
> > > +    firmware {
> > > +        scmi {
> > > +            compatible = "linaro,scmi-optee";
> > > +            linaro,optee-channel-id = <0>;
> > > +
> > > +            #address-cells = <1>;
> > > +            #size-cells = <0>;
> > > +
> > > +            scmi_dvfs1: protocol@13 {
> > > +                reg = <0x13>;
> > > +                linaro,optee-channel-id = <1>;
> > > +                shmem = <&cpu_optee_lpri0>;
> > > +                #clock-cells = <1>;
> > > +            };
> > > +
> > > +            scmi_clk0: protocol@14 {
> > > +                reg = <0x14>;
> > > +                #clock-cells = <1>;
> > > +            };
> > > +        };
> > > +    };
> > >
> > > +    soc {
> > > +        #address-cells = <2>;
> > > +        #size-cells = <2>;
> > > +
> > > +        sram@51000000 {
> > > +            compatible = "mmio-sram";
> > > +            reg = <0x0 0x51000000 0x0 0x10000>;
> > > +
> > > +            #address-cells = <1>;
> > > +            #size-cells = <1>;
> > > +            ranges = <0 0x0 0x51000000 0x10000>;
> > > +
> > > +            cpu_optee_lpri0: optee-sram-section@0 {
> > > +                compatible = "arm,scmi-shmem";
> > > +                reg = <0x0 0x80>;
> > > +            };
> > >          };
> > >      };
> > >
> >
> >
> > --
> > Pengutronix e.K.                           |                             |
> > Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> > 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> > Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
