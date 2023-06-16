Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F3566732C71
	for <lists+devicetree@lfdr.de>; Fri, 16 Jun 2023 11:48:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234431AbjFPJsd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jun 2023 05:48:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233647AbjFPJsb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jun 2023 05:48:31 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDF8EEA
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 02:48:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1686908911; x=1718444911;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Y5n7yC/vISMKem0iffVvi0/qroRR/9KszNztOx6UeYk=;
  b=u5VFDljd9MxHtZ/vb5viet0Aj9/diK+jXJxeDs8q9d7K50RUaCBp6DV7
   k7HHymnDK+t9+K9+bZSubV/zH8Xf6UZWE9HJ24Ew2fQURUPUk3PqYe1WA
   2d/5UKe57kGBXka9vTuItinAhjMrNgWxsQ+j4bjGH24M8QQCi5pFv0ZG+
   vSymqnv7QnAsPsw5TSDmskzTjFz1qctUbuO1skfhEvlO1CHWtSwS3L8oO
   YymuMY6aIpmXhuqQJKlvM8U95CO/jWDqtqoWhKRpELBOGGqYSjvJZwaz3
   JlTQIRgAbDLluOd0jCLbZMYdx/5G3XlUYI1r1b8CV/+sna0Jf7aHyk9rY
   w==;
X-IronPort-AV: E=Sophos;i="6.00,247,1681196400"; 
   d="asc'?scan'208";a="216332419"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 16 Jun 2023 02:48:30 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 16 Jun 2023 02:48:29 -0700
Received: from wendy (10.10.115.15) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.21 via Frontend
 Transport; Fri, 16 Jun 2023 02:48:27 -0700
Date:   Fri, 16 Jun 2023 10:48:01 +0100
From:   Conor Dooley <conor.dooley@microchip.com>
To:     Binbin Zhou <zhoubinbin@loongson.cn>
CC:     Binbin Zhou <zhoubb.aaron@gmail.com>,
        Huacai Chen <chenhuacai@loongson.cn>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        <devicetree@vger.kernel.org>, Huacai Chen <chenhuacai@kernel.org>,
        <loongson-kernel@lists.loongnix.cn>,
        Xuerui Wang <kernel@xen0n.name>, <loongarch@lists.linux.dev>,
        Jiaxun Yang <jiaxun.yang@flygoat.com>,
        Hongliang Wang <wanghongliang@loongson.cn>
Subject: Re: [PATCH 5/6] LoongArch: DeviceTree for Loongson-2K1000
Message-ID: <20230616-projector-visible-4135a378fb56@wendy>
References: <cover.1686882123.git.zhoubinbin@loongson.cn>
 <99bdbfc66604b4700e3e22e28c3d27ef7c9c9af7.1686882123.git.zhoubinbin@loongson.cn>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="bwrJwWy7hDRGQGpa"
Content-Disposition: inline
In-Reply-To: <99bdbfc66604b4700e3e22e28c3d27ef7c9c9af7.1686882123.git.zhoubinbin@loongson.cn>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

--bwrJwWy7hDRGQGpa
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jun 16, 2023 at 02:11:31PM +0800, Binbin Zhou wrote:

> +	memalloc@0 {
> +		compatible = "loongson,ls-memalloc";
> +		reg = <0 0x90000000 0 0x20000000>;
> +	};

This is not documented.

> +		gpio0: gpio@1fe00500 {
> +			compatible = "loongson,ls2k-gpio", "syscon";

This isn't valid either, the binding doesn't allow syscon?

> +			ethernet@3,1 {
> +				compatible = "pci0014,7a03.0",
> +					     "pci0014,7a03",
> +					     "pciclass,020000",
> +					     "pciclass,0200",
> +					     "loongson, pci-gmac";

None of the compatibles from here on out are documented either.

Cheers,
Conor.

--bwrJwWy7hDRGQGpa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZIwv0QAKCRB4tDGHoIJi
0hYmAQDSiQ0DK2dsnrg5ANnfxfoKM33ysfcCo/tyrNE8+skRLQEAshmkWYjTyvU+
9F1UIKFC2ftwm8K7fyGdTFXv88qWugo=
=ioCB
-----END PGP SIGNATURE-----

--bwrJwWy7hDRGQGpa--
