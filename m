Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1B67E4D3B39
	for <lists+devicetree@lfdr.de>; Wed,  9 Mar 2022 21:39:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234301AbiCIUkd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Mar 2022 15:40:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235199AbiCIUkc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Mar 2022 15:40:32 -0500
Received: from rosenzweig.io (rosenzweig.io [138.197.143.207])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7DD7C9EBBC;
        Wed,  9 Mar 2022 12:39:33 -0800 (PST)
Date:   Wed, 9 Mar 2022 15:28:51 -0500
From:   Alyssa Rosenzweig <alyssa@rosenzweig.io>
To:     Hector Martin <marcan@marcan.st>
Cc:     Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sven Peter <sven@svenpeter.dev>,
        Mark Kettenis <mark.kettenis@xs4all.nl>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v3 3/7] irqchip/apple-aic: Add Fast IPI support
Message-ID: <YikOA8snuXHpIj7m@sunset.rosenzweig.io>
References: <20220309192123.152028-1-marcan@marcan.st>
 <20220309192123.152028-4-marcan@marcan.st>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220309192123.152028-4-marcan@marcan.st>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

>  /*
>   * IMP-DEF sysregs that control FIQ sources
> - * Note: sysreg-based IPIs are not supported yet.
>   */

Nit: maybe collapse this comment to 1 line
