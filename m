Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3E1F4196CD
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2019 04:53:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726931AbfEJCxZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 May 2019 22:53:25 -0400
Received: from mail.kernel.org ([198.145.29.99]:57992 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726864AbfEJCxZ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 9 May 2019 22:53:25 -0400
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
        (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 6C8CB2182B;
        Fri, 10 May 2019 02:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1557456805;
        bh=yndtu6l2F2QVUpcWsd1U44NK1dKySqWeENOPnEkorBk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=w7R6Q8D1B80KXOCpDCuyqvyOwIr8Xy/Tfuq2FGhpJnsmcx6PJr3FcFJsjyjcUcxRo
         L5qPSog8XPgsd3m9P53XAM4hc30Fm52q0Q0O/oeBIcd0eRKzhUc4FxWZVY5oCIW2Fx
         JPZSfj4Jr2GMlZOEcnezn3V49hGEBQW6TBgm15B0=
Date:   Fri, 10 May 2019 10:53:03 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Wen He <wen.he_1@nxp.com>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Leo Li <leoyang.li@nxp.com>,
        "liviu.dudau@arm.com" <liviu.dudau@arm.com>
Subject: Re: [v4] arm64: dts: ls1028a: Add properties for Mali DP500 node
Message-ID: <20190510025302.GB15856@dragon>
References: <20190422101941.11335-1-wen.he_1@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190422101941.11335-1-wen.he_1@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Apr 22, 2019 at 10:18:10AM +0000, Wen He wrote:
> The LS1028A has a LCD controller and Displayport interface that
> connects to eDP and Displayport connectors on the LS1028A board.
> 
> This patch enables the LCD controller driver on the LS1028A.
> 
> Signed-off-by: Alison Wang <alison.wang@nxp.com>
> Signed-off-by: Wen He <wen.he_1@nxp.com>
> Reviewed-by: Liviu Dudau <liviu.dudau@arm.com>

Hi Wen,

The base64 encoding of the message makes it very difficult to apply the
patch.  I managed to apply it manually this time, but please do not use
base64 for future patch posting.

Shawn
