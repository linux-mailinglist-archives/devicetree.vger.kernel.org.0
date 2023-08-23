Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DC2ED7860DF
	for <lists+devicetree@lfdr.de>; Wed, 23 Aug 2023 21:43:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231707AbjHWTnV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Aug 2023 15:43:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238367AbjHWTmy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Aug 2023 15:42:54 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73BCCE66
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 12:42:53 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 0CAED66169
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 19:42:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B9C6C433C8;
        Wed, 23 Aug 2023 19:42:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692819772;
        bh=g4DHsYkZGlPpM5rQIQD5TCWHs/5iMzUtmQt0dwpuYqU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=BTjCXBULpIQHKfnAn6WBFXrjhPONY5ODxQzl/v3FpfBm8fUaTO5Hx+n34Js3Y6PVk
         pezz/tOWeWXjkpBjZgqShIVxJ+RtqE5Vz1/YrbEcWwJuPAQbRVO6MWQdb49ZUTklKR
         vIDI+KWVlVJMo0IvCjKrFN5yVzxluSPSY3uPFz909en2WNk5wGHMb+QS9xvm4R4YRD
         PQzchCZeoNp8WY2kpqDxHMKBtkmHpsKH74rL6Njf9+tKDPxwM6jCbJoigD9Be5mryL
         k0E0fePx9xyb3hafAa6RapunJm9JKhcDmjcSPQcRnyGYNslwqIIOBcqXQwrrdmgPzq
         vFI0tUAvhteFw==
Received: (nullmailer pid 2772251 invoked by uid 1000);
        Wed, 23 Aug 2023 19:42:50 -0000
Date:   Wed, 23 Aug 2023 14:42:50 -0500
From:   Rob Herring <robh@kernel.org>
To:     Binbin Zhou <zhoubinbin@loongson.cn>
Cc:     Binbin Zhou <zhoubb.aaron@gmail.com>,
        Huacai Chen <chenhuacai@loongson.cn>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        Huacai Chen <chenhuacai@kernel.org>,
        loongson-kernel@lists.loongnix.cn, Xuerui Wang <kernel@xen0n.name>,
        loongarch@lists.linux.dev, Jiaxun Yang <jiaxun.yang@flygoat.com>,
        Hongliang Wang <wanghongliang@loongson.cn>
Subject: Re: [PATCH v4 3/7] LoongArch: Allow device trees to be built into
 the kernel
Message-ID: <20230823194250.GA2768550-robh@kernel.org>
References: <cover.1692783907.git.zhoubinbin@loongson.cn>
 <3e69929008c8190cff331941dd4d34f748e5e44a.1692783907.git.zhoubinbin@loongson.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3e69929008c8190cff331941dd4d34f748e5e44a.1692783907.git.zhoubinbin@loongson.cn>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 23, 2023 at 05:54:51PM +0800, Binbin Zhou wrote:
> Some systems do not provide a useful device tree to the kernel at boot
> time. Let's keep a device tree table in the kernel, keyed by the dts
> filename, containing the relevant DTBs.

Support for this in other arches was added to support legacy bootloaders 
with no DT support. You should not need this for a new architecture. Fix 
the bootloader to provide a useful DT.

Rob
