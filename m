Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D04963330DE
	for <lists+devicetree@lfdr.de>; Tue,  9 Mar 2021 22:26:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231907AbhCIVZh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Mar 2021 16:25:37 -0500
Received: from 12.mo1.mail-out.ovh.net ([87.98.162.229]:52741 "EHLO
        12.mo1.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231910AbhCIVZG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Mar 2021 16:25:06 -0500
X-Greylist: delayed 425 seconds by postgrey-1.27 at vger.kernel.org; Tue, 09 Mar 2021 16:25:05 EST
Received: from player770.ha.ovh.net (unknown [10.108.42.75])
        by mo1.mail-out.ovh.net (Postfix) with ESMTP id 775811F709B
        for <devicetree@vger.kernel.org>; Tue,  9 Mar 2021 22:17:55 +0100 (CET)
Received: from milecki.pl (ip-194-187-74-233.konfederacka.maverick.com.pl [194.187.74.233])
        (Authenticated sender: rafal@milecki.pl)
        by player770.ha.ovh.net (Postfix) with ESMTPSA id 87EC21BF48BD6;
        Tue,  9 Mar 2021 21:17:49 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-95G001e598d304-aabc-486d-9d54-8bde020fd4ef,
                    BBAE30B40BFB00BE64B6A4F5A28ED498646C278C) smtp.auth=rafal@milecki.pl
X-OVh-ClientIp: 194.187.74.233
Subject: Re: [PATCH stblinux] arm64: dts: broadcom: bcm4908: fix USB PHY reg
 name typo
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com
References: <20210309181132.23144-1-zajec5@gmail.com>
From:   =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Message-ID: <9e649338-5431-735d-5aa5-b4323a2e91ad@milecki.pl>
Date:   Tue, 9 Mar 2021 22:17:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210309181132.23144-1-zajec5@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 16574091054059392655
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduledrudduiedgudegjecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefuvfhfhffkffgfgggjtgfgsehtkeertddtfeejnecuhfhrohhmpeftrghfrghlucfoihhlvggtkhhiuceorhgrfhgrlhesmhhilhgvtghkihdrphhlqeenucggtffrrghtthgvrhhnpeekudehjeehffdufefhgffhgeejjeelteekveeuleevgeekhffhffeiheellefgveenucfkpheptddrtddrtddrtddpudelgedrudekjedrjeegrddvfeefnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeejtddrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehrrghfrghlsehmihhlvggtkhhirdhplhdprhgtphhtthhopeguvghvihgtvghtrhgvvgesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09.03.2021 19:11, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> s/crtl/ctrl/
> 
> Fixes: 17aa606c5f9b ("arm64: dts: broadcom: bcm4908: describe USB PHY")
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>

Ah, that commit wasn't pushed yet and above 17aa606c5f9b sha is my local one.

Florian: please consider using this as fixup or replacing sha with yours.
