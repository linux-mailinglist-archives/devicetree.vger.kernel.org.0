Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 25D7477A53
	for <lists+devicetree@lfdr.de>; Sat, 27 Jul 2019 17:38:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387770AbfG0Pio (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 Jul 2019 11:38:44 -0400
Received: from gloria.sntech.de ([185.11.138.130]:52740 "EHLO gloria.sntech.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2387673AbfG0Pio (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 27 Jul 2019 11:38:44 -0400
Received: from d57e23da.static.ziggozakelijk.nl ([213.126.35.218] helo=phil.localnet)
        by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.89)
        (envelope-from <heiko@sntech.de>)
        id 1hrOmP-0002WQ-1J; Sat, 27 Jul 2019 17:38:41 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     Krzysztof Kozlowski <krzk@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] ARM: dts: rockchip: Cleanup style around assignment operator
Date:   Sat, 27 Jul 2019 17:38:40 +0200
Message-ID: <3124198.T2BTvMcTHZ@phil>
In-Reply-To: <20190727142736.23188-1-krzk@kernel.org>
References: <20190727142736.23188-1-krzk@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Samstag, 27. Juli 2019, 16:27:35 CEST schrieb Krzysztof Kozlowski:
> Use a space before and after assignment operator to have consistent
> style.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

I've adapted the patch around recent chromebook display changes
(regarding veyron-chromebook.dtsi) and applied the result for 5.4

Thanks
Heiko


