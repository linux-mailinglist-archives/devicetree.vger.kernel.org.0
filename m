Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BF7707C012
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2019 13:35:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726301AbfGaLfS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Jul 2019 07:35:18 -0400
Received: from esa6.microchip.iphmx.com ([216.71.154.253]:56947 "EHLO
        esa6.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726096AbfGaLfS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Jul 2019 07:35:18 -0400
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
  Ludovic.Desroches@microchip.com designates 198.175.253.82 as
  permitted sender) identity=mailfrom;
  client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
  envelope-from="Ludovic.Desroches@microchip.com";
  x-sender="Ludovic.Desroches@microchip.com";
  x-conformance=spf_only; x-record-type="v=spf1";
  x-record-text="v=spf1 mx a:ushub1.microchip.com
  a:smtpout.microchip.com a:mx1.microchip.iphmx.com
  a:mx2.microchip.iphmx.com include:servers.mcsv.net
  include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
  authenticity information available from domain of
  postmaster@email.microchip.com) identity=helo;
  client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
  envelope-from="Ludovic.Desroches@microchip.com";
  x-sender="postmaster@email.microchip.com";
  x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com; dkim=none (message not signed) header.i=none; spf=Pass smtp.mailfrom=Ludovic.Desroches@microchip.com; spf=None smtp.helo=postmaster@email.microchip.com; dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: k6n88ij1T4etjFa5iS32sNQkvPz19HijLq7o0Yt0tGZE8SKRHrszyC/CqfMPE53ixgTs4pB2Gi
 96/2oZhadl7u2vGrA1zPQqPz+EzKWRBsMbJKlUFgVYndLSoZ3Uo1ZcWGP0DXq4C4UbQ4ZAiyrF
 8K6iTSWEa2edCw1OlT5fm0gJ5vFg7wbVgZP1oJ/tcGlrFkxviAZkTWGGag7sRey0nZKpCnIXbp
 ezu3ooGg9pyoSrwDnIFOZngNRXJUpbJzL9TKPNcAPUdn+uEsgd61ywif9XKgiMJBhmQyMIRVCO
 ADA=
X-IronPort-AV: E=Sophos;i="5.64,330,1559545200"; 
   d="scan'208";a="40415701"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 31 Jul 2019 04:35:15 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 31 Jul 2019 04:35:15 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Wed, 31 Jul 2019 04:35:14 -0700
Date:   Wed, 31 Jul 2019 13:34:19 +0200
From:   Ludovic Desroches <ludovic.desroches@microchip.com>
To:     Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
CC:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <info@acmesystems.it>
Subject: Re: [PATCH 1/2] dts: add vendor prefix "acme" for "Acme Systems srl"
Message-ID: <20190731113419.bz4qygnmnlf57yeo@M43218.corp.atmel.com>
Mail-Followup-To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        info@acmesystems.it
References: <20190728210403.2730-1-uwe@kleine-koenig.org>
 <20190728210403.2730-2-uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20190728210403.2730-2-uwe@kleine-koenig.org>
User-Agent: NeoMutt/20180716
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Jul 28, 2019 at 11:04:02PM +0200, Uwe Kleine-König wrote:
> 
> Signed-off-by: Uwe Kleine-König <uwe@kleine-koenig.org>

As I can confirm it's not an April fool!
Reviwed-by: Ludovic Desroches <ludovic.desroches@microchip.com>

> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> index 6992bbbbffab..85965e3446bf 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -27,6 +27,8 @@ patternProperties:
>      description: Abilis Systems
>    "^abracon,.*":
>      description: Abracon Corporation
> +  "^acme,.*":
> +    description: Acme Systems srl
>    "^actions,.*":
>      description: Actions Semiconductor Co., Ltd.
>    "^active-semi,.*":
> -- 
> 2.20.1
> 
