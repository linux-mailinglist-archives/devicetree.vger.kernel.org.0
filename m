Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AABC77714FF
	for <lists+devicetree@lfdr.de>; Sun,  6 Aug 2023 14:23:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229661AbjHFMX0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 6 Aug 2023 08:23:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59956 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229573AbjHFMXZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 6 Aug 2023 08:23:25 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45F0583
        for <devicetree@vger.kernel.org>; Sun,  6 Aug 2023 05:23:24 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id B696F61073
        for <devicetree@vger.kernel.org>; Sun,  6 Aug 2023 12:23:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 431B0C433C7;
        Sun,  6 Aug 2023 12:23:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691324603;
        bh=eIbZ3zSaLY5Gm9kJeZvdauExxEKmSLGjpE2aKDFpFWQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=t3u4HuCZ02lsrrEYg6DDfwBs2BSlsH5sGPAceQcxSE5/zaWzThvzWodBj8lK8g82h
         bSTCIdE1Ohj2gtvlrt7h798gSHwTcNXSdZD8GhE+jcevDKGjVz8sA4t47dsf5zkBnS
         G4IwcIer0wlV/lNrdV+U9iiEpwCLuwA4cMOo3JC4DFA941IbXFxPhy4mk2IL1Cifhc
         DyGspjNmVAVmg8p0ZFAcRq0bbWbtuQjVRQJWV9H0I5sJ6DTiyFDRgKORdcDS1JR3HO
         MKPHBMRc4SB93TXa0kn1AL6FRSmoh6Bhp9KNRPpDRLJhZCyxmvzq0q2U7c3AXXHhuK
         F9C1x8FodJ/fw==
Date:   Sun, 6 Aug 2023 20:23:13 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH 1/3] ARM: dts: imx6q-cm-fx6: Remove invalid SPI flash
 entry
Message-ID: <20230806122313.GF151430@dragon>
References: <20230731133421.1499992-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230731133421.1499992-1-festevam@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 31, 2023 at 10:34:19AM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> "st,m25p" is not a valid compatible according to jedec,spi-nor.yaml.
> 
> Remove it.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied all, thanks!
