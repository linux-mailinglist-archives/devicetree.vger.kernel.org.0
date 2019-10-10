Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 15F8ED3365
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2019 23:28:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726913AbfJJV2B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Oct 2019 17:28:01 -0400
Received: from gloria.sntech.de ([185.11.138.130]:33752 "EHLO gloria.sntech.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725867AbfJJV2B (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 10 Oct 2019 17:28:01 -0400
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102] helo=phil.localnet)
        by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.89)
        (envelope-from <heiko@sntech.de>)
        id 1iIfyZ-0007AU-TP; Thu, 10 Oct 2019 23:27:59 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     Robin Murphy <robin.murphy@arm.com>
Cc:     devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Enable nanopi4 HDMI audio
Date:   Thu, 10 Oct 2019 23:27:59 +0200
Message-ID: <16038581.NyrPi82bol@phil>
In-Reply-To: <7fe6e94e4b9f5986f19f2637b7b716f0cb54de1b.1570444701.git.robin.murphy@arm.com>
References: <7fe6e94e4b9f5986f19f2637b7b716f0cb54de1b.1570444701.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Montag, 7. Oktober 2019, 13:33:25 CEST schrieb Robin Murphy:
> All the nanopi4 boards have HDMI, so let them make noise on it.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>

applied for 5.5

Thanks
Heiko


