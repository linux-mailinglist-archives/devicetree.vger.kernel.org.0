Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1B89550E1C1
	for <lists+devicetree@lfdr.de>; Mon, 25 Apr 2022 15:31:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232022AbiDYNdL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 09:33:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45784 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242123AbiDYNbo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 09:31:44 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 0B3DC403DA
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 06:28:41 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CD365ED1;
        Mon, 25 Apr 2022 06:28:40 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id C67523F774;
        Mon, 25 Apr 2022 06:28:39 -0700 (PDT)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Sudeep Holla <sudeep.holla@arm.com>,
        linux-arm-kernel@lists.infradead.org
Cc:     Robin Murphy <robin.murphy@arm.com>,
        Mike Leach <Mike.Leach@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        devicetree@vger.kernel.org, Liviu Dudau <liviu.dudau@arm.com>
Subject: Re: [PATCH] arm64: dts: juno: Fix SCMI power domain IDs for ETF and CS funnel
Date:   Mon, 25 Apr 2022 14:28:37 +0100
Message-Id: <165089291072.1036016.14573796467113210664.b4-ty@arm.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220413093547.1699535-1-sudeep.holla@arm.com>
References: <20220413093547.1699535-1-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 13 Apr 2022 10:35:47 +0100, Sudeep Holla wrote:
> The SCMI power domain ID for all the coresight components is 8 while
> the previous/older SCPI domain was 0. When adding SCMI variant, couple
> of instances retained SCPI domain ID by mistake.
> 
> Fix the same by using the correct SCMI power domain ID of 8.
> 
> 
> [...]

Applied to sudeep.holla/linux (for-next/juno), thanks!

[1/1] arm64: dts: juno: Fix SCMI power domain IDs for ETF and CS funnel
      https://git.kernel.org/sudeep.holla/c/8dd3cdeaf303

--
Regards,
Sudeep

