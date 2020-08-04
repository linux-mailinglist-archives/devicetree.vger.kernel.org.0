Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 41E0523BED8
	for <lists+devicetree@lfdr.de>; Tue,  4 Aug 2020 19:28:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729391AbgHDR2s (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Aug 2020 13:28:48 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:43868 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729388AbgHDR2r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Aug 2020 13:28:47 -0400
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 074HSfvH020282;
        Tue, 4 Aug 2020 12:28:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1596562121;
        bh=OchtM4hMXabrchQB+CsAU+YXlIk3slpv/Gy19NRdCig=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=t9ierTecHRnH1J2s8r2c+Gm5WDg2bduNfqS+i88quz9shTz7pN7X5rjauI2TL/ez/
         3lnpoWOUXLQKBPqvrFC53YN4CsWyt0vZxxG1vpY3Fz/ryfo4Ma6PsMmzgS1VwgHh68
         I15DD/b6S+yV2QUwaBaxV3isxB01Z1FgAqV0301k=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 074HSfK7003555;
        Tue, 4 Aug 2020 12:28:41 -0500
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 4 Aug
 2020 12:28:40 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 4 Aug 2020 12:28:41 -0500
Received: from [10.24.69.198] (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 074HSYwJ009910;
        Tue, 4 Aug 2020 12:28:37 -0500
Subject: Re: [PATCH v5 00/10] irqchip: ti, sci-intr/inta: Update the dt
 bindings to accept different interrupt parents
To:     Lokesh Vutla <lokeshvutla@ti.com>, Rob Herring <robh@kernel.org>,
        Suman Anna <s-anna@ti.com>
CC:     Marc Zyngier <maz@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
        Santosh Shilimkar <ssantosh@kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Peter Ujfalusi <peter.ujfalusi@ti.com>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
References: <20200728051735.6187-1-lokeshvutla@ti.com>
 <d017863c0da4950016f6d4e7fb34d7c7@kernel.org> <20200731181658.GA500828@bogus>
 <733bbcdc-8d29-51cc-f16e-7f95abb56ff2@ti.com> <20200731205953.GA774358@bogus>
 <051cd3d8-a52a-bdad-c4e8-7a05251fab33@ti.com>
 <d7fed961-63ad-eacf-76ba-e8641315994a@ti.com>
From:   Sekhar Nori <nsekhar@ti.com>
Message-ID: <74aee615-5dc4-20b2-293c-54a6b2768f73@ti.com>
Date:   Tue, 4 Aug 2020 22:58:34 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <d7fed961-63ad-eacf-76ba-e8641315994a@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 8/4/20 10:46 PM, Lokesh Vutla wrote:
> Hi All,
> 
> On 02/08/20 4:04 pm, Sekhar Nori wrote:
>> On 8/1/20 2:29 AM, Rob Herring wrote:
>>> On Fri, Jul 31, 2020 at 01:24:17PM -0500, Suman Anna wrote:
>>>> On 7/31/20 1:16 PM, Rob Herring wrote:
>>>>> On Fri, Jul 31, 2020 at 06:01:50PM +0100, Marc Zyngier wrote:
>>>>>> On 2020-07-28 06:17, Lokesh Vutla wrote:
>>>>>>> Hi Marc,
>>>>>>> 	This is continuation of the RFC patches[0] regarding the driver
>>>>>>> updates to support for following interrupt parent connection:
>>>>>>> - INTR -> INTR
>>>>>>> - INTA -> GICv3
>>>>>>> The current existing driver assumes that INTR is always connected to
>>>>>>> GICv3 and INTA is always connected to INTR.
>>>>>>
>>>>>> I'm OK to take this if I can get an Ack from RobH on the three
>>>>>> DT patches that still need it.
>>>>>
>>>>> Reviewed-by: Rob Herring <robh@kernel.org>
>>>>>
>>>>> However, there's a dependency on
>>>>> bindings/arm/keystone/ti,k3-sci-common.yaml.
>>>>>
>>>>> That's a dependency on this being merged. I don't care if it breaks in
>>>>> your tree, but I care for -next and Linus' tree. There could also be
>>>>> other 'make dt_bindings_check' failures/warnings with this as the above
>>>>> dependency prevents further testing.
>>>>>
>>>>
>>>> Bjorn did pick up the above common binding file through the remoteproc tree,
>>>> and it is available in -next. That said, I donno the merge order between
>>>> remoteproc and irq subsystem trees into -next, and if that is a concern.
>>>
>>> I'm less concerned about merge order at this point. -rc1 not being 
>>> broken is the low bar I have...
>>
>> Looking at Bjorn's remoteproc tree[0], the common bindings patch is 
>> applied on top of other (unrelated) remoteproc patches, so merging it 
>> into Marc's tree is out of question unless Bjorn is willing to re-write 
>> his tree (probably not).
>>
>> The other option would be for Marc/Thomas to add these patches into a 
>> 'late' branch, to be sent to Linus after Bjorn's tree has been merged.
>> Bjorn could help by sending his pull request early and someone from TI 
>> can keep an eye out for when its safe to merge.
> 
> What can we do to take this forward? Once this series is merged, DT changes
> should also be merged. Else DMA will be broken as DT backward compatibility is
> broken.

The DT parts should have been posted in the same series then, so as to
not cause breakage after the series is applied, and to preserve bisect
as much as possible.

IMHO, the whole series needs to be merged together even if parts of it
come from individual maintainers as immutable commits.

Do the DT portions cause merge conflicts with what is already there in
-next?

I think the next step would be to post the series again, this time with
DT changes included. Whether it goes into v5.9 or v5.10, thats probably
needed anyway.

Thanks,
Sekhar

