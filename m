Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A5194475BEF
	for <lists+devicetree@lfdr.de>; Wed, 15 Dec 2021 16:37:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243973AbhLOPhp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Dec 2021 10:37:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243796AbhLOPhp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Dec 2021 10:37:45 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0C5EC061574
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 07:37:42 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 51013B81FE6
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 15:37:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A3F62C350A4;
        Wed, 15 Dec 2021 15:36:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1639582612;
        bh=qzUyQx7YR2Gnr4qPiUwIlsoFbpgYIfgFBFZvsQ/wrwM=;
        h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
        b=vEJ++/sEL4946znCI/9PdNbAy2Sz43SGeH1zl53XZJr1TN6YEOHV6xMYhlFMSS6Vr
         eBRD1uvNWmVclCmq2CGKbYIt+HPDf+LrqU7gJa4xjitpmrFfPO2HyZyVXUMKn+7VSG
         gljrISI7E/t2ORIEkPf8IhaoRRfIkwX8hbdFKflWMcJe0+UmiZmwNOJjCL3z5jWpGh
         zv6dbVCcbfTINq8jZwxXdTOIvDwOtakHUxc73VuDiXWG48mpFNTa4kVS9gUMsfkTmC
         BzOYp7UPTLSRcxrLf7TiPF/JghWxH8C3y4tSkviOE+ZhgTGFS76AircgJSiOEJDEST
         OjWHIew0RY75g==
Subject: Re: [PATCHv2 1/3] dt-bindings: spi: cadence-quadspi: document
 "cdns,qspi-nor-ver-00-10"
To:     Pratyush Yadav <p.yadav@ti.com>, Dinh Nguyen <dinh.linux@gmail.com>
Cc:     devicetree@vger.kernel.org, broonie@kernel.org, robh+dt@kernel.org
References: <20211203181714.3138611-1-dinguyen@kernel.org>
 <20211206102242.e2ql7kcgzivh75v4@ti.com>
 <CADhT+wfrtqO6dDSUbq-eeyRodzigA7Gsce0xgK6mzLo0ujb5AQ@mail.gmail.com>
 <20211214200525.7tp2ovbh6vc6rks6@ti.com>
From:   Dinh Nguyen <dinguyen@kernel.org>
Message-ID: <ad4bbd06-ef56-895c-f30c-4897420843c7@kernel.org>
Date:   Wed, 15 Dec 2021 09:36:46 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211214200525.7tp2ovbh6vc6rks6@ti.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 12/14/21 2:05 PM, Pratyush Yadav wrote:
> On 08/12/21 05:45PM, Dinh Nguyen wrote:
>> On Mon, Dec 6, 2021 at 9:51 PM Pratyush Yadav <p.yadav@ti.com> wrote:
>>>
>>> On 03/12/21 12:17PM, Dinh Nguyen wrote:
>>>> The QSPI controller on Intel's SoCFPGA platform does not implement the
>>>> CQSPI_REG_WR_COMPLETION_CTRL register, thus a write to this register
>>>> results in a crash.
>>>>
>>>> The module/revision ID is written in the MODULE_ID register. For this
>>>> variance, bits 23-8 is 0x0010.
>>>
>>> When I looked at your original patches I was under the impression that
>>> this was a SoCFPGA specific thing and did not apply to other
>>> implementation of the IP in general.
>>>
>>> If this is indeed a generic thing and we can detect it via the MODULE_ID
>>> register [0], then why not just read that register at probe time and
>>> apply this quirk based on the ID? Why then do we need a separate
>>> compatible at all?
>>>
>>> [0] I would like to see it stated explicitly somewhere that version
>>> 0x0010 does not support the WR_COMPLETION_CTRL register.
>>>
>>
>> I cannot for sure confirm that this condition applies to only 0x0010
>> version of the
>> IP. I can verify that the IP that is in all 3 generations of SoCFPGA
>> devices, all have
>> MODULE_ID value of 0x0010 and all do not have the WR_COMPLETION_CTRL
>> register implemented.
> 
> I agree with Rob here. If you are not sure that this is a generic IP
> thing then you should not use a generic compatible.
>


I think using the binding of "intel,socfpga-qspi" should be fine? If we 
go by the MODULE_ID value as a indicator of versions, then the version 
hasn't changed for all revisions of the SoCFPGA, dating back to the 
original Cyclone5, which was introduced in 2012.

Thanks,
Dinh
