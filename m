Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C0470751A86
	for <lists+devicetree@lfdr.de>; Thu, 13 Jul 2023 09:58:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232882AbjGMH6U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jul 2023 03:58:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233210AbjGMH54 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jul 2023 03:57:56 -0400
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::227])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39058210B
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 00:57:33 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id E680120003;
        Thu, 13 Jul 2023 07:57:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1689235052;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=2F/bUME+pf0s7vBUvHy7WZs0ckzsbwRu5dNQlGBwthg=;
        b=P8ftI59+SD0TPQod/rhciM+WFNJdIxxKI78PZ+JLD87iF4G1tAAG8gtr5QVEyEboB/3ZO8
        3+ogFfV9VEIe1Qn1w4zB+gPnU1gFPPHC0/aKPfw61ikTeTdW/51WUeYFgVvNzUbavGmHJg
        S1vKdTe5oUmRlhPbdV2gJ0N6CcqcaXfyUpRek8LM1m485q/LTcDqtdGz0fwi0Ttt6skgiL
        q58R3IS2fdSkNCYeYHo3SX9B2nSF5eiWhqmVQHCc3sCXxhZNYQbWAOKL2kdpfoba1TmaXn
        18VPEDPXf9YjbIdmqfDlKzgC4aapmc9yNV3KAYLCtbRH43Ie1Ww1qKdyxqqIDw==
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org
Cc:     Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <tudor.ambarus@linaro.org>,
        Pratyush Yadav <pratyush@kernel.org>,
        Michael Walle <michael@walle.cc>,
        linux-mtd@lists.infradead.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH v2] dt-bindings: mtd: Fix nand-controller.yaml license
Date:   Thu, 13 Jul 2023 09:57:29 +0200
Message-Id: <20230713075729.485928-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230712151042.433593-1-miquel.raynal@bootlin.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: b'2b42d718c7d7f4269d45fb58b4f74d7b2bfb08bd'
Content-Transfer-Encoding: 8bit
X-GND-Sasl: miquel.raynal@bootlin.com
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 2023-07-12 at 15:10:42 UTC, Miquel Raynal wrote:
> Binding files should be dual licensed. This file was initially written
> as a .txt file with no specific license, so was implicitely
> GPLv2. Significant part of this file and its conversion into yaml were
> written by Bootlin employees which agree to comply with the rules
> regarding the dual licensing so let's fix the SPDX tag to reflect the
> correct license by changing it from GPL to GPL + BSD-2-Clause.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> Acked-by: Maxime Ripard <mripard@kernel.org>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next.

Miquel
