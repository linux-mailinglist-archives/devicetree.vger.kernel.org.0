Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 64BCA97466
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2019 10:12:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726785AbfHUIGr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Aug 2019 04:06:47 -0400
Received: from userp2120.oracle.com ([156.151.31.85]:48458 "EHLO
        userp2120.oracle.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726317AbfHUIGq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Aug 2019 04:06:46 -0400
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
        by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7L7x3cx118291;
        Wed, 21 Aug 2019 08:06:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2019-08-05;
 bh=vKVNf4IhiUveahMlLfpeZpOJzHv5MOawoj84x9+0ZTU=;
 b=F8C5bGQy6Ax7XMY9FLfJXqwkb35au59QUC0ekg5Rbq0S0g+b+ZRLxodjv+YLDjL1zTT/
 hU8mMT7gCSWmIBEK3pgzZWoyaOUqrUTpdnPPaI5EvEHQsxtycDgor3vrFeymfjqRzObL
 P9h/yq2itDDWBYJB7Nx5919daWqazSv92MlcbI3etMmDz6zu5uATWBuKZGrsYluuvemF
 EYfWOrzIyXN9C4acZl66qtIEwy0mqRI7aSap46KiA+eEQ3iQ83wH5JUFL4CoqFIbJAc/
 vZi2hy+lWeeq772+T0z3FK7kXW0v5wg/+enVISN9A8I+f8/RM2Z/7Z3/GVLNIc+Q6rHE /w== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
        by userp2120.oracle.com with ESMTP id 2uea7quqbc-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Wed, 21 Aug 2019 08:06:38 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
        by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7L7wicw132585;
        Wed, 21 Aug 2019 08:06:38 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
        by userp3030.oracle.com with ESMTP id 2ug1gaapcx-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Wed, 21 Aug 2019 08:06:37 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
        by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x7L86ZTS019078;
        Wed, 21 Aug 2019 08:06:36 GMT
Received: from [10.172.157.160] (/10.172.157.160)
        by default (Oracle Beehive Gateway v4.0)
        with ESMTP ; Wed, 21 Aug 2019 01:06:35 -0700
Subject: Re: [PATCH v5 0/3] soc: ti: k3: Allow for exclusive and shared device
 requests
To:     Lokesh Vutla <lokeshvutla@ti.com>, Nishanth Menon <nm@ti.com>,
        Tero Kristo <t-kristo@ti.com>,
        Santosh Shilimkar <ssantosh@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Sekhar Nori <nsekhar@ti.com>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>
References: <20190729122453.32252-1-lokeshvutla@ti.com>
 <05218f41-9601-9a6c-8ac1-3bf1482e1c3d@ti.com>
From:   santosh.shilimkar@oracle.com
Organization: Oracle Corporation
Message-ID: <226a7b55-8a4d-aa25-9392-004d5ea097e4@oracle.com>
Date:   Wed, 21 Aug 2019 10:06:32 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <05218f41-9601-9a6c-8ac1-3bf1482e1c3d@ti.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9355 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908210087
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9355 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908210087
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 8/20/19 2:48 PM, Lokesh Vutla wrote:
> 
> 
> On 29/07/19 5:54 PM, Lokesh Vutla wrote:
>> Sysfw provides an option for requesting exclusive access for a
>> device using the flags MSG_FLAG_DEVICE_EXCLUSIVE. If this flag is
>> not used, the device is meant to be shared across hosts. Once a device
>> is requested from a host with this flag set, any request to this
>> device from a different host will be nacked by sysfw.
>>
>> Current tisci firmware and pm drivers always requests for device with
>> exclusive permissions set. But this is not be true for certain devices
>> that are expcted to be shared across different host contexts.
>> So add support for getting the shared or exclusive permissions from DT
>> and request firmware accordingly.
> 
> Gentle Ping on this series.
> 
I can queue this up.
