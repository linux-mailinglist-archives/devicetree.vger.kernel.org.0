Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 46432613A01
	for <lists+devicetree@lfdr.de>; Mon, 31 Oct 2022 16:29:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230394AbiJaP3m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Oct 2022 11:29:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229826AbiJaP3l (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Oct 2022 11:29:41 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7C312BED
        for <devicetree@vger.kernel.org>; Mon, 31 Oct 2022 08:29:40 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id F1DC961283
        for <devicetree@vger.kernel.org>; Mon, 31 Oct 2022 15:29:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74639C433C1;
        Mon, 31 Oct 2022 15:29:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1667230179;
        bh=X9TE6lOGWQ78gg/ndyuZ0qI7scdDC7OlvDpUJE7VC4Q=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=pEKTwaFXtcRQfM3PHDTebue874C+PXj5kHVrtL7kuI51YxCQzSWbZbrKsHHqPRV7n
         2q6gnxPbT535c53d69bFzxgfp2ywpbnSrjoqdZzvbn7cPXA2OuLT2Osrmaty5ZrHpC
         eG4b7TfykIf1RZ5LEAcglJ5faOQQ1KKgDvIsvQEwalxihFEmrvTVMO6O7KXDFAK2Q8
         LEFEFKm+2LrhrBC02YwB07rgM7l6Hd/TJlfp4zuzx8iAEV/pJwnwRptPTAEx9ez3j2
         IWh5hafaAgEv1ESnViwTqNOI/Ag5tF3Xu3e5ZXLjN6PlQS3rj1MpR3LnbjX1ntfmT4
         m7kR6JSWYS8MA==
Date:   Mon, 31 Oct 2022 15:29:34 +0000
From:   Lee Jones <lee@kernel.org>
To:     Matt Ranostay <mranostay@ti.com>
Cc:     nm@ti.com, vigneshr@ti.com, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH RESEND v2 1/2] dt-bindings: mfd:
 ti,j721e-system-controller: add compatible strings for other platforms
Message-ID: <Y1/p3mxxJ2klydMV@google.com>
References: <20221024035405.366208-1-mranostay@ti.com>
 <20221024035405.366208-2-mranostay@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221024035405.366208-2-mranostay@ti.com>
X-Spam-Status: No, score=-8.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 23 Oct 2022, Matt Ranostay wrote:

> There are multiple J7 based platforms, and the j721e-system-controller
> shouldn't be define in non-j721e devices device trees.
> 
> This is mainly for clarity; but also useful in case there are future
> erratas that need to be fixed for a specific platform.
> 
> Signed-off-by: Matt Ranostay <mranostay@ti.com>
> ---
>  .../devicetree/bindings/mfd/ti,j721e-system-controller.yaml     | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks.

-- 
Lee Jones [李琼斯]
