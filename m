Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4BB594B9AC3
	for <lists+devicetree@lfdr.de>; Thu, 17 Feb 2022 09:19:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233511AbiBQITZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Feb 2022 03:19:25 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:33312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237434AbiBQITX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Feb 2022 03:19:23 -0500
X-Greylist: delayed 2131 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Thu, 17 Feb 2022 00:19:08 PST
Received: from 11.mo550.mail-out.ovh.net (11.mo550.mail-out.ovh.net [188.165.48.29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2AEB4297226
        for <devicetree@vger.kernel.org>; Thu, 17 Feb 2022 00:19:08 -0800 (PST)
Received: from player157.ha.ovh.net (unknown [10.109.146.1])
        by mo550.mail-out.ovh.net (Postfix) with ESMTP id 13C3623A4B
        for <devicetree@vger.kernel.org>; Thu, 17 Feb 2022 07:43:36 +0000 (UTC)
Received: from milecki.pl (ip-194-187-74-233.konfederacka.maverick.com.pl [194.187.74.233])
        (Authenticated sender: rafal@milecki.pl)
        by player157.ha.ovh.net (Postfix) with ESMTPSA id B93F9278408AA;
        Thu, 17 Feb 2022 07:43:24 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-101G0043059cd4e-4bc9-4526-8836-aad3687309fe,
                    6571130906B249472519E689D0E5D89D5D0951FF) smtp.auth=rafal@milecki.pl
X-OVh-ClientIp: 194.187.74.233
Message-ID: <3be13bc2-f8b1-193b-9a36-92d4336d9d28@milecki.pl>
Date:   Thu, 17 Feb 2022 08:43:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:96.0) Gecko/20100101
 Thunderbird/96.0
Subject: Re: [PATCH] dt-bindings: mtd: partitions: convert Broadcom's TRX to
 the json-schema
To:     Rob Herring <robh@kernel.org>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        linux-mtd@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Hauke Mehrtens <hauke@hauke-m.de>
References: <20220216104126.31284-1-zajec5@gmail.com>
 <1645070363.930966.2266015.nullmailer@robh.at.kernel.org>
From:   =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
In-Reply-To: <1645070363.930966.2266015.nullmailer@robh.at.kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 18205520019237874606
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvvddrjeejgddutdelucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepkfffgggfuffvfhfhjggtgfesthekredttdefjeenucfhrhhomheptfgrfhgrlhcuofhilhgvtghkihcuoehrrghfrghlsehmihhlvggtkhhirdhplheqnecuggftrfgrthhtvghrnhepjeetledugeejtdevheetieduhefgtedvgefftddvfedvieevjeegleffleegtdeunecukfhppedtrddtrddtrddtpdduleegrddukeejrdejgedrvdeffeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghlohepphhlrgihvghrudehjedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehrrghfrghlsehmihhlvggtkhhirdhplhdpnhgspghrtghpthhtohepuddprhgtphhtthhopeguvghvihgtvghtrhgvvgesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

On 17.02.2022 04:59, Rob Herring wrote:
> On Wed, 16 Feb 2022 11:41:26 +0100, Rafał Miłecki wrote:
>> From: Rafał Miłecki <rafal@milecki.pl>
>>
>> This helps validating DTS files.
>>
>> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
>> ---
>>   .../bindings/mtd/partitions/brcm,trx.txt      | 42 ---------------
>>   .../bindings/mtd/partitions/brcm,trx.yaml     | 51 +++++++++++++++++++
>>   2 files changed, 51 insertions(+), 42 deletions(-)
>>   delete mode 100644 Documentation/devicetree/bindings/mtd/partitions/brcm,trx.txt
>>   create mode 100644 Documentation/devicetree/bindings/mtd/partitions/brcm,trx.yaml
>>
> 
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mtd/partitions/linksys,ns-partitions.example.dt.yaml: partition@200000: compatible:0: 'brcm,trx' was expected
> 	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mtd/partitions/brcm,trx.yaml
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mtd/partitions/linksys,ns-partitions.example.dt.yaml: partition@200000: compatible: ['linksys,ns-firmware', 'brcm,trx'] is too long
> 	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mtd/partitions/brcm,trx.yaml

could you advise the best way to solve that?


1. compatible = "brcm,trx";

Most Broadcom 47xx devices have one firmware partition using TRX format.
So we want something like:

partition@200000 {
         compatible = "brcm,trx";
         label = "firmware";
         reg = <0x200000 0xf00000>;
};


2. compatible = "linksys,ns-firmware", "brcm,trx";

Linksys has two firmware partitions and operating system has to choose
the right one to proceed with (to parse for kernel & rootfs). They still
use TRX format though. So we want something like:

partition@200000 {
         compatible = "linksys,ns-firmware", "brcm,trx";
         reg = <0x200000 0xf00000>;
};

partition@1100000 {
         compatible = "linksys,ns-firmware", "brcm,trx";
         reg = <0x1100000 0xf00000>;
};


I thought of moving "linksys,ns-firmware" documentation to the
brcm,trx.yaml but its part of the compatible = "linksys,ns-partitions";
(parent node) so it doesn't fit there well.
