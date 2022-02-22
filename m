Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C59B24BEF9E
	for <lists+devicetree@lfdr.de>; Tue, 22 Feb 2022 03:43:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232017AbiBVC3G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Feb 2022 21:29:06 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:52836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229447AbiBVC3F (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Feb 2022 21:29:05 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0C8B25C5E
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 18:28:40 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 3B033614EC
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 02:28:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6435BC340E9;
        Tue, 22 Feb 2022 02:28:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1645496919;
        bh=S5RMH0nqYWm/DGxd+0faffd9R3jh0exe+sEoDdLZFaQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=INmVwRXbRxN6vVNCvhM5lmziqtRermWXJvB+LVL6+r/gozf7xrYxY+5mUDP4gus4e
         cPZz8hW9oGjfQy+VnHZrwn9RY+Kig8pYXvhIqOWlOUG3OXIwkgT861OSK0J2fmgjKz
         iKQC6ZWrvKjWQq9EDD+YdIiUfxtNIGq68evZwk5R045cQ7df+FAo1oIqDz0fFPJ7FR
         aEPe3JKgy/S62Wd38qypF7lPZa68Ihx5M1vHsN0uAzG9FpfLow2vwuQUGCX+VXZU2B
         mqipBqihGc1oaAzIJwm7j8un5OBgpJh8yTzM+UZrbIfNvtE1Y8Ws6CBtB1z5Zpw1oB
         PqCahUS63G+xA==
Date:   Tue, 22 Feb 2022 10:28:33 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 0/5] Support for TQMa6ULx & TQMa6ULxL modules
Message-ID: <20220222022833.GW2249@dragon>
References: <20220221160419.550640-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220221160419.550640-1-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Feb 21, 2022 at 05:04:14PM +0100, Alexander Stein wrote:
> Alexander Stein (4):
>   ARM: dts: imx6ul: add TQ-Systems MBa6ULx device trees
>   ARM: dts: imx6ul: add TQ-Systems MBa6ULxL device trees
>   ARM: dts: imx6ull: add TQ-Systems MBa6ULLx device trees
>   ARM: dts: imx6ull: add TQ-Systems MBa6ULLxL device trees
> 
> Matthias Schiffer (1):
>   dt-bindings: arm: fsl: add TQ Systems boards based on i.MX6UL(L)

Applied all, thanks!
