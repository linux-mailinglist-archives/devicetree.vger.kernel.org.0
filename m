Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E8426729C98
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 16:19:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240307AbjFIOTZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 10:19:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44982 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240817AbjFIOTA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 10:19:00 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9EC0135B5
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 07:18:59 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 33EB3616E0
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 14:18:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7AE53C433D2;
        Fri,  9 Jun 2023 14:18:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1686320338;
        bh=BB7LiOFQgunLaJE8vJ99OZDAz4X9HcvJP0AZr92vq/g=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=IxsA+kcatehlQ5Xq6Qza2Nt6d0iL0nLSDj5hDdMBF7oI+J/4gEfq//53pwoAhVt/w
         iC52PX52cHScO+DV+PBh/2mU8t3rMXqquMOzdhWTVrZBBRfaprYefs+gnRbuOXnMbh
         FF0TolShQd0dk91T1gt4tLlLj+fgUW0yHvIqY7RdefeL79mRZXke5fD472cvGCGW9U
         pUoml6lNzXAw7G8dzoaS9ZFSrLkNbW6J4fzzEkIYVFhhf0BCsUyisX+PR2f7rwMW57
         V87WKncPKe6qduNBvsfVS7s33Wcoo8AIjiugg27hOyBrUS7NmV24LRY9EBlTk+ap1P
         H6OVnAGsu8H+A==
Date:   Fri, 9 Jun 2023 22:18:40 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Nicolas Cavallari <nicolas.cavallari@green-communications.fr>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Tim Harvey <tharvey@gateworks.com>
Subject: Re: [PATCH] arm64: dts: imx8mm-venice: Fix GSC vdd_bat data size.
Message-ID: <20230609141840.GX4199@dragon>
References: <20230605090442.11316-1-nicolas.cavallari@green-communications.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230605090442.11316-1-nicolas.cavallari@green-communications.fr>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 05, 2023 at 11:04:42AM +0200, Nicolas Cavallari wrote:
> On these boards, vdd_bat is 16bit, not 24bit.  Reading them as 24bit
> values yield garbage values because of the additional byte, which is a
> configurable fan trippoint[1].
> 
> So set their mode to mode_voltage_16bit = 3 instead of
> mode_voltage_24bit = 1.
> 
> [1]: http://trac.gateworks.com/wiki/gsc#SystemTemperatureandVoltageMonitor
> 
> Only tested on GW7100.
> 
> Signed-off-by: Nicolas Cavallari <nicolas.cavallari@green-communications.fr>

Applied, thanks!
