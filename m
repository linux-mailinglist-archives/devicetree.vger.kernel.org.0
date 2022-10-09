Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 56C835F8AE9
	for <lists+devicetree@lfdr.de>; Sun,  9 Oct 2022 13:38:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229913AbiJILie (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 9 Oct 2022 07:38:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50268 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229657AbiJILid (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 9 Oct 2022 07:38:33 -0400
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1DEC9B8C
        for <devicetree@vger.kernel.org>; Sun,  9 Oct 2022 04:38:32 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by sin.source.kernel.org (Postfix) with ESMTPS id 638C3CE0A23
        for <devicetree@vger.kernel.org>; Sun,  9 Oct 2022 11:38:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39625C433D6;
        Sun,  9 Oct 2022 11:38:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1665315508;
        bh=c9fYzp3ChdzyeU6d0vpM4MQ6poAI5TY35aSd13RcgYs=;
        h=Date:From:To:Subject:References:In-Reply-To:From;
        b=k6VihLAWyixlZYsPaCs9rd7c9XBZ+qk9qAefK+uHrwPOdHQhIgIjvDZpsFszg4LMH
         7cXDbK1nlNsodzZcKVwAYiftyseGp4pV0k92+MSbKcw3c7PXmVp+4sn+nNKmDvheHV
         HWvLc03wjtqNR6wUntuOjZhvA7r/SS7nsS48BpdC38i4Nm/ORzOstOUb3phMu7wccm
         1I6WpuaSaOE70HqTDIb4RlzIALiIjVixE6iXmEoWcHVGKkQACnGAyrISSsaMpFub9f
         iyDL3W6mlqqvydGuQn0PX2rXpvoz1ZovxiOMnTLu7fYRDnNiTxUMQjXZeU8YlxLyMF
         fbfM3Yp6JOSag==
Received: by pali.im (Postfix)
        id 67BA37C1; Sun,  9 Oct 2022 13:38:25 +0200 (CEST)
Date:   Sun, 9 Oct 2022 13:38:25 +0200
From:   Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Marek =?utf-8?B?QmVow7pu?= <kabel@kernel.org>
Subject: Re: [PATCH] dt-bindings: bus: add device tree bindings for
 fsl,p1021rdb-pc-cpld
Message-ID: <20221009113825.l67w4qvv6v5kmst4@pali>
References: <20220705175450.11886-1-kabel@kernel.org>
 <20220831114640.qwfr7lea3lvcfl2v@pali>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220831114640.qwfr7lea3lvcfl2v@pali>
User-Agent: NeoMutt/20180716
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

PING?

If you really do not care about documentation then just tell people to
not waste time on doing it. Because dts files can be compiled and used
on the real hardware without those superfluous YAML files.

On Wednesday 31 August 2022 13:46:40 Pali Rohár wrote:
> PING? Documentation binding patch is waiting there fore two months.
> Could we move forward?
> 
> Note that meanwhile turris1x.dts which uses this was merged.
> 
> On Tuesday 05 July 2022 19:54:50 Marek Behún wrote:
> > Add binding for CPLD bus interface of Freescale P1021RDB Combo Board
> > CPLD Design.
> > 
> > Signed-off-by: Marek Behún <kabel@kernel.org>
> > ---
> >  .../bindings/bus/fsl,p1021rdb-pc-cpld.yaml    | 73 +++++++++++++++++++
> >  1 file changed, 73 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/bus/fsl,p1021rdb-pc-cpld.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/bus/fsl,p1021rdb-pc-cpld.yaml b/Documentation/devicetree/bindings/bus/fsl,p1021rdb-pc-cpld.yaml
> > new file mode 100644
> > index 000000000000..822dfb93dcd8
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/bus/fsl,p1021rdb-pc-cpld.yaml
> > @@ -0,0 +1,73 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/bus/fsl,p1021rdb-pc-cpld.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: CPLD Bus Inteface for Freescale P1021RDB Combo Board CPLD Design
> > +
> > +maintainers:
> > +  - Pali Rohár <pali@kernel.org>
> > +
> > +description: |
> > +  A simple bus enabling access to peripherals on boards with use Freescale
> > +  P1021RDB Combo Board CPLD Design.
> > +
> > +  The "fsl,p1021rdb-pc-cpld" follows the "simple-bus" set of properties, as
> > +  specified in the Devicetree Specification. It is an extension of "simple-bus"
> > +  because some registers are CPLD specific and allows to identify if board has
> > +  wired CPLD according to Freescale P1021RDB Combo Board CPLD Design.
> > +
> > +select:
> > +  properties:
> > +    compatible:
> > +      contains:
> > +        const: fsl,p1021rdb-pc-cpld
> > +  required:
> > +    - compatible
> > +
> > +properties:
> > +  $nodename:
> > +    pattern: "^cpld(@[0-9a-f]+(,[0-9a-f]+)?)?$"
> > +
> > +  compatible:
> > +    items:
> > +      - const: fsl,p1021rdb-pc-cpld
> > +      - const: simple-bus
> > +
> > +  '#address-cells':
> > +    enum: [ 1, 2 ]
> > +
> > +  '#size-cells':
> > +    enum: [ 1, 2 ]
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  ranges: true
> > +
> > +required:
> > +  - compatible
> > +  - '#address-cells'
> > +  - '#size-cells'
> > +  - reg
> > +  - ranges
> > +
> > +additionalProperties:
> > +  type: object
> > +
> > +examples:
> > +  - |
> > +
> > +    localbus {
> > +        #address-cells = <2>;
> > +        #size-cells = <1>;
> > +
> > +        cpld@3,0 {
> > +            #address-cells = <1>;
> > +            #size-cells = <1>;
> > +            compatible = "fsl,p1021rdb-pc-cpld", "simple-bus";
> > +            reg = <0x3 0x0 0x20000>;
> > +            ranges = <0x0 0x3 0x0 0x20000>;
> > +        };
> > +    };
> > -- 
> > 2.35.1
> > 
