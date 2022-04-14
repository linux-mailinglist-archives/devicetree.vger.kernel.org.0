Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7201F50039A
	for <lists+devicetree@lfdr.de>; Thu, 14 Apr 2022 03:23:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230412AbiDNB0A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Apr 2022 21:26:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56904 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229789AbiDNB0A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Apr 2022 21:26:00 -0400
Received: from esa5.hgst.iphmx.com (esa5.hgst.iphmx.com [216.71.153.144])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21FEF52B00
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 18:23:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1649899414; x=1681435414;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=gTiDrR+9+HtrXE6ySpJjfWH7TrMfuwUMNxxOhskx1yg=;
  b=aJnhP0MyZYhoeAjhvCOFPL4XzRMzECn0Vr/ICC/hYEqP6IBXGtZaZTRQ
   jKFGpJqz44zuQrt91t0rnBocaJru3pjnocN9xD85l8r2BjDCaNMAI0nMN
   dli2pIuf+seM6sLXTmp9AdAi0V65O8CBc+Iy1h2sucJgNRjNe+rWZHxr1
   xfFUw2roSX9WeJJeZoaECr3uxbjv8B+G5AFoOacWoH9XJZiKWyigzil7C
   yT0VhveTGIVdZJ7VayXenZDvVCdaM8U5MTDgiHmS7sKsHoow4joFQMLeM
   M71+4CgItN7UbSnFDxXs5YMsb0ga9UfHaMlnQG9A3FL4J3DO5lCf9JQBZ
   Q==;
X-IronPort-AV: E=Sophos;i="5.90,258,1643644800"; 
   d="scan'208";a="197870342"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 14 Apr 2022 09:23:34 +0800
IronPort-SDR: GfgOdvuQ4Iu3qiJs/VfuYvoj94n8wImpBeA1Kc4yOvQYLO/wY9v2X6QhVr1ibHdFm0BReFq3Rs
 5MH26Jkn+PuT2SSs0AMMFIAENuiXiRWXjH56GR8W2faXtJF3rkYfKCWXhid+21ci0+B05GKyRa
 VbxmTzB7VbSX8acqBeF22jwrEPVuNTxdJTanBKRgUITO71XPBOBuMFuTyIgpXbu08+Y7S5kFNq
 e6KGGuTN77JGud/gf+xH2Lp4RYnFdjqT6mou9JbdIaMFCxcUF+YSY5KM/GKtqbBm027gztXGz9
 pQJxPXKrLpoxp38MxgAVuKHj
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 13 Apr 2022 17:54:00 -0700
IronPort-SDR: Wc0ccQTyrLxjSQFFVZ+OgweaiCHrPsQI5BdJDLf63ThGPNi4TRE3YklsbQXbXa5fgCoy3592X+
 JkWe9cVT/DHHy4RpoXf0ghUPKFYUwxlmib5Opo8VbQsALH5ELkqZbt75dXpUsVmFhWVNwwU2A1
 3ji5JMfae7XEEoGSC59vgM+ZuZcY2h96d0zA8B4CrjtluggoweNqDLMhXzNcuQkJ5nGs3FpnGB
 WIYLiSQDYf49SH/BSijUPgiyOaPXK+QDf49vTd4LvL3Cx67H6YF9B2vzBvYNi+Qq9lpMkGHdf2
 /3Y=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 13 Apr 2022 18:23:34 -0700
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4Kf1ts62jlz1SVnx
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 18:23:33 -0700 (PDT)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
        reason="pass (just generated, assumed good)"
        header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
        opensource.wdc.com; h=content-transfer-encoding:content-type
        :in-reply-to:organization:from:references:to:content-language
        :subject:user-agent:mime-version:date:message-id; s=dkim; t=
        1649899412; x=1652491413; bh=gTiDrR+9+HtrXE6ySpJjfWH7TrMfuwUMNxx
        Ohskx1yg=; b=ucSbep5Mx2fZ1X+e19OVTxJ0IgBWFSbPXTKoc8lGMgvArgjjSIb
        sRer6ztuMtwsrILhFSpHtuevLHSwRkbyi43HaC5mQP/tXfu0n2oO6rXg2hbXwjj6
        blHeMlvFeaN/Q6rmrPVY7wCllmO8h42ExCdIBGokWWj3GywCZYiQgYBTbcRWjWJO
        0+AbnB8zfki6UsBNQ586nrjRRjUWk2oeC3PJl84www7ckLKr16E0s/M/p9dKmj6l
        kg5AbYq0K/M5QN2+iQbPDR9oHaIc1Ti/Q97cKNNY24ed7BTF+waqLjJ7dvTZ/jEP
        g/NcJ7z5RbmoAVtUhGKeOVH0Df4Tv7wluNQ==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
        by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id wMy29bBsTlrY for <devicetree@vger.kernel.org>;
        Wed, 13 Apr 2022 18:23:32 -0700 (PDT)
Received: from [10.225.163.9] (unknown [10.225.163.9])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4Kf1tq37zQz1Rvlx;
        Wed, 13 Apr 2022 18:23:31 -0700 (PDT)
Message-ID: <95580a26-8595-1fa1-5e3d-112ceb767ae6@opensource.wdc.com>
Date:   Thu, 14 Apr 2022 10:23:30 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [WARNING: UNSCANNABLE EXTRACTION FAILED][PATCH v2] dt-bindings:
 ata: renesas,rcar-sata: Add r8a774e1 support
Content-Language: en-US
To:     Geert Uytterhoeven <geert+renesas@glider.be>,
        Sergey Shtylyov <s.shtylyov@omp.ru>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     linux-ide@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
        devicetree@vger.kernel.org,
        Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        Marian-Cristian Rotariu 
        <marian-cristian.rotariu.rb@bp.renesas.com>,
        Rob Herring <robh@kernel.org>
References: <5861565a79a2bdadc07ae84e23e6d96dbb764823.1649680949.git.geert+renesas@glider.be>
From:   Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <5861565a79a2bdadc07ae84e23e6d96dbb764823.1649680949.git.geert+renesas@glider.be>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 4/11/22 21:43, Geert Uytterhoeven wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> 
> Document SATA support for the RZ/G2H SoC, no driver change required.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Reviewed-by: Marian-Cristian Rotariu <marian-cristian.rotariu.rb@bp.renesas.com>
> Acked-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Acked-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>

I queued this is for-5.19. Does it need to go as a 5.18 fix ?


> ---
> v2:
>   - Add Acked-by.
> ---
>  Documentation/devicetree/bindings/ata/renesas,rcar-sata.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/ata/renesas,rcar-sata.yaml b/Documentation/devicetree/bindings/ata/renesas,rcar-sata.yaml
> index c060c7914cae6573..c4e4a9eab658056d 100644
> --- a/Documentation/devicetree/bindings/ata/renesas,rcar-sata.yaml
> +++ b/Documentation/devicetree/bindings/ata/renesas,rcar-sata.yaml
> @@ -26,6 +26,7 @@ properties:
>        - items:
>            - enum:
>                - renesas,sata-r8a774b1     # RZ/G2N
> +              - renesas,sata-r8a774e1     # RZ/G2H
>                - renesas,sata-r8a7795      # R-Car H3
>                - renesas,sata-r8a77965     # R-Car M3-N
>            - const: renesas,rcar-gen3-sata # generic R-Car Gen3 or RZ/G2


-- 
Damien Le Moal
Western Digital Research
