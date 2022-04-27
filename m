Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 977A1511917
	for <lists+devicetree@lfdr.de>; Wed, 27 Apr 2022 16:55:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235983AbiD0NhC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Apr 2022 09:37:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52512 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236132AbiD0NhB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Apr 2022 09:37:01 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id D410149F36
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 06:33:50 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3F38DED1;
        Wed, 27 Apr 2022 06:33:50 -0700 (PDT)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F16D53F5A1;
        Wed, 27 Apr 2022 06:33:48 -0700 (PDT)
Date:   Wed, 27 Apr 2022 14:33:45 +0100
From:   Andre Przywara <andre.przywara@arm.com>
To:     Mark Brown <broonie@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liviu Dudau <liviu.dudau@arm.com>,
        Robin Murphy <robin.murphy@arm.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Liam Girdwood <lgirdwood@gmail.com>,
        alsa-devel@alsa-project.org
Subject: Re: [PATCH 04/11] dt-bindings: sound: add Arm PL041 AACI DT schema
Message-ID: <20220427143345.73d81a91@donnerap.cambridge.arm.com>
In-Reply-To: <Ymkr8dFjbzEonXOO@sirena.org.uk>
References: <20220427112528.4097815-1-andre.przywara@arm.com>
        <20220427112528.4097815-5-andre.przywara@arm.com>
        <Ymkr8dFjbzEonXOO@sirena.org.uk>
Organization: ARM
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 27 Apr 2022 12:41:37 +0100
Mark Brown <broonie@kernel.org> wrote:

Hi Mark,

> On Wed, Apr 27, 2022 at 12:25:21PM +0100, Andre Przywara wrote:
> > The Arm PrimeCell Advanced Audio CODEC Interface (AACI aka PL041) is
> > a peripheral that provides communication with an audio CODEC.  
> 
> I've got this one individual patch.  What's the story with depenedencies
> and cross tree work?

Sorry, I didn't want to bother you with all the other totally unrelated DT
bindings conversions, as this is the only sound related binding, and it's
self-contained. Also it's just a *binding* *conversion*, so probably only
mildly interesting from a kernel and code perspective.
I was assuming that Rob usually takes those binding patches, or do they go
through the affected subsystem tree?
As mentioned, this patch stands on its own, and there are no
dependencies, so it should be fine either way.
Anyway, this is the whole series, if you are interested:
https://lore.kernel.org/linux-arm-kernel/20220427112528.4097815-1-andre.przywara@arm.com/

Cheers,
Andre
