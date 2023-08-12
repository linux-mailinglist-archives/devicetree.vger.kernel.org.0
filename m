Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 03768779C5B
	for <lists+devicetree@lfdr.de>; Sat, 12 Aug 2023 03:45:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236021AbjHLBpm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Aug 2023 21:45:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55646 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229793AbjHLBpm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Aug 2023 21:45:42 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2DCB0170E
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 18:45:42 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id B7E3A602E5
        for <devicetree@vger.kernel.org>; Sat, 12 Aug 2023 01:45:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78166C433C8;
        Sat, 12 Aug 2023 01:45:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691804741;
        bh=vNkmzlI9L5jAASd0gE9YqwM9suAaQmBQ72FxIQsS+uA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=hk/5wiFAyUAffaCOE3Fyw4fUpAxrBVuNFXQel5VufXYJLMxmU9NTelg9do5lrXq2O
         yH0Uadd6aFun+uT7hc+B8qv51YFlPSI+wGxAu82jmrXxXhkNjdKcqp2JN/uou3j518
         ohxMFWCNpOtwAOZinCck/1iOW1+8Vb8nrmtJLVL8rDq52Yfes05cdG2Sef1un5JyG/
         QtQG60xX9/wnp4+0rFlQohRTdD4Qr8bQT1L9X6CdSDBf6XabrMzAFPHXMV4vwkDAIn
         Nqof/bw0CtQV3RvxmepdhpsIFiru7JzHSkAL+VP0zT4FIb/31rlxcAFO+KQK+Zey57
         epOvZkWxXva6g==
Date:   Sat, 12 Aug 2023 09:45:31 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/1] ARM: dts: imx6qdl: mba6: Fix gpio-keys button node
 names
Message-ID: <20230812014531.GG151430@dragon>
References: <20230810143727.1459152-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230810143727.1459152-1-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 10, 2023 at 04:37:27PM +0200, Alexander Stein wrote:
> Numbers are separated by dashes. Fixes the warnings:
> arch/arm/boot/dts/nxp/imx/imx6q-mba6a.dtb: gpio-buttons: 'button1',
>  'button2', 'button3' do not match any of the regexes:
>  '^(button|event|key|switch|(button|event|key|switch)-[a-z0-9-]+|[a-z0-9-]+-(button|event|key|switch))$', 'pinctrl-[0-9]+'
>  from schema $id: http://devicetree.org/schemas/input/gpio-keys.yaml#
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied, thanks!
