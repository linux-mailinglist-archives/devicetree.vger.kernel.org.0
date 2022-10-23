Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4771960929E
	for <lists+devicetree@lfdr.de>; Sun, 23 Oct 2022 14:21:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229782AbiJWMVt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Oct 2022 08:21:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229568AbiJWMVt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 23 Oct 2022 08:21:49 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40324688AD
        for <devicetree@vger.kernel.org>; Sun, 23 Oct 2022 05:21:48 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id D32DF601C0
        for <devicetree@vger.kernel.org>; Sun, 23 Oct 2022 12:21:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A860C433D6;
        Sun, 23 Oct 2022 12:21:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1666527707;
        bh=N3vGfo5jW9SpRORvUqYRIQrPFEcNR89XXTiACO9e9Uk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=TEWy2MoH8QZQRg8Kx5VyUx1RTNCKUleXXgQYAI/w48np8bJeiFtjPivvUJLENCndt
         JDlHueKv7ZMpGmuur1uswabvpjXnzEegxvwGt91kdcz0gl84o9COeFK9zyGpzOhTdU
         3uXWEAqprrf5VhhEFKz6pkdgjtoEVQdGw1cVE7p+U5S34AqQwsJZCzhmqFswoSMWyc
         +5meR91OohCw6CCquq37J84aFqSxeBzdsbwGoEB1YfHo/66EHf1d+bwbzuy0ED1Dbn
         zspdXGd1hfjwMzR7UIDLF9dxtIaoORUEDQU1GpZdCgsifZ0WDVrgSbE0ji31S+c5Nb
         adInUnSJ1+/ZA==
Date:   Sun, 23 Oct 2022 20:21:40 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/1] arm64: dts: tqma8mq-mba8mx: Add vcc supply to i2c
 eeproms
Message-ID: <20221023122140.GE125525@dragon>
References: <20220921070833.3106592-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220921070833.3106592-1-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-7.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 21, 2022 at 09:08:33AM +0200, Alexander Stein wrote:
> Fixes the warnings:
> at24 0-0053: supply vcc not found, using dummy regulator
> at24 0-0057: supply vcc not found, using dummy regulator
> at24 1-0057: supply vcc not found, using dummy regulator
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied, thanks!
