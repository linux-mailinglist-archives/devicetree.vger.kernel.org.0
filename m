Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1F97B7216E2
	for <lists+devicetree@lfdr.de>; Sun,  4 Jun 2023 14:23:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229776AbjFDMXo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 4 Jun 2023 08:23:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230092AbjFDMXn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 4 Jun 2023 08:23:43 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 026DCCA
        for <devicetree@vger.kernel.org>; Sun,  4 Jun 2023 05:23:43 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 925D860CF9
        for <devicetree@vger.kernel.org>; Sun,  4 Jun 2023 12:23:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CC9E8C433D2;
        Sun,  4 Jun 2023 12:23:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1685881421;
        bh=vzN3hHKCiKxDRt7GZ4IlizT+MInbsokw5hqnju7Eac8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=vH2nE3WrhG0ahA3V6eH9ICS8MEQbBU944o/Sx3PGgncr72cCt49uZKuhvOsU9rpZV
         YwPpa2j6oeVYxe3vt05uul6ZhHeO+4VJQuMuaoC3JEaTsYp6fxYsir7PYBLnRAjedF
         FNR+AnczYZ65DEM7+4s0DBOlxwubS9FNrPJvKAv01aPWZdk7/rWj6I9Zxp/9scvA1B
         DukDmjKvAi4hOp9QT7fa4WrSZBj16dFx3SZI8t7Ak6U2YoK6/qnO4BnTXKRLubhf0d
         NPlzoeGhgG9MbvZbDEjbW9TdKdNApM0wL8RudejXRIUO3Br0EISQ3ZLF1t/n8E1mvq
         Pxbi05liqI0TQ==
Date:   Sun, 4 Jun 2023 20:23:30 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH v2 2/3] ARM: dts: imx: Use 'pmic' as node name
Message-ID: <20230604122330.GF4199@dragon>
References: <20230527205048.418360-1-festevam@gmail.com>
 <20230527205048.418360-2-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230527205048.418360-2-festevam@gmail.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, May 27, 2023 at 05:50:47PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Devicetree node names should be generic. Use 'pmic' as node name
> to avoid devicetree check warning from pfuze100.yaml.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied, thanks!
