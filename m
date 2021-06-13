Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9C56C3A5992
	for <lists+devicetree@lfdr.de>; Sun, 13 Jun 2021 18:27:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231928AbhFMQ33 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 13 Jun 2021 12:29:29 -0400
Received: from gloria.sntech.de ([185.11.138.130]:58834 "EHLO gloria.sntech.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231902AbhFMQ33 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 13 Jun 2021 12:29:29 -0400
Received: from p508fc96c.dip0.t-ipconnect.de ([80.143.201.108] helo=phil.fritz.box)
        by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <heiko@sntech.de>)
        id 1lsSxK-0005DC-Cb; Sun, 13 Jun 2021 18:27:26 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     Rob Herring <robh+dt@kernel.org>,
        =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
Cc:     Heiko Stuebner <heiko@sntech.de>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add support for USB on helios64
Date:   Sun, 13 Jun 2021 18:27:22 +0200
Message-Id: <162360159829.3586115.1742671278980783598.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210611081414.1448786-1-uwe@kleine-koenig.org>
References: <20210611081414.1448786-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 11 Jun 2021 10:14:14 +0200, Uwe Kleine-König wrote:
> This enables the USB hardware needed to access devices on the sockets J1
> and J13.

Added the missing ";" and
Applied, thanks!

[1/1] arm64: dts: rockchip: Add support for USB on helios64
      commit: 51094deb330623a172b80f7f1cb43f2d6e165c4f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
