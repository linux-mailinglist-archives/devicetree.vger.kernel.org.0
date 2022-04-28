Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E1936512FB6
	for <lists+devicetree@lfdr.de>; Thu, 28 Apr 2022 11:47:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230021AbiD1JsN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Apr 2022 05:48:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345313AbiD1JOg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Apr 2022 05:14:36 -0400
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 378565E770;
        Thu, 28 Apr 2022 02:11:21 -0700 (PDT)
Received: from [192.168.12.102] (unknown [159.196.94.94])
        by mail.codeconstruct.com.au (Postfix) with ESMTPSA id CB09C20295;
        Thu, 28 Apr 2022 17:11:13 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=codeconstruct.com.au; s=2022a; t=1651137075;
        bh=r9m7rv7lfE3EHiTyUyYvwKe0vUFfozsaK1tPrKsB9Rs=;
        h=Subject:From:To:Cc:Date:In-Reply-To:References;
        b=NO48EukKOgboE5Bo0Xy43GxN0KspOHsoGvSYZIHnVW3GTKzOA8SY7nbVs+/YyVfXd
         lQirDyLs/CMzav3FIpaEi5Gw95SoI2zVGg2m2NaIZsm0SkxHNuQ8eMgERGDfF5MSJa
         MLwCBXlDrCFcYh2KhQYqPXqh1Hs2dE/iYOXcA1HkE3k+d8eLMut7ZC2dIeEruhK9eV
         UaUtdGdpKeniBmFo6TEhqHGDrgxrAzzBY5jIvHvunlibcKg7Z+bErc0HwXLQET5Phx
         zilrvT8Etxw53Yq8KLHmcaPBioOBViXzqmF2iFIHCb9BNKwP7SxS6QX9I1IO6sVd2q
         xb1HXEzRittnA==
Message-ID: <176814ee51d7f238e5137606f50a99904e9017cb.camel@codeconstruct.com.au>
Subject: Re: [dtschema PATCH] schemas: i2c: Add missing properties and
 descriptions
From:   Matt Johnston <matt@codeconstruct.com.au>
To:     Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        devicetree-spec@vger.kernel.org
Cc:     Wolfram Sang <wsa+renesas@sang-engineering.com>,
        Eugen Hristev <eugen.hristev@microchip.com>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
        Jon Hunter <jonathanh@nvidia.com>,
        Alain Volmat <alain.volmat@foss.st.com>
Date:   Thu, 28 Apr 2022 17:11:13 +0800
In-Reply-To: <20220427175956.362987-1-robh@kernel.org>
References: <20220427175956.362987-1-robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1ubuntu2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 2022-04-27 at 12:59 -0500, Rob Herring wrote:
> Add remaining properties and descriptions from i2c.txt binding in Linux
> kernel tree. The Cc list are the authors of i2c.txt.
> 
> Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>
> Cc: Eugen Hristev <eugen.hristev@microchip.com>
> Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>
> Cc: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
> Cc: Jon Hunter <jonathanh@nvidia.com>
> Cc: Alain Volmat <alain.volmat@foss.st.com>
> Cc: Matt Johnston <matt@codeconstruct.com.au>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
> Cc list, 
> 
> I need your or your company's permission to relicense i2c.txt contents 
> (used in 'description') to BSD-2-Clause. Please ack and provide a 
> copyright if desired.

Acked-by: Matt Johnston <matt@codeconstruct.com.au>

Cheers,
Matt


