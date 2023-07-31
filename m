Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A4D497696EE
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 14:59:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232243AbjGaM72 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 08:59:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232295AbjGaM70 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 08:59:26 -0400
Received: from mxout70.expurgate.net (mxout70.expurgate.net [194.37.255.70])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF8A210E3
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 05:59:25 -0700 (PDT)
Received: from [127.0.0.1] (helo=localhost)
        by relay.expurgate.net with smtp (Exim 4.92)
        (envelope-from <prvs=6590db4e63=fe@dev.tdt.de>)
        id 1qQSUX-00Fwx4-L1; Mon, 31 Jul 2023 14:59:17 +0200
Received: from [195.243.126.94] (helo=securemail.tdt.de)
        by relay.expurgate.net with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <fe@dev.tdt.de>)
        id 1qQSUW-00GpYy-LN; Mon, 31 Jul 2023 14:59:16 +0200
Received: from securemail.tdt.de (localhost [127.0.0.1])
        by securemail.tdt.de (Postfix) with ESMTP id 4F9CA24004B;
        Mon, 31 Jul 2023 14:59:15 +0200 (CEST)
Received: from mail.dev.tdt.de (unknown [10.2.4.42])
        by securemail.tdt.de (Postfix) with ESMTP id 9FEC7240040;
        Mon, 31 Jul 2023 14:59:14 +0200 (CEST)
Received: from mail.dev.tdt.de (localhost [IPv6:::1])
        by mail.dev.tdt.de (Postfix) with ESMTP id E4EF0313F9;
        Mon, 31 Jul 2023 14:59:13 +0200 (CEST)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date:   Mon, 31 Jul 2023 14:59:13 +0200
From:   Florian Eckert <fe@dev.tdt.de>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     mturquette@baylibre.com, sboyd@kernel.org, yzhu@maxlinear.com,
        rtanwar@maxlinear.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Eckert.Florian@googlemail.com
Subject: Re: [PATCH 2/2] dt-bindings: clock: intel,cgu-lgm: add
 mxl,control-gate option
In-Reply-To: <780aa090-3a97-abab-271f-59790df29cc4@linaro.org>
References: <20230731100349.184553-1-fe@dev.tdt.de>
 <20230731100349.184553-3-fe@dev.tdt.de>
 <780aa090-3a97-abab-271f-59790df29cc4@linaro.org>
Message-ID: <11386dd27487075a9a0b1a2aa7794951@dev.tdt.de>
X-Sender: fe@dev.tdt.de
User-Agent: Roundcube Webmail/1.3.17
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
X-purgate-type: clean
X-purgate: clean
X-purgate-ID: 151534::1690808357-1373A9A0-4F2716CF/0/0
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Thanks for your reply,

> You described the desired Linux feature or behavior, not the actual
> hardware. The bindings are about the latter, so instead you need to
> rephrase the property and its description to match actual hardware
> capabilities/features/configuration etc.

You have correctly identified that this is not a hardware configuration,
but a driver configuration. Currently, the driver is configured so that
the gates cannot be switched via the clk subsystem callbacks. When
registering the data structures from the driver, I have to pass a flag
GATE_CLK_HW so that the gate is managed by the driver.

I didn't want to always change the source of the driver when it has to 
take
care of the GATE, so I wanted to map this via the dts.

I have a board support package from Maxlinear for the Lightning Mountain 
Soc
with other drivers that are not upstream now. Some of them use the
clock framework some of them does not.

Due to missing documents it is not possible to send these drivers 
upstream.
Strictly speaking, this is about the gptc and the watchdog.

Since it is a buildin_platform driver, it can also not work via
module parameters.

Best regards

Florian
