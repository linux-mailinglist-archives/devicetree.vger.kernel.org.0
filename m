Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 64C98445702
	for <lists+devicetree@lfdr.de>; Thu,  4 Nov 2021 17:17:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231556AbhKDQTg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Nov 2021 12:19:36 -0400
Received: from mga06.intel.com ([134.134.136.31]:56306 "EHLO mga06.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231508AbhKDQTg (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 4 Nov 2021 12:19:36 -0400
X-IronPort-AV: E=McAfee;i="6200,9189,10157"; a="292570868"
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; 
   d="scan'208";a="292570868"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Nov 2021 09:16:58 -0700
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; 
   d="scan'208";a="468521539"
Received: from yoojae-mobl.amr.corp.intel.com (HELO [10.209.121.122]) ([10.209.121.122])
  by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Nov 2021 09:16:57 -0700
Message-ID: <27c6e902-7cb3-97c6-f4db-b31a81869115@linux.intel.com>
Date:   Thu, 4 Nov 2021 09:16:57 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Subject: Re: [PATCH -next v2 5/6] dt-bindings: ipmi: aspeed,kcs-bmc: add
 'clocks' as a required property
Content-Language: en-US
To:     Joel Stanley <joel@jms.id.au>
Cc:     Rob Herring <robh@kernel.org>,
        Jae Hyun Yoo <jae.hyun.yoo@intel.com>,
        Andrew Jeffery <andrew@aj.id.au>,
        openipmi-developer@lists.sourceforge.net,
        linux-aspeed <linux-aspeed@lists.ozlabs.org>,
        Haiyue Wang <haiyue.wang@linux.intel.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        devicetree <devicetree@vger.kernel.org>,
        Cedric Le Goater <clg@kaod.org>,
        Corey Minyard <minyard@acm.org>,
        ChiaWei Wang <chiawei_wang@aspeedtech.com>
References: <20211102203717.96794-1-jae.hyun.yoo@intel.com>
 <20211102203717.96794-6-jae.hyun.yoo@intel.com>
 <1635902437.654631.3880388.nullmailer@robh.at.kernel.org>
 <8db279c9-4c76-91a5-3617-a17effb2d103@linux.intel.com>
 <CAL_Jsq+SwCqFycKz4+agRsB3qr4Rbfra55Q6tNbMH2bNtoX+hA@mail.gmail.com>
 <796e0c02-5bca-e8a9-a17f-898aafec237f@linux.intel.com>
 <CACPK8Xcwkz1QLOvN0MiSkX+jj2NZY10--1qo7M8UMyEmQQtYmA@mail.gmail.com>
From:   Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
In-Reply-To: <CACPK8Xcwkz1QLOvN0MiSkX+jj2NZY10--1qo7M8UMyEmQQtYmA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/3/2021 3:45 PM, Joel Stanley wrote:
> On Wed, 3 Nov 2021 at 17:27, Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com> wrote:
>>
>> On 11/3/2021 9:29 AM, Rob Herring wrote:
> 
>>> It's possible that 'clocks' was always required or that it never
>>> worked without clocks, then this change is okay. Looking at this
>>> patch, I have no way to know that. The commit message has to explain
>>> that. A commit message needs to answer WHY are you making the change.
>>> You don't really need WHAT the change is as anyone can read the diff.
>>
>> Then what would be better? Would it be good enough if I add more detail
>> commit message including a note that dtb recompiling is required? Or,
>> should I change this series to treat the 'clocks' as an optional
>> property? Can you please share your thought?
> 
> Make it essential. It was only by accident that things have worked
> without this change.
> 
> While keeping backwards compatibility with dtbs is a goal we strive
> for, in practice we use the dtb from the corresponding kernel source
> tree, so as long as the patch to the driver is applied in the same
> place as the patch to the device tree no systems will break.

Okay. I'll keep 'clocks' property as a required property and will make
the commit message of this patch more descriptive. Thanks a lot for your
feedback.

Cheers,
Jae

