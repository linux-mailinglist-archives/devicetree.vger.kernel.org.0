Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A034D4424B2
	for <lists+devicetree@lfdr.de>; Tue,  2 Nov 2021 01:23:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231224AbhKBA0U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Nov 2021 20:26:20 -0400
Received: from mga04.intel.com ([192.55.52.120]:33685 "EHLO mga04.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232144AbhKBA0O (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 1 Nov 2021 20:26:14 -0400
X-IronPort-AV: E=McAfee;i="6200,9189,10155"; a="229870204"
X-IronPort-AV: E=Sophos;i="5.87,201,1631602800"; 
   d="scan'208";a="229870204"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Nov 2021 16:59:10 -0700
X-IronPort-AV: E=Sophos;i="5.87,201,1631602800"; 
   d="scan'208";a="540611623"
Received: from yoojae-mobl.amr.corp.intel.com (HELO [10.212.215.227]) ([10.212.215.227])
  by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Nov 2021 16:59:09 -0700
Message-ID: <9857f68a-365d-e569-b083-85c10edf9bba@linux.intel.com>
Date:   Mon, 1 Nov 2021 16:59:08 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Subject: Re: [PATCH -next 1/4] ARM: dts: aspeed: add LCLK setting into LPC IBT
 node
Content-Language: en-US
To:     Joel Stanley <joel@jms.id.au>
Cc:     Jae Hyun Yoo <jae.hyun.yoo@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Corey Minyard <minyard@acm.org>,
        Andrew Jeffery <andrew@aj.id.au>,
        Cedric Le Goater <clg@kaod.org>,
        Haiyue Wang <haiyue.wang@linux.intel.com>,
        devicetree <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-aspeed <linux-aspeed@lists.ozlabs.org>,
        openipmi-developer@lists.sourceforge.net
References: <20211101233751.49222-1-jae.hyun.yoo@intel.com>
 <20211101233751.49222-2-jae.hyun.yoo@intel.com>
 <CACPK8XcAN-SsKDS2E_Cnv=5-Rq=9sAWYyb88i2Ub-iX0WH6aZw@mail.gmail.com>
 <3b90b836-d35f-fe98-69b1-69ebcecf54ea@linux.intel.com>
 <CACPK8XcR0zR10_dPOM0atyqU3TarkWZ9N4r0B94N56_gebjJaw@mail.gmail.com>
From:   Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
In-Reply-To: <CACPK8XcR0zR10_dPOM0atyqU3TarkWZ9N4r0B94N56_gebjJaw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/1/2021 4:52 PM, Joel Stanley wrote:
> On Mon, 1 Nov 2021 at 23:48, Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com> wrote:
>>
>>> Reviewed-by: Joel Stanley <joel@jms.id.au>
>>>
>>> Do you need to update the bindings too?
>>
>> Hi Joel,
>>
>> Right, I have to update 'aspeed,ast2400-ibt-bmc.txt'. Will add update
>> in v2. Thanks a lot for your review and for reminding me. :)
> 
> Note that they've moved to Documentation/devicetree/bindings/mfd/aspeed-lpc.yaml
> 
> You can find this commit in linux-next.
> 

Got it. Thanks again!
