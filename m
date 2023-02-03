Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6E273689773
	for <lists+devicetree@lfdr.de>; Fri,  3 Feb 2023 12:03:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231205AbjBCLDc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Feb 2023 06:03:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231233AbjBCLDa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Feb 2023 06:03:30 -0500
X-Greylist: delayed 3606 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 03 Feb 2023 03:03:28 PST
Received: from 2.mo550.mail-out.ovh.net (2.mo550.mail-out.ovh.net [178.32.119.250])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8918054216
        for <devicetree@vger.kernel.org>; Fri,  3 Feb 2023 03:03:28 -0800 (PST)
Received: from director3.ghost.mail-out.ovh.net (unknown [10.109.143.232])
        by mo550.mail-out.ovh.net (Postfix) with ESMTP id BE55C1FF59
        for <devicetree@vger.kernel.org>; Fri,  3 Feb 2023 09:48:09 +0000 (UTC)
Received: from ghost-submission-6684bf9d7b-trzjr (unknown [10.110.171.34])
        by director3.ghost.mail-out.ovh.net (Postfix) with ESMTPS id E77B81FE4B;
        Fri,  3 Feb 2023 09:48:07 +0000 (UTC)
Received: from armadeus.com ([37.59.142.105])
        by ghost-submission-6684bf9d7b-trzjr with ESMTPSA
        id Kfx/NFfY3GMuiAAAFbqr6Q
        (envelope-from <sebastien.szymanski@armadeus.com>); Fri, 03 Feb 2023 09:48:07 +0000
Authentication-Results: garm.ovh; auth=pass (GARM-105G006547cce2a-5f84-4d18-9f7d-4eb472201753,
                    ACA1AB562B47CA922D8F764747C6655C70CF283B) smtp.auth=sebastien.szymanski@armadeus.com
X-OVh-ClientIp: 90.19.171.247
Message-ID: <46eb7d7e-4e44-e0d8-c591-30e06757900c@armadeus.com>
Date:   Fri, 3 Feb 2023 10:44:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To:     Stefan Wahren <stefan.wahren@i2se.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     linux-imx@nxp.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20230201203338.9525-1-stefan.wahren@i2se.com>
From:   =?UTF-8?Q?S=c3=a9bastien_Szymanski?= 
        <sebastien.szymanski@armadeus.com>
Subject: Re: [PATCH 0/9] ARM: dts: imx28: Clean up older DTS files
In-Reply-To: <20230201203338.9525-1-stefan.wahren@i2se.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 15589491585585769240
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvhedrudegtddgtdehucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepkfffgggfvfevfhfhufgjtgfgsehtkeertddtfeejnecuhfhrohhmpefurogsrghsthhivghnucfuiiihmhgrnhhskhhiuceoshgvsggrshhtihgvnhdrshiihihmrghnshhkihesrghrmhgruggvuhhsrdgtohhmqeenucggtffrrghtthgvrhhnpeetvdelleevvdejiefgieegvdeiffetgfeiteegkeefgeduvdevtdduhfdttdeukeenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecukfhppeduvdejrddtrddtrddupdefjedrheelrddugedvrddutdehnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpeeoshgvsggrshhtihgvnhdrshiihihmrghnshhkihesrghrmhgruggvuhhsrdgtohhmqedpnhgspghrtghpthhtohepuddprhgtphhtthhopeguvghvihgtvghtrhgvvgesvhhgvghrrdhkvghrnhgvlhdrohhrghdpoffvtefjohhsthepmhhoheehtddpmhhouggvpehsmhhtphhouhht
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

On 2/1/23 21:33, Stefan Wahren wrote:
> Since the imx28 belongs to the early ARM platforms which has been
> adapted to DT, a lot of these DTS files are not in the best shape.
> So this series tries to address this by using label references
> and SPDX tags.
> 
> Theses patches doesn't include functional changes. The resulting
> DTB files has been verified with dtdiff.
> 
> Stefan Wahren (9):
>    ARM: dts: imx28-apf28: Convert to use label references
>    ARM: dts: imx28-m28/sps1: Convert to use label references
>    ARM: dts: imx28-apx4devkit: Convert to use label references
>    ARM: dts: imx28-cfa10036: Convert to use label references
>    ARM: dts: imx28-duckbill: Convert to use label references
>    ARM: dts: imx28-duckbill-2: Include base board
>    ARM: dts: imx28-evk: Convert to use label references
>    ARM: dts: imx28-ts4600: Convert to use label references
>    ARM: dts: imx28-tx28: add SPDX-License-Identifier
> 
>   arch/arm/boot/dts/imx28-apf28.dts             |  96 ++--
>   arch/arm/boot/dts/imx28-apf28dev.dts          | 312 ++++++------
>   arch/arm/boot/dts/imx28-apx4devkit.dts        | 380 +++++++-------
>   arch/arm/boot/dts/imx28-cfa10036.dts          | 193 ++++----
>   arch/arm/boot/dts/imx28-cfa10049.dts          | 454 +++++++++--------
>   arch/arm/boot/dts/imx28-cfa10055.dts          | 224 +++++----
>   arch/arm/boot/dts/imx28-cfa10056.dts          | 146 +++---
>   arch/arm/boot/dts/imx28-cfa10057.dts          | 252 +++++-----
>   arch/arm/boot/dts/imx28-cfa10058.dts          | 186 ++++---
>   arch/arm/boot/dts/imx28-duckbill-2-485.dts    | 174 +------
>   .../arm/boot/dts/imx28-duckbill-2-enocean.dts | 198 +-------
>   arch/arm/boot/dts/imx28-duckbill-2-spi.dts    | 211 ++------
>   arch/arm/boot/dts/imx28-duckbill-2.dts        | 256 +++++-----
>   arch/arm/boot/dts/imx28-duckbill.dts          | 196 ++++----
>   arch/arm/boot/dts/imx28-evk.dts               | 462 +++++++++---------
>   arch/arm/boot/dts/imx28-m28.dtsi              |  44 +-
>   arch/arm/boot/dts/imx28-m28cu3.dts            | 354 +++++++-------
>   arch/arm/boot/dts/imx28-m28evk.dts            | 420 ++++++++--------
>   arch/arm/boot/dts/imx28-sps1.dts              | 201 ++++----
>   arch/arm/boot/dts/imx28-ts4600.dts            |  80 ++-
>   arch/arm/boot/dts/imx28-tx28.dts              |  38 +-
>   21 files changed, 2142 insertions(+), 2735 deletions(-)
> 

FYI, such changes have been rejected years ago:

https://lore.kernel.org/linux-arm-kernel/20140512141814.GE8330@dragon/

Regards,

-- 
Sébastien Szymanski, Armadeus Systems
Software engineer

