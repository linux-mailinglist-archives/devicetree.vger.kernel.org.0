Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1150E4743B4
	for <lists+devicetree@lfdr.de>; Tue, 14 Dec 2021 14:42:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234499AbhLNNma (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Dec 2021 08:42:30 -0500
Received: from mxout02.lancloud.ru ([45.84.86.82]:54080 "EHLO
        mxout02.lancloud.ru" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230031AbhLNNma (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Dec 2021 08:42:30 -0500
X-Greylist: delayed 438 seconds by postgrey-1.27 at vger.kernel.org; Tue, 14 Dec 2021 08:42:29 EST
Received: from LanCloud
DKIM-Filter: OpenDKIM Filter v2.11.0 mxout02.lancloud.ru 8CB802389EA7
Received: from LanCloud
Received: from LanCloud
Received: from LanCloud
Message-ID: <d4a00def-7765-e0e4-c5c7-8d648eeb8cf2@omp.ru>
Date:   Tue, 14 Dec 2021 16:35:02 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
Subject: Re: [PATCH] arm64: dts: renesas: r8a77961: Add lvsd0 device node
Content-Language: en-US
To:     Nikita Yushchenko <nikita.yoush@cogentembedded.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
CC:     <linux-renesas-soc@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
References: <20211213211855.1052211-1-nikita.yoush@cogentembedded.com>
From:   Sergey Shtylyov <s.shtylyov@omp.ru>
Organization: Open Mobile Platform
In-Reply-To: <20211213211855.1052211-1-nikita.yoush@cogentembedded.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [192.168.11.198]
X-ClientProxiedBy: LFEXT02.lancloud.ru (fd00:f066::142) To
 LFEX1907.lancloud.ru (fd00:f066::207)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello!

On 14.12.2021 0:18, Nikita Yushchenko wrote:

> Add the missing lvds0 node for the R-Car M3-W+ SoC.

    Typo in the subject (lvsd0)...

> Signed-off-by: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
[...]

MBR, Sergey

