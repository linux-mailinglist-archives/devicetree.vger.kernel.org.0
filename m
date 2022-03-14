Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8DADD4D88A8
	for <lists+devicetree@lfdr.de>; Mon, 14 Mar 2022 16:59:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242840AbiCNQBF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Mar 2022 12:01:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242834AbiCNQBF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Mar 2022 12:01:05 -0400
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::227])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5059142EFB
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 08:59:53 -0700 (PDT)
Received: (Authenticated sender: miquel.raynal@bootlin.com)
        by mail.gandi.net (Postfix) with ESMTPSA id A21E720002;
        Mon, 14 Mar 2022 15:59:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1647273592;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=rKG6p0o6eMj1vKwb7urgP6OlCMQPZuyRxy4tfDd+QRI=;
        b=fRxX88VIt0QqdkaXb5BIVvmfWzx0jhtdZ5RzJD6ia4zfi1hwY2AGqfK5TgSIiuA4HEIRn1
        NnYc2pbiQVeq+O0ale2iILwOtU/TzI+S4hXdQqr9WOHIR/jESV6l5zvZmD373N3b8D8NZS
        hxc3iUnOvKjWdCYIa/Y+wThtNQTHbDucW3zvULg0i2jCJTJVKTlewj7b+4k+0Tgb7ma6Ot
        TMMuOt/YrB4fAbQqFh+oo5RRsuCqYqUaeH57oWhDhhVpDghf1PC0deN40Jx3ZDs56WHNRF
        jSxzYwQ2jrhtUS3eEaLwwo1m6a5K8e7DnrlbX2LHSuhjPtvxyjtHjOVzWWMW+A==
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     =?utf-8?b?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        =?utf-8?b?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH] dt-bindings: mtd: partitions: convert BCM47xx to the json-schema
Date:   Mon, 14 Mar 2022 16:59:50 +0100
Message-Id: <20220314155950.77335-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220216104135.31307-1-zajec5@gmail.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: b'6d41012c4498f71c8aeb89794d25511fe0aeccea'
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 2022-02-16 at 10:41:35 UTC, =?utf-8?b?UmFmYcWCIE1pxYJlY2tp?= wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> This helps validating DTS files.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> Reviewed-by: Rob Herring <robh@kernel.org>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git mtd/next, thanks.

Miquel
