Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7C78245894
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2019 11:26:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726958AbfFNJ0X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Jun 2019 05:26:23 -0400
Received: from gloria.sntech.de ([185.11.138.130]:37808 "EHLO gloria.sntech.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726530AbfFNJ0X (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 14 Jun 2019 05:26:23 -0400
Received: from we0305.dip.tu-dresden.de ([141.76.177.49] helo=phil.localnet)
        by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.89)
        (envelope-from <heiko@sntech.de>)
        id 1hbiTS-00043v-Aj; Fri, 14 Jun 2019 11:26:18 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     Peter Geis <pgwipeout@gmail.com>
Cc:     "Leonidas P. Papadakos" <papadakospan@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Jose Abreu <jose.abreu@synopsys.com>,
        Robin Murphy <robin.murphy@arm.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: set TX PBL for rk3328-roc-cc gmac
Date:   Fri, 14 Jun 2019 11:26:17 +0200
Message-ID: <1619091.6MGD9gV0do@phil>
In-Reply-To: <8ded737d-1fd5-3609-ca2e-cfeba63b2d95@gmail.com>
References: <20190417210059.26262-1-papadakospan@gmail.com> <1555938803.1241.1@gmail.com> <8ded737d-1fd5-3609-ca2e-cfeba63b2d95@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Am Donnerstag, 23. Mai 2019, 02:00:27 CEST schrieb Peter Geis:
> 
> On 4/22/2019 9:13 AM, Leonidas P. Papadakos wrote:
> > 
> > Indeed, at least with that first patch users won't have a crappy 
> > experience by default (ssh lags and the like)
> > 
> > 
> 
> I apologize for taking so long at this, but I wanted to make sure I had 
> it right.
> 
> So far I've found a few things that seem to help, and would like y'all 
> to test them when you get the chance.
> 
> Adding snps,aal (configures DMA for address alignment) appears to make a 
> massive improvement to stability, although the the snps,txpbl = <0x4> is 
> still necessary for this to work.
> 
> Second, I added snps,rxpbl = <0x4> as well, which seems to help with my 
> RX issues a bit.
> The biggest improvement with these two settings is more stable transmit 
> and receive.
> Currently I'm getting about 800mbps on tx and 400 mbps on rx.
> 
> Please test when you get the chance and provide feedback.

I have to confess I lost track of the multitude of patches touching
the gmac on rk3328 and their long mail threads in terms of which
to pick up and which are considered superseeded.

So I'd really appreciate if you could resend the patches that matter
and provide relevant Tested-by, Reviewed-by, etc tags from involved
people that actually were able to test patches

Thanks
Heiko


