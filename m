Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D48526F0F59
	for <lists+devicetree@lfdr.de>; Fri, 28 Apr 2023 01:59:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344165AbjD0X7B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Apr 2023 19:59:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52322 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229750AbjD0X7A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Apr 2023 19:59:00 -0400
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7EFA22690
        for <devicetree@vger.kernel.org>; Thu, 27 Apr 2023 16:58:59 -0700 (PDT)
Received: from pecola.lan (unknown [159.196.93.152])
        by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 891CF20009;
        Fri, 28 Apr 2023 07:58:51 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=codeconstruct.com.au; s=2022a; t=1682639934;
        bh=HTlmV6ZYUailRTclcFWB41eToJ0kSd2aafbUpDtmzXM=;
        h=Subject:From:To:Cc:Date:In-Reply-To:References;
        b=aBeprQVzla52BpBzP4NDOD/EXYT0gCz5f/mBvPv3jwVqFXYNrXdbADJhjxk5EI88t
         V1vDNRV4whgTv6fq1xKG8dqir0OP6olRos15WbZ8DWGcCo4quuskgrO+wsvsA8W8eu
         4xnjzTe62VTdrXiIHhshul5GVO3isB4u6BROzVyXRHVINsiXZ0QcBOJxpaP62MRu8x
         Re9YOC4oL3z16L8kxZeCOA7fNbpMYqLIQEOOm1WPXpJcHYI0AvHoXkaYbqqlrIiCA8
         h75nIYkiXElBXVHeva9tsbmmmdNWoRBBXoOMNJvKJYKC8bJdbKZY7tXxzJbduUI5Gr
         NgiuDvQV/CDWg==
Message-ID: <25ee56f181b11baa9ef54f13b6ef37977ee48b68.camel@codeconstruct.com.au>
Subject: Re: [PATCH v3 3/3] i3c: ast2600: Add AST2600 platform-specific
 driver
From:   Jeremy Kerr <jk@codeconstruct.com.au>
To:     "Zbigniew, Lukwinski" <zbigniew.lukwinski@linux.intel.com>,
        linux-i3c@lists.infradead.org
Cc:     devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
        Matt Johnston <matt@codeconstruct.com.au>,
        Vitor Soares <ivitro@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Jack Chen <zenghuchen@google.com>,
        Billy Tsai <billy_tsai@aspeedtech.com>,
        Dylan Hung <dylan_hung@aspeedtech.com>,
        Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>
Date:   Fri, 28 Apr 2023 07:58:50 +0800
In-Reply-To: <671a4bc0-526e-5224-7cb9-f80ebab2c0ef@linux.intel.com>
References: <20230331091501.3800299-1-jk@codeconstruct.com.au>
         <20230331091501.3800299-4-jk@codeconstruct.com.au>
         <671a4bc0-526e-5224-7cb9-f80ebab2c0ef@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.3-1 
MIME-Version: 1.0
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi=C2=A0Lukwinski,

> > +	case 545:
> > +		reg =3D AST2600_I3CG_REG0_SDA_PULLUP_EN_2K |
> > +			AST2600_I3CG_REG0_SDA_PULLUP_EN_750;
>
> It does not work. To enable PullUp=3D545R you need to set both 28 and
> 29 bit (0x30000000) but 'AST2600_I3CG_REG0_SDA_PULLUP_EN_2K |
> AST2600_I3CG_REG0_SDA_PULLUP_EN_750' is in fact 0x20000000.

Ah, good catch - I'd missed that the 2K is 0b00.

> Maybe you could consider adding extra macro
> 'AST2600_I3CG_REG0_SDA_PULLUP_EN_545' =3D (0x3 << 28)?

Sounds good, I'll send a fix today.

Cheers,


Jeremy
