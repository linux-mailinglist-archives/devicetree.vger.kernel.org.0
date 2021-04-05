Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 293B0354989
	for <lists+devicetree@lfdr.de>; Tue,  6 Apr 2021 02:02:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232001AbhDFACi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Apr 2021 20:02:38 -0400
Received: from 1.mo178.mail-out.ovh.net ([178.33.251.53]:59230 "EHLO
        1.mo178.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231544AbhDFACh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Apr 2021 20:02:37 -0400
Received: from player687.ha.ovh.net (unknown [10.109.143.136])
        by mo178.mail-out.ovh.net (Postfix) with ESMTP id 32BDCCB630
        for <devicetree@vger.kernel.org>; Tue,  6 Apr 2021 00:44:55 +0200 (CEST)
Received: from milecki.pl (ip-194-187-74-233.konfederacka.maverick.com.pl [194.187.74.233])
        (Authenticated sender: rafal@milecki.pl)
        by player687.ha.ovh.net (Postfix) with ESMTPSA id 53C851CBD95CD;
        Mon,  5 Apr 2021 22:44:48 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-95G00145766b72-572d-42d7-a314-53a8bd9dcf66,
                    4DCEFDA8752493737E1411269D54F25097ACE730) smtp.auth=rafal@milecki.pl
X-OVh-ClientIp: 194.187.74.233
Subject: Re: [PATCH robh next] dt-bindings: bus: add Broadcom CRU
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com
References: <20210309142241.16259-1-zajec5@gmail.com>
From:   =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Message-ID: <e974306d-8a53-00ca-76c4-c3bea505d334@milecki.pl>
Date:   Tue, 6 Apr 2021 00:44:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210309142241.16259-1-zajec5@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 10585147977075625615
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduledrudejfedgudefucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepuffvfhfhkffffgggjggtgfesthekredttdefjeenucfhrhhomheptfgrfhgrlhcuofhilhgvtghkihcuoehrrghfrghlsehmihhlvggtkhhirdhplheqnecuggftrfgrthhtvghrnhepkeduheejheffudefhffghfegjeejleetkeevueelveegkefhhfffieehleelgfevnecukfhppedtrddtrddtrddtpdduleegrddukeejrdejgedrvdeffeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrheikeejrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheprhgrfhgrlhesmhhilhgvtghkihdrphhlpdhrtghpthhtohepuggvvhhitggvthhrvggvsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

On 09.03.2021 15:22, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> CRU is a block used in Northstar devices. It can be seen in the
> bcm5301x.dtsi and this binding documents its proper usage.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>

could you review and push or reject this patch, please?
