Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 64BD66724D7
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 18:27:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229804AbjARR1j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Jan 2023 12:27:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55630 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229840AbjARR1i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Jan 2023 12:27:38 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 12A7336FDD
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 09:27:38 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id B02C4B81E0C
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 17:27:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E6DE8C433EF;
        Wed, 18 Jan 2023 17:27:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1674062855;
        bh=uDW6T4UAwLieiCNlFUU7aeakTgyrS9giIWSwOWtoE1o=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=kt6ytfZiWMF3EaPKpYmFO/akC9Flz8suAVqfF/tHjqi2SozMlhQd82XiiGX72tsVv
         WmkfNaT8KKFouxL1Izu/ot8OqE99R+kROeFWwLDq6jPMgPqVGXmk4KDDrsKVBeggMA
         bFsJkX99Yf/li6plHTOPrZ4Z1uL5mlHeXOyOk1TJdqDubpNM2mRHi97/xUt4lEOFxL
         tkckrJw+OE2xQkALWG1HApB83AEVpAdc4GZ1s5vePMi/Rl+F7+tXmJAEnPnJWNajBv
         usw8GFULmi7zieZs4O54V5vQNfbPvPU1maSAgTMz5ONa+LhPzXH3cn47642pD4mZQN
         9/Rh7SYLloU/A==
Date:   Wed, 18 Jan 2023 22:57:31 +0530
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
Subject: Re: [PATCH v2] dt-bindings: phy: g12a-usb2-phy: fix compatible
 string documentation
Message-ID: <Y8gsA98CR0k3pMHQ@matsya>
References: <8d960029-e94d-224b-911f-03e5deb47ebc@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8d960029-e94d-224b-911f-03e5deb47ebc@gmail.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16-01-23, 21:17, Heiner Kallweit wrote:
> The compatible strings in the driver don't have the meson prefix.
> Fix this in the documentation and rename the file accordingly.

Applied, thanks

-- 
~Vinod
