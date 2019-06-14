Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 20267458ED
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2019 11:40:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727069AbfFNJkB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Jun 2019 05:40:01 -0400
Received: from gloria.sntech.de ([185.11.138.130]:38184 "EHLO gloria.sntech.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727044AbfFNJkB (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 14 Jun 2019 05:40:01 -0400
Received: from we0305.dip.tu-dresden.de ([141.76.177.49] helo=phil.localnet)
        by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.89)
        (envelope-from <heiko@sntech.de>)
        id 1hbige-0004BS-1j; Fri, 14 Jun 2019 11:39:56 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     Peter Geis <pgwipeout@gmail.com>
Cc:     "Leonidas P. Papadakos" <papadakospan@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Jose Abreu <jose.abreu@synopsys.com>,
        Robin Murphy <robin.murphy@arm.com>,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: improve rk3328-roc-cc rgmii performance.
Date:   Fri, 14 Jun 2019 11:39:55 +0200
Message-ID: <4025583.lUYsg5j2zl@phil>
In-Reply-To: <CAMdYzYorvWr1YhmFKaMQUCditjop5AZp4d1tO79XsVr7m7HrMw@mail.gmail.com>
References: <20190607123731.8737-1-pgwipeout@gmail.com> <1559912295.22520.0@gmail.com> <CAMdYzYorvWr1YhmFKaMQUCditjop5AZp4d1tO79XsVr7m7HrMw@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Samstag, 8. Juni 2019, 01:07:48 CEST schrieb Peter Geis:
> On Fri, Jun 7, 2019 at 8:58 AM Leonidas P. Papadakos
> <papadakospan@gmail.com> wrote:
> >
> >
> > I'll test on my board, but if in the end it does end up being a change
> > to both tx and rxpbl then we can replce the 2 tx/rxpbl options with
> > one, as far as I know:
> >
> > snps,pbl = <0x4>;
> >
> >
> 
> The big change was actually snps,aal.
> As per the TRM, DMA channels not address aligned have severe
> limitations, if they work at all.
> 
> Setting the DMA ops as address aligned fixed my 30mbps TX issue when
> combined with your snps,txpbl = <0x4>.

same as with the other patch: I've lost track of what matters,
so please resend the ones that matter with appropriate
Tested-by, Reviewed-by tags by involved people.

Thanks
Heiko



