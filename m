Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8F96225996E
	for <lists+devicetree@lfdr.de>; Tue,  1 Sep 2020 18:40:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732177AbgIAQjk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Sep 2020 12:39:40 -0400
Received: from lhrrgout.huawei.com ([185.176.76.210]:2732 "EHLO huawei.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1732169AbgIAQjj (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 1 Sep 2020 12:39:39 -0400
Received: from lhreml710-chm.china.huawei.com (unknown [172.18.7.106])
        by Forcepoint Email with ESMTP id 8536C47CDFBE4DBFB385;
        Tue,  1 Sep 2020 17:39:38 +0100 (IST)
Received: from localhost (10.52.122.233) by lhreml710-chm.china.huawei.com
 (10.201.108.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Tue, 1 Sep 2020
 17:39:38 +0100
Date:   Tue, 1 Sep 2020 17:38:02 +0100
From:   Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To:     Sudeep Holla <sudeep.holla@arm.com>
CC:     <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, Will Deacon <will@kernel.org>,
        <pratikp@quicinc.com>, <tsoni@quicinc.com>,
        <kernel-team@android.com>
Subject: Re: [PATCH 9/9] firmware: arm_ffa: Setup in-kernel users of FFA
 partitions
Message-ID: <20200901173802.000048c6@Huawei.com>
In-Reply-To: <20200829170923.29949-10-sudeep.holla@arm.com>
References: <20200829170923.29949-1-sudeep.holla@arm.com>
        <20200829170923.29949-10-sudeep.holla@arm.com>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.52.122.233]
X-ClientProxiedBy: lhreml710-chm.china.huawei.com (10.201.108.61) To
 lhreml710-chm.china.huawei.com (10.201.108.61)
X-CFilter-Loop: Reflected
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 29 Aug 2020 18:09:23 +0100
Sudeep Holla <sudeep.holla@arm.com> wrote:

> In order to also enable in-kernel users of FFA interface along with
> the access to user-space applications, let us add simple set of operations
> for such devices.
> 
> The in-kernel users are registered without the character device interface.
> 
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  drivers/firmware/arm_ffa/driver.c | 119 ++++++++++++++++++++++++++----
>  include/linux/arm_ffa.h           |  12 +++
>  2 files changed, 117 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/firmware/arm_ffa/driver.c b/drivers/firmware/arm_ffa/driver.c
> index 96113e594db6..811558ef2a1d 100644
> --- a/drivers/firmware/arm_ffa/driver.c
> +++ b/drivers/firmware/arm_ffa/driver.c
> @@ -372,6 +372,97 @@ static void ffa_device_put(struct ffa_device *ffa_dev)
>  	mutex_unlock(&ffa_dev->mutex);
>  }

...


> +
> +static long
> +ffa_dev_ioctl(struct ffa_device *ffa_dev, unsigned int ioctl, void *arg)
> +{
> +	long r = -EINVAL;
> +
> +	switch (ioctl) {
> +	case FFA_GET_API_VERSION:
> +		r = drv_info->version;

Early returns would make this a tiny bit shorter and more readable.

		return drv_info->version;
etc

> +		break;
> +	case FFA_GET_PARTITION_ID:
> +		r = ffa_dev->vm_id;
> +		break;
> +	case FFA_GET_PARTITION_INFO: {
> +		struct ffa_part_info *pinfo = arg;
> +
> +		if (ffa_partition_probe(pinfo->uuid_str, &pinfo->info) != 1)
> +			r = -E2BIG;
> +		break;
> +	}
> +	case FFA_SEND_RECEIVE_SYNC: {
> +		struct ffa_send_recv_sync *kdata = arg;
> +
> +		r = ffa_msg_send_direct_req(ffa_dev->vm_id, kdata->endpoint_id,
> +					    &kdata->data);
> +		break;
> +	}
> +	case FFA_SEND_RECEIVE_ASYNC: {
> +		struct ffa_send_recv_async *kdata = arg;
> +
> +		if (kdata->length < 0 || kdata->length > RXTX_BUFFER_SIZE) {
> +			r = -EINVAL;
> +			break;
> +		}
> +
> +		r = ffa_msg_send(ffa_dev->vm_id, kdata->endpoint_id,
> +				 kdata->buffer, kdata->length);
> +		break;
> +	}
> +	default:
> +		r = -EINVAL;
> +	}
> +
> +	return r;
> +}
> +

...

Thanks,

Jonathan

