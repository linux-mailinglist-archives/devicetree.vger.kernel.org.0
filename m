Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 499D2713F4
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2019 10:27:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728275AbfGWI1R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Jul 2019 04:27:17 -0400
Received: from mail.kernel.org ([198.145.29.99]:47648 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728083AbfGWI1R (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 23 Jul 2019 04:27:17 -0400
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
        (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 17A9621BF6;
        Tue, 23 Jul 2019 08:27:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1563870436;
        bh=SnqOIbK+0rIhgQ2hnfks3pxqj4Sta5RlGjVJ91yq/Mc=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=RV1zQGx1yAJtbhwK+SsK9ysJpcTBzo+KRFapT1sPbS4zVFebBSrYEU8MzxTK/IBRA
         h34tBrG/pjU115ZB48hzGHCZoo1YwhXywm6R6pVrUZTUtEyAKk76y90AH/Y2b5nM7P
         C23cAMaDwCzFdye3dxB/fLJHYLbhb+y9X0Uyzc+w=
Date:   Tue, 23 Jul 2019 16:26:49 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Ioana Ciornei <ioana.ciornei@nxp.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        leoyang.li@nxp.com
Subject: Re: [PATCH v3] arm64: dts: add the console node for DPAA2 platforms
Message-ID: <20190723082648.GT15632@dragon>
References: <1563791443-26372-1-git-send-email-ioana.ciornei@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1563791443-26372-1-git-send-email-ioana.ciornei@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 22, 2019 at 01:30:43PM +0300, Ioana Ciornei wrote:
> Add the console device tree node for the following
> DPAA2 based platforms: LS1088A, LS2080A, LS2088A and LX2160A.
> 
> Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>

Applied, thanks.
