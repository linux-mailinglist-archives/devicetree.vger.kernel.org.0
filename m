Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DC56D729805
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 13:17:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230199AbjFILRY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 07:17:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238701AbjFILRF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 07:17:05 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC242210E
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 04:17:03 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 5DFA965718
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 11:17:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 948DBC4339B;
        Fri,  9 Jun 2023 11:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1686309422;
        bh=oikoyzHHpZSKhI1fvcipwda+kD2iBiCIbDawLRPCuoc=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=Odg9YvjOeLDUtWV594qmdpJxX7eHmRR0Wv1k0NJq18stHNLWu9X/dEmboTd+Vo74j
         vUclqCEGimxdgtz6Gx2kKLeLXu61/oXPDkvx8k/awFSjY9SUz3nr9z2z+q+bxKArmz
         VBLit6gYk+VWKtmoD0lnelk6ax1lTBIRF8tCwXtgZpvZ9fB9KiNe5JZvHlAdkQXwni
         gLDFqPdmph0LQFqz9dIv/J7pcqvZXhCF+dbo7vLtLT6rbXJdwlQpecSxNluhcaI7jp
         HwL0qVI3ftdXBasvO4KK/1Od5I2JslFhgjpPX7Zbb/mzsqh86Od/UFdWesJZruxISc
         dj7/PHvO4IAcg==
From:   Will Deacon <will@kernel.org>
To:     frank.li@nxp.com, Xu Yang <xu.yang_2@nxp.com>, shawnguo@kernel.org,
        mark.rutland@arm.com, festevam@gmail.com
Cc:     catalin.marinas@arm.com, kernel-team@android.com,
        Will Deacon <will@kernel.org>, robh+dt@kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-imx@nxp.com
Subject: Re: [PATCH v2 1/3] drivers/perf: imx_ddr: Add support for NXP i.MX9 SoC DDRC PMU driver
Date:   Fri,  9 Jun 2023 12:16:48 +0100
Message-Id: <168630672680.3064705.17889676417989749870.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20230418102910.2065651-1-xu.yang_2@nxp.com>
References: <20230418102910.2065651-1-xu.yang_2@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 18 Apr 2023 18:29:08 +0800, Xu Yang wrote:
> Add ddr performance monitor support for i.MX93.
> 
> There are 11 counters for ddr performance events.
> - Counter 0 is a 64-bit counter that counts only clock cycles.
> - Counter 1-10 are 32-bit counters that can monitor counter-specific
>   events in addition to counting reference events.
> 
> [...]

Applied first two patches to will (for-next/perf), thanks!

[1/3] drivers/perf: imx_ddr: Add support for NXP i.MX9 SoC DDRC PMU driver
      https://git.kernel.org/will/c/55691f99d417
[2/3] dt-bindings: perf: fsl-imx-ddr: Add i.MX93 compatible
      https://git.kernel.org/will/c/b1acb4e5601b

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev
https://will.arm64.dev
