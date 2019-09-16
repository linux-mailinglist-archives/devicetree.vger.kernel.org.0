Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5DB9DB394B
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2019 13:26:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730969AbfIPL0y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Sep 2019 07:26:54 -0400
Received: from mail-ed1-f67.google.com ([209.85.208.67]:40599 "EHLO
        mail-ed1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725971AbfIPL0y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Sep 2019 07:26:54 -0400
Received: by mail-ed1-f67.google.com with SMTP id v38so32743820edm.7
        for <devicetree@vger.kernel.org>; Mon, 16 Sep 2019 04:26:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=+fK6Wp6Chr3W3LdwK3sHJlbFClJr2sTjHhperAy44lM=;
        b=jxTaAc3pOi/Q5KpsOBSSsEOApF27/xLVLOWnpdZtozTP7yLdezgZWUW4nQ8e9mCQ6W
         exLBlK46mka7M5VAiKsreg+o1K7EiA66YlsPfnd/UfkYx3LoXUw+IApuap3tq29r4coT
         BbYF/9ia4BEimBz6rrtcyeXUd50pONvdvUlKm/1Xix7qSzeD/E6IOpEKYx70Fk04TqkZ
         NNPgTgj2L30X55YTTGxPDCNiN5qOYeHUdFZXFz4gFjP9CdgzzA070TkWnwNcI57YVkTn
         SzHyy6CXOqYEUqRg62ee7K+nhwpsMJykiBlOZEvFHHiU21S8+5p49pMxSdgd3EAHo4VQ
         auHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=+fK6Wp6Chr3W3LdwK3sHJlbFClJr2sTjHhperAy44lM=;
        b=l4jTNIUXqOfhBZS20/YKq6/+CSIkV+VXgf/gy6CJYyEh5Jg7rHzQmA1s6A4zsmfBqF
         uemfVQAtjeAitw7veoGjXADrmvwADCqTeSV6TOzcmKXMwmUdxoFP0SMxvOmE6m8O7Ww8
         ChH1JIoh3dUN8xqk4hUOXaCt4yUYe1wbHm07otwpMwy5J15YIFzDJ1dmxdqEojenchIa
         VdiyuhRBN2FeOUCzTJ46lhTAqwzQxBtLQ967OPtAWXf8T3Dd/qNAAh3nrL1wMfp1pOzX
         Q9+BfmuCCsv6R3ZBkfFdihiqobje1uewBj2NvWy47yqb7PlSebLVvcBG/NJBdgmmGcnn
         +Ttw==
X-Gm-Message-State: APjAAAVLfhIEtTNLCPMCT82CbaQoZNpBA5D6D1O1OZfklA3HS51LYyVn
        JZsLYpq36k0pPLvUv9cLGnU=
X-Google-Smtp-Source: APXvYqzIQglWMTFsOfQxg+7tDxOq20k1S/HL66P0fgfg5ff7WsOMGGmM03Mq9AjDmEb61RTIq5JwMg==
X-Received: by 2002:a17:906:f82:: with SMTP id q2mr994093ejj.143.1568633210935;
        Mon, 16 Sep 2019 04:26:50 -0700 (PDT)
Received: from localhost ([193.47.161.132])
        by smtp.gmail.com with ESMTPSA id bq18sm4279161ejb.84.2019.09.16.04.26.50
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 16 Sep 2019 04:26:50 -0700 (PDT)
Date:   Mon, 16 Sep 2019 13:22:28 +0200
From:   Oliver Graute <oliver.graute@gmail.com>
To:     Aisheng Dong <aisheng.dong@nxp.com>
Cc:     "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "dongas86@gmail.com" <dongas86@gmail.com>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        Fabio Estevam <fabio.estevam@nxp.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
        "will.deacon@arm.com" <will.deacon@arm.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        dl-linux-imx <linux-imx@nxp.com>
Subject: Re: [PATCH V3 00/15] arm64: dts: imx8: architecture improvement and
 adding imx8qm support
Message-ID: <20190916112228.GE16292@optiplex>
References: <1568302252-28066-1-git-send-email-aisheng.dong@nxp.com>
 <20190913121608.GD16292@optiplex>
 <AM0PR04MB42117BD6A60E4FEA1456954080B30@AM0PR04MB4211.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <AM0PR04MB42117BD6A60E4FEA1456954080B30@AM0PR04MB4211.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/09/19, Aisheng Dong wrote:
> > From: Oliver Graute <oliver.graute@gmail.com>
> > Sent: Friday, September 13, 2019 8:16 PM
> > 
> > On 12/09/19, Dong Aisheng wrote:
> > > IMX SCU based platforms (e.g. MX8QM/MX8QXP) are comprised of a
> > number
> > > of SS (Subsystems), those SS may be shared between different SoCs
> > > while most of them can be reused like Devices Resources, Clocks, Power
> > domains and etc.
> > >
> > > This patch series aims to improve the MX8 architecture to comply with
> > > the HW design to save a lot of duplicated codes and benefits us a
> > > better maintainability and scalability in the future.
> > >
> > > This patch series depends on another clk new binding series:
> > > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatc
> > >
> > hwork.kernel.org%2Fcover%2F11046287%2F&amp;data=02%7C01%7Caishen
> > g.dong
> > > %40nxp.com%7C2dffe4b2a0734c5a031408d738447876%7C686ea1d3bc2b
> > 4c6fa92cd9
> > >
> > 9c5c301635%7C0%7C1%7C637039739035971290&amp;sdata=JsAy8vUkkCp
> > n5HYh79oC
> > > vekH3SJAICg7VQnLMP01O3c%3D&amp;reserved=0
> > 
> > Thx for your update of this patch series. I'am running into the issue that my
> > linux next-20190904 unfortunately is not booting with it on my imx8QM
> > board. Kernel is just stuck during boot see below.
> > 
> > I applied your v5 of your clock binding patches series and applied this series in
> > v3. Your former two patch series worked well with next-20190716.
> > 
> > The last messages from the kernel are:
> > 
> > [    1.019208] imx-scu scu: mbox_request_channel_byname() could not
> > locate channel named "gip3"
> > [    1.027316] imx-scu scu: failed to request mbox chan gip3, ret -22
> > [    1.033480] imx-scu scu: failed to enable general irq channel: -22
> > [    1.039646] imx-scu scu: NXP i.MX SCU Initialized
> > [    1.047414] a35_clk: failed to get clock rate -22
> > [    1.058682]  lcd0-pwm0: failed to power up resource 188 ret -22
> > [    1.064314] imx-scu-clk: probe of pwm_clk failed with error -22
> > [    1.070538]  lcd0: failed to power up resource 187 ret -22
> > [    1.075690] imx-scu-clk: probe of lcd_clk failed with error -22
> > [    1.085965] mipi_csi0_core_clk: failed to attached the power domain -2
> > [    1.092359] mipi_csi0_esc_clk: failed to attached the power domain -2
> > [    1.098777] mipi_csi0_i2c0_clk: failed to attached the power domain -2
> > [    1.105278] mipi_csi0_pwm0_clk: failed to attached the power domain -2
> > [    1.115744] imx8qm-pinctrl scu:pinctrl: initialized IMX pinctrl driver
> > [    1.123923] gpio-mxc 5d080000.gpio: IRQ index 1 not found
> > [    1.130276] gpio-mxc 5d090000.gpio: IRQ index 1 not found
> > 
> > I see similar messages also with your older working patches, only the last two
> > lines are new errors.
> > 
> 
> Those warnings are because we are still missing some domains added into the
> pd driver support, it does not block the booting.
> 
> But I did miss to send another power domain patch to avoid gate of console domain
> which may result in the console hang.

Thx. This patch indeed solved my problem. So now its booting with
next-20190904 and your patch series.

Best regards,

Oliver
