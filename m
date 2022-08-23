Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DCB9D59ED47
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 22:26:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231722AbiHWU0Z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Aug 2022 16:26:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231859AbiHWU0J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Aug 2022 16:26:09 -0400
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE40113CF6
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 12:56:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
        References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
        Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
        Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
        bh=xnpjSP+mcQFQZKyVdc8nFv51j0R9u0f3uQV6vOrE7bc=; b=BCY8/9hOygwdCuHsCydrqdiu3x
        e/Wv+uVR5bXc3xtdOGOXk8jzBB6g3T/kCDa2bUplbJn7G2hwho9Z5fDVkeu1lFncHI+YKnbaHyYWu
        FJKvrSmJAl0/78276Xuxv73abkvU0lF/0Qmc/yKjHASnPSP4Jw5y8KPQT4Y8/ACgs/xM=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
        (envelope-from <andrew@lunn.ch>)
        id 1oQa0u-00ENrp-N9; Tue, 23 Aug 2022 21:56:40 +0200
Date:   Tue, 23 Aug 2022 21:56:40 +0200
From:   Andrew Lunn <andrew@lunn.ch>
To:     Rob Herring <robh@kernel.org>
Cc:     Device Tree <devicetree@vger.kernel.org>
Subject: Re: Property names regex
Message-ID: <YwUw+OF7b8DnPWyq@lunn.ch>
References: <Yum6Bi+vQanfTEsV@lunn.ch>
 <CAL_JsqJZhTqScATHZqOsiqqZeB-RQjPeVthnBFMzZr_5irg3iQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAL_JsqJZhTqScATHZqOsiqqZeB-RQjPeVthnBFMzZr_5irg3iQ@mail.gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> > A property name is allowed a # anywhere in it, not just at the start.
> 
> Yes, the schemas are a bit more restrictive for modern DTs than the spec.
> 
> > How do i get this regex changed?
> 
> I committed a fix to relax this[1].

Thanks. I now have a fix for this in my tree. I've just not posted it
yet. I needed another change to make it really work. Here is my patch:

Author: Andrew Lunn <andrew@lunn.ch>
Date:   Fri Aug 5 18:20:40 2022 -0500

    {meta-}scheme: keywords: Allow # in properties
    
    Version 0.3 of the DT specification makes no restriction of where a #
    can appear in a property name. The Marvell interrupt controller has
    the property:
    
      'marvell,#interrupts':
        description:
          number of interrupts provided by bridge interrupt controller
        $ref: /schemas/types.yaml#/definitions/uint32
        default: 32
    
    which the scheme reports as invalid. Add the # to the regex to allow
    it.
    
    Signed-off-by: Andrew Lunn <andrew@lunn.ch>

diff --git a/dtschema/meta-schemas/keywords.yaml b/dtschema/meta-schemas/keywords.yaml
index e6ed596..3477119 100644
--- a/dtschema/meta-schemas/keywords.yaml
+++ b/dtschema/meta-schemas/keywords.yaml
@@ -169,7 +169,7 @@ properties:
       description: A json-schema keyword was found instead of a DT property name.
     propertyNames:
       description: Expected a valid DT property name
-      pattern:  "^[#$a-zA-Z][a-zA-Z0-9,+\\-._@]{0,63}$"
+      pattern:  "^[#$a-zA-Z][#a-zA-Z0-9,+\\-._@]{0,63}$"
     additionalProperties:
       $ref: "#/definitions/sub-schemas"
   required:
diff --git a/dtschema/schemas/dt-core.yaml b/dtschema/schemas/dt-core.yaml
index 1622ca0..121f476 100644
--- a/dtschema/schemas/dt-core.yaml
+++ b/dtschema/schemas/dt-core.yaml
@@ -72,7 +72,7 @@ patternProperties:
       $ref: "types.yaml#/definitions/phandle"
 
   # property and node namespace overlaps. Catch both here
-  "^[a-zA-Z0-9][a-zA-Z0-9,+\\-._]{0,63}$":
+  "^[a-zA-Z0-9][#a-zA-Z0-9,+\\-._]{0,63}$":
     type: [object, array, boolean, 'null']
 
   # Anything with a '@' is definitely a node
