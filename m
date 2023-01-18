Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 004706724D5
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 18:27:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230090AbjARR1F (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Jan 2023 12:27:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55182 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229963AbjARR1E (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Jan 2023 12:27:04 -0500
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26D411EFC7
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 09:27:04 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by sin.source.kernel.org (Postfix) with ESMTPS id 93D81CE1DD5
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 17:27:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3C8A2C433EF;
        Wed, 18 Jan 2023 17:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1674062820;
        bh=BvKSOudmvgU0WLOSTyYGHObuB3lNc/Lj3KUEm5JfhTM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Z7LYo9K16WhEtP5lNaeMXkZm3bCgX7DKPkaiXQsJf0VN7JwtWc3z/t9WDADgjk+Qo
         hv9GVL6uNp7M5+a1LOm018oQyPg1/eyavh7p4wd1LCcEEBT9VyMJh1kSKOQ1ppyysQ
         P0cYwSkqFyu4V2rE1BKkR7uxX8te5t1336tmbmvRmCYX44WAxG1Qs+n83eiv5UXr8f
         MO+xEb52Dqi1aQdjUg/iHr5cuS8WeCTPkjxJjCllRuYTkAb0dlIjHYDLLP6hTy14rz
         YAsxV/3r1KTtH0ngKlUC+WvTpMHFnbgCk0WccgYmlec1zUlEecWZdumK+ET1xB9ZDL
         F5iDouwSVl4cw==
Date:   Wed, 18 Jan 2023 22:56:57 +0530
From:   Vinod Koul <vkoul@kernel.org>
To:     Heiner Kallweit <hkallweit1@gmail.com>
Cc:     Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        linux-phy@lists.infradead.org,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>
Subject: Re: [PATCH v2] dt-bindings: phy: g12a-usb3-pcie-phy: fix compatible
 string documentation
Message-ID: <Y8gr4dJSNBitl9ze@matsya>
References: <0a82be92-ce85-da34-9d6f-4b33034473e5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0a82be92-ce85-da34-9d6f-4b33034473e5@gmail.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16-01-23, 21:19, Heiner Kallweit wrote:
> The compatible string in the driver doesn't have the meson prefix.
> Fix this in the documentation and rename the file accordingly.

Applied, thanks

-- 
~Vinod
