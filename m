Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 799D459B6FF
	for <lists+devicetree@lfdr.de>; Mon, 22 Aug 2022 02:20:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231821AbiHVAUI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 21 Aug 2022 20:20:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231995AbiHVAUH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 21 Aug 2022 20:20:07 -0400
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35F52186D5
        for <devicetree@vger.kernel.org>; Sun, 21 Aug 2022 17:20:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
        References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
        Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
        Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
        bh=Mw+g3FoUN/eA5YT44w6TJ7ZsTOndOB2VWTdNvUnLVa4=; b=MScCB9zpdLy5TMoO9RH4AaSoXu
        RZL9jSDm60QPsZWcRb9Ztn4c/7wQvB/eOqfoVab0BA7sZrNOU2RTE8mLhoI2uWU9KEhBmGdD0Dhi7
        fcViAqKxIBUFJmr89SosLS2cI95xL/OjGOfOQhVkeGkHdzTVY4W5PYCrFOCeUCG07uyQ=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
        (envelope-from <andrew@lunn.ch>)
        id 1oPvAg-00EAh2-PH; Mon, 22 Aug 2022 02:20:02 +0200
Date:   Mon, 22 Aug 2022 02:20:02 +0200
From:   Andrew Lunn <andrew@lunn.ch>
To:     Rob Herring <robh@kernel.org>
Cc:     Device Tree <devicetree@vger.kernel.org>, arm-soc <arm@kernel.org>,
        Gregory Clement <gregory.clement@bootlin.com>
Subject: Re: [PATCH 05/11] DT: watchdog: Convert marvel.txt to YAML
Message-ID: <YwLLsj9gI6BVj9Vn@lunn.ch>
References: <20220820194804.3352415-1-andrew@lunn.ch>
 <20220820194804.3352415-6-andrew@lunn.ch>
 <1661113286.970140.1729162.nullmailer@robh.at.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1661113286.970140.1729162.nullmailer@robh.at.kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> watchdog-timer@20300: $nodename:0: 'watchdog-timer@20300' does not match '^watchdog(@.*|-[0-9a-f])?$'
> 	arch/arm/boot/dts/kirkwood-b3.dtb
> 	arch/arm/boot/dts/kirkwood-blackarmor-nas220.dtb

This is fixed in the next patch.

So far, i've been working on kirkwood. There are too many mvebu
platforms to convert them all at once to YAML, i have over 50 patches
with just kirkwood. So i expect there to be warnings for other SoC at
the moment. Once i have kirkwood finished, i will probably work on
orion5x and then armada-xp, and the other armada SoCs.

	Andrew
