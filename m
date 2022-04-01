Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 83AEE4EEBCA
	for <lists+devicetree@lfdr.de>; Fri,  1 Apr 2022 12:48:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345194AbiDAKuF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Apr 2022 06:50:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345200AbiDAKuE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Apr 2022 06:50:04 -0400
X-Greylist: delayed 899 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 01 Apr 2022 03:48:15 PDT
Received: from 7.mo576.mail-out.ovh.net (7.mo576.mail-out.ovh.net [46.105.50.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B61A269A7E
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 03:48:14 -0700 (PDT)
Received: from player687.ha.ovh.net (unknown [10.108.16.216])
        by mo576.mail-out.ovh.net (Postfix) with ESMTP id 3E91C2115F
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 10:28:18 +0000 (UTC)
Received: from RCM-web8.webmail.mail.ovh.net (ip-194-187-74-233.konfederacka.maverick.com.pl [194.187.74.233])
        (Authenticated sender: rafal@milecki.pl)
        by player687.ha.ovh.net (Postfix) with ESMTPSA id 0418928FDD762;
        Fri,  1 Apr 2022 10:28:12 +0000 (UTC)
MIME-Version: 1.0
Date:   Fri, 01 Apr 2022 12:28:11 +0200
From:   =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
To:     =?UTF-8?Q?Ar=C4=B1n=C3=A7_=C3=9CNAL?= <arinc.unal@arinc9.com>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com
Subject: Re: [PATCH 2/5] ARM: dts: BCM5301X: Remove cell properties from srab
 ports on Asus RT-AC88U
In-Reply-To: <20220401102002.15765-2-arinc.unal@arinc9.com>
References: <20220401102002.15765-1-arinc.unal@arinc9.com>
 <20220401102002.15765-2-arinc.unal@arinc9.com>
User-Agent: Roundcube Webmail/1.4.13
Message-ID: <974a2d22326e921d295a382b13c67b23@milecki.pl>
X-Sender: rafal@milecki.pl
X-Originating-IP: 194.187.74.233
X-Webmail-UserID: rafal@milecki.pl
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 15258758490125609818
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvvddrudeiiedgvdelucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepggffhffvufgjfhgfkfigihgtgfesthekjhdttderjeenucfhrhhomheptfgrfhgrlhgpofhilhgvtghkihcuoehrrghfrghlsehmihhlvggtkhhirdhplheqnecuggftrfgrthhtvghrnhepjeffudffgfejgfdvieegudekffefveehjeeuieekheduieduhedvieefudetheeinecukfhppedtrddtrddtrddtpdduleegrddukeejrdejgedrvdeffeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghlohepphhlrgihvghrieekjedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehrrghfrghlsehmihhlvggtkhhirdhplhdpnhgspghrtghpthhtohepuddprhgtphhtthhopeguvghvihgtvghtrhgvvgesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2022-04-01 12:19, Arınç ÜNAL wrote:
> Remove #address-cells and #size-cells properties from the ports node of
> &srab. They are already defined on bcm5301x.dtsi, there's no need to 
> define
> them again.
> 
> Signed-off-by: Arınç ÜNAL <arinc.unal@arinc9.com>

Acked-by: Rafał Miłecki <rafal@milecki.pl>
