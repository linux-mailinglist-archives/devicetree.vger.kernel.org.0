Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 756404EB273
	for <lists+devicetree@lfdr.de>; Tue, 29 Mar 2022 19:05:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239420AbiC2RHR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Mar 2022 13:07:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43296 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238507AbiC2RHR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Mar 2022 13:07:17 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4B271403DE
        for <devicetree@vger.kernel.org>; Tue, 29 Mar 2022 10:05:30 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 6FAE0B81857
        for <devicetree@vger.kernel.org>; Tue, 29 Mar 2022 17:05:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 987BEC340ED;
        Tue, 29 Mar 2022 17:05:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1648573528;
        bh=btnIAVCv9QrTXVbd0X5l88dYSHCYB2PlSI+Hh2kFE3I=;
        h=Date:To:Cc:From:Subject:From;
        b=hfBEUrepDoM6WBQjdSnXhKcCQiQBe2f3XSvo3rIuYEs4oNAaqx4tiXFgk1pLwnGxv
         2cyOHt6pLTum7FiA1DZLt4GNEQN+a5ROw77cxeVmpCW26PTZEyOewVTH8nDcRPN0PP
         SICBZjmNpkLGx9mD8hfuU8R99VYqhIFsaW0FHk92Vsu7u62PxGVJx2ljROHkR2foW6
         N7uWGD/E7f/rSir1I23DsEgUuOROJx6rGLxSP/4SGiEf5BlixdxtDwRInfXe4OE66C
         3MzIAiQ+6EIA1EAzv8qeaRV2Wiokx/N94mm+IZtNAf0lbYkPvzC6NuxYRnRhMYpLUm
         FB6yaj31GYHHA==
Message-ID: <ce367384-3d44-b7a9-06cd-1ca1f2ddf7e9@kernel.org>
Date:   Tue, 29 Mar 2022 19:05:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
X-Mozilla-News-Host: news://nntp.lore.kernel.org:119
Content-Language: en-US
To:     Heiko Stuebner <heiko@sntech.de>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-rockchip@lists.infradead.org
From:   Krzysztof Kozlowski <krzk@kernel.org>
Subject: arm/rockchip.yaml - many separate entries instead of enums
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Heiko,

I found that Documentation/devicetree/bindings/arm/rockchip.yaml uses
pattern of one board per item in oneOf.

This leads to quite big file, with many entries, although gives nice
description for each board.

I find enum-based pattern, like FSL [1], much more readable and compact.
What do you think? I could re-organize the arm/rockchip.yaml, but I
don't want to mess with your preference.

[1]
https://elixir.bootlin.com/linux/latest/source/Documentation/devicetree/bindings/arm/fsl.yaml#L191

Best regards,
Krzysztof
