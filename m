Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5469359EBAF
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 21:01:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229580AbiHWS7n (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Aug 2022 14:59:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230169AbiHWS7N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Aug 2022 14:59:13 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10961BB93D
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 10:28:59 -0700 (PDT)
Received: from mail.denx.de (unknown [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: festevam@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 64D5982A4B;
        Tue, 23 Aug 2022 19:26:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1661275578;
        bh=77hv6QfEEawnoUlhW1JHg1lpvAEgStJrHdo6RdCQL0w=;
        h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
        b=FWPQGir7zUWa1WKQsX2eU3aQIWNWkUPLp6Vy1J2m7TO7o8L5JV3SU+lOCWjBCxZEu
         Mg1Uhdps9H6GmQQXArKa7Q3mDDVNy64GNopjX43LpoPFnwd3+K0btBAH8jpaQIvrcK
         nHVb3xhoWzt2z43zZNu/GpGf7Za6oJlWJ4+okp6n618Bx0poruLgmzNFKlp9ffm4Q8
         YAAn+yw0J6EIcMzMahTbMJ3ha5Nmh/YTT8l01XppowB+Jd8tg41fKKwB3bQYLlfHii
         wpS4pVKZPPPCa/IW1ewVh/d+E+ciBVJBno4TjguRnFVGY8wgo61og9G1ABXcRsNh3C
         j6EwRKQZ2hg8w==
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date:   Tue, 23 Aug 2022 14:26:18 -0300
From:   Fabio Estevam <festevam@denx.de>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: imx8mp: Add SNVS LPGPR
In-Reply-To: <20220823165602.275931-1-marex@denx.de>
References: <20220823165602.275931-1-marex@denx.de>
Message-ID: <12d92f17fca4f2895a5c71ea9ebeaa5f@denx.de>
X-Sender: festevam@denx.de
User-Agent: Roundcube Webmail/1.3.6
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/08/2022 13:56, Marek Vasut wrote:
> Add SNVS LPGPR bindings to MX8M Plus, the LPGPR is used to store
> e.g. boot counter.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>

Reviewed-by: Fabio Estevam <festevam@denx.de>
