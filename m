Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1EF4972168A
	for <lists+devicetree@lfdr.de>; Sun,  4 Jun 2023 14:03:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231205AbjFDMDR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 4 Jun 2023 08:03:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231127AbjFDMDR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 4 Jun 2023 08:03:17 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50E2CA4
        for <devicetree@vger.kernel.org>; Sun,  4 Jun 2023 05:03:16 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id D87C960F19
        for <devicetree@vger.kernel.org>; Sun,  4 Jun 2023 12:03:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 15148C4339B;
        Sun,  4 Jun 2023 12:03:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1685880195;
        bh=IQcV2if04xatxyfzgrFP7KkZT1gDiIEvaqTmP3tMgrY=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=m2eYUtFMD4v+X0QsJNKyhlUkkeiXFjPVkpEBSXj1k2dXtjKFLFIb3KxYnjk7HFDT4
         vkQXNndG27M7KaaxRmZnggkoiY9Q/VR/mDFv0x1CGxFDyf+z+TMB0I2mBeFfzhFNvH
         BWcPpKo1g0lAglbw44ETk8oMpUnJzIl5+K8n0Nx91Gq7vpgrael8KrR4TjinMyQ+WF
         q1qenKUOkW96UBSk2d4IPfyrUotUnvxjImnT7fqkd9DmmYfbO0aU5WoKlElZxgaDLK
         LwqK3+u7CtWURUxH9IkuyWauQRDRQcNgpST4ph55spbOGAtPl2V1abftJ3IUpzuaT2
         V3wz4YJjiRbYg==
Date:   Sun, 4 Jun 2023 20:03:03 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Markus Niebel <Markus.Niebel@ew.tq-group.com>,
        Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/1] ARM: dts: imx6qdl-mba6: add mac address for USB
 ethernet controller
Message-ID: <20230604120303.GB4199@dragon>
References: <20230515054429.14736-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230515054429.14736-1-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 15, 2023 at 07:44:29AM +0200, Alexander Stein wrote:
> The mac address is stored in mainboard eeprom.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied, thanks!
