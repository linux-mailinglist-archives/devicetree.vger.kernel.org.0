Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 27041517F60
	for <lists+devicetree@lfdr.de>; Tue,  3 May 2022 10:04:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232606AbiECIIT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 May 2022 04:08:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43464 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232611AbiECIIT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 May 2022 04:08:19 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id BA960192A2
        for <devicetree@vger.kernel.org>; Tue,  3 May 2022 01:04:43 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6CCBF143D;
        Tue,  3 May 2022 01:04:43 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 923A83F774;
        Tue,  3 May 2022 01:04:42 -0700 (PDT)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Sudeep Holla <sudeep.holla@arm.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: [PATCH] arm64: dts: fvp: align virtio device node names with dtschema
Date:   Tue,  3 May 2022 09:04:40 +0100
Message-Id: <165156475719.2920732.8045791226278781233.b4-ty@arm.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220425135524.1077986-1-sudeep.holla@arm.com>
References: <20220425135524.1077986-1-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 25 Apr 2022 14:55:24 +0100, Sudeep Holla wrote:
> Align the virtio mmio device tree node names with the schema to avoid any
> schema warnings.
> 
> 

Applied to sudeep.holla/linux (for-next/juno), thanks!

[1/1] arm64: dts: fvp: align virtio device node names with dtschema
      https://git.kernel.org/sudeep.holla/c/d7030edf32

--
Regards,
Sudeep

