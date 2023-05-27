Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A11B07134EE
	for <lists+devicetree@lfdr.de>; Sat, 27 May 2023 15:13:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230137AbjE0NNS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 May 2023 09:13:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55700 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229571AbjE0NNR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 27 May 2023 09:13:17 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C493A8
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 06:13:16 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 1B4A661B9D
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 13:13:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2C615C433D2;
        Sat, 27 May 2023 13:13:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1685193195;
        bh=z68jI++OBWrpDEPHWE3J8WhbvfkrAg2IZjzJFU6NG3I=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=D58lMBYT8IAtOQoA6fBK+kPsCDTyhglRMiFRGi0Amr/ZeDyZXTf+oq/20zK9oONGe
         q87NjKjFzRo26+ooyYZlLf2cVL/Dr3LTArmAHOduwCxLy7rJurb8ci9G375yIai9L2
         ifvwNwYy2sKPW8becxbo/ulc/W4dZ7fyZDJCeo8Yjm7spZ1tjGpIYioVkEm8O9O+cx
         0Xe2aa3WbzCjP7AmrioJclZBpMO7oiYY+xsEt67xIv+3GtNRli652L4VKdCQw1pKQS
         I7F4mNN0QXW+dygg6rlnyEOhP1Qm5YNZitWZShsLWE2Qk4Fix/J63lqYS5xHEYxCzZ
         cxUy2XDF93N1g==
Date:   Sat, 27 May 2023 21:12:57 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH 1/2] ARM: dts: imx35: Remove invalid wdog property
Message-ID: <20230527131257.GA560301@dragon>
References: <20230524224625.431182-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230524224625.431182-1-festevam@gmail.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 24, 2023 at 07:46:24PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> The 'clock-names' property is not a valid property for wdog.
> 
> Remove it to fix the following DT check warning:
> 
> watchdog@53fdc000: Unevaluated properties are not allowed ('clock-names' was unexpected)
> From schema: Documentation/devicetree/bindings/watchdog/fsl-imx-wdt.yaml
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied both, thanks!
