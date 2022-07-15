Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E9B63576106
	for <lists+devicetree@lfdr.de>; Fri, 15 Jul 2022 13:59:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234625AbiGOL75 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jul 2022 07:59:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234562AbiGOL7x (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jul 2022 07:59:53 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EBEB07BE26
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 04:59:50 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id y4so5998040edc.4
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 04:59:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:to:cc:from:subject
         :content-transfer-encoding;
        bh=Jmlh0DjrXq1qEDSm8261wVAuZmsirRM1JcBYR2joha4=;
        b=I2nTt4exDWH+oqB+KgY2+gowdViTUTqR59+jJjlxkDwbPRbqMX76pNBflXYLDQaRnI
         YRhWg1+wYQf4dVv6eIEGHkzX6/d/m6BLt2PgL0UDBPq0LwdfeoC13EbXDp3OyiJ87z6+
         aN80djld9eTtf5/nZUPRaKto5L1qPKwUpFQD1AP2Y1bgAyP1GWLHfcFJi364SulZoGCo
         +RIbSMpenbiA4cGoWn8jlazAIG/7vU7eci+MsTsJ9h3z8yoXqwRIFCoy2Aw+M7uWYL8W
         1N2skVoreTgodGav/bUU1tSspvdIdCFl3KmKblgA8pUqeU8d47e1cdJU1XYNwW4NV4lH
         d1ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:to:cc
         :from:subject:content-transfer-encoding;
        bh=Jmlh0DjrXq1qEDSm8261wVAuZmsirRM1JcBYR2joha4=;
        b=L0edZMaWolDqhiewT2J0pcr4S2DZFGHaGpn1/donTPJzJsODJcfgkYTBA0BxruVnEl
         9CLuxGb98p+i6yuHDbCC3PdvgHOD/KuQu2VQ7TuFTBvX6ISDk/fhCW0sqFzhBG7SW2ti
         jGQtSOos4NK0QEAi7ZiL/MaK4ZECt0iOPSXAqO9LRPuAhkFzjl8F71hjFGbj6DSSiUf6
         lHsZwEGONPv5FN/0syeFZIUZrESd2+t0k+8vJ3QyzAcCCuxF1FdWgBl0sufXLh0dPhGF
         VPEp5C1+WsSAIutlakKIBmUQX498FwBJLADM6bJ4Ew3H1mNAomiBvJXAv7/maDThstW5
         y1zw==
X-Gm-Message-State: AJIora9cSPtghoUpJzRGVdkUdgCMMcs5oKmFLmZZr4quLY1EL4k+MEKG
        nQCzfECnmL8ypASuEzXbRHUb8ZufmUc=
X-Google-Smtp-Source: AGRyM1svSFMtQGLc8nzna1H4YuI92QdxBTqvGvaI49h30gW5mo0EFhmcfNV7OSqi7gvfM5Hv/bi1yA==
X-Received: by 2002:a05:6402:495:b0:43a:a211:4c86 with SMTP id k21-20020a056402049500b0043aa2114c86mr18419136edv.294.1657886389141;
        Fri, 15 Jul 2022 04:59:49 -0700 (PDT)
Received: from [192.168.26.149] (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.googlemail.com with ESMTPSA id o22-20020a170906769600b00722dceb3f8bsm1961962ejm.151.2022.07.15.04.59.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jul 2022 04:59:48 -0700 (PDT)
Message-ID: <f4d9a3e1-bb7f-353f-44e1-501fd7985b37@gmail.com>
Date:   Fri, 15 Jul 2022 13:59:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:96.0) Gecko/20100101
 Thunderbird/96.0
To:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Cc:     Ansuel Smith <ansuelsmth@gmail.com>
From:   =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Subject: of_platform_populate() for address-less nodes (OF: Bad cell count for
 ...)
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

I need Linux to support MTD partitions drivers. They should get probed
for MTD partitions, access it, do their stuff. Random example:

partitions {
	compatible = "fixed-partitions";
	#address-cells = <1>;
	#size-cells = <1>;

	partition@0 {
		compatible = "u-boot,bootloader";
		label = "loader";
		reg = <0x0 0x100000>;
	};

	partition@100000 {
		compatible = "u-boot,env";
		label = "image";
		reg = <0x100000 0x100000>;
	};
};

(please don't confuse them with parsers which are MTD internals)


To support that I added of_platform_populate() calls, see commit
bcdf0315a61a2 ("mtd: call of_platform_populate() for MTD partitions"):
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=bcdf0315a61a29eb753a607d3a85a4032de72d94


The problem I just noticed is it triggers errors like:
OF: Bad cell count for /bus@ff800000/nand-controller@1800/nand@0/partitions

It comes from (forward-trace):
of_platform_populate()
of_platform_bus_create()
of_platform_device_create_pdata()
of_device_alloc()
of_address_to_resource()
of_address_to_resource()
__of_address_to_resource()
of_translate_address()
__of_translate_address()
OF_CHECK_COUNTS()
pr_err()


It's caused by "partitions" node having 1 address cell and 0 size cells.
It's a consequence of inheriting sizes from NAND CS:

nand-controller@1800 {
	...

	#address-cells = <1>;
	#size-cells = <0>;

	nand@0 {
		compatible = "brcm,nandcs";
		reg = <0>;

		partitions {
			...
		};
	};
};


Is that something that can / should be fixed in OF implementation?

I don't think I should assign sizes to "partitions" node as it doesn't
use "reg" at all. All "reg" in "partitions" subnodes contain flash
relative offsets and they should not be translated.


[    4.360609] OF: ** translation for device /bus@ff800000/nand-controller@1800/nand@0/partitions/partition@0 **
[    4.370814] OF: bus is default (na=1, ns=1) on /bus@ff800000/nand-controller@1800/nand@0/partitions
[    4.380130] OF: translating address: 00000000
[    4.384609] OF: Bad cell count for /bus@ff800000/nand-controller@1800/nand@0/partitions
[    4.392859] OF: ** translation for device /bus@ff800000/nand-controller@1800/nand@0/partitions/partition@0 **
[    4.403069] OF: bus is default (na=1, ns=1) on /bus@ff800000/nand-controller@1800/nand@0/partitions
[    4.412384] OF: translating address: 00000000
[    4.416864] OF: Bad cell count for /bus@ff800000/nand-controller@1800/nand@0/partitions
[    4.425110] OF: ** translation for device /bus@ff800000/nand-controller@1800/nand@0 **
[    4.433263] OF: Bad cell count for /bus@ff800000/nand-controller@1800/nand@0
[    4.440520] OF: ** translation for device /bus@ff800000/nand-controller@1800 **
[    4.448044] OF: bus is default (na=1, ns=1) on /bus@ff800000
[    4.453868] OF: translating address: 00001800
[    4.458347] OF: parent bus is default (na=2, ns=2) on
[    4.463635] OF: walking ranges...
[    4.467038] OF: default map, cp=0, s=3000, da=1800
[    4.471967] OF: parent translation for: 00000000 ff800000
[    4.477521] OF: with offset: 1800
[    4.480928] OF: one level translation: 00000000 ff801800
[    4.486390] OF: reached root node
[    4.489874] OF: ** translation for device /bus@ff800000/nand-controller@1800/nand@0/partitions/partition@100000 **
[    4.500465] OF: bus is default (na=1, ns=1) on /bus@ff800000/nand-controller@1800/nand@0/partitions
[    4.509776] OF: translating address: 00100000
[    4.514262] OF: Bad cell count for /bus@ff800000/nand-controller@1800/nand@0/partitions
[    4.522509] OF: ** translation for device /bus@ff800000/nand-controller@1800/nand@0/partitions/partition@100000 **
[    4.533167] OF: bus is default (na=1, ns=1) on /bus@ff800000/nand-controller@1800/nand@0/partitions
[    4.542483] OF: translating address: 00100000
[    4.546963] OF: Bad cell count for /bus@ff800000/nand-controller@1800/nand@0/partitions
[    4.555211] OF: ** translation for device /bus@ff800000/nand-controller@1800/nand@0 **
[    4.563362] OF: Bad cell count for /bus@ff800000/nand-controller@1800/nand@0
[    4.570620] OF: ** translation for device /bus@ff800000/nand-controller@1800 **
[    4.578142] OF: bus is default (na=1, ns=1) on /bus@ff800000
[    4.583967] OF: translating address: 00001800
[    4.588446] OF: parent bus is default (na=2, ns=2) on
[    4.593733] OF: walking ranges...
[    4.597137] OF: default map, cp=0, s=3000, da=1800
[    4.602067] OF: parent translation for: 00000000 ff800000
[    4.607619] OF: with offset: 1800
[    4.611027] OF: one level translation: 00000000 ff801800
[    4.616489] OF: reached root node
