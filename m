Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 132284EA90B
	for <lists+devicetree@lfdr.de>; Tue, 29 Mar 2022 10:15:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233335AbiC2IRD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Mar 2022 04:17:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231264AbiC2IRA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Mar 2022 04:17:00 -0400
Received: from esa3.hgst.iphmx.com (esa3.hgst.iphmx.com [216.71.153.141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 03FBC9D0C0
        for <devicetree@vger.kernel.org>; Tue, 29 Mar 2022 01:15:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1648541717; x=1680077717;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=etJNUyFKccNjFEH+loh7MV5WicY1MjAS8jDboHE8eiU=;
  b=rAWEf5D1m/B5LK+Gp6FjnrV1IlJLXu3EO0Nc7d48UbNjDSJVLjBvVdWT
   H01X+W5l6q/59b21X3S5c9Ui+HKS8bEdNIrTN5hQkpBLY3m+js8S6lSjt
   wjckAoGeYNRxdafzdTMvtmD53QyPN9leCA5LTZQi1A35waDWwT07Osz5s
   Qe4MXCKy1N2oON5Hlu3GSsOSUE224z6GVdwytX+0kk3SMVcXPyAeeNJql
   evJjUw50jgGimm8HYz73bu2Wn+CnuO4qUVf1VEUjmY8FdwSFq/uVNC8J/
   eikcwr87Te8k89i64zzi1vCjFtetthglGIpP07T4T87L/CibQXpkUEUSu
   Q==;
X-IronPort-AV: E=Sophos;i="5.90,219,1643644800"; 
   d="scan'208";a="201365596"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 29 Mar 2022 16:15:15 +0800
IronPort-SDR: GZoy95sUXI9DofQYHGLSJzfoyiTwg8aqouNUEuy2/d4AX30lyhyYR6pLh/X+tVOj6+CoSa5xoq
 I3YQDTjIBXl9zP+YXnYzSK0IPf4gJOXVn1BkuwOdU2odcoUuAC+k5wuyg/cbG9kg8eEZqkvumw
 GionNKP5etcSiK4SNkVG3gimcsWjbkSknk5FXzc3pzZSJfaDU9w8md4CBYg8KQUz9CAcC0jL1W
 Hdk8QVEXiMpvj5JQIuDYimRkwRwKgLpq5swJQrgfzamXLrerkrM/+TTnhvft5lfxXgo/SRY/DG
 imsHQTjWcooIAC32H6+6L0lF
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 29 Mar 2022 00:46:07 -0700
IronPort-SDR: gZD4xvLSB0IW4WPaQpUmPEhZXhMf678DlImrV8RawVDpvtaUCrgfmwT96CdVDvdY2q1clA3R7p
 ETB4Y/PJ4cMtbFB9sxYQk57itoQTBq1pHE+jjxvgldui7gyB5HJSP+w6uew2BCCVNyHIvIm17u
 uzPFuZeKAcpewkJSCDWjmhQ433JSPUnD13Tw0utgFC1Sh/geQRXirrttkgUFNCGY36Eb0gi3+5
 1qRcHieDHrTv9jDVu0DcgKGqeAZSKZLA3ERJMrM2pMUrrmetZgn4OgKurHX+iTiCjzM65f1cMA
 kk4=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 29 Mar 2022 01:15:16 -0700
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4KSMnH641dz1SVnx
        for <devicetree@vger.kernel.org>; Tue, 29 Mar 2022 01:15:15 -0700 (PDT)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
        reason="pass (just generated, assumed good)"
        header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
        opensource.wdc.com; h=content-transfer-encoding:content-type
        :in-reply-to:organization:from:references:to:content-language
        :subject:user-agent:mime-version:date:message-id; s=dkim; t=
        1648541715; x=1651133716; bh=etJNUyFKccNjFEH+loh7MV5WicY1MjAS8jD
        boHE8eiU=; b=rbTF4xovKjZmjm0Q9kD377CcxZE6a5+bc4Ph0ByS4mv5rAhDmN5
        IHEmLItD2CD+1CijzpQQVhNlazvLope4j9BC2MAuYntsKzMinyTtjk7jCeYIlO0z
        TPtwNCWNrTY0YrJ2vI5abkSiUPYUz+JfTS69G3ZAEwDBv29Xmxpbfg41TrAVjy+q
        ANfyxbz2dAIpnC2DjpqsYLal/ogpkUvrrx4mx6XfiGWFe80w6uHOqFYUumVWPFiD
        qod4EIjsMk4V456o9VdM3nQWyVYnZSrEsXG+6qNJlcxVq9XgIOWIKt6tTwtPt/YK
        9WKA7oxaGB426i3X7edoJ0iw/s2WNqnKyUA==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
        by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id rUUlIBInIxqG for <devicetree@vger.kernel.org>;
        Tue, 29 Mar 2022 01:15:15 -0700 (PDT)
Received: from [10.225.163.121] (unknown [10.225.163.121])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4KSMnF2ytmz1Rvlx;
        Tue, 29 Mar 2022 01:15:13 -0700 (PDT)
Message-ID: <92699f07-0efc-e471-d886-c7d6c83f352e@opensource.wdc.com>
Date:   Tue, 29 Mar 2022 17:15:12 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 01/21] dt-bindings: ata: sata: Extend number of SATA ports
Content-Language: en-US
To:     Serge Semin <Sergey.Semin@baikalelectronics.ru>,
        Hans de Goede <hdegoede@redhat.com>,
        Jens Axboe <axboe@kernel.dk>, Rob Herring <robh+dt@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>
Cc:     Serge Semin <fancer.lancer@gmail.com>,
        Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>,
        Pavel Parkhomenko <Pavel.Parkhomenko@baikalelectronics.ru>,
        linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20220324001628.13028-1-Sergey.Semin@baikalelectronics.ru>
 <20220324001628.13028-2-Sergey.Semin@baikalelectronics.ru>
From:   Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <20220324001628.13028-2-Sergey.Semin@baikalelectronics.ru>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 3/24/22 09:16, Serge Semin wrote:
> The denoted in the description upper limit only concerns the Port
> Multipliers, but not the actual SATA ports. It's an external device
> attached to a SATA port in order to access more than one SATA-drive. So
> when it's attached to a SATA port it just extends the port capability
> while the number of actual SATA ports stays the same. For instance on AHCI
> controllers the number of actual ports is determined by the CAP.NP field
> and the PI (Ports Implemented) register. AFAICS in general the maximum
> number of SATA ports depends on the particular controller implementation.
> Generic AHCI controller can't have more than 32 ports (since CAP.NP is of
> 5 bits wide and PI register is 32-bits size), while DWC AHCI SATA
> controller can't be configured with more than 8 ports activated. So let's
> discard the SATA ports reg-property restrictions and just make sure that
> it consists of a single reg-item.
> 
> Signed-off-by: Serge Semin <Sergey.Semin@baikalelectronics.ru>
> ---
>  Documentation/devicetree/bindings/ata/sata-common.yaml | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/ata/sata-common.yaml b/Documentation/devicetree/bindings/ata/sata-common.yaml
> index 7ac77b1c5850..c619f0ae72fb 100644
> --- a/Documentation/devicetree/bindings/ata/sata-common.yaml
> +++ b/Documentation/devicetree/bindings/ata/sata-common.yaml
> @@ -41,11 +41,10 @@ patternProperties:
>      properties:
>        reg:
>          minimum: 0
> -        maximum: 14

Why remove this ? Since AHCI can have up to 32 ports, then change the
value to 31. As the comment at the top of the file says, this is not
intended to be a device tree binding spec, but defines properties common
to most adapters.

>          description:
> -          The ID number of the drive port SATA can potentially use a port
> -          multiplier making it possible to connect up to 15 disks to a single
> -          SATA port.
> +          The ID number of the SATA port. Aside with being directly used
> +          each port can have a Port Multiplier attached thus allowing to
> +          access more than one drive by means of a single channel.

Please add a comma after "Aside with being directly used", otherwise the
sentence is hard to understand. And replace "channel" with "SATA port" to
stick with the terms defined here.

>  
>  additionalProperties: true
>  


-- 
Damien Le Moal
Western Digital Research
