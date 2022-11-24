Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0480C637ED7
	for <lists+devicetree@lfdr.de>; Thu, 24 Nov 2022 19:11:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229869AbiKXSL5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Nov 2022 13:11:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40200 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229866AbiKXSL4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Nov 2022 13:11:56 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F6FC8FE73
        for <devicetree@vger.kernel.org>; Thu, 24 Nov 2022 10:11:56 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id E575A62100
        for <devicetree@vger.kernel.org>; Thu, 24 Nov 2022 18:11:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CCD32C433C1;
        Thu, 24 Nov 2022 18:11:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1669313515;
        bh=2TnrP9rzyw9bDnMYxV4mvGFFJly42OlDQj1JNowzM6Q=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=KI1d6JwEzW7qEhDAD1Cfdrw6LSUmCgD6R3tRoTpwgajnGgWeqROXHIWEGQtcytOTk
         OS+QnpfZ2Wf5wGxaOYOQu/SHg0mrTwzUTgPY/Xcv7ztUYoLx93TxVpXwTPaG//E02V
         1tWNZJzcYzzzgD4VGer+d6L0G/P/BIh/AjoE8sXYLjasEsZa9J5kVzbycCzgKqqcKB
         p+la6DFTd5reyji8vPWay0r0DbbP8Z0r4107BM95oZ+75Ba3rgZTu0pDCydhqaqcQg
         T5HN3VRd/cfWHSOtC7nxlJ7LbCHkD2SZrTMR2g1/kxKnr5zUkCslbytV7zvFaeTbii
         kbLU5bSGx+10w==
Date:   Thu, 24 Nov 2022 23:41:50 +0530
From:   Vinod Koul <vkoul@kernel.org>
To:     Matt Ranostay <mranostay@ti.com>
Cc:     r-gunasekaran@ti.com, rogerq@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, vigneshr@ti.com,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 0/2] phy: ti: phy-j721e-wiz: add j721s2 support
Message-ID: <Y3+z5t2nDE87erTb@matsya>
References: <20221123032413.1193961-1-mranostay@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221123032413.1193961-1-mranostay@ti.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22-11-22, 19:24, Matt Ranostay wrote:
> Add support for j721s2 support for phy-j721e-wiz module.

Applied, thanks

-- 
~Vinod
