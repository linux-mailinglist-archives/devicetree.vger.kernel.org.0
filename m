Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A44A7774931
	for <lists+devicetree@lfdr.de>; Tue,  8 Aug 2023 21:49:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231431AbjHHTtz convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Tue, 8 Aug 2023 15:49:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37474 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231293AbjHHTtr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Aug 2023 15:49:47 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4CE7250D87
        for <devicetree@vger.kernel.org>; Tue,  8 Aug 2023 09:55:10 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <p.zabel@pengutronix.de>)
        id 1qTN3D-0007uR-2P; Tue, 08 Aug 2023 15:47:07 +0200
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
        by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
        (envelope-from <p.zabel@pengutronix.de>)
        id 1qTN3C-001znZ-1p; Tue, 08 Aug 2023 15:47:06 +0200
Received: from pza by lupine with local (Exim 4.96)
        (envelope-from <p.zabel@pengutronix.de>)
        id 1qTN3B-000DUK-2Z;
        Tue, 08 Aug 2023 15:47:05 +0200
Message-ID: <68df3276e587f652c46adbe66d1343beb2753779.camel@pengutronix.de>
Subject: Re: [PATCH V2 0/2] reset: reset-zynqmp: add support for Versal NET
 platform
From:   Philipp Zabel <p.zabel@pengutronix.de>
To:     Piyush Mehta <piyush.mehta@amd.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        michal.simek@amd.com
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        git@amd.com
Date:   Tue, 08 Aug 2023 15:47:05 +0200
In-Reply-To: <20230721041119.4058430-1-piyush.mehta@amd.com>
References: <20230721041119.4058430-1-piyush.mehta@amd.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8BIT
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fr, 2023-07-21 at 09:41 +0530, Piyush Mehta wrote:
> Extended the ZynqMP and versal reset driver to support Versal NET platform,
> accordingly added compatible string dt-binding for the Versal NET platform
> specific.
> 
> The Versal Net  device includes more security features in the platform
> management controller (PMC) and increases the number of CPUs in the
> application processing unit (APU) and the real-time processing unit (RPU).

Thank you, applied to reset/next.

regards
Philipp
