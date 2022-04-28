Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3FAA5512811
	for <lists+devicetree@lfdr.de>; Thu, 28 Apr 2022 02:29:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229934AbiD1Ach (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Apr 2022 20:32:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47340 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229587AbiD1Ach (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Apr 2022 20:32:37 -0400
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 116E713C
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 17:29:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
        References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
        Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
        Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
        bh=KigzYfdn+iSeJPF6bdr56VWg+fbFPuorszO5TU2hSa0=; b=YmtZ5yGXslTXW2Sx/cXGZ8owdd
        p/Y4VySagTO/3jnqlE/Mm18Jm0OLS6Jwx3VVzFwehaR3Ibc+a4Yd9whb4rRk7GfoMMOPckFW0vvMK
        e1D/dW+tCp07l4tCP7Vy8HTKKeo38u4jmLOLa3P+ZCZQf6l0t6DU3ZsjywLEvU0YWvU0=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
        (envelope-from <andrew@lunn.ch>)
        id 1njs23-000D1I-Tq; Thu, 28 Apr 2022 02:29:19 +0200
Date:   Thu, 28 Apr 2022 02:29:19 +0200
From:   Andrew Lunn <andrew@lunn.ch>
To:     Mauri Sandberg <maukka@ext.kapsi.fi>
Cc:     soc@kernel.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, arnd@arndb.de, olof@lixom.net,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        sebastian.hesselbarth@gmail.com
Subject: Re: [RFC RFT PATCH v1 0/1] ARM: orion5x: convert D-Link DNS-323 to
 the Device Tree
Message-ID: <Ymnf34FA0t9Rtqhv@lunn.ch>
References: <20220427162123.110458-1-maukka@ext.kapsi.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220427162123.110458-1-maukka@ext.kapsi.fi>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> - how to configure RTC to wake system from sleep?

The st,m41t80 binding document has:

Optional properties:
- interrupts: rtc alarm interrupt.
- clock-output-names: From common clock binding to override the default output
                      clock name
- wakeup-source: Enables wake up of host system on alarm

which you don't appear to have in your DT files.

      Andrew
