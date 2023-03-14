Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4B69A6B88EC
	for <lists+devicetree@lfdr.de>; Tue, 14 Mar 2023 04:21:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229540AbjCNDVh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Mar 2023 23:21:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40428 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229483AbjCNDVg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Mar 2023 23:21:36 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2F297F039
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 20:21:35 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 791CA615B3
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 03:21:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DBCADC433D2;
        Tue, 14 Mar 2023 03:21:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1678764094;
        bh=SMlCx62EAdWr1vMk3baCb/swZOaIpyWUsFTY0q4izoQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=VWovBdLGx9oJx6zBXjIi/2zb1KV2kKtyRgGC23JfkcI7kDLN99T6irRMxcUfiQmrL
         w8nbNzOSM7Poz5Fn2cCEoGb4ysiE++bCpyD5OGOB1cWP1v1csRQkLfN3wqDVDxbYDI
         aeEheHPZhx61habQC2sPQ4DQaNyMWEP98o+CaWbrEsPKKIlhOVHMlQDCBaO2FUOWP6
         VsxheWxduYpy4eowvoq8c7heLQdmXA72cIEEuOFeuL413RAhEVwDXDw+whsLjKzz4m
         0MhJWybIKvOlHQOOY5H/elDvi3WxFrLQxP3HrqWDRiRdm/t148u6NNW9Xy70x2sSs3
         iUYzCgcUviAlQ==
Date:   Tue, 14 Mar 2023 11:21:28 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/1] arm64: dts: imx93: Add FlexSPI support
Message-ID: <20230314032128.GM143566@dragon>
References: <20230228091757.381583-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230228091757.381583-1-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Feb 28, 2023 at 10:17:57AM +0100, Alexander Stein wrote:
> Add FlexSPI node for i.MX93.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied, thanks!
