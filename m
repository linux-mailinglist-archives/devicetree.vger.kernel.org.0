Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3BBF54A94A8
	for <lists+devicetree@lfdr.de>; Fri,  4 Feb 2022 08:39:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353162AbiBDHjr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Feb 2022 02:39:47 -0500
Received: from esa6.hgst.iphmx.com ([216.71.154.45]:32409 "EHLO
        esa6.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232302AbiBDHjq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Feb 2022 02:39:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1643960387; x=1675496387;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=J6+qN6zsOJBC7+d5Jwdax1VP3UtUI3MibMV/k5DnLLY=;
  b=pckx+LT9MspWjHF6thfg7YZKZ29KdoOOy4uByfR+DZmJSb4U1csH7CCx
   99oinIDbxwtnG3O9PXI84fJoU7rZ3efvtM7LxeJnRE2LUTq4wZLNtd5+o
   Y6Hx6cCiaJpIl+cDoBvozHnhcrs0iP1P/7tnrToolYFmtzVGs8SZykv6A
   V2AZ/00pJJ3EJOZkgxOCQCR9tKOx+S3GuGINt1mLnJz2+1pRoQw3nTrOD
   5WGk8Nt8xHLDT25ylv29jbozMX+tC3ROcma9yAJIV8V3BERnZ9R+EyAzl
   3lUOoHG194z/Zn0ayL302jE+/MP4t723rAFxdLNrk7H50ALaK8ncOlq6z
   A==;
X-IronPort-AV: E=Sophos;i="5.88,342,1635177600"; 
   d="scan'208";a="193136068"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 04 Feb 2022 15:39:47 +0800
IronPort-SDR: FV9ElHPOKor2P3yyNDKyqPB6t80fi5HfuoH/B6vMpyAXY9NcCP/Ik5JQsokf++dBPTj9O6UerN
 kEjjCtqzAHbHSqzmgecrAzwTGLC8qg2lhSbZaML1842K43rBBWZxmAdH6yi4VXyojV4WNfrBp0
 YiO8XFD8MmYCNGHAHKgyohWozQOgDl0+wLs8ov/HS5y4rHVuG0BpybF4GsJlqwrvubXhnsSkOf
 We7xsuHF5Kx4h1lnl4hWOiwSYf9rjvTEDcZ9Wi0RmiE+A0cnbO4sdtZSJVbcQQROoqPuWLVEkQ
 KqnoRJeaCV8EMhFrjFLuTmk3
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Feb 2022 23:11:41 -0800
IronPort-SDR: H/t3Z/GCOa0whIiOpe5xnjWLYJLAJ+weFBHkDCbqPWGbMrbXaFpB9tpH/bEYZSTeD2N73UEb0r
 U2uPER76HCDPLRZzI5yiw3Wy7KWJJ9xV0vkUaDRZKxd2akGBW8O726ER8X2X+yo4G/bGpSItul
 63Ocazu5alQCQiONWdnsQjKcQlUD8dSndPSxFe0P4QeJwoSFe368J7D0MbaQp+2R4Hf0rHmN2C
 czRq3A8cTpx7k70hPgup/0emwt9Szdy258L7c+U23KzAPF/uDY1whZfqdZpo+zNsIYdn1IpQck
 JCw=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Feb 2022 23:39:47 -0800
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4JqnVp0TJfz1SVnx
        for <devicetree@vger.kernel.org>; Thu,  3 Feb 2022 23:39:46 -0800 (PST)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
        reason="pass (just generated, assumed good)"
        header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
        opensource.wdc.com; h=content-transfer-encoding:content-type
        :in-reply-to:organization:from:references:to:content-language
        :subject:user-agent:mime-version:date:message-id; s=dkim; t=
        1643960385; x=1646552386; bh=J6+qN6zsOJBC7+d5Jwdax1VP3UtUI3MibMV
        /k5DnLLY=; b=cKkiE+OO/gzHXbSF81Wa4IT3u7PcsauMZg5oAaIR+kJ0PjmRmEy
        e3iyAWWLzTkzdvbiX4LE2L/X9wORAHlZvXXQmCCoASoT83+DnDO/0tHWfTixx/cE
        zlZvv2cwASBIwXRhDlUSW7XY1aAu+Gzn+q9GvxxUpznMaPlERDQaMUDWonckUXtL
        gzhsjlHn0DOZ2NTI1rnrVI69ds9Mb5lJ4Z6V1zabSjUZk6D3Mcx1+P4zm0i6rbIe
        PxcILUyz0fIVAcpa1s6q/GhRykpx59Np/eU8s+5bnakQ2Zet7pYt+NZtiXpDT2V/
        ebNfqYR+UZtJLxYuy4wPokAsfM4+ApqN3hA==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
        by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id nmnCib7c52RW for <devicetree@vger.kernel.org>;
        Thu,  3 Feb 2022 23:39:45 -0800 (PST)
Received: from [10.225.163.63] (unknown [10.225.163.63])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4JqnVm3tn8z1Rwrw;
        Thu,  3 Feb 2022 23:39:44 -0800 (PST)
Message-ID: <ef0e2e03-aeee-107a-4520-701ee55d13c0@opensource.wdc.com>
Date:   Fri, 4 Feb 2022 16:39:43 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH resend] dt-bindings: ata: renesas,rcar-sata: Add r8a774e1
 support
Content-Language: en-US
To:     Geert Uytterhoeven <geert+renesas@glider.be>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        linux-ide@vger.kernel.org, devicetree@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org
References: <507cc45f44603afa6a70c05a3956fb7b13b49ed9.1643896347.git.geert+renesas@glider.be>
From:   Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <507cc45f44603afa6a70c05a3956fb7b13b49ed9.1643896347.git.geert+renesas@glider.be>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2/3/22 22:58, Geert Uytterhoeven wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> 
> Document SATA support for the RZ/G2H SoC, no driver change required.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Reviewed-by: Marian-Cristian Rotariu <marian-cristian.rotariu.rb@bp.renesas.com>
> Acked-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
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

Acked-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>

-- 
Damien Le Moal
Western Digital Research
