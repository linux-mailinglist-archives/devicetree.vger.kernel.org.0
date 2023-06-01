Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E72A0719CB6
	for <lists+devicetree@lfdr.de>; Thu,  1 Jun 2023 14:55:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232336AbjFAMzy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Jun 2023 08:55:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232252AbjFAMzx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Jun 2023 08:55:53 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A18C9138
        for <devicetree@vger.kernel.org>; Thu,  1 Jun 2023 05:55:52 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 20AAE60C8E
        for <devicetree@vger.kernel.org>; Thu,  1 Jun 2023 12:55:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4FC34C433D2;
        Thu,  1 Jun 2023 12:55:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1685624151;
        bh=3j3jZx54Skw7SCFyfcaIA/+uHlmSwQL5bWo6rQYQkxc=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=SWWxtPZhBvEH6UJxwihew4bx3Mlp44h3Cnoe9ntwEmiH49pszbo9Y2KgjZRStdTcr
         cLrv+PE02VFwImEjoBrW4wSTCpdpluLg17AHTGieWOMsu35YgUDP082f7tNat7pImM
         Yn/1LEWTH1pWQ7JW8d4h4i/iOCb3n4gySFWTGwYSPCxZ2GsAlvZ6Nw/5TBbJqz7G3L
         Kz4EqK7z85Y42c34oupd3TAoRs3NyUFrHNbT9Y0GOMim/NfsMLmPKVZ6Z4fsv1Oula
         1FeGql9JsCcazxiaY9SIDiftQ/+csJSk1xBsGFCqhonsz906aZEVZEkl8KJibDZwAX
         O1LQj95LC5l1A==
From:   rfoss@kernel.org
To:     dri-devel@lists.freedesktop.org, Marek Vasut <marex@denx.de>
Cc:     Robert Foss <rfoss@kernel.org>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jonas Karlman <jonas@kwiboo.se>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        devicetree@vger.kernel.org, David Airlie <airlied@gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: display: bridge: tc358762: Document reset-gpios
Date:   Thu,  1 Jun 2023 14:55:44 +0200
Message-Id: <168562413774.523376.9790217290891273566.b4-ty@kernel.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230530192805.648646-1-marex@denx.de>
References: <20230530192805.648646-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-7.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Robert Foss <rfoss@kernel.org>

On Tue, 30 May 2023 21:28:04 +0200, Marek Vasut wrote:
> This chip has one reset GPIO input, document it. The reset GPIO
> is optional as it is sometimes not connected on some hardware.
> 
> 

Applied, thanks!

[1/2] dt-bindings: display: bridge: tc358762: Document reset-gpios
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=e8001973bb45
[2/2] drm/bridge: tc358762: Add reset GPIO support
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=3355f4ee561d



Rob

