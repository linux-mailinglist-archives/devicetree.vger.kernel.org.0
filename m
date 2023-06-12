Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4CE3D72BE99
	for <lists+devicetree@lfdr.de>; Mon, 12 Jun 2023 12:17:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232370AbjFLKRW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Jun 2023 06:17:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232452AbjFLKRJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Jun 2023 06:17:09 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A51F9EDC
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 02:57:43 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-4f644dffd71so4832766e87.1
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 02:57:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686563824; x=1689155824;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AhoB3ALj7H7qpQhLC6O+NX79N+bwK/GWfxrVkpc2ZkU=;
        b=HXZW+3ixlUzQEiOrY1kWyDQBYMHCE0DjLosTb04wKryhn1dnwEEB5SPl2ip94eJBKF
         5RfrUTbgBs4XbvMLiqXi/ASZ2xl8gRwh4GNUXmCx+Kb64RRRYjeZkqQg63FzvDjKSQdA
         ZNqzMP7VqreaInw2ip6mJoLwO5E8KwUux6+4+1+OlitCLkm/F2vvlmaIpkqOsFkfwbr/
         Z3PVwf9akRZtr3J+IQvVTs78DlQ/eckv/qEt/w33YVEQCXQw10oNB57ScVY9wI0q+9q/
         Z/1Mjqh4gJn32BFuGoLbpdxQiFhrj9nsArClxQ43/0jwcM1I1iWO7YdQk20kHP8o3yv/
         6I2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686563824; x=1689155824;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AhoB3ALj7H7qpQhLC6O+NX79N+bwK/GWfxrVkpc2ZkU=;
        b=Q5Vz673YR2L36YojlSwUTdXNHA6NgCukRKG/bStej6VMOec91YhZV3V6EUUwoECdXc
         5z2uYT85ZwTOBvM3EWoHEl3+mnHyYjNf3XBCTr38QbX2LAUi4MNsxV1e0TfBgodABwnq
         fU5Uj2FQpoqvKF82eVOrCx52OdurvLp+ekv4jdvY/TwJYjqXzmU3cnYfbiIEQP90h9Ot
         ksOQPzJcLEK3ex3+/McsxUCI7gVUccLYYGnPAs/DcrDbI6d7poU+4X9WoJrNessN6HYp
         8uZypPxmE0nEZDOyT3bGwY1xJYtcF4v/0Iy5z8f2SqDasLTg/U78o6otkaMGIXpxI3+Z
         u7fQ==
X-Gm-Message-State: AC+VfDzkbIi3/V1XF1Hzgx6J3gkvCKxhPPzEW8KmA3196UGW25R40BBO
        lTF20sYP2KhPh3mL5EZWUQp4Pg==
X-Google-Smtp-Source: ACHHUZ6uQcLz+SEsWMNOQ4M60EgceCTYf8hbLid3I3CJyudtieN29zhvLVpysI82W9J+Bgmn9YxLaw==
X-Received: by 2002:a19:7117:0:b0:4f6:25cb:5910 with SMTP id m23-20020a197117000000b004f625cb5910mr3275622lfc.42.1686563823780;
        Mon, 12 Jun 2023 02:57:03 -0700 (PDT)
Received: from [192.168.2.107] ([79.115.63.153])
        by smtp.gmail.com with ESMTPSA id h17-20020a05600c28d100b003f080b2f9f4sm10954816wmd.27.2023.06.12.02.57.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jun 2023 02:57:03 -0700 (PDT)
Message-ID: <6e12d585-701d-f635-6943-6aecdb45c659@linaro.org>
Date:   Mon, 12 Jun 2023 10:57:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 2/2] mtd: spi-nor: Add support for sst26vf032b flash
Content-Language: en-US
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Pratyush Yadav <pratyush@kernel.org>,
        Michael Walle <michael@walle.cc>, linux-mtd@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        devicetree@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>
References: <20230609144324.850617-1-miquel.raynal@bootlin.com>
 <20230609144324.850617-3-miquel.raynal@bootlin.com>
From:   Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20230609144324.850617-3-miquel.raynal@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 6/9/23 15:43, Miquel Raynal wrote:
> Describe this new part. I simply copy/pasted the entry for its cousins
> with twice more/less storage capacity. The datasheet is public:

All the cousins should be updated to use PARSE_SFDP instead.

> https://ww1.microchip.com/downloads/aemDocuments/documents/MPD/ProductDocuments/DataSheets/SST26VF032B-SST26VF032BA-2.5V-3.0V-32-Mbit-Serial-Quad-IO-%28SQI%29-Flash-Memory-20005218K.pdf
> Without the NO_SFDP_FLAGs only partial erasures happen so I believe the

