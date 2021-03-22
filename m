Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D3DC5344D75
	for <lists+devicetree@lfdr.de>; Mon, 22 Mar 2021 18:35:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230314AbhCVRfP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Mar 2021 13:35:15 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:32936 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232135AbhCVRfB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Mar 2021 13:35:01 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 12MHYrDl015209;
        Mon, 22 Mar 2021 12:34:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1616434493;
        bh=z0vbEyOTrOoGYMGsPYWtTu3KJaFcej5oHYJbY4RaMgs=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=ouONTltjR7H8G0lPlHzQ/J9pEVlKOp7FvXjfo+iQ2WMoax9CIi/IVTJ5+4cdPY0UP
         4YhSuf+xuQhCtkt74cXA7aMiuz2fViqFGW6xGLaD8c7OIRFUtb8Z/6U2NksfKD9TAR
         AfXpvGbiDzA217BSMdx5lci+sT089ByTIEdU/Z4g=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 12MHYr73021815
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 22 Mar 2021 12:34:53 -0500
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Mon, 22
 Mar 2021 12:34:53 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Mon, 22 Mar 2021 12:34:53 -0500
Received: from [10.250.66.107] (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 12MHYqNm025899;
        Mon, 22 Mar 2021 12:34:53 -0500
Subject: Re: [PATCH 0/4] AM64x HwSpinlock and Mailbox DT nodes
To:     Nishanth Menon <nm@ti.com>
CC:     Tero Kristo <kristo@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
References: <20210317230946.23675-1-s-anna@ti.com>
 <20210322172406.ywkn3gsr7bfy2nyp@doorman>
From:   Suman Anna <s-anna@ti.com>
Message-ID: <10ab1853-aa6f-fd8e-59a9-df13d6dbc697@ti.com>
Date:   Mon, 22 Mar 2021 12:34:52 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210322172406.ywkn3gsr7bfy2nyp@doorman>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Nishanth,

On 3/22/21 12:24 PM, Nishanth Menon wrote:
> On 18:09-20210317, Suman Anna wrote:
>> Hi Nishanth,
>>
>> The following series adds the HwSpinlock and Mailbox DT nodes for
>> AM64x SoCs on AM64x-EVM and AM64x-SK boards. The bindings for both
>> drivers were merged in 5.12-rc1.
>>
>> Patches are based on top of your latest ti-k3-dts-next branch,
>> commit 04a80a75baa1 ("arm64: dts: ti: k3-am642-evm: Add USB support").
> 
> yep, you'd be next in the queue here, so if you dont mind rebasing one
> last time, it will help. Also in the repost, please address the
> following comment.
> 
>>
>>
>> Suman Anna (4):
>>   arm64: dts: ti: k3-am64-main: Add hwspinlock node
>>   arm64: dts: ti: k3-am64-main: Add mailbox cluster nodes
>>   arm64: dts: ti: k3-am642-evm: Add IPC sub-mailbox nodes
>>   arm64: dts: ti: k3-am642-sk: Add IPC sub-mailbox nodes
> 
> 	please squash patches 3,4.

Hmm, I prefer to not mix or combine stuff that affects more than a single board.
This is not a bug fix, so, if you don't mind, I would like to keep these as is.

regards
Suman
