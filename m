Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5D0E5713D4
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2019 10:22:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1733169AbfGWIWE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Jul 2019 04:22:04 -0400
Received: from mail.kernel.org ([198.145.29.99]:45252 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1733093AbfGWIWE (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 23 Jul 2019 04:22:04 -0400
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
        (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 9410A21BF6;
        Tue, 23 Jul 2019 08:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1563870123;
        bh=UEpHLw2BTW7NVSDa7sgWZdDQMF8+2ZePXFU/+YxVZEs=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=LgBqPWcUdCLSC/SsJMyE95XylurUiezBNzH6Hx9z5pjTQhpJelnGmJfwDKhC4TcQB
         i412Q4yyYDI1IK2lEPhKAkhz9q8p8K1noFLsjtAxaqYH0EEJtB06TgcSKirZTp4B+U
         gbvP303542GWWV31gOuhU/hZjiwNPxba/FoXhYYI=
Date:   Tue, 23 Jul 2019 16:21:34 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     fugang.duan@nxp.com
Cc:     festevam@gmail.com, daniel.baluta@gmail.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH arm64/dts 0/2] arm64: dts: imx8qxp: add lpuart ports
Message-ID: <20190723082133.GR15632@dragon>
References: <20190722082824.15022-1-fugang.duan@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190722082824.15022-1-fugang.duan@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 22, 2019 at 04:28:22PM +0800, fugang.duan@nxp.com wrote:
> From: Fugang Duan <fugang.duan@nxp.com>
> 
> Add lpuart baud clock and add serial alias for imx8qxp lpuart ports,
> to let lpuart work on imx8qxp platform.
> 
> V2:
> - separate v1 patch to two patches, one is to add baud clock,
>   the other is to add serial alias property.
> 
> Fugang Duan (2):
>   arm64: dts: imx8qxp: add lpuart baud clock
>   arm64: dts: imx8qxp: add serial alias

Applied both, thanks.
