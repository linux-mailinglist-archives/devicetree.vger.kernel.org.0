Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B34345F5FF2
	for <lists+devicetree@lfdr.de>; Thu,  6 Oct 2022 06:13:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229814AbiJFEMy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Oct 2022 00:12:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59454 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229729AbiJFEMx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Oct 2022 00:12:53 -0400
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC5383A159
        for <devicetree@vger.kernel.org>; Wed,  5 Oct 2022 21:12:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1665029564;
        bh=KYNutQRaK3+SJVlXk55YMBtbblvvJMm6H8k3OOIWAls=;
        h=X-UI-Sender-Class:Date:Subject:To:References:Cc:From:In-Reply-To;
        b=l15h/r27MzXlMjK3DaIT5TA3GdNqiio8a3CU+zXEUzOsf6QbVCAJWejz1CuqK9Oqz
         C7BupHjbClryjVlo2xqdjM6sdbchyWP8UnlTN6D3agurqCa80yx9HddxrnC0THSmnZ
         W9rUMuBpm82k5YwoqVfaTi3ozMHt9rPDQ6lTsBo0=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.123.94] ([84.118.157.2]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MTABZ-1olUO43OsJ-00UZTq; Thu, 06
 Oct 2022 06:12:43 +0200
Message-ID: <79a86d8b-d118-c58a-440b-b33c0c4da284@gmx.de>
Date:   Thu, 6 Oct 2022 06:12:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [U-Boot PATCH v4 5/6] arm: dts: am335x-sancloud-bbe-lite: UEFI
 SPI export
Content-Language: en-US
To:     Paul Barker <paul.barker@sancloud.com>
References: <20221005121839.3938771-1-paul.barker@sancloud.com>
 <20221005121839.3938771-6-paul.barker@sancloud.com>
Cc:     u-boot@lists.denx.de,
        Ilias Apalodimas <ilias.apalodimas@linaro.org>,
        Tom Rini <trini@konsulko.com>,
        Rob Herring <robh+dt@kernel.org>,
        Devicetree Discuss <devicetree@vger.kernel.org>
From:   Heinrich Schuchardt <xypron.glpk@gmx.de>
In-Reply-To: <20221005121839.3938771-6-paul.barker@sancloud.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:c6Z+TqsTko9pNv7RzM7WtAnR4K9HTs89diZWeW1DInTQIfuPgmV
 L0E1Lk+BtnX3huxZdTGV7TGvAePMqV+6oaGL8V/RsWByYyVO1pFayWyqPMinv0SEiuZPEdU
 QEtzLz1BiERQTNqJM+Wib+eWRWhUHxJqI9y7bsxEflpBBttE1skqjRKYib8wjQDypKIXiq5
 27NtKI6GDEQe6hwDuQhoQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:PgrfoS/GtT8=:pPKSD6nA3O1GeN3tXXqgo7
 ++VNJNmok088+qzFxw2Buo6Se6FwY7s7j27TBukTUWkcT55YMzYdP0HINlE9L/0Aqh0OMEHZo
 BltaxAlXQTyxszJXQG/SAYGx4Y4XvApYciyku8AQu4F03+GauVj7pvmbkt2YHleCEJRCb804T
 AIkkBEteCX1Vue0CYk0nBlbccN0MZOCPZWRVhHpANiF9UbS8I8F7Xu+SkaXfAoGLXOMhX3azE
 H3jZU8/Rn+U45ePMtx4omH5bD0D6DtgckFZeuCQRW+TCzMrpRxarqnzpZiZn/Wnc9J/DdE5Ki
 UQYroaFTRtN1dfmgF57PZWtGR8DQb7KKeS1/V3EEhVDHnJTvYSZIJ/vR/6Kb4Q+fdkIwVqByh
 bqiwnJUaYx14SjlY+eyRSEuywgtQNHm+VuwYRoTo+NhnTl5JTySb4SeTcIDySUY9y33znuf8q
 R1Q6/zTpV8T2gFVvsJ/OQOkHZo7JlYAV7aV4yIG91fxOOPiknOZT6L8knEhcU7BUzDOcg5OCk
 wRmEydVHvJljeHY8J0mvvKF4eZbWnMU9OC2eo186fTM+WNR7iP0sRuAxKsPC70DEg4s3C8Z/G
 m88uuxd9uv5Eiz/fusDquMciogLvhK+jiB7hRNflPCfHq0rUb/ZQGiM0NRFgKN8br+QWoaqo9
 86g/LhXquh/G+KOcW2kArB9hpvJeYk7q77fbrT4G5cni1cYxGNJVn8a79hPm1BWWgz7i4OwR0
 YiJomZjjoczeNI3lhgfjI1iq9ALaPKC+t5QIv2s6ohKRVfpr8JKsg7KazBu2KmKbMumZsnxjg
 2RaS1Ms+2IkRWDJanCpx8oX0ChpX1B7DzfM6c40OHRu7nV1mNCC6omc96MK97G87QIuJXkHa2
 fFnPsggw55Nd4QSWCS4Am+lz45hpsx7bAjS3Tdh+f/oAHFSdie+aTZa70aQ3FWGXbdZClnrvy
 09rhnLx+fRq3z+WBReVFwGBOiE/3Ap9vMcI1ACEwkXOx4WbA2R/mME3bXMAvePaguLWYEle9K
 DswYO6AItljyFIgVO12kW/Rd+itiGohNsu6CxLNYTVibK9uZS08QCtgeEqCsuqooidpTbpgzj
 eh3E33v80xyXJvStKDwDOTTPoCq44YP24U85oNcidsHjrkLt9MWn2kR7cGX3drK8iP9v9xR8E
 52niKvo0bWlNlv/kuW/ixSOi5l
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,FREEMAIL_FROM,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/5/22 14:18, Paul Barker wrote:
> Add properties to the Authenta SPI flash device node to enable access by
> a UEFI application using a fixed GUID. Also specify that this device is
> JEDEC compatible so that it is correctly initialized when running
> `sf probe`.
>
> Signed-off-by: Paul Barker <paul.barker@sancloud.com>
> ---
>   arch/arm/dts/am335x-sancloud-bbe-lite.dts | 10 ++++++++--
>   1 file changed, 8 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm/dts/am335x-sancloud-bbe-lite.dts b/arch/arm/dts/am=
335x-sancloud-bbe-lite.dts
> index d6ef19311a91..f1ff9d6024cb 100644
> --- a/arch/arm/dts/am335x-sancloud-bbe-lite.dts
> +++ b/arch/arm/dts/am335x-sancloud-bbe-lite.dts
> @@ -37,14 +37,20 @@
>   	pinctrl-names =3D "default";
>   	pinctrl-0 =3D <&bb_spi0_pins>;
>
> -	channel@0 {
> +	authenta-flash@0 {
>   		#address-cells =3D <1>;
>   		#size-cells =3D <0>;
>
> -		compatible =3D "micron,spi-authenta";
> +		compatible =3D "micron,spi-authenta", "jedec,spi-nor";

I cannot find "micron,spi-authenta" in Linux'
Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml. Should it be
added?

>
>   		reg =3D <0>;
>   		spi-max-frequency =3D <16000000>;
>   		spi-cpha;
> +
> +		uefi-spi-vendor =3D "micron";
> +		uefi-spi-part-number =3D "mt25ql128abb";

These properties seem to be neither UEFI nor SPI specific. Why should
they be prefixed with uefi-spi?

> +		/* GUID in UEFI format: 77126730-a4ca-4386-b341-881fe18e7f7d */
> +		uefi-spi-io-guid =3D [30 67 12 77 ca a4 86 43
> +				    b3 41 88 1f e1 8e 7f 7d];

The suggested properties which are required to set up the
EFI_SPI_IO_PROTOCOL need to be standardized and documented. The right
place would be a yaml file in Linux' Documentation/devicetree/bindings/mtd=
/.

Best regards

Heinrich

>   	};
>   };

