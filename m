Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 553487134D5
	for <lists+devicetree@lfdr.de>; Sat, 27 May 2023 14:55:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232555AbjE0Mzg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 May 2023 08:55:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51708 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229571AbjE0Mzf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 27 May 2023 08:55:35 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5941510A
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 05:55:34 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id EB21261A3D
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 12:55:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 014C7C433D2;
        Sat, 27 May 2023 12:55:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1685192133;
        bh=a4yGoB/7aLfEm6nrDkqt4dc9ySjkJQCc0rxtcWYBny8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=O8PqMFywYFcWKPjBkiE124L2KQDKFsUheofc/Xe3MGi3NlCDIamAYIdkJ8xa2azsn
         hOoSADxTWA2XmetrMTsccq65ujhkPmEaxKum5d7T+iqUDCZJd0JXYF34GCEDoQG0kx
         9tyvBX0kaCpEqEJDoe7R7ocg6ZM0jYBU+H/omne49qvYfIVaSngM0eVoLvaq650Ctg
         9lVfLqbo2tPmfUiqyX5Qc5SgagdoUEJEKAiquSSoHsBltjKibRM26vR4HybutLLajh
         /TaRb33APtBtzgwUTDAFkfsUbYgm+BcaEhEhHnM9SxJuSQtSTfyS78p2ncdcE0AScC
         9G3uoSy+RaRRg==
Date:   Sat, 27 May 2023 20:55:19 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, conor+dt@kernel.org,
        Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH v7 2/2] ARM: dts: imx6sx: Add LDB support
Message-ID: <20230527125519.GV528183@dragon>
References: <20230523235232.7358-1-festevam@gmail.com>
 <20230523235232.7358-2-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230523235232.7358-2-festevam@gmail.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 23, 2023 at 08:52:32PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> i.MX6SX has an LVDS controller that is connected to the eLCDIF.
> 
> Add support for it.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied, thanks!
