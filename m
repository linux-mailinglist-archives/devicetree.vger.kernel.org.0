Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1615B612597
	for <lists+devicetree@lfdr.de>; Sat, 29 Oct 2022 23:34:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229542AbiJ2Vd7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Oct 2022 17:33:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47788 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229494AbiJ2Vd6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 29 Oct 2022 17:33:58 -0400
X-Greylist: delayed 181 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sat, 29 Oct 2022 14:33:56 PDT
Received: from avasout-peh-002.plus.net (avasout-peh-002.plus.net [212.159.14.18])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BD5BDED9
        for <devicetree@vger.kernel.org>; Sat, 29 Oct 2022 14:33:56 -0700 (PDT)
Received: from wallace.baker-net.org.uk ([212.159.113.184])
        by smtp with ESMTP
        id otPkotK1ZoRCFotPloCyZe; Sat, 29 Oct 2022 22:30:53
 +0100
X-Clacks-Overhead: "GNU Terry Pratchett"
X-CM-Score: 0.00
X-CNFS-Analysis: v=2.4 cv=K8IxogaI c=1 sm=1 tr=0 ts=635d9b8d
 a=fkd5KTHJFGKPA0tsLFcInQ==:117 a=fkd5KTHJFGKPA0tsLFcInQ==:17
 a=IkcTkHD0fZMA:10 a=Qawa6l4ZSaYA:10 a=pGLkceISAAAA:8 a=gJibsqi4AAAA:8
 a=viF4dNgqZAl1WLVUOlUA:9 a=QEXdDO2ut3YA:10 a=CK4FZ12xAG-41qC6GJUs:22
Received: from [192.168.0.131] (gromit.baker-net.org.uk [192.168.0.131])
        by wallace.baker-net.org.uk (Postfix) with ESMTPS id 975EECD405E;
        Sat, 29 Oct 2022 22:30:47 +0100 (BST)
Message-ID: <0d23c3f3-7be4-74eb-a304-87d21d62769c@baker-net.org.uk>
Date:   Sat, 29 Oct 2022 22:30:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v2] ARM: dts: kirkwood: Add Zyxel NSA310S board
To:     Pawel Dembicki <paweldembicki@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Gregory Clement <gregory.clement@bootlin.com>,
        Andrew Lunn <andrew@lunn.ch>, Tony Dinh <mibodhi@gmail.com>
References: <20221029205738.4187010-1-paweldembicki@gmail.com>
Content-Language: en-GB
From:   Adam Baker <linux@baker-net.org.uk>
In-Reply-To: <20221029205738.4187010-1-paweldembicki@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CMAE-Envelope: MS4xfPbw1dHBdfRx5VHBmr5UoQcqWai0+iPlZcT1gCj8Ff/TRb56E4JtHi7N9J7Z7YF/AN0+KRtrrQ6+w6mZjQY+wjeDxFpTKwWPdE3nqGq9wOvraDq26sTS
 XzCqmVGsp+KiT9Pel8AKjs2YX0BWMeU2Z7ER28Ede3RUai/1YhKlAW9HaCMma0hZIt4Jc45YIkPFXk6p/CGIovbrGYtP2I6HKXjKCKDo/4ZAaBp4+QVPWqEw
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_LOW,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,
        SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/10/2022 21:57, Pawel Dembicki wrote:
> Zyxel NSA310S is a NAS based on Marvell kirkwood SoC.
> 
> Specification:
>   - Processor Marvell 88F6702 1 GHz
>   - 256MB RAM
>   - 128MB NAND
>   - 1x GBE LAN port (PHY: Marvell 88E1318)
>   - 2x USB 2.0
>   - 1x SATA
>   - 3x button
>   - 7x leds
>   - serial on J1 connector (115200 8N1) (GND-NOPIN-RX-TX-VCC)
> 
> Tested-by: Tony Dinh <mibodhi@gmail.com>
> Signed-off-by: Pawel Dembicki <paweldembicki@gmail.com>
> ---
> Changes in v2:
> - added MIT licence option (With Adam and Tony approval)
> - regulators are written in 'new' way
> 
Acked-by: Adam Baker <linux@baker-net.org.uk>

