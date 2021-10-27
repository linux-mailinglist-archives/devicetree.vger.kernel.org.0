Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D9D2243BF4C
	for <lists+devicetree@lfdr.de>; Wed, 27 Oct 2021 04:10:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237918AbhJ0CM5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Oct 2021 22:12:57 -0400
Received: from marcansoft.com ([212.63.210.85]:56506 "EHLO mail.marcansoft.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S237733AbhJ0CM4 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 26 Oct 2021 22:12:56 -0400
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (4096 bits))
        (No client certificate requested)
        (Authenticated sender: marcan@marcan.st)
        by mail.marcansoft.com (Postfix) with ESMTPSA id CAC4442181;
        Wed, 27 Oct 2021 02:10:26 +0000 (UTC)
Subject: Re: [PATCH 0/5] arm64: apple: DT updates for M1 PCIe support
To:     Marc Zyngier <maz@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Cc:     Mark Kettenis <kettenis@openbsd.org>,
        Sven Peter <sven@svenpeter.dev>,
        Alyssa Rosenzweig <alyssa@rosenzweig.io>,
        kernel-team@android.com
References: <20211025211018.744363-1-maz@kernel.org>
From:   Hector Martin <marcan@marcan.st>
Message-ID: <0fe06df1-a05d-59a1-85bc-422ed100b007@marcan.st>
Date:   Wed, 27 Oct 2021 11:10:26 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211025211018.744363-1-maz@kernel.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: es-ES
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/10/2021 06.10, Marc Zyngier wrote:
> Now that most of the PCIe dependencies are on their way to 5.16,
> here are the last missing pieces in the form of DT updates.
> 
> Marc Zyngier (3):
>    arm64: dts: apple: t8103: Add PCIe DARTs
>    arm64: dts: apple: t8103: Add root port interrupt routing
>    arm64: dts: apple: j274: Expose PCI node for the Ethernet MAC address
> 
> Mark Kettenis (2):
>    arm64: apple: Add pinctrl nodes
>    arm64: apple: Add PCIe node
> 
>   arch/arm64/boot/dts/apple/t8103-j274.dts |  23 +++
>   arch/arm64/boot/dts/apple/t8103.dtsi     | 207 +++++++++++++++++++++++
>   2 files changed, 230 insertions(+)
> 

Thank you! I've merged this into asahi-soc/dt. Things are getting tied 
together nicely for 5.16 :)

Acked-by: Hector Martin <marcan@marcan.st>

-- 
Hector Martin (marcan@marcan.st)
Public Key: https://mrcn.st/pub
