Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 943F959B729
	for <lists+devicetree@lfdr.de>; Mon, 22 Aug 2022 03:15:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232064AbiHVBNX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 21 Aug 2022 21:13:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39524 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229948AbiHVBNW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 21 Aug 2022 21:13:22 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B74C26E7
        for <devicetree@vger.kernel.org>; Sun, 21 Aug 2022 18:13:19 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id BB5FCB80E6E
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 01:13:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51684C433C1;
        Mon, 22 Aug 2022 01:13:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1661130796;
        bh=I9mXD3uMfZHbykChNzgWDkjqlgirWqf5XAFyDX51b7E=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=LdasMOwznq5aLFw7xUeBD0DhyCkhdgbt42gyP1EdMqC/HkNiY5IWdKmk2ZJwpiC76
         97re3vt8udxH58ys4iqfdtsPX9uXi24QnCPycZ/sFM+4wTnmy+yyKuMFbyuBJyuPj4
         lHzrcN4BuYnlpgRm8ItrXEZXAc4PvsJDpPbUem5JUexrNsVsBuYeUzhdxPav03mnqn
         DoP3kTIanwR4a/LaX69wCk0VcArVcXQPelmViXr6eLdS+JGqadOP1yA24qL6LIjHe7
         0jMTQZGeNkIwwRCHdJ3R6shobeKkIKPs0k9sBSbBjGVm5ihUVWlXSnnHkxX3kqpp9T
         oEN5Iw0fIErNQ==
Date:   Mon, 22 Aug 2022 09:13:10 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Philipp Zabel <p.zabel@pengutronix.de>
Cc:     Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        kernel@pengutronix.de
Subject: Re: [PATCH] ARM: dts: imx6qdl-tqma6x: add fixed power supplies
Message-ID: <20220822011310.GE149610@dragon>
References: <20220810103448.455244-1-p.zabel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220810103448.455244-1-p.zabel@pengutronix.de>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 10, 2022 at 12:34:48PM +0200, Philipp Zabel wrote:
> Add fixed power supplies to the EEPROM nodes to suppress a warning:
> 
>   at24 2-0050: supply vcc not found, using dummy regulator
> 
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>

Applied, thanks!
