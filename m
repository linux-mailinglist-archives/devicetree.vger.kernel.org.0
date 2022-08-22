Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 58DDE59B714
	for <lists+devicetree@lfdr.de>; Mon, 22 Aug 2022 02:48:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231913AbiHVAsY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 21 Aug 2022 20:48:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52438 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231928AbiHVAsX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 21 Aug 2022 20:48:23 -0400
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D9472BDC
        for <devicetree@vger.kernel.org>; Sun, 21 Aug 2022 17:48:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
        References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
        Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
        Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
        bh=X1DVxwlxr3y5MT3OqPpqvaUMtyz6l4Zg+pw1vhoii0g=; b=YPgkr+x+JDJXOMQUvr2rdIO4kK
        CjSzk6BhTh3VZicKTFV6b86w5HEM3+jg17DXNF5t8OxxuOsrWpgD2IQndTuXxOA1o2cSKWqiTO4F0
        k4NltueWyxmky7bRjbEPXns4UF8zdYKRWaNdGiszejdapsgbN6FaP/47JR8dmw5Y1CUQ=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
        (envelope-from <andrew@lunn.ch>)
        id 1oPvc3-00EAlQ-Sj; Mon, 22 Aug 2022 02:48:19 +0200
Date:   Mon, 22 Aug 2022 02:48:19 +0200
From:   Andrew Lunn <andrew@lunn.ch>
To:     Rob Herring <robh@kernel.org>
Cc:     Gregory Clement <gregory.clement@bootlin.com>,
        arm-soc <arm@kernel.org>,
        Device Tree <devicetree@vger.kernel.org>
Subject: Re: [PATCH 08/11] DT: mtd: Convert orion-nand to YAML
Message-ID: <YwLSU/DH7UrSPorH@lunn.ch>
References: <20220820194804.3352415-1-andrew@lunn.ch>
 <20220820194804.3352415-9-andrew@lunn.ch>
 <1661113286.930678.1729134.nullmailer@robh.at.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1661113286.930678.1729134.nullmailer@robh.at.kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Aug 21, 2022 at 03:21:26PM -0500, Rob Herring wrote:
> On Sat, 20 Aug 2022 21:48:01 +0200, Andrew Lunn wrote:
> > This works for Kirkwood, but orion5x has an odd bus structure
> > which results in some warnings.
> > 
> > Signed-off-by: Andrew Lunn <andrew@lunn.ch>
> > ---
> >  .../bindings/mtd/marvell,orion-nand.yaml      | 85 +++++++++++++++++++
> >  .../devicetree/bindings/mtd/orion-nand.txt    | 50 -----------
> >  2 files changed, 85 insertions(+), 50 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/mtd/marvell,orion-nand.yaml
> >  delete mode 100644 Documentation/devicetree/bindings/mtd/orion-nand.txt
> > 
> 
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mtd/marvell,orion-nand.example.dtb: nand-controller@f4000000: #size-cells:0:0: 0 was expected
> 	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mtd/nand-controller.yaml
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mtd/marvell,orion-nand.example.dtb: nand-controller@f4000000: #size-cells:0:0: 0 was expected
> 	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mtd/marvell,orion-nand.yaml

Does the bot not apply patches N-1 before testing patch N? In this
case, if patch N-2 was applied, you would not see this warning.

      Andrew
