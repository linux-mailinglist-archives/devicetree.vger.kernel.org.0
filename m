Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C20D14B1D20
	for <lists+devicetree@lfdr.de>; Fri, 11 Feb 2022 04:52:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233633AbiBKDuz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Feb 2022 22:50:55 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:38430 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231643AbiBKDuz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Feb 2022 22:50:55 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 650CD55AF
        for <devicetree@vger.kernel.org>; Thu, 10 Feb 2022 19:50:55 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 0CB1E6159A
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 03:50:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 69B23C340E9;
        Fri, 11 Feb 2022 03:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1644551454;
        bh=j+W+LpcJTa+RK9SXC9KrO/8sPpRpRhZBPVNQ0KH2epQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=oRQy9oi2e/cTCz9T/u8jUWa+14jovFHsNdWHDnuEJ+KgoHxQPKjmCmnmsaFa8PyAm
         4ByEeMd54iOqzNQeT8b5AWJ+kQxJeyeDlnjIUimyabeWqW23c/MHp3e/+j1Vfv0Ybc
         AbCQiEh1EAL6grxKIna8SyMIrKxYfQr2byqeY9J+tBTnyoA3la/p7klF/o1Lsi86eY
         bpUgj2Ba0CDJ8kjwVNJUeIu/KekT/cOH89Gass/hiOWOlcXKprR1SfGWUBitEzmYuo
         zFC0fUXxa1rvmyxnZvVCIRvYfBHHlRfJIZG2Ay9Tb48wgD2uVms5RQZj4YwRhoGgaL
         QURuFgMCqdOOA==
Date:   Fri, 11 Feb 2022 11:50:48 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/1] arm64: dts: tqma8mqml: add PCIe support
Message-ID: <20220211035048.GL4909@dragon>
References: <20220126132339.60683-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220126132339.60683-1-alexander.stein@ew.tq-group.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 26, 2022 at 02:23:38PM +0100, Alexander Stein wrote:
> Add PCIe support to TQMa8MxML series.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied, thanks!
