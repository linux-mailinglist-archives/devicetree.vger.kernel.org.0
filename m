Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7532F273A88
	for <lists+devicetree@lfdr.de>; Tue, 22 Sep 2020 08:11:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729067AbgIVGLw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Sep 2020 02:11:52 -0400
Received: from mail.kernel.org ([198.145.29.99]:59952 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726339AbgIVGLw (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 22 Sep 2020 02:11:52 -0400
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 899A823A34;
        Tue, 22 Sep 2020 06:11:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1600755111;
        bh=TpAaFBgFgvV02LuTs4DtNCWgrwul118bnShENMzhLCE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=sdCbo+4OOL7FCRMovIgagLIqqXsNct43KY4i+6zF6KgRPcODJ49b1KNwm1SbZcyUv
         roam35oTwLrj+rW9BPqbhuWmke26pZX0WVs6fUsnaR72cgtCD0RQHdEyr9SwOumq8L
         oj/Qnpt7JeQiyE9T/0ZiMvt0YUt8QuUcHqVJvX4E=
Date:   Tue, 22 Sep 2020 14:11:47 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Stefan Riedmueller <s.riedmueller@phytec.de>
Cc:     Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        Sascha Hauer <s.hauer@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: fsl: Add PHYTEC i.MX6 UL/ULL
 devicetree bindings
Message-ID: <20200922061146.GB25109@dragon>
References: <20200917083003.96352-1-s.riedmueller@phytec.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200917083003.96352-1-s.riedmueller@phytec.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Sep 17, 2020 at 10:30:02AM +0200, Stefan Riedmueller wrote:
> Add devicetree bindings for i.MX6 UL/ULL based phyCORE-i.MX6 UL/ULL and
> phyBOARD-Segin.
> 
> Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
> Reviewed-by: Rob Herring <robh@kernel.org>

Applied both, thanks.
