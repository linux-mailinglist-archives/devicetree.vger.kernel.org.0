Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 19712572E97
	for <lists+devicetree@lfdr.de>; Wed, 13 Jul 2022 08:57:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234252AbiGMG5m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jul 2022 02:57:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232833AbiGMG5m (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Jul 2022 02:57:42 -0400
X-Greylist: delayed 503 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 12 Jul 2022 23:57:40 PDT
Received: from 1.mo576.mail-out.ovh.net (1.mo576.mail-out.ovh.net [178.33.251.173])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 084BF11A0D
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 23:57:39 -0700 (PDT)
Received: from player759.ha.ovh.net (unknown [10.110.103.112])
        by mo576.mail-out.ovh.net (Postfix) with ESMTP id 22F5D212CB
        for <devicetree@vger.kernel.org>; Wed, 13 Jul 2022 06:47:45 +0000 (UTC)
Received: from RCM-web5.webmail.mail.ovh.net (ip-194-187-74-233.konfederacka.maverick.com.pl [194.187.74.233])
        (Authenticated sender: rafal@milecki.pl)
        by player759.ha.ovh.net (Postfix) with ESMTPSA id 0BA582C9B510B;
        Wed, 13 Jul 2022 06:47:37 +0000 (UTC)
MIME-Version: 1.0
Date:   Wed, 13 Jul 2022 08:47:36 +0200
From:   =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
To:     William Zhang <william.zhang@broadcom.com>
Cc:     Linux ARM List <linux-arm-kernel@lists.infradead.org>,
        Broadcom Kernel List <bcm-kernel-feedback-list@broadcom.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] arm64: dts: broadcom: bcm4908: Fix timer node for
 BCM4906 SoC
In-Reply-To: <20220708182507.23542-1-william.zhang@broadcom.com>
References: <20220708182507.23542-1-william.zhang@broadcom.com>
User-Agent: Roundcube Webmail/1.4.13
Message-ID: <3fdba35f965523d63d3bb1c49c10a713@milecki.pl>
X-Sender: rafal@milecki.pl
X-Originating-IP: 194.187.74.233
X-Webmail-UserID: rafal@milecki.pl
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-Ovh-Tracer-Id: 7678918842932177883
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvfedrudejiedguddugecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeggfffhvfevufgjfhgfkfigihgtgfesthejjhdttdervdenucfhrhhomheptfgrfhgrlhgpofhilhgvtghkihcuoehrrghfrghlsehmihhlvggtkhhirdhplheqnecuggftrfgrthhtvghrnhepgedvffejledvgeegteehgeevjeeiteegieeigfegleevjeffheeikefhudeulefhnecukfhppedtrddtrddtrddtpdduleegrddukeejrdejgedrvdeffeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghlohepphhlrgihvghrjeehledrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehrrghfrghlsehmihhlvggtkhhirdhplhdpnhgspghrtghpthhtohepuddprhgtphhtthhopeguvghvihgtvghtrhgvvgesvhhgvghrrdhkvghrnhgvlhdrohhrghdpoffvtefjohhsthepmhhoheejie
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2022-07-08 20:25, William Zhang wrote:
> The cpu mask value in interrupt property inherits from bcm4908.dtsi
> which sets to four cpus. Correct the value to two cpus for dual core
> BCM4906 SoC.
> 
> Fixes: c8b404fb05dc ("arm64: dts: broadcom: bcm4908: add BCM4906
> Netgear R8000P DTS files")
> 
> Signed-off-by: William Zhang <william.zhang@broadcom.com>
> Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>

Both look good, thanks!
