Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 979B67134EC
	for <lists+devicetree@lfdr.de>; Sat, 27 May 2023 15:10:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232656AbjE0NKJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 May 2023 09:10:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232398AbjE0NKG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 27 May 2023 09:10:06 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D84510E
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 06:10:06 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id A27F460BB1
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 13:10:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D29ADC433D2;
        Sat, 27 May 2023 13:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1685193005;
        bh=9q69MCQd8iPRKZ4FvF0ABJ5leH/Hpx/8XIYVT2i0oN0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=GiGX3YCEQrcneYELKxl2PX2dO8ZpTjreX7uEjZqkWchqSdl5F8ZGGI3O+rjYF5vxi
         AdMfy9OfZmyOQKMiDh0JIj8AFaTU6C9kYghEMo54ySfAcM1D7bqCBtv5rbq/KXrDc7
         +kqrRj7lTzLwzGx3qzFJs2zJpVaiSY5mBKSzDjC3ZUbZZwrGOBqFNs/pBQEm45hUsp
         KP/KfHztlvRO1CCuwTWu8eoac24yRYoIHx8Nlz7yxU2y7rPbcSrB+QPGdZ2aGpDmo4
         nAXy5ye3k8hTOLORI4bclfo2XcKcHs88VIB3mtrH8UlGq7+E09mN/3OyfEOwP55Rm8
         sq4FFkDra9iow==
Date:   Sat, 27 May 2023 21:09:47 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        inux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH] ARM: dts: imx7d-flex-concentrator: Remove invalid ecspi
 property
Message-ID: <20230527130947.GA528183@dragon>
References: <20230524223440.408404-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230524223440.408404-1-festevam@gmail.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 24, 2023 at 07:34:40PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> The 'num-chipselects' property is not a valid property for ecspi.
> 
> Remove it to fix the following DT check warning:
> 
> spi@30630000: Unevaluated properties are not allowed ('num-chipselects' was unexpected)
> From schema: Documentation/devicetree/bindings/spi/fsl-imx-cspi.yaml
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied, thanks!
