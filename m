Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B9CD873DCF9
	for <lists+devicetree@lfdr.de>; Mon, 26 Jun 2023 13:11:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230179AbjFZLLh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jun 2023 07:11:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230290AbjFZLLf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Jun 2023 07:11:35 -0400
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7DB0DD2
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 04:11:21 -0700 (PDT)
X-GND-Sasl: thomas.petazzoni@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1687777880;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=uQv3AS+HLUfFEazEC3SqY1OYzbSNG18VjDZHK3YjV+Y=;
        b=UfKRyX3M9wmFG+dqZyLtdLzNfoyUWh/+3Oz7A9E2eGj1XLG4KWRl/A5JHEHZdMbjrzMY7Q
        nInBAqUdyyypPc3pf57TQHrAtocRcu+zadSKlgdPmQpDwIV9PslFyUNRq/RSK5QPJElhT8
        V+MdWTcjseXnAOUFDizupmj8MXC50wnctlkvYdrHaKYCnq+u8voWSPuDZyqx1Gb/gzyW3S
        gjEYh3lTEKQUd4FtUqQlVTJD9yWVDZ7Q/OltNzz3cqwqMRC0xPmP/hOAvD9wdjE8k2pfJB
        mbVLNuJnFCwfciBaNOXaFKBnb9lnhHqQy2b7E3RMnx7K7LY3S5qYGi/iX5XqwA==
X-GND-Sasl: thomas.petazzoni@bootlin.com
X-GND-Sasl: thomas.petazzoni@bootlin.com
X-GND-Sasl: thomas.petazzoni@bootlin.com
X-GND-Sasl: thomas.petazzoni@bootlin.com
X-GND-Sasl: thomas.petazzoni@bootlin.com
X-GND-Sasl: thomas.petazzoni@bootlin.com
X-GND-Sasl: thomas.petazzoni@bootlin.com
X-GND-Sasl: thomas.petazzoni@bootlin.com
X-GND-Sasl: thomas.petazzoni@bootlin.com
X-GND-Sasl: thomas.petazzoni@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id B65A6FF80B;
        Mon, 26 Jun 2023 11:11:18 +0000 (UTC)
Date:   Mon, 26 Jun 2023 13:11:18 +0200
From:   Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To:     Rob Herring <robh@kernel.org>
Cc:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Maxime Ripard <mripard@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <tudor.ambarus@linaro.org>,
        Pratyush Yadav <pratyush@kernel.org>,
        Michael Walle <michael@walle.cc>, linux-mtd@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: mtd: Fix nand-controller.yaml license
Message-ID: <20230626131118.0f6fd166@windsurf>
In-Reply-To: <20230623210508.GA1096125-robh@kernel.org>
References: <20230622212415.3583886-1-miquel.raynal@bootlin.com>
        <20230623210508.GA1096125-robh@kernel.org>
Organization: Bootlin
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Rob,

On Fri, 23 Jun 2023 15:05:08 -0600
Rob Herring <robh@kernel.org> wrote:

> Yes, we do want dual license, but things converted from txt bindings 
> need those authors' permission as the txt bindings are all implicitly 
> GPLv2. That didn't happen here, so we kept the default implicit license. 
> Looks like this case is all Bootlin authors for significant parts of the 
> original txt binding, so you should be good on that part (assuming your 
> employer agrees). Maxime did the schema, so need his permission too.
> 
> Note I have blanket permission on dual licensing from several companies 
> for DT files. It would be nice to get the same from Bootlin.

I hereby allow the relicensing of all contributions from Bootlin
employees on Device Tree binding documents in the Linux kernel from
GPLv2 to GPLv2 or BSD-2-Clause.

Let me know if this statement is sufficient or if you need anything
more formal or specific.

Best regards,

Thomas Petazzoni
-- 
Thomas Petazzoni, co-owner and CEO, Bootlin
Embedded Linux and Kernel engineering and training
https://bootlin.com
