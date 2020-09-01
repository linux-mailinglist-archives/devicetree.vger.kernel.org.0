Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1062325984D
	for <lists+devicetree@lfdr.de>; Tue,  1 Sep 2020 18:25:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730900AbgIAQZJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Sep 2020 12:25:09 -0400
Received: from lhrrgout.huawei.com ([185.176.76.210]:2730 "EHLO huawei.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1731029AbgIAQZI (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 1 Sep 2020 12:25:08 -0400
Received: from lhreml710-chm.china.huawei.com (unknown [172.18.7.108])
        by Forcepoint Email with ESMTP id 67402344327F93B13104;
        Tue,  1 Sep 2020 17:25:07 +0100 (IST)
Received: from localhost (10.52.122.233) by lhreml710-chm.china.huawei.com
 (10.201.108.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Tue, 1 Sep 2020
 17:25:06 +0100
Date:   Tue, 1 Sep 2020 17:23:31 +0100
From:   Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To:     Sudeep Holla <sudeep.holla@arm.com>
CC:     <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, Will Deacon <will@kernel.org>,
        <pratikp@quicinc.com>, <tsoni@quicinc.com>,
        <kernel-team@android.com>
Subject: Re: [PATCH 7/9] firmware: arm_ffa: Add support for SMCCC as
 transport to FFA driver
Message-ID: <20200901172331.00006910@Huawei.com>
In-Reply-To: <20200829170923.29949-8-sudeep.holla@arm.com>
References: <20200829170923.29949-1-sudeep.holla@arm.com>
        <20200829170923.29949-8-sudeep.holla@arm.com>
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

On Sat, 29 Aug 2020 18:09:21 +0100
Sudeep Holla <sudeep.holla@arm.com> wrote:

> There are requests to keep the transport separate in order to allow
> other possible transports like virtio. So let us keep the SMCCC transport
> specifi routines abstracted.

specific

> 
> It is kept simple for now. Once we add another transport, we can develop
> better abstraction.
> 
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
...

