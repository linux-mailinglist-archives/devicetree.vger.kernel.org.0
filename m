Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C61FA538BFD
	for <lists+devicetree@lfdr.de>; Tue, 31 May 2022 09:33:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238158AbiEaHdN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 May 2022 03:33:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47402 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235204AbiEaHdM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 May 2022 03:33:12 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 056046F49D
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 00:33:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1653982390; x=1685518390;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=yaL7tj+bNCaojD7dpIfu0rRMv3VVPjyGM5oOqum92Nk=;
  b=SCgECgrERRmOjAhbcM+Clv63VE65WEx0pM7mVjMKZZZ9G3h5dDSEiKpw
   5w1B7YM/Fhm44rGcWRX8IZ5jnbMvvighRLxp5+mmYi8z+nf53poyMJT38
   kW3uKhg0wuxr0/V7j++P95E6su7BNOOuovBbdnGx4xsY5FEPA4sqmmU+b
   4/QYKcFyoGCFdEEF5VY2fmqKFYSEpK4koIskPajpcYpwx5VVTCKl8xhXh
   c8DdZBp5ailxvCYepVahBA/aDdurkpzy0KhSzz9JZqZtsmjWy2i0z9YUj
   yb9xgKblroViX/5rQwbcmRBZeQW9emsiumHd1BuE7sFVJzHVToNXDw0Fn
   A==;
X-IronPort-AV: E=Sophos;i="5.91,264,1647298800"; 
   d="scan'208";a="24165816"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 31 May 2022 09:33:06 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 31 May 2022 09:33:06 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 31 May 2022 09:33:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1653982386; x=1685518386;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=yaL7tj+bNCaojD7dpIfu0rRMv3VVPjyGM5oOqum92Nk=;
  b=kIF8WOJbl0kUb0M2Uh4HREaUF/WrhIUkRXV+0aGI2mYYBq1O5Ls7uVKw
   qI5naLN2PexiqoopcZbWu6cd3jaD1nf4YsFJZcvYbgU6sZ1Pnrjx9B5kY
   x69E49UZb9eggz6jRKvoP/hrkds6cY70ApY356XdTy9xbLYSEw1MNaVAV
   WQG+zFXQaBFCvAnKJYufZgGi2/qX/ftZV96cWHEfvU3eI7xtRKbuuSLT/
   piKhSySc7FLLencgSxGgR3Llxt+wFYB/4vNSJah2hIDfPmM+F5rjwWVKa
   xv8iFbqqMC/G8RCThG3c/F8QK82lqc2fpCeYyn0Y+H1ZkrXC43pMqSh1x
   w==;
X-IronPort-AV: E=Sophos;i="5.91,264,1647298800"; 
   d="scan'208";a="24165815"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 31 May 2022 09:33:06 +0200
Received: from steina-w.localnet (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 8564A280004;
        Tue, 31 May 2022 09:33:06 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Marco Felsch <m.felsch@pengutronix.de>
Cc:     robert.foss@linaro.org, laurent.pinchart@ideasonboard.com,
        jernej.skrabec@gmail.com, jonas@kwiboo.se, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, sam@ravnborg.org,
        maxime@cerno.tech, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, kernel@pengutronix.de,
        dri-devel@lists.freedesktop.org
Subject: Re: (EXT) [PATCH 5/6] dt-bindings: drm/bridge: ti-sn65dsi83: Add reset controller documentation
Date:   Tue, 31 May 2022 09:33:04 +0200
Message-ID: <5789362.MhkbZ0Pkbq@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20220530150548.1236307-6-m.felsch@pengutronix.de>
References: <20220530150548.1236307-1-m.felsch@pengutronix.de> <20220530150548.1236307-6-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_CSS_A autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marco,

Am Montag, 30. Mai 2022, 17:05:48 CEST schrieb Marco Felsch:
> The bridge device can now also be enabled/disabled by an external reset
> controller. So the device now supports either enable/disable by simple
> GPIO or by an Reset-Controller.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  .../devicetree/bindings/display/bridge/ti,sn65dsi83.yaml    | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git
> a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml index
> 7306b9874dc3..eff8360c184e 100644
> --- a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> @@ -35,6 +35,12 @@ properties:
>    vcc-supply:
>      description: A 1.8V power supply (see regulator/regulator.yaml).
> 
> +  resets:
> +    maxItems: 1
> +    description: |
> +      Reset specifier for bridge_en pin. This is required only if the
> brdige_en +      pin is connected to a reset controller.
> +
>    ports:
>      $ref: /schemas/graph.yaml#/properties/ports

Maybe it should be added here, that 'resets' is an alternative to 'enable-
gpios' as both are essentially controlling the same pin from the bridge.

Best regards
Alexander


