Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C30F87216CA
	for <lists+devicetree@lfdr.de>; Sun,  4 Jun 2023 14:15:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229703AbjFDMPC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 4 Jun 2023 08:15:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44488 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229578AbjFDMPB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 4 Jun 2023 08:15:01 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33088CA
        for <devicetree@vger.kernel.org>; Sun,  4 Jun 2023 05:15:01 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id C519B60DFA
        for <devicetree@vger.kernel.org>; Sun,  4 Jun 2023 12:15:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3534AC433D2;
        Sun,  4 Jun 2023 12:14:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1685880900;
        bh=q7LAMqMhL1B9Gv+ovm2JAwuZWrx3Sx9Uiyk+F/4MYf4=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=c77lsWdAZp+Pboss55XjW2qWWUCmzCknIvaSPXNr30tdCPCw2optDDFgt2JdAZs5S
         KEP0cAHrQ1y21ej4PpYpVk2U9N3pfIKfJ3FsIWDA1QzZFfT0H6Fye5GzB77ca5eU5X
         iHYB6SR4WbfrZnxPer6Mafivw6ZKtjpsm1ocYcn0Tu++WfoMhIIRW/EVBGso2du2RZ
         GnkGvqJzI7b/BOplbzt13pH5Ow2S9Vmgu9km22jgiF5q46zJfoErohHgrLaHmgEN5i
         GkVIsKSSgFl2f+x2CY2QDAX0ehcoY30k/5kH1xrXzW8Np6EbAIvd+IuJeCRKCRDVTh
         vbfWPM99xCuhA==
Date:   Sun, 4 Jun 2023 20:14:50 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH v2] ARM: dts: imx6: Use the mux- prefix
Message-ID: <20230604121450.GE4199@dragon>
References: <20230527161046.346506-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230527161046.346506-1-festevam@gmail.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, May 27, 2023 at 01:10:46PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> According to Documentation/devicetree/bindings/sound/imx-audmux.yaml,
> there must be a "mux-" prefix in the audmux port nodes.
> 
> Add the "mux-" prefix to avoid devicetree schema warnings.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied, thanks!
