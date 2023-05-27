Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2A5F3713377
	for <lists+devicetree@lfdr.de>; Sat, 27 May 2023 10:47:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229678AbjE0Irz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 May 2023 04:47:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55626 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229649AbjE0Irx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 27 May 2023 04:47:53 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C99BDEA
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 01:47:52 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 40A2F60EA2
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 08:47:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D8CDC433D2;
        Sat, 27 May 2023 08:47:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1685177271;
        bh=Qi+K9LYhVxqqtNnGwN0P2kIqIkJ6MP6FLK4EOYgSqgI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=t5lZgLEdRJrps9B9TJQmUw0kgeJeX8FRCy1bplLFRX1Bcyd7Us+WxSRA1oeRD9k6i
         HB82sXJ+3nRpZFdagX/zwHx0TU3U6xwleMYic+SGWty2eZgEGG9+TrMooswriaKhAA
         1BK44xNvzyHz7s7Yb9hGMdIAbx2wTrf7n+ffaimDQRG8s9aXriE3pxN+pDQcLC4S3z
         5OWMzNz+VihXeOaY62g37SSsCvSlVR1opU1to+Xfv4H/REc0Sbstz6OL5p91gpGxmo
         T3N9dQYJPlj01AyVYSDdm2jGQTtgje6nQt3gBrIgicZK07nMI8mWBR3NZ3P0Mvvtr5
         8DJ3xVmuBRXfw==
Date:   Sat, 27 May 2023 16:47:39 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/2] arm64: dts: imx8mp: Sort AIPS4 nodes
Message-ID: <20230527084739.GH528183@dragon>
References: <20230516081354.38868-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230516081354.38868-1-marex@denx.de>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 16, 2023 at 10:13:53AM +0200, Marek Vasut wrote:
> Sort AIPS4 nodes by node unit-address . No functional change .
> 
> Suggested-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> Signed-off-by: Marek Vasut <marex@denx.de>

Applied both, thanks!
