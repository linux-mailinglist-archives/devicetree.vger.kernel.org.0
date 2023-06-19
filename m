Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 41163734BBF
	for <lists+devicetree@lfdr.de>; Mon, 19 Jun 2023 08:29:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229555AbjFSG3C (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jun 2023 02:29:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44156 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229999AbjFSG24 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jun 2023 02:28:56 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38E87E56
        for <devicetree@vger.kernel.org>; Sun, 18 Jun 2023 23:28:52 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id AA26F614B6
        for <devicetree@vger.kernel.org>; Mon, 19 Jun 2023 06:28:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 13B5CC433C0;
        Mon, 19 Jun 2023 06:28:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1687156131;
        bh=5H6NfjLHLoCYiMs1YIWSouPqe6Jr3GUlzaml/UWEkkk=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=R9ypIbhrU2uig4v9Ac8FuY7uQtX0Uj+a0DMGN4XNdaxol+E9AkaV6EgODJWlxQ5E4
         0QcS3dVGgJLM1HiTv4zjK4WY/0HOpt2n4w/4bdtBThaMb12DU1jHB9AQjcS4bV0g1u
         YuCXHYHeBnqoorvQNV23tCmJ4qkr1Zs9t5MOC7ohcV0C6FnCp6oqWf6OEFcaY3peA2
         C/bForGbg6nY9YjOqfBSkhcMhqxtHM/QTndwTcHQpoA1qkZDSnOdMKb5THd5tGwEt3
         xQdxAwpN0ZbrMZX558DnOm3XQ7TevLzNbgvIs7etmfnlTwgGfOV1EPj6Yd6WkMt83i
         oc1Ljioj7uQww==
Message-ID: <f3b86b21-a042-06f9-dd90-03fbaa9c0d42@kernel.org>
Date:   Mon, 19 Jun 2023 08:28:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v2 01/17] dt-bindings: mtd: Accept nand related node names
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
 <20230606175246.190465-2-miquel.raynal@bootlin.com>
From:   Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20230606175246.190465-2-miquel.raynal@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-7.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/06/2023 19:52, Miquel Raynal wrote:
> There is no addition there, but the mtd.yaml file is so generic, it can
> be referenced by a wide variety of devices, including nand ones which
> already define the node name to "nand@<cs>". Right now it does not lead
> to any failure but when we will constrain more the schema, this will
> become a problem because we want the mtd-wide properties like label or
> partitions to be available for the callers.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