What do you mean by "partial erasures happen"?

> 4K sector flag is needed. I cannot test dual/quad reads, so I kept these
> to mimic the other entries, just in case.

The flash seems to have the SFDP tables (you dumped them below), so I
would expect the 4k erase size to be discovered at SFDP parsing time.
> 
> Here are the sfdp tables plus base testing to show it works.
> 
> $ cat /sys/bus/spi/devices/spi0.0/spi-nor/partname
> sst26vf032b
> $ cat /sys/bus/spi/devices/spi0.0/spi-nor/jedec_id
> bf2642
> $ cat /sys/bus/spi/devices/spi0.0/spi-nor/manufacturer
> sst
> $ xxd -p /sys/bus/spi/devices/spi0.0/spi-nor/sfdp
> 53464450060102ff00060110300000ff81000106000100ffbf0001180002
> 0001fffffffffffffffffffffffffffffffffd20f1ffffffff0144eb086b
> 083b80bbfeffffffffff00ffffff440b0c200dd80fd810d820914824806f
> 1d81ed0f773830b030b0f7ffffff29c25cfff030c080ffffffffffffffff
> ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
> ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
> ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
> ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
> ffffffffffffffffffffffffffffffffff0004fff37f0000f57f0000f9ff
> 3d00f57f0000f37f0000ffffffffffffffffffffffffffffffffffffffff
> ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
> ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
> ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
> ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
> ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
> ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
> ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
> ffffbf2642ffb95ffdff30f260f332ff0a122346ff0f19320f1919ffffff
> ffffffff00669938ff05013506040232b03072428de89888a585c09faf5a
> ffff06ec060c0003080bffffffffff07ffff0202ff060300fdfd040600fc
> 0300fefe0202070e
> $ md5sum /sys/bus/spi/devices/spi0.0/spi-nor/sfdp
> e7efddddb3d5ee89ca37bf6b6e789645  /sys/bus/spi/devices/spi0.0/spi-nor/sfdp
> 
> $ dd if=/dev/urandom of=./qspi_test bs=1M count=1
> 1+0 records in
> 1+0 records out
> $ mtd_debug write /dev/mtd0 0 1048576 qspi_test
> Copied 1048576 bytes from qspi_test to address 0x00000000 in flash
> $ mtd_debug erase /dev/mtd0 0 1048576
> Erased 1048576 bytes from address 0x00000000 in flash
> $ mtd_debug read /dev/mtd0 0 1048576 qspi_read
> Copied 1048576 bytes from address 0x00000000 in flash to qspi_read
> $ hexdump qspi_read
> 0000000 ffff ffff ffff ffff ffff ffff ffff ffff
> *
> 0100000
> $ mtd_debug write /dev/mtd0 0 1048576 qspi_test
> Copied 1048576 bytes from qspi_test to address 0x00000000 in flash
> $ mtd_debug read /dev/mtd0 0 1048576 qspi_read
> Copied 1048576 bytes from address 0x00000000 in flash to qspi_read
> $ sha1sum qspi_test qspi_read
> 2f2f191c7a937eca5db21a1c39e79e7327587cc1  qspi_test
> 2f2f191c7a937eca5db21a1c39e79e7327587cc1  qspi_read
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  drivers/mtd/spi-nor/sst.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/mtd/spi-nor/sst.c b/drivers/mtd/spi-nor/sst.c
> index 99c8a19493f5..43f37d66f73a 100644
> --- a/drivers/mtd/spi-nor/sst.c
> +++ b/drivers/mtd/spi-nor/sst.c
> @@ -113,6 +113,10 @@ static const struct flash_info sst_nor_parts[] = {
>  		FLAGS(SPI_NOR_HAS_LOCK | SPI_NOR_SWP_IS_VOLATILE)
>  		NO_SFDP_FLAGS(SECT_4K | SPI_NOR_DUAL_READ)
>  		.fixups = &sst26vf_nor_fixups },
> +	{ "sst26vf032b", INFO(0xbf2642, 0, 64 * 1024, 64)
> +		FLAGS(SPI_NOR_HAS_LOCK | SPI_NOR_SWP_IS_VOLATILE)
> +		NO_SFDP_FLAGS(SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ)

If you replace the NO_SFDP_FLAGS line with PARSE_SFDP, is the flash
working correctly?

> +		.fixups = &sst26vf_nor_fixups },
>  	{ "sst26vf064b", INFO(0xbf2643, 0, 64 * 1024, 128)
>  		FLAGS(SPI_NOR_HAS_LOCK | SPI_NOR_SWP_IS_VOLATILE)
>  		NO_SFDP_FLAGS(SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ)
