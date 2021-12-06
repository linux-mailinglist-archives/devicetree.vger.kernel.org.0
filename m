Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8088D468E9F
	for <lists+devicetree@lfdr.de>; Mon,  6 Dec 2021 02:41:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231422AbhLFBpY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Dec 2021 20:45:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41068 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231303AbhLFBpY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Dec 2021 20:45:24 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A58DFC061751
        for <devicetree@vger.kernel.org>; Sun,  5 Dec 2021 17:41:56 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 57272B80E7C
        for <devicetree@vger.kernel.org>; Mon,  6 Dec 2021 01:41:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E6A04C00446;
        Mon,  6 Dec 2021 01:41:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1638754914;
        bh=XQiY+AvVJOtPLdNIOy7fczHUCK7+/bU/Fx9IsNJtmyM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Mbn4ADr3fgky4ybVaz4HtgF5TxF7KoI2lDOX928HqQcxEqF0BE8z272NZEU2/8mQL
         kYLgB8eEV36zkiGtr9gi8s8FWx1r8EyzMn3mrxHwdkRxNF0BbzFq6h3hTgbcZGwfVG
         AFgY73OQIccngNzpDgbowA5qiDePDfF/jmPTl3IHqrrd5SMXtUH1u2kkmbCMjwc4uQ
         sTOOCexDIQ5w58AAcNxtmxwiaI5t8bBlcDlPLe1kFhJuFU49JPS9hCUq50zsuxHkRF
         lw3sNRTyMRNsATK7fzwf4vubOeovm/Zvg3FG9+H2GZCFjRezwSgA0wZUnILRAEUlmC
         ZgLn1kUwnQm6Q==
Date:   Mon, 6 Dec 2021 09:41:48 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, otavio@ossystems.com.br,
        georgemakarov1@gmail.com
Subject: Re: [PATCH v2] ARM: dts: imx6ull-pinfunc: Fix CSI_DATA07__ESAI_TX0
 pad name
Message-ID: <20211206014147.GR4216@dragon>
References: <20211124184541.745827-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211124184541.745827-1-festevam@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Nov 24, 2021 at 03:45:41PM -0300, Fabio Estevam wrote:
> According to the i.MX6ULL Reference Manual, pad CSI_DATA07 may
> have the ESAI_TX0 functionality, not ESAI_T0.
> 
> Also, NXP's i.MX Config Tools 10.0 generates dtsi with the
> MX6ULL_PAD_CSI_DATA07__ESAI_TX0 naming, so fix it accordingly.
> 
> There are no devicetree users in mainline that use the old name,
> so just remove the old entry.
> 
> Fixes: c201369d4aa5 ("ARM: dts: imx6ull: add imx6ull support")
> Reported-by: George Makarov <georgemakarov1@gmail.com>
> Signed-off-by: Fabio Estevam <festevam@gmail.com>

Applied, thanks!
