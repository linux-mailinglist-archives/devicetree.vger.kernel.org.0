Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0AE0D611EAB
	for <lists+devicetree@lfdr.de>; Sat, 29 Oct 2022 02:18:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229457AbiJ2ASM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Oct 2022 20:18:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33932 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229691AbiJ2ASK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Oct 2022 20:18:10 -0400
X-Greylist: delayed 183 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 28 Oct 2022 17:18:07 PDT
Received: from avasout-ptp-001.plus.net (avasout-ptp-001.plus.net [84.93.230.227])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A28AE696E8
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 17:18:07 -0700 (PDT)
Received: from wallace.baker-net.org.uk ([212.159.113.184])
        by smtp with ESMTP
        id oZV0oa1oPcdv4oZV1ov63G; Sat, 29 Oct 2022 01:15:02
 +0100
X-Clacks-Overhead: "GNU Terry Pratchett"
X-CM-Score: 0.00
X-CNFS-Analysis: v=2.4 cv=LrSBd1Rc c=1 sm=1 tr=0 ts=635c7086
 a=fkd5KTHJFGKPA0tsLFcInQ==:117 a=fkd5KTHJFGKPA0tsLFcInQ==:17
 a=IkcTkHD0fZMA:10 a=Qawa6l4ZSaYA:10 a=1GlyHyXCg2K1F2SkyjEA:9 a=QEXdDO2ut3YA:10
Received: from [192.168.0.131] (gromit.baker-net.org.uk [192.168.0.131])
        by wallace.baker-net.org.uk (Postfix) with ESMTPS id EE5C6CD405E;
        Sat, 29 Oct 2022 01:14:53 +0100 (BST)
Message-ID: <e78b6ece-8dfa-733f-d449-1108a9545223@baker-net.org.uk>
Date:   Sat, 29 Oct 2022 01:14:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH] ARM: dts: kirkwood: Add Zyxel NSA310S board
Content-Language: en-GB
To:     Andrew Lunn <andrew@lunn.ch>,
        Pawel Dembicki <paweldembicki@gmail.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Gregory Clement <gregory.clement@bootlin.com>,
        Tony Dinh <mibodhi@gmail.com>
References: <20220929080110.3182561-1-paweldembicki@gmail.com>
 <YzWVOyM+Z3AFSI7c@lunn.ch>
From:   Adam Baker <linux@baker-net.org.uk>
In-Reply-To: <YzWVOyM+Z3AFSI7c@lunn.ch>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CMAE-Envelope: MS4xfMR3Hws/lKU0M8GSUhV+Oxa87OgNOPLKggpyqRqUhW07ujZWJW0sy64JMqRAcDJCGRgnQHJqGLlg/BPxLh5xaXgBp1C++9gSrMek1Wu5PN1w0XKtIwbp
 XHMcDT8plnfkXjtgJGS9FaY32Rq8OPI4nFICI6dJd5Os5Kpg2sR5rQ8YmWFmmARIDMubQKEsrCX2R1XO5U+SBRiihpHJiBfcWH+B+Csm84NUDppTgP5IB26k
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_LOW,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,
        SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/09/2022 13:53, Andrew Lunn wrote:
>> +// SPDX-License-Identifier: GPL-2.0-only
> Same license comment. However, you can only change the license if it
> is your code. If you did the conversion from a board setup file to DT,
> you can change the license. If somebody else did that and you are just
> submitting it, then we need to keep to GPL-2.0-only.

As it lists my name in the copyright I'm guessing it is derived from my 
nsa320 device tree. If so I have no objection to relicensing to GPL2 + 
MIT for anything that came from my code. It is different enough I don't 
think I could reasonably lay claim to it anyway. It looks as though some 
of it such as the keys section came from the earlier nsa310 device tree 
rather than mine. That looks like Andrew Lunn's clean up of it rather 
than Tero Jaasko's original.

There is no temperature or fan monitoring listed in the device tree, do 
you know if the 310s supports it and if so what sensor it uses?

Adam Baker

