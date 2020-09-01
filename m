Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CE00B259919
	for <lists+devicetree@lfdr.de>; Tue,  1 Sep 2020 18:36:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732023AbgIAQgS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Sep 2020 12:36:18 -0400
Received: from lhrrgout.huawei.com ([185.176.76.210]:2731 "EHLO huawei.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1730765AbgIAQgO (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 1 Sep 2020 12:36:14 -0400
Received: from lhreml710-chm.china.huawei.com (unknown [172.18.7.108])
        by Forcepoint Email with ESMTP id 0F10162063360C60A23E;
        Tue,  1 Sep 2020 17:36:13 +0100 (IST)
Received: from localhost (10.52.122.233) by lhreml710-chm.china.huawei.com
 (10.201.108.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Tue, 1 Sep 2020
 17:36:12 +0100
Date:   Tue, 1 Sep 2020 17:34:36 +0100
From:   Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To:     Sudeep Holla <sudeep.holla@arm.com>
CC:     <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, "Will Deacon" <will@kernel.org>,
        <pratikp@quicinc.com>, <tsoni@quicinc.com>,
        <kernel-team@android.com>
Subject: Re: [PATCH 8/9] firmware: arm_ffa: Setup and register all the KVM
 managed partitions
Message-ID: <20200901173436.0000325b@Huawei.com>
In-Reply-To: <20200829170923.29949-9-sudeep.holla@arm.com>
References: <20200829170923.29949-1-sudeep.holla@arm.com>
        <20200829170923.29949-9-sudeep.holla@arm.com>
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

On Sat, 29 Aug 2020 18:09:22 +0100
Sudeep Holla <sudeep.holla@arm.com> wrote:

> Parse the FFA nodes from the device-tree and register all the partitions
> managed by the KVM hypervisor.
> 
> All the partitions including the host(self) are registered as the
> character device with a set of file operations. Most of the interface
> will concentrated in the ioctl.
> 
> For now, we have a tiny set of initial ioctls implemented.
> 
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>

A few trivial comments inline.

> ---
>  drivers/firmware/arm_ffa/bus.c    |   2 +
>  drivers/firmware/arm_ffa/driver.c | 378 +++++++++++++++++++++++++++++-
>  include/linux/arm_ffa.h           |   3 +
>  include/uapi/linux/arm_ffa.h      |  56 +++++
>  4 files changed, 438 insertions(+), 1 deletion(-)
>  create mode 100644 include/uapi/linux/arm_ffa.h
> 

...

> diff --git a/drivers/firmware/arm_ffa/driver.c b/drivers/firmware/arm_ffa/driver.c
> index 3670ba400f89..96113e594db6 100644
> --- a/drivers/firmware/arm_ffa/driver.c
> +++ b/drivers/firmware/arm_ffa/driver.c
> @@ -22,11 +22,17 @@
>  #define DRIVER_NAME "ARM FF-A"
>  #define pr_fmt(fmt) DRIVER_NAME ": " fmt
>  
> +#include <linux/arm_ffa.h>
>  #include <linux/bitfield.h>
> +#include <linux/device.h>
> +#include <linux/fs.h>
>  #include <linux/io.h>
>  #include <linux/module.h>
> +#include <linux/of.h>
>  #include <linux/slab.h>
> -#include <linux/arm_ffa.h>

Ah. Fix that in the earlier patch rather than adding then moving it.

> +#include <linux/uaccess.h>
> +#include <linux/uuid.h>
> +#include <uapi/linux/arm_ffa.h>
>  
>  #include "common.h"
>  

...

> +
> +static long ffa_ioctl(struct file *filp, unsigned int ioctl, unsigned long arg)
> +{
> +	long r = -EINVAL;
> +	void __user *argp = (void __user *)arg;
> +	struct ffa_device *ffa_dev = filp->private_data;
> +
> +	switch (ioctl) {
> +	case FFA_GET_API_VERSION:
> +		if (arg)
> +			goto out;

Perhaps more readable (and a little shorter) with early returns?

> +		r = drv_info->version;
> +		break;
> +	case FFA_GET_PARTITION_ID:
> +		if (arg)
> +			goto out;
> +		r = ffa_dev->vm_id;
> +		break;
> +	case FFA_GET_PARTITION_INFO: {
> +		struct ffa_partition_info pbuf;
> +		struct ffa_part_info __user *pinfo = argp;
> +		struct ffa_part_info info;
> +		unsigned int count;
> +
> +		r = -EFAULT;
> +		if (copy_from_user(&info, pinfo, sizeof(info)))
> +			break;
> +		count = ffa_partition_probe(info.uuid_str, &pbuf);
> +		if (count > 1) {
> +			r = -E2BIG;
> +			break;
> +		}
> +		r = -EFAULT;
> +		if (copy_to_user(pinfo, &info, sizeof(info)))
> +			break;
> +		r = 0;
> +		break;
> +	}
> +	case FFA_SEND_RECEIVE_SYNC: {
> +		struct ffa_send_recv_sync __user *udata = argp;
> +		struct ffa_send_recv_sync kdata;
> +
> +		r = -EFAULT;
> +		if (copy_from_user(&kdata, udata, sizeof(kdata)))
> +			break;
> +		r = ffa_msg_send_direct_req(ffa_dev->vm_id, kdata.endpoint_id,
> +					    &kdata.data);
> +		if (r)
> +			break;
> +		if (copy_to_user(udata, &kdata, sizeof(kdata)))
> +			break;
> +		break;
> +	}
> +	case FFA_SEND_RECEIVE_ASYNC: {
> +		struct ffa_send_recv_async __user *udata = argp;
> +		struct ffa_send_recv_async kdata;
> +		void *buf;
> +
> +		r = -EFAULT;
> +		if (copy_from_user(&kdata, udata, sizeof(kdata)))
> +			break;
> +
> +		if (kdata.length < 0 || kdata.length > RXTX_BUFFER_SIZE) {
> +			r = -EINVAL;
> +			break;
> +		}
> +
> +		buf = kzalloc(kdata.length, GFP_KERNEL);
> +		if (!buf) {
> +			r = -ENOMEM;
> +			break;
> +		}
> +
> +		if (copy_from_user(buf, udata->buffer, kdata.length)) {
> +			kfree(buf);
> +			break;
> +		}
> +
> +		r = ffa_msg_send(ffa_dev->vm_id, kdata.endpoint_id, buf,
> +				 kdata.length);
> +		if (r) {
> +			kfree(buf);
> +			break;
> +		}
> +
> +		break;
> +	}
> +	default:
> +		r = -EINVAL;
> +	}
> +out:
> +	return r;
> +}
> +

...

>  static int __init ffa_init(void)
>  {
>  	int ret;
> @@ -262,6 +623,14 @@ static int __init ffa_init(void)
>  	mutex_init(&drv_info->rx_lock);
>  	mutex_init(&drv_info->tx_lock);
>  
> +	/* This will be default device both in theguests and host */

the guests

> +	ret = ffa_device_alloc_register("self", drv_info->vm_id, NULL);
> +	if (ret)
> +		return ret;
> +
> +	/* Set up all the partitions that KVM hypervisor maintains */
> +	ffa_setup_partitions();
> +
>  	return 0;
>  free_pages:
>  	if (drv_info->tx_buffer)
> @@ -275,6 +644,13 @@ module_init(ffa_init);
>  
>  static void __exit ffa_exit(void)
>  {
> +	struct list_head *p;
> +
> +	mutex_lock(&ffa_devs_list_mutex);
> +	list_for_each(p, &ffa_devs_list)
> +		ffa_device_unregister(list_to_ffa_dev(p));
> +	mutex_unlock(&ffa_devs_list_mutex);
> +
>  	ffa_rxtx_unmap(drv_info->vm_id);
>  	free_pages_exact(drv_info->tx_buffer, RXTX_BUFFER_SIZE);
>  	free_pages_exact(drv_info->rx_buffer, RXTX_BUFFER_SIZE);

...

Jonathan

