Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 43C3E141A50
	for <lists+devicetree@lfdr.de>; Sun, 19 Jan 2020 00:01:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727083AbgARXBx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 18 Jan 2020 18:01:53 -0500
Received: from gloria.sntech.de ([185.11.138.130]:40748 "EHLO gloria.sntech.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727008AbgARXBx (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 18 Jan 2020 18:01:53 -0500
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47] helo=phil.localnet)
        by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.89)
        (envelope-from <heiko@sntech.de>)
        id 1isx6F-0007IW-PK; Sun, 19 Jan 2020 00:01:51 +0100
From:   Heiko Stuebner <heiko@sntech.de>
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm: rockchip: dts: Kill off "simple-panel" compatibles
Date:   Sun, 19 Jan 2020 00:01:51 +0100
Message-ID: <11733187.XpjhTr9bNC@phil>
In-Reply-To: <20200117230851.25434-1-robh@kernel.org>
References: <20200117230851.25434-1-robh@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Samstag, 18. Januar 2020, 00:08:51 CET schrieb Rob Herring:
> "simple-panel" is a Linux driver and has never been an accepted upstream
> compatible string, so remove it.
> 
> Cc: Heiko Stuebner <heiko@sntech.de>
> Cc: linux-rockchip@lists.infradead.org
> Signed-off-by: Rob Herring <robh@kernel.org>

I've split this into arm32+arm64 variants and applied it for
maybe still 5.6

Thanks
Heiko


