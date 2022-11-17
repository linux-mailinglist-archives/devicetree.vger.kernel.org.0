Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B04E162E6D7
	for <lists+devicetree@lfdr.de>; Thu, 17 Nov 2022 22:19:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240975AbiKQVTX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Nov 2022 16:19:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33444 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240836AbiKQVSb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Nov 2022 16:18:31 -0500
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net [217.70.183.196])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E126F64544
        for <devicetree@vger.kernel.org>; Thu, 17 Nov 2022 13:16:40 -0800 (PST)
Received: (Authenticated sender: miquel.raynal@bootlin.com)
        by mail.gandi.net (Postfix) with ESMTPSA id A0A08E0002;
        Thu, 17 Nov 2022 21:16:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1668719799;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=57laQ6RQtTEEaJIkWtYSXesS9NcbjA5Al5Dwd1wsl4Y=;
        b=N2er7jMG5kSv2YSrN4QjNanWmMcHOV6K2sY6igXJ4CDVeJsmmS9MElFxYJO65w82wOtRve
        Wi3KB+q1hvg15jDwHpf+gPITxUz8gGNbm/R9Y7BUuWzKoqn7jmcTv5NdqqPHJNAev4JmJH
        bupLrZy3GGW/TlH0cUS5KHxKXzOMcUlDvkiys+MdzPA/2ieLeO3isXC2muQPkJFTCz0hm0
        z+SQS2Kj4Gq/lB6IGJuFx2QDBGaIcHP0y8i2oja4BbTS+z6BZcSvZ9wAU4bq4cCSGaAwex
        R+zOOB5DNc9gJx0CBZB7QYNNCOSwGyaMwK1fEjU3Srq/RhU4r6lmKFFgbOJ5vg==
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     =?utf-8?b?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>
Cc:     linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        =?utf-8?b?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH mtd/next] dt-bindings: mtd: partitions: allow SafeLoader dynamic subpartitions
Date:   Thu, 17 Nov 2022 22:16:38 +0100
Message-Id: <20221117211638.1273721-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221108093102.8360-1-zajec5@gmail.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: b'9b533a6e41df8315422575764a7f9a72bda2d995'
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 2022-11-08 at 09:31:02 UTC, =?utf-8?b?UmFmYcWCIE1pxYJlY2tp?= wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> TP-Link SafeLoader partitioning means flash contains multiple partitions
> defined in the on-flash table. Some of those partitions may have a
> special meaning and may require describing additionally. Allow that.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> Reviewed-by: Rob Herring <robh@kernel.org>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git mtd/next, thanks.

Miquel
