Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1271A2603E2
	for <lists+devicetree@lfdr.de>; Mon,  7 Sep 2020 19:56:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728809AbgIGR4P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Sep 2020 13:56:15 -0400
Received: from mail-db8eur05on2082.outbound.protection.outlook.com ([40.107.20.82]:22657
        "EHLO EUR05-DB8-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1728802AbgIGLVK (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 7 Sep 2020 07:21:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1AN2nvbjNZzhCAdb1Rjo9jWXKj8P2OffFkHCVyHIEl4=;
 b=are6IYp+Og0jpsHOrUaxFFYgeB3JbayVuamJh/dV7monBg9xYp7GW8z7XV41X+DVOTj4VU6PVPlDyJalJtuAvf3KUK57bqQjC+fzWnrCxZP487PKA5sqRsEtnARHnsR3O8mYUp5pePwD66YCFTo0ea8CZQMpQR8m5LxaxTsojD4=
Received: from AM6PR08CA0044.eurprd08.prod.outlook.com (2603:10a6:20b:c0::32)
 by DBBPR08MB4741.eurprd08.prod.outlook.com (2603:10a6:10:d8::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3348.16; Mon, 7 Sep
 2020 11:21:04 +0000
Received: from AM5EUR03FT050.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:20b:c0:cafe::4c) by AM6PR08CA0044.outlook.office365.com
 (2603:10a6:20b:c0::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3348.16 via Frontend
 Transport; Mon, 7 Sep 2020 11:21:04 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; vger.kernel.org; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;vger.kernel.org; dmarc=bestguesspass
 action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT050.mail.protection.outlook.com (10.152.17.47) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3348.16 via Frontend Transport; Mon, 7 Sep 2020 11:21:04 +0000
Received: ("Tessian outbound 195a290eb161:v64"); Mon, 07 Sep 2020 11:21:02 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 0dd72d3c514b6484
X-CR-MTA-TID: 64aa7808
Received: from da09965d63e5.2
        by 64aa7808-outbound-1.mta.getcheckrecipient.com id DED2736F-78F6-420C-8B47-6EBBD1F406E7.1;
        Mon, 07 Sep 2020 11:20:56 +0000
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id da09965d63e5.2
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Mon, 07 Sep 2020 11:20:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y5B6WQv4u6XKGqj7p0vmrZVhjVMK+0v9x6aFo7ifSj/IuEC94lsq8NO3EkGPK+WW6xgndicvApNtCMSZqIKq9TT64N+lJ79aJpHbHqt5+yvUSVsk/cUDwOc/tQ3utH7/o/pCpq8JlFOlzbMm93GB4JieaU3b5Mm+X5TDVPUoSVbA9WL3fCHcIGTbDPaYwde7eMksSl8pp+8olYRbLNr0CVWbIGKorQEnSGRtSVRmqP/Wn8W3DcwccY9eygJTyGI2iCscSEGcQLOOeCJtFXrZwoHFRZ4UHHi6wCIexQJVOa1ZR8cK1oU9zVo0D2ApJZFFdrgCvaDZsP/NDzElAqK4fA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1AN2nvbjNZzhCAdb1Rjo9jWXKj8P2OffFkHCVyHIEl4=;
 b=SDGKhrMF6kHkqmZMLHuM5BZFFm1X6jEg4bkQBRfjddKkmcUvxqKlGQm2DTPfBEnrPAhUrosbCYpUYSx1qP41n3A81Zpi0g8HNCCHodhhc830pk/plBkTVlnPXOKSfZdk0j1ugmxNkDeaN8Xecmw5SJkTf7FFLffI44EV2xDN3471lr7Yz6VVqJ+EjJo/L1PxOzaVdlQp0xw8gatoH/2gL3d7PQxIARgXjnkbtm0lmUc5Gd6ggmbWsIfAbwppPhCL63Cq4ZFMimFp8fq2El34xLA/tvzeXe4hL7aglzl1ncUil5QzY8WKFM1NSiRuUgqX4JNq9oXaxXvWkx0mHnTIkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1AN2nvbjNZzhCAdb1Rjo9jWXKj8P2OffFkHCVyHIEl4=;
 b=are6IYp+Og0jpsHOrUaxFFYgeB3JbayVuamJh/dV7monBg9xYp7GW8z7XV41X+DVOTj4VU6PVPlDyJalJtuAvf3KUK57bqQjC+fzWnrCxZP487PKA5sqRsEtnARHnsR3O8mYUp5pePwD66YCFTo0ea8CZQMpQR8m5LxaxTsojD4=
Received: from DB6PR0801MB1861.eurprd08.prod.outlook.com (2603:10a6:4:73::21)
 by DB8PR08MB4090.eurprd08.prod.outlook.com (2603:10a6:10:ab::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3348.15; Mon, 7 Sep
 2020 11:20:54 +0000
Received: from DB6PR0801MB1861.eurprd08.prod.outlook.com
 ([fe80::359c:ebc2:fe11:e50b]) by DB6PR0801MB1861.eurprd08.prod.outlook.com
 ([fe80::359c:ebc2:fe11:e50b%10]) with mapi id 15.20.3348.019; Mon, 7 Sep 2020
 11:20:54 +0000
From:   Achin Gupta <Achin.Gupta@arm.com>
To:     Sudeep Holla <Sudeep.Holla@arm.com>
CC:     "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "kernel-team@android.com" <kernel-team@android.com>,
        Will Deacon <will@kernel.org>,
        "tsoni@quicinc.com" <tsoni@quicinc.com>,
        Pratik Patel <pratikp@quicinc.com>, nd <nd@arm.com>
Subject: Re: [PATCH 8/9] firmware: arm_ffa: Setup and register all the KVM
 managed partitions
Thread-Topic: [PATCH 8/9] firmware: arm_ffa: Setup and register all the KVM
 managed partitions
Thread-Index: AQHWhQjzGWl2YGoSvUm5AudDEPjfMg==
Date:   Mon, 7 Sep 2020 11:20:54 +0000
Message-ID: <DD4DBDA3-7A6F-4BAC-9108-7AA16D5D18EF@arm.com>
References: <20200829170923.29949-1-sudeep.holla@arm.com>
 <20200829170923.29949-9-sudeep.holla@arm.com>
In-Reply-To: <20200829170923.29949-9-sudeep.holla@arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3445.104.14)
Authentication-Results-Original: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=arm.com;
x-originating-ip: [84.68.62.30]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 2268c5fe-7640-4d2d-784f-08d853201bdc
x-ms-traffictypediagnostic: DB8PR08MB4090:|DBBPR08MB4741:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <DBBPR08MB4741E3D11C439AAF50FAE6A5FF280@DBBPR08MB4741.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:6430;OLM:6430;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: iWaV02TdqDr2mMOSqICkMCJvpu0wtsPMUItsWt1jkRguUlZWB8xCDWn+dwGTsQGgnvQyuiUkAQZFF3h5X3y+XvES+Pd4AbCApSH23xTd7V63+WQcsUjhZPG+8jqDdlja3u+kqJaL4GLpreJ5iyMAYi++Okys6lh2JONnq8a/csJty0Qz32INeUocKmX+A66Yn9rtYvwNgfvv0rzjN+iHmNNsTCu4Qca6QI5PQZWsw4tPRkSMCtjBqkuqqwLI+kTFD1C+L/9oNme8KoIxVrPHZdLR8PjOicEP9aRQ1eobJyx8+5MH7NWq0OaG5tH152dPU7I/Z0W5wC/I3F0MlJ3hKw==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB6PR0801MB1861.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(39860400002)(366004)(136003)(396003)(346002)(186003)(33656002)(5660300002)(66476007)(66556008)(6506007)(37006003)(26005)(54906003)(53546011)(478600001)(86362001)(36756003)(83380400001)(2616005)(2906002)(4326008)(6862004)(8676002)(8936002)(316002)(6636002)(6486002)(66946007)(64756008)(76116006)(6512007)(71200400001)(66446008)(91956017);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: DqZlMPWdvLV21SUd35DKZzK94WU47ZEorOeDgM3YmqqR4QuNhNhPdTFRp+FSVGadZIll3xViU/f0REvQ1eWwrknIe9EcStvVT8CkgUinFFsDRrOr/cga/WqaLyRHnveGiatBrgqW50Y/tAN3sueebIAvc5cHaXp5JHVriSs/UDcs0Mi2fTLSozGnExCM1poIVyqMi4YA6S0kVvTzqL8QovKTtXlH417wj7zp1m9+98yT5Tt5rN1LFUjfAs23EgxNwcVNyP3tUshKv3eL9jDuZ268YYB4NChcQcv9k91tpih9me6j1zHD9GBNtP0X9S0VqSn6luKPTZoAb42iCFcZucIh2AQ5s9C6Zkjqdjz9TnUNME92bOmpXNPNy3+55ck1nFcOF09G0KoieoptUIDOojaVGoQvRPpZAJAWnh3RnIzG8CQcyYDMlzhwFR3vsJzxqRjiQZhziqToYvNk9TcJrDXmBtyPmJBU94w96LBH1hJUxFIW8j6MXcgzGG1dYHK6AGxlzVtDh7cIwFCU6DDDjuxL45ENbUxCNkLjNGdhLyvCCfvLndKvM3PXGJuG9FHdOothyTBdSvAi+ui97E8FR+wCijB92msRe8TZ+0c0EbNoSEl4ALazyKSoxfTNnGwPf8LvzriO4Ub49u0F3Bmhng==
Content-Type: text/plain; charset="us-ascii"
Content-ID: <15A921A2A837AC4AB8D6441C43042AAF@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB4090
Original-Authentication-Results: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT050.eop-EUR03.prod.protection.outlook.com
X-MS-Office365-Filtering-Correlation-Id-Prvs: ed5bd25b-aeb2-40ed-a90d-08d8532015ff
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HlJjE0BEaJsFskTI4Ged41qZlhUlnDq+Z3tPEKm2wMS7N+tzA5Sps9FOMjgSPxyFYCaQE6sYBvquFlIekTj5YgXMdE/mKMHXw0JOyGUydO6W5Dp17YB4u0IMQirxJS5Yb6YpvZIIFevonegIjS0NOBwapmFxHT25oC6K2PwKWfxCMri2G5I9qHTB4zoph1D/axx22WF6OYEWhz+k5m9Ko0QlXBD/Mgaaj0f4rCCqPKPyZjTGy3gI+COq1DMt8x9CWpBW58LU58JqQaQC+xSdnRwW1hkU1UyevB5SLc4/BMQfTOXxX5/M92+484copVnxWg2QrODJY6hLA8LMy4Anpwr7IUy3ZxdEaaug0PpM75KwhGx51yXSmiIK+YnuKZC/Anxp4D/8DALoWxmUy4l7eg==
X-Forefront-Antispam-Report: CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(4636009)(39860400002)(396003)(376002)(136003)(346002)(46966005)(53546011)(70586007)(70206006)(186003)(478600001)(2616005)(336012)(54906003)(37006003)(2906002)(6512007)(316002)(6486002)(6862004)(8936002)(36906005)(4326008)(8676002)(6636002)(33656002)(6506007)(26005)(36756003)(83380400001)(82310400003)(86362001)(47076004)(82740400003)(81166007)(356005)(5660300002);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2020 11:21:04.3627
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2268c5fe-7640-4d2d-784f-08d853201bdc
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: AM5EUR03FT050.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4741
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Sudeep,

A couple of questions inline...

> On 29 Aug 2020, at 18:09, Sudeep Holla <Sudeep.Holla@arm.com> wrote:
>=20
> Parse the FFA nodes from the device-tree and register all the partitions
> managed by the KVM hypervisor.
>=20
> All the partitions including the host(self) are registered as the
> character device with a set of file operations. Most of the interface
> will concentrated in the ioctl.
>=20
> For now, we have a tiny set of initial ioctls implemented.
>=20
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
> drivers/firmware/arm_ffa/bus.c    |   2 +
> drivers/firmware/arm_ffa/driver.c | 378 +++++++++++++++++++++++++++++-
> include/linux/arm_ffa.h           |   3 +
> include/uapi/linux/arm_ffa.h      |  56 +++++
> 4 files changed, 438 insertions(+), 1 deletion(-)
> create mode 100644 include/uapi/linux/arm_ffa.h
>=20

[snip]

> +
> +static long ffa_ioctl(struct file *filp, unsigned int ioctl, unsigned lo=
ng arg)
> +{
> +	long r =3D -EINVAL;
> +	void __user *argp =3D (void __user *)arg;
> +	struct ffa_device *ffa_dev =3D filp->private_data;
> +
> +	switch (ioctl) {
> +	case FFA_GET_API_VERSION:
> +		if (arg)
> +			goto out;
> +		r =3D drv_info->version;
> +		break;
> +	case FFA_GET_PARTITION_ID:
> +		if (arg)
> +			goto out;
> +		r =3D ffa_dev->vm_id;
> +		break;
> +	case FFA_GET_PARTITION_INFO: {
> +		struct ffa_partition_info pbuf;
> +		struct ffa_part_info __user *pinfo =3D argp;
> +		struct ffa_part_info info;
> +		unsigned int count;
> +
> +		r =3D -EFAULT;
> +		if (copy_from_user(&info, pinfo, sizeof(info)))
> +			break;
> +		count =3D ffa_partition_probe(info.uuid_str, &pbuf);
> +		if (count > 1) {
> +			r =3D -E2BIG;
> +			break;
> +		}
> +		r =3D -EFAULT;
> +		if (copy_to_user(pinfo, &info, sizeof(info)))
> +			break;
> +		r =3D 0;
> +		break;
> +	}
> +	case FFA_SEND_RECEIVE_SYNC: {
> +		struct ffa_send_recv_sync __user *udata =3D argp;
> +		struct ffa_send_recv_sync kdata;
> +
> +		r =3D -EFAULT;
> +		if (copy_from_user(&kdata, udata, sizeof(kdata)))
> +			break;
> +		r =3D ffa_msg_send_direct_req(ffa_dev->vm_id, kdata.endpoint_id,
> +					    &kdata.data);
> +		if (r)
> +			break;
> +		if (copy_to_user(udata, &kdata, sizeof(kdata)))
> +			break;
> +		break;
> +	}
> +	case FFA_SEND_RECEIVE_ASYNC: {

Should this be FFA_SEND_ASYNC? Since asynchronous messaging is being used, =
there should be a separate FFA_RECEIVE_ASYNC ioctl?

This could be a request to block until a message arrives or poll.

I am also thinking if instead of sync/async, direct/indirect should be used=
 to align with the function names in the module and the FF-A spec.

Also wanted to confirm if an ioctl for FFA_RUN is also on the cards? Once t=
he message has been posted, a vCPU of the target VM would need to run to pi=
ck it up?

I have some more comments on how in-kernel users will use indirect messagin=
g. Will leave those in reply to your next patch.

Cheers,
Achin

> +		struct ffa_send_recv_async __user *udata =3D argp;
> +		struct ffa_send_recv_async kdata;
> +		void *buf;
> +
> +		r =3D -EFAULT;
> +		if (copy_from_user(&kdata, udata, sizeof(kdata)))
> +			break;
> +
> +		if (kdata.length < 0 || kdata.length > RXTX_BUFFER_SIZE) {
> +			r =3D -EINVAL;
> +			break;
> +		}
> +
> +		buf =3D kzalloc(kdata.length, GFP_KERNEL);
> +		if (!buf) {
> +			r =3D -ENOMEM;
> +			break;
> +		}
> +
> +		if (copy_from_user(buf, udata->buffer, kdata.length)) {
> +			kfree(buf);
> +			break;
> +		}
> +
> +		r =3D ffa_msg_send(ffa_dev->vm_id, kdata.endpoint_id, buf,
> +				 kdata.length);
> +		if (r) {
> +			kfree(buf);
> +			break;
> +		}
> +
> +		break;
> +	}
> +	default:
> +		r =3D -EINVAL;
> +	}
> +out:
> +	return r;
> +}
> +
> +static const struct file_operations ffa_fops =3D {
> +	.owner		=3D THIS_MODULE,
> +	.open		=3D ffa_open,
> +	.release        =3D ffa_release,
> +	.unlocked_ioctl =3D ffa_ioctl,
> +	.llseek		=3D noop_llseek,
> +};
> +
> +static int ffa_device_alloc_register(const char *name, u16 vm_id, uuid_t=
 *uuid)
> +{
> +	int ret;
> +	struct ffa_device *ffa_dev;
> +
> +	ffa_dev =3D kzalloc(sizeof(*ffa_dev), GFP_KERNEL);
> +	if (!ffa_dev)
> +		return -ENOMEM;
> +
> +	ffa_dev->vm_id =3D vm_id;
> +	if (uuid)
> +		memcpy(uuid, &ffa_dev->uuid, sizeof(*uuid));
> +
> +	dev_set_name(&ffa_dev->dev, name);
> +	dev_set_drvdata(&ffa_dev->dev, drv_info);
> +	cdev_init(&ffa_dev->cdev, &ffa_fops);
> +
> +	ret =3D ffa_device_register(ffa_dev);
> +	if (ret)
> +		return ret;
> +
> +	mutex_lock(&ffa_devs_list_mutex);
> +	list_add_tail(&ffa_dev->node, &ffa_devs_list);
> +	mutex_unlock(&ffa_devs_list_mutex);
> +
> +	return 0;
> +}
> +
> +static int ffa_setup_partitions(void)
> +{
> +	int ret;
> +	struct ffa_partition_info pbuf;
> +	struct device_node *child, *parent;
> +	const char *p_uuid, *pfx =3D "Ignoring FFA partition";
> +	const char *compatible =3D "arm,ffa-1.0-hypervisor";
> +	uuid_t uuid =3D UUID_INIT(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
> +
> +	parent =3D of_find_compatible_node(NULL, NULL, compatible);
> +	if (!parent)
> +		return 0;
> +
> +	for_each_child_of_node(parent, child) {
> +		if (!of_device_is_compatible(child, "arm,ffa-1.0-partition")) {
> +			of_node_put(child);
> +			continue;
> +		}
> +
> +		if (of_property_read_string(child, "uuid", &p_uuid)) {
> +			pr_err("%s: failed to parse \"uuid\" property\n", pfx);
> +			of_node_put(child);
> +			continue;
> +		}
> +
> +		of_node_put(child);
> +
> +		if (uuid_parse(p_uuid, &uuid)) {
> +			pr_err("%s: invalid \"uuid\" property (%s)\n",
> +			       pfx, p_uuid);
> +			continue;
> +		}
> +
> +		ret =3D ffa_partition_probe(p_uuid, &pbuf);
> +		if (ret !=3D 1) {
> +			pr_err("%s: %s partition info probe failed\n",
> +			       pfx, p_uuid);
> +			return -EINVAL;
> +		}
> +
> +		ret =3D ffa_device_alloc_register(p_uuid, pbuf.id, &uuid);
> +		if (ret) {
> +			pr_err("%s: failed to register %s\n", pfx, p_uuid);
> +			continue;
> +		}
> +	}
> +
> +	of_node_put(parent);
> +	return 0;
> +}
> +
> static int __init ffa_init(void)
> {
> 	int ret;
> @@ -262,6 +623,14 @@ static int __init ffa_init(void)
> 	mutex_init(&drv_info->rx_lock);
> 	mutex_init(&drv_info->tx_lock);
>=20
> +	/* This will be default device both in theguests and host */
> +	ret =3D ffa_device_alloc_register("self", drv_info->vm_id, NULL);
> +	if (ret)
> +		return ret;
> +
> +	/* Set up all the partitions that KVM hypervisor maintains */
> +	ffa_setup_partitions();
> +
> 	return 0;
> free_pages:
> 	if (drv_info->tx_buffer)
> @@ -275,6 +644,13 @@ module_init(ffa_init);
>=20
> static void __exit ffa_exit(void)
> {
> +	struct list_head *p;
> +
> +	mutex_lock(&ffa_devs_list_mutex);
> +	list_for_each(p, &ffa_devs_list)
> +		ffa_device_unregister(list_to_ffa_dev(p));
> +	mutex_unlock(&ffa_devs_list_mutex);
> +
> 	ffa_rxtx_unmap(drv_info->vm_id);
> 	free_pages_exact(drv_info->tx_buffer, RXTX_BUFFER_SIZE);
> 	free_pages_exact(drv_info->rx_buffer, RXTX_BUFFER_SIZE);
> diff --git a/include/linux/arm_ffa.h b/include/linux/arm_ffa.h
> index 2fe16176149f..6824e0633c77 100644
> --- a/include/linux/arm_ffa.h
> +++ b/include/linux/arm_ffa.h
> @@ -17,6 +17,9 @@ struct ffa_device {
> 	uuid_t uuid;
> 	struct device dev;
> 	struct cdev cdev;
> +	size_t num_users;
> +	struct mutex mutex;	/* protects num_users */
> +	struct list_head node;
> };
>=20
> #define to_ffa_dev(d) container_of(d, struct ffa_device, dev)
> diff --git a/include/uapi/linux/arm_ffa.h b/include/uapi/linux/arm_ffa.h
> new file mode 100644
> index 000000000000..88ddddb4742f
> --- /dev/null
> +++ b/include/uapi/linux/arm_ffa.h
> @@ -0,0 +1,56 @@
> +/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
> +/*
> + * Copyright (C) 2020 Arm Ltd.
> + */
> +
> +#ifndef _UAPI_LINUX_ARM_FFA_H
> +#define _UAPI_LINUX_ARM_FFA_H
> +
> +#include <linux/types.h>
> +#include <linux/ioctl.h>
> +
> +#define FFA_BASE	0xFF
> +
> +struct ffa_partition_info {
> +	__u16 id;
> +	__u16 exec_ctxt;
> +/* partition supports receipt of direct requests */
> +#define FFA_PARTITION_DIRECT_RECV	BIT(0)
> +/* partition can send direct requests. */
> +#define FFA_PARTITION_DIRECT_SEND	BIT(1)
> +/* partition can send and receive indirect messages. */
> +#define FFA_PARTITION_INDIRECT_MSG	BIT(2)
> +	__u32 properties;
> +};
> +
> +struct ffa_part_info {
> +	char uuid_str[36];
> +	struct ffa_partition_info info;
> +};
> +
> +struct ffa_send_direct_data {
> +	unsigned long data0;
> +	unsigned long data1;
> +	unsigned long data2;
> +	unsigned long data3;
> +	unsigned long data4;
> +};
> +
> +struct ffa_send_recv_sync {
> +	__u16 endpoint_id;
> +	struct ffa_send_direct_data data;
> +};
> +
> +struct ffa_send_recv_async {
> +	__u16 endpoint_id;
> +	int length;
> +	char buffer[];
> +};
> +
> +#define FFA_GET_API_VERSION	_IO(FFA_BASE, 0x00)
> +#define FFA_GET_PARTITION_ID	_IO(FFA_BASE, 0x01)
> +#define FFA_GET_PARTITION_INFO	_IOWR(FFA_BASE, 0x02, struct ffa_part_inf=
o)
> +#define FFA_SEND_RECEIVE_SYNC	_IOWR(FFA_BASE, 0x03, struct ffa_send_recv=
_sync)
> +#define FFA_SEND_RECEIVE_ASYNC	_IOW(FFA_BASE, 0x04, struct ffa_send_recv=
_async)
> +
> +#endif /*_UAPI_LINUX_ARM_FFA_H*/
> --=20
> 2.17.1
>=20
>=20

