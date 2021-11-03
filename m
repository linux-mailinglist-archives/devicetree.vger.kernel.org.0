Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E49A7444609
	for <lists+devicetree@lfdr.de>; Wed,  3 Nov 2021 17:37:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232906AbhKCQjn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Nov 2021 12:39:43 -0400
Received: from mga01.intel.com ([192.55.52.88]:30681 "EHLO mga01.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232830AbhKCQjj (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 3 Nov 2021 12:39:39 -0400
X-IronPort-AV: E=McAfee;i="6200,9189,10157"; a="255167154"
X-IronPort-AV: E=Sophos;i="5.87,206,1631602800"; 
   d="scan'208";a="255167154"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Nov 2021 09:15:51 -0700
X-IronPort-AV: E=Sophos;i="5.87,206,1631602800"; 
   d="scan'208";a="450120981"
Received: from yoojae-mobl.amr.corp.intel.com (HELO [10.212.171.79]) ([10.212.171.79])
  by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Nov 2021 09:15:51 -0700
Message-ID: <2aeffcdf-0bb7-98f1-5d4e-909b7d86c44a@linux.intel.com>
Date:   Wed, 3 Nov 2021 09:15:50 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Subject: Re: [PATCH -next 3/4] ARM: dts: aspeed: add LCLK setting into LPC KCS
 nodes
Content-Language: en-US
To:     Andrew Jeffery <andrew@aj.id.au>,
        Jae Hyun Yoo <jae.hyun.yoo@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Corey Minyard <minyard@acm.org>, Joel Stanley <joel@jms.id.au>,
        =?UTF-8?Q?C=c3=a9dric_Le_Goater?= <clg@kaod.org>,
        Haiyue Wang <haiyue.wang@linux.intel.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org,
        openipmi-developer@lists.sourceforge.net
References: <20211101233751.49222-1-jae.hyun.yoo@intel.com>
 <20211101233751.49222-4-jae.hyun.yoo@intel.com>
 <372dc598-4ee0-482d-8d1a-ff34eb8cde7d@www.fastmail.com>
From:   Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
In-Reply-To: <372dc598-4ee0-482d-8d1a-ff34eb8cde7d@www.fastmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/2/2021 3:22 PM, Andrew Jeffery wrote:
> 
> 
> On Tue, 2 Nov 2021, at 10:07, jae.hyun.yoo@intel.com wrote:
>> From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
>>
>> Add LCLK clock setting into LPC KCS nodes to enable the LCLK by
>> individual LPC sub drivers.
>>
>> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
> 
> Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

Thanks Andrew for your review!
