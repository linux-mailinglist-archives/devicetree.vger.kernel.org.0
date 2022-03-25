Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C2C844E6B80
	for <lists+devicetree@lfdr.de>; Fri, 25 Mar 2022 01:10:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345328AbiCYAML (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Mar 2022 20:12:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1357044AbiCYAMK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Mar 2022 20:12:10 -0400
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A99DF931BD
        for <devicetree@vger.kernel.org>; Thu, 24 Mar 2022 17:10:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
        References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
        Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
        Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
        bh=z2w+Bxs2/VRoeScopCDbR6v7XAjkBNcqZU6yJFnJG2k=; b=wCdbhYa/qaFCBRTDPAGP2abac+
        1OhvNWePi54RuNmgcvfI+jdx6l3Dx7vvfrzSfuO771vJf/+dDJ77Qtomvyp3AMrnpY9mDO+l4bT+v
        7ZztxNXlAcawyKH68figgoQ0vv0JMtDLf19zixWHwj/CwG2U8EuHhTOmKVxMfqKkvAg8=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
        (envelope-from <andrew@lunn.ch>)
        id 1nXXX2-00CWt7-2O; Fri, 25 Mar 2022 01:10:20 +0100
Date:   Fri, 25 Mar 2022 01:10:20 +0100
From:   Andrew Lunn <andrew@lunn.ch>
To:     Jae Hyun Yoo <quic_jaehyoo@quicinc.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>,
        Jamie Iles <quic_jiles@quicinc.com>,
        Graeme Gregory <quic_ggregory@quicinc.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org
Subject: Re: [PATCH] ARM: dts: aspeed: add Nuvia DC-SCM BMC
Message-ID: <Yj0IbLsebBvZdaZE@lunn.ch>
References: <20220324164551.359570-1-quic_jaehyoo@quicinc.com>
 <YjzhT4gOJ9SKy6q+@lunn.ch>
 <88849423-c4a5-0a68-1900-72196395704e@quicinc.com>
 <Yjzub26okJosPkXC@lunn.ch>
 <a70bde19-3ded-d8ae-51ff-ec37fa803b06@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a70bde19-3ded-d8ae-51ff-ec37fa803b06@quicinc.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> The clock delay I mentioned is added into u-boot bootloader in a
> patch I'm currently trying to submit.
> https://lore.kernel.org/all/20220324165530.359668-1-quic_jaehyoo@quicinc.com/

Do you mean this:

+&scu {
+	mac0-clk-delay = <0x1d 0x1c
+			  0x10 0x17
+			  0x10 0x17>;
+	mac1-clk-delay = <0x1d 0x10
+			  0x10 0x10
+			  0x10 0x10>;
+	mac2-clk-delay = <0x0a 0x04
+			  0x08 0x04
+			  0x08 0x04>;
+	mac3-clk-delay = <0x0a 0x04
+			  0x08 0x04
+			  0x08 0x04>;

So the MAC is adding the delay. In that case, setting phy-mode to
rgmii is O.K, but it would be nice to add a comment in DT that the
bootloader is setting up the MAC to insert the delay.

	   Andrew
