Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2EB2829DD09
	for <lists+devicetree@lfdr.de>; Thu, 29 Oct 2020 01:34:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729485AbgJ2Aeh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Oct 2020 20:34:37 -0400
Received: from m42-4.mailgun.net ([69.72.42.4]:23547 "EHLO m42-4.mailgun.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1732132AbgJ1WUR (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 28 Oct 2020 18:20:17 -0400
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org; q=dns/txt;
 s=smtp; t=1603923617; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=lvCzBP89PUcXDLkZrLQas8tpiINggPlX3IHCAMSWkpI=;
 b=kk1EQ4MrWoAkYjhM9SAaD/GYyOIDfY5CFSMGJR81w563IgCJuWuEeVN95pxa65mlskH3Vjzk
 xdnSz/y6a/BtzBYII1cAPjp6BoMS4BrHMLK3KT3xiJCj2aYhmvWDDyOJsqG9Rci9GroNY/Va
 sEI+fktfJ64U1jaeNIUUPcY7AR8=
X-Mailgun-Sending-Ip: 69.72.42.4
X-Mailgun-Sid: WyI1YmJiNiIsICJkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n07.prod.us-east-1.postgun.com with SMTP id
 5f99b75a2ef825cbc2d0cfd6 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Wed, 28 Oct 2020 18:24:26
 GMT
Sender: mdalam=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
        id D8F16C433F0; Wed, 28 Oct 2020 18:24:25 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
        aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,
        URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
        (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: mdalam)
        by smtp.codeaurora.org (Postfix) with ESMTPSA id 0F22FC433CB;
        Wed, 28 Oct 2020 18:24:23 +0000 (UTC)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Date:   Wed, 28 Oct 2020 23:54:23 +0530
From:   mdalam@codeaurora.org
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     agross@kernel.org, bjorn.andersson@linaro.org, richard@nod.at,
        vigneshr@ti.com, robh+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, sricharan@codeaurora.org
Subject: Re: [PATCH 0/5] mtd: rawnand: qcom: Add support for QSPI nand
In-Reply-To: <20201028104835.3dc31745@xps13>
References: <1602307902-16761-1-git-send-email-mdalam@codeaurora.org>
 <20201028104835.3dc31745@xps13>
Message-ID: <10db598eed716d7759bc0125b6977cf1@codeaurora.org>
X-Sender: mdalam@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2020-10-28 15:18, Miquel Raynal wrote:
> Hello,
> 
> Md Sadre Alam <mdalam@codeaurora.org> wrote on Sat, 10 Oct 2020
> 11:01:37 +0530:
> 
>> QPIC 2.0 supports Serial NAND support in addition to all features and
>> commands in QPIC 1.0 for parallel NAND. Parallel and Serial NAND 
>> cannot
>> operate simultaneously. QSPI nand devices will connect to QPIC 
>> IO_MACRO
>> block of QPIC controller. There is a separate IO_MACRO clock for 
>> IO_MACRO
>> block. Default IO_MACRO block divide the input clock by 4. so if 
>> IO_MACRO
>> input clock is 320MHz then on bus it will be 80MHz, so QSPI nand 
>> device
>> should also support this frequency.
>> 
>> QPIC provides 4 data pins to QSPI nand. In standard SPI mode (x1 mode) 
>> data
>> transfer will occur on only 2 pins one pin for Serial data in and one 
>> for
>> serial data out. In QUAD SPI mode (x4 mode) data transfer will occur 
>> at all
>> the four data lines. QPIC controller supports command for x1 mode and 
>> x4 mode.
>> 
>> Md Sadre Alam (5):
>>   dt-bindings: qcom_nandc: IPQ5018 QPIC NAND documentation
>>   mtd: rawnand: qcom: Add initial support for qspi nand
>>   mtd: rawnand: qcom: Read QPIC version
>>   mtd: rawnand: qcom: Enable support for erase,read & write for serial
>>     nand.
>>   mtd: rawnand: qcom: Add support for serial training.
>> 
>>  .../devicetree/bindings/mtd/qcom_nandc.txt         |   3 +
>>  drivers/mtd/nand/raw/nand_ids.c                    |  13 +
>>  drivers/mtd/nand/raw/qcom_nandc.c                  | 502 
>> ++++++++++++++++++++-
>>  3 files changed, 494 insertions(+), 24 deletions(-)
>> 
> 
> I'm sorry but this series clearly breaks the current layering. I cannot
> authorize SPI-NAND code to fall into the raw NAND subsystem.
> 

I am agree with you, we should not add SPI-NAND changes inside
raw NAND subsystem.

> As both typologies cannot be used at the same time, I guess you should
> have another driver handling this feature under the spi/ subsystem +
> a few declarations in the SPI-NAND devices list.
> 

Initially I was started writing separate driver under SPI-NAND subsystem 
then I
realized that more than 85% of raw/qcom_nand.c code getting duplicated.

That's why I have added this SPI-NAND change in raw/qcom_nand.c since
more than 85% of code will be reused.

If I will add this change inside SPI-NAND subsystem then much of
raw/qcom_nand.c code will get duplicated. Would it be ok ?

> Thanks,
> Miquèl
