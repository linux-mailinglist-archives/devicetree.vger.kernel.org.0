Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 33031638EC9
	for <lists+devicetree@lfdr.de>; Fri, 25 Nov 2022 18:06:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230088AbiKYRGQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Nov 2022 12:06:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230102AbiKYRGN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Nov 2022 12:06:13 -0500
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id D60204FF82
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 09:06:05 -0800 (PST)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2EB2FD6E;
        Fri, 25 Nov 2022 09:06:12 -0800 (PST)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id B5A753F73B;
        Fri, 25 Nov 2022 09:06:04 -0800 (PST)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Sudeep Holla <sudeep.holla@arm.com>,
        linux-arm-kernel@lists.infradead.org
Cc:     Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Pierre Gondois <pierre.gondois@arm.com>,
        devicetree@vger.kernel.org, Liviu Dudau <liviu.dudau@arm.com>
Subject: Re: [PATCH] arm64: dts: fvp: Add information about L1 and L2 caches
Date:   Fri, 25 Nov 2022 17:06:01 +0000
Message-Id: <166939568021.1879157.8732896026658644238.b4-ty@arm.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221118151017.704716-1-sudeep.holla@arm.com>
References: <20221118151017.704716-1-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 18 Nov 2022 15:10:17 +0000, Sudeep Holla wrote:
> Add the information about L1 and L2 caches on FVP RevC platform.
> Though the cache size is configurable through the model parameters,
> having default values in the device tree helps to exercise and debug
> any code utilising the cache information without the need of real
> hardware.
> 
> 
> [...]

Applied to sudeep.holla/linux (for-next/juno), thanks!

[1/1] arm64: dts: fvp: Add information about L1 and L2 caches
      https://git.kernel.org/sudeep.holla/c/b2d5025e1292
--
Regards,
Sudeep

