Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 233B0511A01
	for <lists+devicetree@lfdr.de>; Wed, 27 Apr 2022 16:56:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236731AbiD0Nzu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Apr 2022 09:55:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45022 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236765AbiD0Nzt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Apr 2022 09:55:49 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 28F103F8B7
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 06:52:38 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E5CDEED1;
        Wed, 27 Apr 2022 06:52:37 -0700 (PDT)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id ABDA43F5A1;
        Wed, 27 Apr 2022 06:52:36 -0700 (PDT)
Date:   Wed, 27 Apr 2022 14:52:34 +0100
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
Message-ID: <20220427145234.3b33a5a4@donnerap.cambridge.arm.com>
In-Reply-To: <YmlF1JlIvY0lTaAD@sirena.org.uk>
References: <20220427112528.4097815-1-andre.przywara@arm.com>
        <20220427112528.4097815-5-andre.przywara@arm.com>
        <YmlF1JlIvY0lTaAD@sirena.org.uk>
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

On Wed, 27 Apr 2022 14:32:04 +0100
Mark Brown <broonie@kernel.org> wrote:

> On Wed, Apr 27, 2022 at 12:25:21PM +0100, Andre Przywara wrote:
> 
> > The Arm PrimeCell Advanced Audio CODEC Interface (AACI aka PL041) is
> > a peripheral that provides communication with an audio CODEC.  
> 
> This is a standalone sound device, you should submit this to the main
> ALSA maintainers.

You mean Jaroslav and Takashi? get_maintainers.pl just returned yours and
Liam's name, plus alsa-devel, because sound/arm/aaci.c is not touched.
But I can of course forward the patch to them.

Cheers,
Andre
