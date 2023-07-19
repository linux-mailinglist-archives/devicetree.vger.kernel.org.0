Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 421B175922B
	for <lists+devicetree@lfdr.de>; Wed, 19 Jul 2023 11:59:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229619AbjGSJ73 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jul 2023 05:59:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229708AbjGSJ7Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Jul 2023 05:59:16 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id C9A61E69
        for <devicetree@vger.kernel.org>; Wed, 19 Jul 2023 02:59:13 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D587A2F4;
        Wed, 19 Jul 2023 02:59:56 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 753683F67D;
        Wed, 19 Jul 2023 02:59:12 -0700 (PDT)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Sudeep Holla <sudeep.holla@arm.com>
Cc:     Liviu Dudau <liviu.dudau@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Avram Lubkin <avram@rockhopper.net>
Subject: Re: [PATCH] arm64: dts: arm: Remove the dangling vexpress-v2m-rs1.dtsi symlink
Date:   Wed, 19 Jul 2023 10:59:08 +0100
Message-ID: <168975960238.3008358.18227695360822279422.b4-ty@arm.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230706085534.300828-1-sudeep.holla@arm.com>
References: <20230706085534.300828-1-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 06 Jul 2023 09:55:34 +0100, Sudeep Holla wrote:
> Commit 724ba6751532 ("ARM: dts: Move .dts files to vendor sub-directories")
> moved all arm vendor specific DTS into the sub-directory and updated
> vexpress-v2f-1xv7-ca53x2.dts accordingly to include vexpress-v2m-rs1.dtsi
> from the right path. However the symlink was left dangling which is harmless
> and causes no issue for the build.
> 
> Just remove the dangling symlink now that it is noticed and reported.
> 
> [...]

Applied to sudeep.holla/linux (for-next/juno/fixes), thanks!

[1/1] arm64: dts: arm: Remove the dangling vexpress-v2m-rs1.dtsi symlink
      https://git.kernel.org/sudeep.holla/c/d088d6b648f4
--
Regards,
Sudeep

