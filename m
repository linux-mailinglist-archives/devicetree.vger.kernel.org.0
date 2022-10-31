Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B05416139F0
	for <lists+devicetree@lfdr.de>; Mon, 31 Oct 2022 16:23:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230525AbiJaPXU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Oct 2022 11:23:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50192 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230056AbiJaPXR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Oct 2022 11:23:17 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41AFB11470
        for <devicetree@vger.kernel.org>; Mon, 31 Oct 2022 08:23:17 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id CFED26127D
        for <devicetree@vger.kernel.org>; Mon, 31 Oct 2022 15:23:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6BCD3C433C1;
        Mon, 31 Oct 2022 15:23:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1667229796;
        bh=HJG/CuApGqqLjUDx4rdHq/VPzI9YhRhJjxfBzXc0IcI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=GeTjXulpwr+3+hdDAAxTmXeMxXcaKAFEaQpAbqFlQ8WgCQUktPb5p4gpAjhAD06k+
         kWjN36S6sjD7ESl0rOGIbxR2g12k/cdqPEaHmUb33IRwoSYKyqZzP0e9Tnx7MvAQ5Q
         CPuVpq/fH3M9WX/ZAESjM63mEgCNP5Zf8MxVQ59/mBEhTn/Iy0oMS+LaoaDrEJumL6
         60tZDhvPkBBnl8SI7S0BAcMlRwrGSrP6woJ30Bi/dbJN6a04RAhU6dicgDOTu3zT2l
         Dy8Wvvp1lQID4+H/pdCtUSl2WnBMDTue93m2rjNRh1tOW9xAAJGihQo79WyK1V4Sro
         B1DxB1GC/peug==
Date:   Mon, 31 Oct 2022 15:23:11 +0000
From:   Lee Jones <lee@kernel.org>
To:     Matt Ranostay <mranostay@ti.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        miquel.raynal@bootlin.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: mfd: ti,am3359-tscadc: add missing
 power-domains property
Message-ID: <Y1/oX1I0gUZFy/sp@google.com>
References: <20221025080014.403457-1-mranostay@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221025080014.403457-1-mranostay@ti.com>
X-Spam-Status: No, score=-8.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 25 Oct 2022, Matt Ranostay wrote:

> Add optional power-domains property to avoid the following dt-schema
> failures:
> 
> tscadc@40200000: 'power-domains' does not match any of the regexes: 'pinctrl-[0-9]+'
> 
> Signed-off-by: Matt Ranostay <mranostay@ti.com>
> ---
>  Documentation/devicetree/bindings/mfd/ti,am3359-tscadc.yaml | 3 +++
>  1 file changed, 3 insertions(+)

Applied, thanks.

-- 
Lee Jones [李琼斯]
