Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8E1D4550DE1
	for <lists+devicetree@lfdr.de>; Mon, 20 Jun 2022 02:33:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236587AbiFTAdH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Jun 2022 20:33:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37790 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235135AbiFTAdF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Jun 2022 20:33:05 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E7FF6383
        for <devicetree@vger.kernel.org>; Sun, 19 Jun 2022 17:33:04 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id B9C56B80E04
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 00:33:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14A12C341C4;
        Mon, 20 Jun 2022 00:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1655685181;
        bh=g0qaZ0fG+LcYVwQHQPPp6bOUNsGpz4G400U0s6UVWWI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Cr67/ul2D8XIsA1PdJC3AuNL0JECSkzINKEgSDzArr4DO6btKuS/cyIm6M800u/wk
         4NwJoA9BbCWTPy90BaK8WUOYMGUnlDyyZWbkyvGR22yJXb6LQMLeZjnYPWoD+nX4W1
         D0QV73b0cFXw7j8NfYdV+saqj5hwcWrQ8jXwYgBsN0vVEqG2P3sRDQfRj4IYqqwhG8
         ByFBHcCeszrGtKSlpawttv3fpAz1/IIrSVnFVE9u7ybPdp4p8aYiZoD09TTVfUAkK7
         PQhLMKzakCjTXYZj+p+MFuoEqV5l12wywRAJtsoIbmxHG693sXtwSm15v6hlkf2kUp
         Gjpj6kzPYurcg==
Date:   Mon, 20 Jun 2022 08:32:55 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        francesco.dolcini@toradex.com, marcel.ziswiler@toradex.com,
        Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH v2] dt-bindings: arm: fsl: Decrease the line length
Message-ID: <20220620003255.GM254723@dragon>
References: <20220616170800.3218914-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220616170800.3218914-1-festevam@gmail.com>
X-Spam-Status: No, score=-7.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jun 16, 2022 at 02:08:00PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Decrease the line length of the toradex colibri boards to fix the
> following build warning:
> 
> ./Documentation/devicetree/bindings/arm/fsl.yaml:684:111: [warning]
> line too long (111 > 110 characters) (line-length)
> 
> The description already contains the SoM name, do not repeat it
> in every single line.
> 
> Fixes: bb0fa1533715 ("dt-bindings: arm: fsl: correct 1g vs. 1gb in toradex,colibri-imx6ull-*")
> Reported-by: Rob Herring <robh+dt@kernel.org>
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied, thanks!
