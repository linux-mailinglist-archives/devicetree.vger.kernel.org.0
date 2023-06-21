Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3CD12738D28
	for <lists+devicetree@lfdr.de>; Wed, 21 Jun 2023 19:34:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230038AbjFURe3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jun 2023 13:34:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230017AbjFURe2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jun 2023 13:34:28 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9900CF1
        for <devicetree@vger.kernel.org>; Wed, 21 Jun 2023 10:34:27 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 2B86861648
        for <devicetree@vger.kernel.org>; Wed, 21 Jun 2023 17:34:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09BFDC433C8;
        Wed, 21 Jun 2023 17:34:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1687368866;
        bh=w+j4f0hYpVnXaVscO0mrsKi1Q9BR0HA6avy4G1LwDVE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=BmD950TE+eZ3JMUs23+Xmbcn1dt/hvs9VExg2PPUllZtuen9VHcm5u6G3ZJjftC2Q
         MBgOS9h7cy4A4VIZxKgqaK8uQFiAPTfZDnPpmvTev/7+tjLpLTwBzBiHoyugqvasVa
         HDasTrkAFVhFBD3MHXesnBzsskg4FMW27XXhOsayvSG7Qtq0S7H4dd1vSS4900UpmO
         e2BhfXDFmTiOS1iqv7ytPHv40uTY/tTZtmYMoh7FEo0H/Mxzbu5ejyAdL18RprWVWE
         eIvRmMU98dMAN3K6q++N3n1vxMFhGIBzNDvMp7KDCUS/DKLNSdMyXWBQm0L1X91Q5X
         BP/Sb2tz3jWog==
Date:   Wed, 21 Jun 2023 23:04:22 +0530
From:   Vinod Koul <vkoul@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Liu Ying <victor.liu@nxp.com>, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org,
        Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v2 1/1] dt-bindings: phy: mixel,mipi-dsi-phy: Remove
 assigned-clock* properties
Message-ID: <ZJM0nh0/xP1n5D1z@matsya>
References: <20230609071538.149712-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230609071538.149712-1-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09-06-23, 09:15, Alexander Stein wrote:
> With dt-schema v2021.02 these properties are added by default. Some SoC
> (e.g. imx8mq) configure more than just one clock using these properties.

Applied, thanks

-- 
~Vinod
