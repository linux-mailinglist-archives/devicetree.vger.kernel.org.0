Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 570FF67C4F2
	for <lists+devicetree@lfdr.de>; Thu, 26 Jan 2023 08:36:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231665AbjAZHgy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Jan 2023 02:36:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54806 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229642AbjAZHgx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Jan 2023 02:36:53 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 101F013DE4
        for <devicetree@vger.kernel.org>; Wed, 25 Jan 2023 23:36:53 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 9E1A66173D
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 07:36:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A8341C433EF;
        Thu, 26 Jan 2023 07:36:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1674718612;
        bh=M5l6JvH1sos2XihWflnhDW/i7Qiz2hACVwaoOh/2q5g=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=hR4qh8qmLc+qgCK1Bu3YhdyMxCDlcc670Nb97zPrBVjMC1fouAeoMOtaWNXutIyqd
         6Sbcwpj6aKrjgD0dytYiDkrRLCdctt1piN/8nE7snic+XSLaOTFLcF03wPVLBxsF/4
         GamIdPSSxmRBum/V08T/OGuiMP3NpDJP1mOKhwhz55+s64Zwmg9vxK9Or04xnCdhG6
         RPzL//qM1XhK747Cw2Za9Qy/uB/RIJ6IMBxQ79Q0HjRohHs535DD8b0JAAwYMncSl4
         +YfbcOPg2P6KLaNKXuc1MhFdIcgVN5mFQVsH4VDBXuiGFnG31T+YGr/ncziend6+2s
         SJj4IiauSBX4Q==
Date:   Thu, 26 Jan 2023 15:36:45 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/1] ARM: dts: ls1021a: Disable CAN nodes by default
Message-ID: <20230126073644.GV20713@T480>
References: <20230117111538.2085184-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230117111538.2085184-1-alexander.stein@ew.tq-group.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jan 17, 2023 at 12:15:38PM +0100, Alexander Stein wrote:
> These are peripherals with external signals, so disable them by default.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied, thanks!
