Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9ED30639E47
	for <lists+devicetree@lfdr.de>; Mon, 28 Nov 2022 00:54:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229510AbiK0XyT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 27 Nov 2022 18:54:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229509AbiK0XyT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 27 Nov 2022 18:54:19 -0500
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net [217.70.183.193])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09692BC93
        for <devicetree@vger.kernel.org>; Sun, 27 Nov 2022 15:54:17 -0800 (PST)
Received: (Authenticated sender: gregory.clement@bootlin.com)
        by mail.gandi.net (Postfix) with ESMTPSA id EC411240002;
        Sun, 27 Nov 2022 23:54:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1669593256;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=bpe+eTSlDKpTyVgrlJZg4Jsg0Hq3NmOCWl1h1Dm5YQg=;
        b=ezRXWxJyyKWlsul4Z8h/C56wibHvKTjaGiOLJ7LyaLrl1g4tN0uei2yapJHoQqe6adllxA
        3TPsiJREo3aFwAXKGmwcS4rgcbQ0E5VVU4xGmJ3nWeLxW8r1K1lE79oWkhxr6Xzrf1OV6E
        SaOqu78Hf4wZ7qgCl3zfh5qqV+6Th5gDClLjw7GN2YCyx0LTlO4J2Eeeim9vsFfyfT32KT
        L+HMhaHLyYSNjCEkmJ5QYAjx/h/Q4jqPzCReu79pELBSS6JYztSvxqmLqL1IELrJolGK1Q
        1/4ksRNALbqUsW702ImvEGkaXHZa4wcdI3ScH/tkGVxIACfPYwhsr0T+BZZmHw==
From:   Gregory CLEMENT <gregory.clement@bootlin.com>
To:     Andrew Lunn <andrew@lunn.ch>,
        Pawel Dembicki <paweldembicki@gmail.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Adam Baker <linux@baker-net.org.uk>,
        Tony Dinh <mibodhi@gmail.com>
Subject: Re: [PATCH v2] ARM: dts: kirkwood: Add Zyxel NSA310S  board
In-Reply-To: <Y16QkdYlQ2W5drqw@lunn.ch>
References: <20221029205738.4187010-1-paweldembicki@gmail.com>
 <Y16QkdYlQ2W5drqw@lunn.ch>
Date:   Mon, 28 Nov 2022 00:54:14 +0100
Message-ID: <87bkos9cnt.fsf@BL-laptop>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Andrew Lunn <andrew@lunn.ch> writes:

>> +	ethphy0: ethernet-phy@1 {
>> +		reg = <1>;
>> +		phy-mode = "rgmii-id";
>> +		marvell,reg-init = <0x1 0x16 0x0 0x3>,
>> +						   <0x1 0x10 0x0 0x1017>,
>> +						   <0x1 0x11 0x0 0x4408>,
>> +						   <0x1 0x16 0x0 0x0>;
>
> The indention is wrong here.
>
> Otherwise
>
> Reviewed-by: Andrew Lunn <andrew@lunn.ch>
>
>     Andrew

Applied on mvebu/dt

I fixed the indentation while applying the patch.

Thanks,

Gregory

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com
