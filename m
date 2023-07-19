Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 84B83758EF6
	for <lists+devicetree@lfdr.de>; Wed, 19 Jul 2023 09:27:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229657AbjGSH1i (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jul 2023 03:27:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229522AbjGSH1h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Jul 2023 03:27:37 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B4A1A4
        for <devicetree@vger.kernel.org>; Wed, 19 Jul 2023 00:27:37 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id CC80E60F07
        for <devicetree@vger.kernel.org>; Wed, 19 Jul 2023 07:27:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3CED0C433C7;
        Wed, 19 Jul 2023 07:27:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689751656;
        bh=2mX4U33tDxKd1oukes/SvtbcyCBXKwkyKcdn0h51s98=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Qs12MS+GB2zKUp5yxBEmEEfdW4vc6ZHI9DJUYcJmUVNyfAbRh5J1uIl5MiYq/AlOo
         WOhgfJvNiLROjnUp6WM3FbI3UBzF/49hr5fq6VOJEUm8nsV0q4+tFmAybv5PfCgm2/
         +Hr7EYIB9mcEcw5jacOu3tXLM+h/cZt2OjnBpVApPkksP27yvPISmjBIOpmy0sLfu0
         dxDRQAPnW/IIaA7H5L8AtLOzq5zasddkYeoI30X9Bj+2RnsRfQW/V4ct8cSZN8NSvC
         ZFgHyKvKdaVHko8EVJKqRH7WJYkJ1k60EEbJVSFSyDV+cjUauLjREOm5U08HCEX3bT
         B7AqiM39se5ww==
Date:   Wed, 19 Jul 2023 15:27:25 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/1] ARM: dts: imx6qdl-mba6: Add missing supply
 regulator for lm75 and at24
Message-ID: <20230719072725.GJ151430@dragon>
References: <20230717085438.408194-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230717085438.408194-1-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 17, 2023 at 10:54:38AM +0200, Alexander Stein wrote:
> Fixes the warnings:
> at24 0-0057: supply vcc not found, using dummy regulator
> lm75 0-0049: supply vs not found, using dummy regulator
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied, thanks!
