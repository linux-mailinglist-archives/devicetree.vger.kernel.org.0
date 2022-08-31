Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 36CB95A7C64
	for <lists+devicetree@lfdr.de>; Wed, 31 Aug 2022 13:46:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229761AbiHaLqr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Aug 2022 07:46:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39890 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229556AbiHaLqq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Aug 2022 07:46:46 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C20AC04EF
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 04:46:45 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id A954061902
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 11:46:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DADB8C433D6;
        Wed, 31 Aug 2022 11:46:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1661946404;
        bh=6ClxR3MT3Wu8HH+a4phv6a5gWY04aTPsTn7O/QRhoFo=;
        h=Date:From:To:Subject:References:In-Reply-To:From;
        b=bGEAm6QGQsSV2nHhwl21CjsTJC/9M6mE65PoJEziVDIgzdAmwcKH4XFZwcKzHjJIt
         7vxCeUYgCq1GnGt7fLyAMHJSRP9wlk4k42hTd40JhEduil8h0o91xMW8/qDr7nzFiv
         i1apy48hAYG1oaVWWceLGeUAb5mZGqFyuls8EnDWTTmagkvdlH9thnlDnYp3by24W4
         K5cbPF5SEjvat+Jt4wSDSczcPp8Zs+RF7f0Z6xS7J7Ufh8Gg1tycvce2uOj0at3d3B
         kXEeKvyjDpw5730AjjtD1800A0Gg+XLcqooCQAxwZfMeWJIwRuL4yKf1NPImYbzO/E
         Nj+Rahf9T6TJQ==
Received: by pali.im (Postfix)
        id F22D7855; Wed, 31 Aug 2022 13:46:40 +0200 (CEST)
Date:   Wed, 31 Aug 2022 13:46:40 +0200
From:   Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Marek =?utf-8?B?QmVow7pu?= <kabel@kernel.org>
Subject: Re: [PATCH] dt-bindings: bus: add device tree bindings for
 fsl,p1021rdb-pc-cpld
Message-ID: <20220831114640.qwfr7lea3lvcfl2v@pali>
References: <20220705175450.11886-1-kabel@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220705175450.11886-1-kabel@kernel.org>
User-Agent: NeoMutt/20180716
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

PING? Documentation binding patch is waiting there fore two months.
Could we move forward?

Note that meanwhile turris1x.dts which uses this was merged.

On Tuesday 05 July 2022 19:54:50 Marek Behún wrote:
> Add binding for CPLD bus interface of Freescale P1021RDB Combo Board
> CPLD Design.
> 
> Signed-off-by: Marek Behún <kabel@kernel.org>
> ---
>  .../bindings/bus/fsl,p1021rdb-pc-cpld.yaml    | 73 +++++++++++++++++++
>  1 file changed, 73 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/bus/fsl,p1021rdb-pc-cpld.yaml
> 
> diff --git a/Documentation/devicetree/bindings/bus/fsl,p1021rdb-pc-cpld.yaml b/Documentation/devicetree/bindings/bus/fsl,p1021rdb-pc-cpld.yaml
> new file mode 100644
> index 000000000000..822dfb93dcd8
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/bus/fsl,p1021rdb-pc-cpld.yaml
> @@ -0,0 +1,73 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/bus/fsl,p1021rdb-pc-cpld.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: CPLD Bus Inteface for Freescale P1021RDB Combo Board CPLD Design
> +
> +maintainers:
> +  - Pali Rohár <pali@kernel.org>
> +
> +description: |
> +  A simple bus enabling access to peripherals on boards with use Freescale
> +  P1021RDB Combo Board CPLD Design.
> +
> +  The "fsl,p1021rdb-pc-cpld" follows the "simple-bus" set of properties, as
> +  specified in the Devicetree Specification. It is an extension of "simple-bus"
> +  because some registers are CPLD specific and allows to identify if board has
> +  wired CPLD according to Freescale P1021RDB Combo Board CPLD Design.
> +
> +select:
> +  properties:
> +    compatible:
> +      contains:
> +        const: fsl,p1021rdb-pc-cpld
> +  required:
> +    - compatible
> +
> +properties:
> +  $nodename:
> +    pattern: "^cpld(@[0-9a-f]+(,[0-9a-f]+)?)?$"
> +
> +  compatible:
> +    items:
> +      - const: fsl,p1021rdb-pc-cpld
> +      - const: simple-bus
> +
> +  '#address-cells':
> +    enum: [ 1, 2 ]
> +
> +  '#size-cells':
> +    enum: [ 1, 2 ]
> +
> +  reg:
> +    maxItems: 1
> +
> +  ranges: true
> +
> +required:
> +  - compatible
> +  - '#address-cells'
> +  - '#size-cells'
> +  - reg
> +  - ranges
> +
> +additionalProperties:
> +  type: object
> +
> +examples:
> +  - |
> +
> +    localbus {
> +        #address-cells = <2>;
> +        #size-cells = <1>;
> +
> +        cpld@3,0 {
> +            #address-cells = <1>;
> +            #size-cells = <1>;
> +            compatible = "fsl,p1021rdb-pc-cpld", "simple-bus";
> +            reg = <0x3 0x0 0x20000>;
> +            ranges = <0x0 0x3 0x0 0x20000>;
> +        };
> +    };
> -- 
> 2.35.1
> 
