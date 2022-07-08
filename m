Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AADFA56BC4C
	for <lists+devicetree@lfdr.de>; Fri,  8 Jul 2022 17:09:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238268AbiGHOjm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Jul 2022 10:39:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58468 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238263AbiGHOjj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Jul 2022 10:39:39 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 221A813F0D
        for <devicetree@vger.kernel.org>; Fri,  8 Jul 2022 07:39:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1657291178; x=1688827178;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=sbD4RT0bKV1jTxftgVyRoCoVpvDUnrS8ZKB1y15p02c=;
  b=AWsNoi1uOgLsTBzHfgd2y24c3Rf7oGYqfTdAhWqsCtbYVLEEyr/Eb4vi
   uHrsz5DYPXWPovYTOaOm81HXgEMaLEyfbHCPskT82QzFBWgFHh7IMP9U6
   jw+NwJ/fKJbwqepf7KQP74rd2mPusybjSq5WBrJadFsvdtPrvlbnbelOJ
   UuRrtylnPxZBVCSZ+/hKlYvKJV3O7PKp074rEoGf84jooff/fsqteFQKr
   jNxCWAd2s6J7ci/u2wPiMWwpW2kOnzkeYcHEGbaTIGykBZaZqhCnRVnjY
   GITGJ+VodNmtqIo37Pw8Zl0xjQKzByloJmauOCaLrX9L56wVg8zjuk9rN
   g==;
X-IronPort-AV: E=Sophos;i="5.92,255,1650924000"; 
   d="scan'208";a="24946279"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 08 Jul 2022 16:39:36 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Fri, 08 Jul 2022 16:39:36 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Fri, 08 Jul 2022 16:39:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1657291176; x=1688827176;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=sbD4RT0bKV1jTxftgVyRoCoVpvDUnrS8ZKB1y15p02c=;
  b=kZljQoUEVBL+W4Tj18/jotebHjLvuxKOJbQxoBRb5lmqz6JmqviR60gy
   kQNoj3KaiyAIzgUkhgBH7DOYoZQYk8VRVh6oDGlT5UmZtmsg3eTKDc0PY
   hWDfes40hYw4FhGSchI3qe9ZNHjdTwFUifncPJsE00SG8nMfmh6BMhtDS
   OESSr+H+F5iR43sa3oGw2BA4rtnoVQ3413ohMSuJrGD9F+zYsNavEsuEl
   ZQQbpc5Ga3gkCTVBs7x+0p46K2pVgdoHGCyWap5BC1i6BEe0ID0h4sqxF
   uPddDxnAXlopEWjqwStmNJ9eHTyxdMJGixnJNFkvwRuDwHTrYna3T3FXV
   w==;
X-IronPort-AV: E=Sophos;i="5.92,255,1650924000"; 
   d="scan'208";a="24946278"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 08 Jul 2022 16:39:35 +0200
Received: from steina-w.localnet (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id C8421280075;
        Fri,  8 Jul 2022 16:39:35 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Markus Niebel <Markus.Niebel@tq-group.com>
Subject: Re: [PATCH v2 0/3] TQMa8MPxL + MBa8MPxL support
Date:   Fri, 08 Jul 2022 16:39:33 +0200
Message-ID: <15466736.O9o76ZdvQC@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20220622114949.889274-1-alexander.stein@ew.tq-group.com>
References: <20220622114949.889274-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Ping,

I would like to get patch 1 & 2 into v5.20.

Regards,
Alexander

Am Mittwoch, 22. Juni 2022, 13:49:46 CEST schrieb Alexander Stein:
> Hello,
> 
> this patch set adds support for TQMa8MPxL on mainboard MBa8MPxL. This
> already includes some pinctrl and/or peripheral configurations which are
> not yet in use, e.g. PWM for PWM fan, backlight for LVDS panel, etc.
> Also note. this only supports MBa8MPxL Rev.2xx, Revision 1xx is
> not supported!
> 
> Changes in v2:
> * Added a-b in patch1
> * Changed LED label to function + color
> * Renamed some nodes
> * Added more pwm-backlight properties
> * Added comment about missing display compatible
> * Added display power-supply regulator
> * Fixed pinctl settings for HDMI mux
> * Added patch3 as WIP to show the LVDS overlay
> 
> Best regards,
> Alexander
> 
> Alexander Stein (2):
>   arm64: dts: freescale: add initial device tree for TQMa8MPQL with
>     i.MX8MP
>   [DNI/WIP] arm64: dts: freescale: Add LVDS overlay for TQMa8MPxL
> 
> Markus Niebel (1):
>   dt-bindings: arm: add TQMa8MPxL board
> 
>  .../devicetree/bindings/arm/fsl.yaml          |  12 +
>  arch/arm64/boot/dts/freescale/Makefile        |   3 +
>  .../imx8mp-tqma8mpql-mba8mpxl-lvds.dts        |  44 ++
>  .../freescale/imx8mp-tqma8mpql-mba8mpxl.dts   | 708 ++++++++++++++++++
>  .../boot/dts/freescale/imx8mp-tqma8mpql.dtsi  | 284 +++++++
>  5 files changed, 1051 insertions(+)
>  create mode 100644
> arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl-lvds.dts create
> mode 100644 arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
> create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql.dtsi




