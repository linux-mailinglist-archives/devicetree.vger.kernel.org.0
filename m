Return-Path: <devicetree+bounces-575-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 996A77A202E
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 15:50:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 52957282854
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 13:50:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D2C01097A;
	Fri, 15 Sep 2023 13:50:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6813D1094B
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 13:50:41 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 48D791FF5;
	Fri, 15 Sep 2023 06:50:39 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 48AA91FB;
	Fri, 15 Sep 2023 06:51:16 -0700 (PDT)
Received: from [192.168.1.3] (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5A5D73F67D;
	Fri, 15 Sep 2023 06:50:37 -0700 (PDT)
Message-ID: <fafd728b-1489-4856-ced3-6759fbda2c6f@arm.com>
Date: Fri, 15 Sep 2023 14:50:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [RFC PATCH v3 0/8] Coresight for Kernel panic and watchdog reset
Content-Language: en-US
To: Linu Cherian <lcherian@marvell.com>, suzuki.poulose@arm.com,
 mike.leach@linaro.org, leo.yan@linaro.org
Cc: linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, sgoutham@marvell.com, gcherian@marvell.com
References: <20230904050548.28047-1-lcherian@marvell.com>
From: James Clark <james.clark@arm.com>
In-Reply-To: <20230904050548.28047-1-lcherian@marvell.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 04/09/2023 06:05, Linu Cherian wrote:
> This RFC v3 patch series is rebased on v6.5-rc7 and is dependent
> on the below two patches.
[...]
> 
> Steps for reading trace data captured in previous boot
> ++++++++++++++++++++++++++++++++++++++++++++++++++++++
> 1. cd /sys/bus/coresight/devices/tmc_etrXX/
> 
> 2. Change to special mode called, read_prevboot.
> 
>    #echo 1 > read_prevboot
> 
> 3. Dump trace buffer data to a file,
> 
>    #dd if=/dev/tmc_etrXX of=~/cstrace.bin

Hi Linu,

I left this comment on V2, but I tested it again and get the same
result. Instead of linking it I'll just re-paste it here:

I made a reserved region, but when I run this command I get "Unable to
handle kernel paging request at virtual address 001f1921ed10ffae".

Is there an extra step involved if there was no trace captured from a
previous panic? I thought I'd just be able to read out uninitialised
data. Or is it the uninitialised metadata that's causing this issue?

Also that's without KASAN or lockdep turned on. If I have a kernel with
either of those things I get a different warning for each one. I expect
the lockdep one would happen even in the working scenario though?

> 
> 4. Reset back to normal mode
> 
>    #echo 0 > read_prevboot
> 

