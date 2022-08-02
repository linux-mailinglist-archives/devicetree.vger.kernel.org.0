Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E536F5884F7
	for <lists+devicetree@lfdr.de>; Wed,  3 Aug 2022 01:58:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229637AbiHBX6H (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Aug 2022 19:58:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54930 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233140AbiHBX6E (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Aug 2022 19:58:04 -0400
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D694510A8
        for <devicetree@vger.kernel.org>; Tue,  2 Aug 2022 16:58:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=Content-Disposition:Content-Type:MIME-Version:Message-ID:
        Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:
        MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
        Content-Description:Content-Disposition:In-Reply-To:References;
        bh=W4cRk3hcWkcw8CKG3n9wwZYKpIO0RtTRAp/UBtILGEg=; b=fbXk6YoyoTLePWuviRZEJHc8gp
        mB3YNC7o2J+pKY1OF5UJ5HoqyaWE67k0IQf2KZHcx+kPoxJMguzYVXATOvlqyXrsfden7/vArjqrb
        kN5RH543+W/oOqklb4w6grre3dnxfVpe7omoEneygYsqPP3bJNu+a5km9QzE7RfyPcQ4=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
        (envelope-from <andrew@lunn.ch>)
        id 1oJ1lu-00CIeO-GL; Wed, 03 Aug 2022 01:57:58 +0200
Date:   Wed, 3 Aug 2022 01:57:58 +0200
From:   Andrew Lunn <andrew@lunn.ch>
To:     Rob Herring <robh@kernel.org>
Cc:     Device Tree <devicetree@vger.kernel.org>
Subject: Property names regex
Message-ID: <Yum6Bi+vQanfTEsV@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob

I'm slowly converting some of the Marvell binding documents to YAML.

I've got a problem with one of the interrupt controllers.
Documentation/devicetree/bindings/interrupt-controller/marvell,orion-intc.txt
includes:

Optional properties:
- marvell,#interrupts: number of interrupts provided by bridge interrupt
      controller, defaults to 32 if not set


I converted this to YAML as:

  'marvell,#interrupts':
    description:
      number of interrupts provided by bridge interrupt controller
    $ref: /schemas/types.yaml#/definitions/uint32
    default: 32

but when i run dt_binding_check, i get:

home/andrew/linux/Documentation/devicetree/bindings/interrupt-controller/marvell,orion-bridge-intc.yaml: properties: 'marvell,#interrupts' does not match '^[#$a-zA-Z][a-zA-Z0-9,+\\-._@]{0,63}$'
	hint: Expected a valid DT property name
	from schema $id: http://devicetree.org/meta-schemas/keywords.yaml#

As far as i can see from:

https://devicetree-specification.readthedocs.io/en/v0.3/devicetree-basics.html#properties

A property name is allowed a # anywhere in it, not just at the start.

How do i get this regex changed?

Thanks
	Andrew
