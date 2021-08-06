Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 484753E2993
	for <lists+devicetree@lfdr.de>; Fri,  6 Aug 2021 13:30:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245362AbhHFLaV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Aug 2021 07:30:21 -0400
Received: from mail.kernel.org ([198.145.29.99]:53652 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S245319AbhHFLaV (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 6 Aug 2021 07:30:21 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id D714A611C6;
        Fri,  6 Aug 2021 11:30:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1628249405;
        bh=FcT2xJBSN0T8Ttxc3qVQ1psmULISk+/U4hxJSH+FWbg=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=LZvc8ssJJoNesJQroIGALuKZMMVll7QYZjgDhfyZYaqd6E+bpxjAVMHjQGx5xkOln
         jAtU4zp63AKst43Y+Wok+92GD3Z15cDI70nfxPoga01sOw7NDXLEQD2qIMUOWelBjS
         /kyh570Wn6aIbPom2LivMZCCekEQEdCdTxHPDLDKs9ba7Tz0mPiCfoxV1W2WOOJM9o
         76QAu+YLlIsX4FcMxIu1Q/2/sJOe/sGjqLZ161XjfESaWktUMEDIb4KvbBf36uZ9Z1
         ne8HZTcqtiytdjwpwXZzxx3l8WZMD5T1knDtbaGKrWhtoGceooiFqZOiy0nCzFdQtb
         fcqwJbWNS6mmg==
Date:   Fri, 6 Aug 2021 17:00:01 +0530
From:   Vinod Koul <vkoul@kernel.org>
To:     Dong Aisheng <aisheng.dong@nxp.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-imx@nxp.com, kernel@pengutronix.de, dongas86@gmail.com,
        robh+dt@kernel.org, shawnguo@kernel.org,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Li Jun <jun.li@nxp.com>, linux-phy@lists.infradead.org
Subject: Re: [PATCH 4/7] dt-bindings: phy: imx8mq-usb-phy: convert to json
 schema
Message-ID: <YQ0dOQteW4/2MPfZ@matsya>
References: <20210715082536.1882077-1-aisheng.dong@nxp.com>
 <20210715082536.1882077-5-aisheng.dong@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210715082536.1882077-5-aisheng.dong@nxp.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15-07-21, 16:25, Dong Aisheng wrote:
> Convert to jason schema.

Applied, thanks

-- 
~Vinod
