Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C6AFC7216BC
	for <lists+devicetree@lfdr.de>; Sun,  4 Jun 2023 14:13:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229758AbjFDMNc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 4 Jun 2023 08:13:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43636 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231807AbjFDMN3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 4 Jun 2023 08:13:29 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 993BDDA
        for <devicetree@vger.kernel.org>; Sun,  4 Jun 2023 05:13:28 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 2CC7460E9F
        for <devicetree@vger.kernel.org>; Sun,  4 Jun 2023 12:13:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8A95CC433D2;
        Sun,  4 Jun 2023 12:13:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1685880807;
        bh=hD15zVzKXg/AsfbWAO0CDq9D444jqxyXyKYev0GI0yk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=jDu0guKZV7Y6xoBfLuVujlwzAfjlw5LcGa1PL/sNrG4AJhpmloeZSZ5569ayHELK/
         U02Qo4eTtqqxRu1VB9eJr3C9+/Bz8sBqGCyu9IxTOYngm90c+ozaOH7kbm5tOJ7OP+
         aG6ZW3P5X3Zh6jNrdQ/jpL6ZeqkrWRbEVO/sxXN5nZZKWHtUEwon1oVewUNm2XZwf2
         mKN1cP5yMfusgB1QNqnRrTVzbzd/s/FAIPPqLC5kePuJyTV401LxizFWoFkX2qFdJE
         sfFdIj8rA/cgsaJIRU3Jv6QkAm2Aor02QZQdjgWp7yLlNsrr3/aIDaNr9tCAsK4XZn
         ESLBC6iis+iug==
Date:   Sun, 4 Jun 2023 20:13:16 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH v2 1/2] ARM: dts: imx7d-sdb: Describe the SD card
 regulator
Message-ID: <20230604121316.GD4199@dragon>
References: <20230527160634.345195-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230527160634.345195-1-festevam@gmail.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, May 27, 2023 at 01:06:33PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Improve the devicetree description by adding the SD card regulator
> that is controlled via GPIO5_2.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied both, thanks!
