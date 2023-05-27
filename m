Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 61E16713372
	for <lists+devicetree@lfdr.de>; Sat, 27 May 2023 10:42:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230415AbjE0ImM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 May 2023 04:42:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229649AbjE0ImL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 27 May 2023 04:42:11 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 757A4E3
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 01:42:10 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 11B456112E
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 08:42:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03887C433D2;
        Sat, 27 May 2023 08:42:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1685176929;
        bh=KuQ7A+JeQKdIwEpeUX/JiotmCcyJUhXdYHb+5XzazBQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=FdCfQP4ZifURdoZugMnw5/EjTPTZIrcboesD6gXGv/jp9IzubHqr4TiU401f2I6Sp
         3UewCaEAvdE6gkFL16U2viazwIWkPRd/tZPD+mOUd3bPCnrmb7QYm2XEHLM3qTOik5
         I61r3Y01hE+ALdPpWMBLLUJD0u3TWXXfeEGGqVZ7rRiijwW+9ykrIStv8A6Z8gM+Dr
         GdSwibsv/9oMozw6RXFaJCuOwRgIoGYZvltgiw+csDipfOI+wDfhKgUl5snnxGwP4L
         Ep6Q483SfQ5IdHmZK2yFWfiBqd8ion1aZcjqku4Jw1Gal0Yczs1/uXR8LyU0j7V+AO
         hO3qRXDPLmDlA==
Date:   Sat, 27 May 2023 16:41:56 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>, linux@ew.tq-group.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/1] arm64: dts: imx8mp: Add analog audio output on
 i.MX8MP TQMa8MPxL/MBa8MPxL
Message-ID: <20230527084156.GG528183@dragon>
References: <20230516080420.426951-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230516080420.426951-1-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 16, 2023 at 10:04:20AM +0200, Alexander Stein wrote:
> Enable SAI3, add the codec and pinctrl nodes to enable audio support
> on MBa8MPxL.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied, thanks!
