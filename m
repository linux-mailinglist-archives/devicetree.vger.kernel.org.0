Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A43C47216E3
	for <lists+devicetree@lfdr.de>; Sun,  4 Jun 2023 14:24:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229966AbjFDMYa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 4 Jun 2023 08:24:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229904AbjFDMYa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 4 Jun 2023 08:24:30 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B78383
        for <devicetree@vger.kernel.org>; Sun,  4 Jun 2023 05:24:29 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id F3C1D60CF9
        for <devicetree@vger.kernel.org>; Sun,  4 Jun 2023 12:24:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CCE26C433D2;
        Sun,  4 Jun 2023 12:24:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1685881468;
        bh=6MfPx+FKo46JAPleYBzGAsBqqj0ybhGGAlZ9f1Za61E=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=DrWw8LZ2TYpzMMBLFKYoTQ2XmfADwwaf7NXuqr2dQxmXhRcYEPSIcTwOdbl99NN9e
         ZetPYRgYeZVFqBROlAKqW/fC5xJ0X/P1R+MxpEMi7+unVvRtCDIHVYN0yMxMJ58QtL
         c3qJJLPwE3gJW+Y6Yuuxxi47sCfNb3aBdPOzzpbQsK9O9z2kZn81cdYhHwWs10TQea
         e7bIy5u6xW1rbG40gLEfaDAN9vwyT8/hyb+xGcreNi1dyehY4ByPIRzMg+7ZUyTfI+
         gROMxUVeoqP3q43g4xpaF/t7XaYPujPfS4L0NriKwl+2m9Owg9L4tJC0JJTLGM5Hm0
         SKkOnJfRxe6Kg==
Date:   Sun, 4 Jun 2023 20:24:18 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH v2 3/3] ARM: dts: imx6ul-ccimx6ulsom: Fix the "coin"
 regulator name
Message-ID: <20230604122418.GG4199@dragon>
References: <20230527205048.418360-1-festevam@gmail.com>
 <20230527205048.418360-3-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230527205048.418360-3-festevam@gmail.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, May 27, 2023 at 05:50:48PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> As documented in pfuze100.yaml, the correct name for the regulator is
> "coin", so change it to fix the following DT check warning:
> 
> imx6ul-ccimx6ulsbcexpress.dtb: pmic@8: regulators: 'vcoin' does not match any of the regexes:
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied, thanks!
