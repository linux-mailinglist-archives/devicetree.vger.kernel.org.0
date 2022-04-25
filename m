Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2E75950E1BF
	for <lists+devicetree@lfdr.de>; Mon, 25 Apr 2022 15:31:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229734AbiDYNdD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 09:33:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41622 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242120AbiDYNbj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 09:31:39 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 0309F403DA
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 06:28:35 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C2B601FB;
        Mon, 25 Apr 2022 06:28:35 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id A112F3F774;
        Mon, 25 Apr 2022 06:28:34 -0700 (PDT)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rui Miguel Silva <rui.silva@linaro.org>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Liviu Dudau <liviu.dudau@arm.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Sudeep Holla <sudeep.holla@arm.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v5 0/2] arm64: dts: add corstone1000 device tree
Date:   Mon, 25 Apr 2022 14:28:32 +0100
Message-Id: <165089291072.1036016.13574796454085073736.b4-ty@arm.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220408131922.3864348-1-rui.silva@linaro.org>
References: <20220408131922.3864348-1-rui.silva@linaro.org>
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

On Fri, 8 Apr 2022 14:19:20 +0100, Rui Miguel Silva wrote:
> Add device tree and correspondent binding for ARM corstone1000
> [0] platform for FVP (Fixed Virtual Platform) and FPGA MPS3
> prototyping board implementation of this system.
> 
> Cheers,
>    Rui
> 
> [...]

Applied to sudeep.holla/linux (for-next/juno), thanks!

[1/2] dt-bindings: arm: add corstone1000 platform
      https://git.kernel.org/sudeep.holla/c/41e3958475
[2/2] arm64: dts: arm: add corstone1000 device tree
      https://git.kernel.org/sudeep.holla/c/a69d277460

--
Regards,
Sudeep

