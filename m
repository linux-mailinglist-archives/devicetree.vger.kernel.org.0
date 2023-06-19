Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 971EB734BC7
	for <lists+devicetree@lfdr.de>; Mon, 19 Jun 2023 08:34:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229481AbjFSGec (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jun 2023 02:34:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45348 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229997AbjFSGeb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jun 2023 02:34:31 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DAC32123
        for <devicetree@vger.kernel.org>; Sun, 18 Jun 2023 23:34:30 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 6FF1D614C1
        for <devicetree@vger.kernel.org>; Mon, 19 Jun 2023 06:34:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C30AFC433C8;
        Mon, 19 Jun 2023 06:34:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1687156469;
        bh=kTLa1bABqE7PRoQN+W58XG0ov79lgaoOc2p0q5KvPv8=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=VXoLRzOF0VvD/3nq2o0zWmZr9+afT2QrBW/K7009DGYtIvkzaV+pjwvff7TLFthf+
         R4jI16YPbMO5QMktV03LUob5jTFEuFkJuOUv9amSbxJbqtnx6UChAGLMeGkUjKLyAD
         74xvHykvZRc0Yzhf2dHOuWnqHIs6/g/BXXWgF9TI2LcE3LfdPRsrMjCYI+i4L3RaP3
         u5zT0t9pGyp1vUHi/O1NMgJFkZ5afFKaeK4voPVfNdAyTNc9xpO+HR6XE4D6EBvF9X
         DcuBAqH1veT5giW/ici6JZ4nwW9yA+/ld+pHp3qqu51ycFfDFUvGUCw1Rz+ORp1rY2
         0cJLEQWnDTvkQ==
Message-ID: <12fe2d4f-dba8-8a78-b354-6812d96ba24b@kernel.org>
Date:   Mon, 19 Jun 2023 08:34:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v2 03/17] dt-bindings: mtd: Mark nand-ecc-placement
 deprecated
Content-Language: en-US
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <tudor.ambarus@linaro.org>,
        Pratyush Yadav <pratyush@kernel.org>,
        Michael Walle <michael@walle.cc>,
        linux-mtd@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        devicetree@vger.kernel.org
Cc:     Chris Packham <Chris.Packham@alliedtelesis.co.nz>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>
References: <20230606175246.190465-1-miquel.raynal@bootlin.com>
 <20230606175246.190465-4-miquel.raynal@bootlin.com>
From:   Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20230606175246.190465-4-miquel.raynal@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/06/2023 19:52, Miquel Raynal wrote:
> The nand-ecc-placement property has been deprecated for a long time
> already, it does not really mean something useful for the ECC engines
> and is anyway in the vast majority of cases totally useless. Just mark
> it deprecated to avoid appealing people to use it.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

