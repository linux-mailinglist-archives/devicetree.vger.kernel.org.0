Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D45B8749A82
	for <lists+devicetree@lfdr.de>; Thu,  6 Jul 2023 13:21:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230087AbjGFLVw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Jul 2023 07:21:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33058 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231688AbjGFLVs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Jul 2023 07:21:48 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 0E03D1727
        for <devicetree@vger.kernel.org>; Thu,  6 Jul 2023 04:21:47 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E778314BF
        for <devicetree@vger.kernel.org>; Thu,  6 Jul 2023 04:22:28 -0700 (PDT)
Received: from e110455-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 988013F663
        for <devicetree@vger.kernel.org>; Thu,  6 Jul 2023 04:21:46 -0700 (PDT)
Date:   Thu, 6 Jul 2023 12:21:44 +0100
From:   Liviu Dudau <liviu.dudau@arm.com>
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Avram Lubkin <avram@rockhopper.net>
Subject: Re: [PATCH] arm64: dts: arm: Remove the dangling
 vexpress-v2m-rs1.dtsi symlink
Message-ID: <ZKajyN_oyLWFjw3C@e110455-lin.cambridge.arm.com>
References: <20230706085534.300828-1-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230706085534.300828-1-sudeep.holla@arm.com>
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 06, 2023 at 09:55:34AM +0100, Sudeep Holla wrote:
> Commit 724ba6751532 ("ARM: dts: Move .dts files to vendor sub-directories")
> moved all arm vendor specific DTS into the sub-directory and updated
> vexpress-v2f-1xv7-ca53x2.dts accordingly to include vexpress-v2m-rs1.dtsi
> from the right path. However the symlink was left dangling which is harmless
> and causes no issue for the build.
> 
> Just remove the dangling symlink now that it is noticed and reported.
> 
> Fixes: 724ba6751532 ("ARM: dts: Move .dts files to vendor sub-directories")
> Cc: Liviu Dudau <liviu.dudau@arm.com>
> Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Reported-by: Avram Lubkin <avram@rockhopper.net>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>

Acked-by: Liviu Dudau <liviu.dudau@arm.com>

Thanks for the quick fix!

Best regards,
Liviu

> ---
>  arch/arm64/boot/dts/arm/vexpress-v2m-rs1.dtsi | 1 -
>  1 file changed, 1 deletion(-)
>  delete mode 120000 arch/arm64/boot/dts/arm/vexpress-v2m-rs1.dtsi
> 
> diff --git a/arch/arm64/boot/dts/arm/vexpress-v2m-rs1.dtsi b/arch/arm64/boot/dts/arm/vexpress-v2m-rs1.dtsi
> deleted file mode 120000
> index 68fd0f8f1dee..000000000000
> --- a/arch/arm64/boot/dts/arm/vexpress-v2m-rs1.dtsi
> +++ /dev/null
> @@ -1 +0,0 @@
> -../../../../arm/boot/dts/vexpress-v2m-rs1.dtsi
> \ No newline at end of file
> -- 
> 2.41.0
> 

-- 
====================
| I would like to |
| fix the world,  |
| but they're not |
| giving me the   |
 \ source code!  /
  ---------------
    ¯\_(ツ)_/¯
