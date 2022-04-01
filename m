Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 86ABF4EEC8A
	for <lists+devicetree@lfdr.de>; Fri,  1 Apr 2022 13:48:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345603AbiDALuA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Apr 2022 07:50:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54464 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239071AbiDALt6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Apr 2022 07:49:58 -0400
X-Greylist: delayed 2398 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 01 Apr 2022 04:48:08 PDT
Received: from 3.mo560.mail-out.ovh.net (3.mo560.mail-out.ovh.net [46.105.58.226])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E1AD216A6A
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 04:48:08 -0700 (PDT)
Received: from player698.ha.ovh.net (unknown [10.111.208.112])
        by mo560.mail-out.ovh.net (Postfix) with ESMTP id D88F524397
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 10:32:43 +0000 (UTC)
Received: from RCM-web8.webmail.mail.ovh.net (ip-194-187-74-233.konfederacka.maverick.com.pl [194.187.74.233])
        (Authenticated sender: rafal@milecki.pl)
        by player698.ha.ovh.net (Postfix) with ESMTPSA id 9562E28FD4A27;
        Fri,  1 Apr 2022 10:32:37 +0000 (UTC)
MIME-Version: 1.0
Date:   Fri, 01 Apr 2022 12:32:37 +0200
From:   =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
To:     =?UTF-8?Q?Ar=C4=B1n=C3=A7_=C3=9CNAL?= <arinc.unal@arinc9.com>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com
Subject: Re: [PATCH 4/5] ARM: dts: BCM5301X: Retrieve gmac1 MAC address from
 NVRAM on Asus RT-AC88U
In-Reply-To: <20220401102002.15765-4-arinc.unal@arinc9.com>
References: <20220401102002.15765-1-arinc.unal@arinc9.com>
 <20220401102002.15765-4-arinc.unal@arinc9.com>
User-Agent: Roundcube Webmail/1.4.13
Message-ID: <4cd234fd46673ec935eec09129853b47@milecki.pl>
X-Sender: rafal@milecki.pl
X-Originating-IP: 194.187.74.233
X-Webmail-UserID: rafal@milecki.pl
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 15333349360337398618
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvvddrudeiiedgfedtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepggffhffvufgjfhgfkfigihgtgfesthekjhdttderjeenucfhrhhomheptfgrfhgrlhgpofhilhgvtghkihcuoehrrghfrghlsehmihhlvggtkhhirdhplheqnecuggftrfgrthhtvghrnhepjeffudffgfejgfdvieegudekffefveehjeeuieekheduieduhedvieefudetheeinecukfhppedtrddtrddtrddtpdduleegrddukeejrdejgedrvdeffeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghlohepphhlrgihvghrieelkedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehrrghfrghlsehmihhlvggtkhhirdhplhdpnhgspghrtghpthhtohepuddprhgtphhtthhopeguvghvihgtvghtrhgvvgesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2022-04-01 12:20, Arınç ÜNAL wrote:
> The et1macaddr NVRAM variable contains a MAC address for gmac1 on Asus
> RT-AC88U. Add NVMEM cell for it and reference it in the gmac1 node.
> 
> The Broadcom GBit BCMA driver will issue the MAC address for 
> gmac{0,1,2}
> retrieved from et{0,1,2}mac from SPROM without this but let's 
> explicitly
> define it as mac-address on the devicetree.
> Refer to drivers/net/ethernet/broadcom/bgmac-bcma.c:147.

It doesn't matter how Linux handles that in details. You're working on
hardware binding.

Change is OK of course.

If you need to reference sth it should be
Documentation/devicetree/bindings/net/ethernet-controller.yaml


> Signed-off-by: Arınç ÜNAL <arinc.unal@arinc9.com>

I'd drop bgmac-bcma.c reference but nevertheless:

Acked-by: Rafał Miłecki <rafal@milecki.pl>
