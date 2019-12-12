Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 862A711CBA0
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2019 11:59:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728829AbfLLK7n (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Dec 2019 05:59:43 -0500
Received: from foss.arm.com ([217.140.110.172]:42514 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728777AbfLLK7n (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 12 Dec 2019 05:59:43 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B83F5328;
        Thu, 12 Dec 2019 02:59:42 -0800 (PST)
Received: from [10.1.197.1] (ewhatever.cambridge.arm.com [10.1.197.1])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 676103F718;
        Thu, 12 Dec 2019 02:59:41 -0800 (PST)
Subject: Re: [PATCH v6 03/15] coresight: cti: Add sysfs access to program
 function regs
To:     Mike Leach <mike.leach@linaro.org>,
        linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
        devicetree@vger.kernel.org
Cc:     mathieu.poirier@linaro.org, robh+dt@kernel.org,
        liviu.dudau@arm.com, sudeep.holla@arm.com,
        lorenzo.pieralisi@arm.com, agross@kernel.org
References: <20191211230748.5037-1-mike.leach@linaro.org>
From:   Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
Message-ID: <faff0b65-0fb3-7ec8-f78b-5fe8d9036979@arm.com>
Date:   Thu, 12 Dec 2019 10:59:40 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191211230748.5037-1-mike.leach@linaro.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/12/2019 23:07, Mike Leach wrote:
> Adds in sysfs programming support for the CTI function register sets.
> Allows direct manipulation of channel / trigger association registers.
> 
> Signed-off-by: Mike Leach <mike.leach@linaro.org>
> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>


Thanks for the changes. This looks really nice

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
