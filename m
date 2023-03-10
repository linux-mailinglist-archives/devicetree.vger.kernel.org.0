Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CCB2D6B3EF8
	for <lists+devicetree@lfdr.de>; Fri, 10 Mar 2023 13:17:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230134AbjCJMRL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Mar 2023 07:17:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46562 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230236AbjCJMRJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Mar 2023 07:17:09 -0500
X-Greylist: delayed 3601 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 10 Mar 2023 04:17:05 PST
Received: from 2.mo583.mail-out.ovh.net (2.mo583.mail-out.ovh.net [178.33.109.111])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC1FF10338A
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 04:17:05 -0800 (PST)
Received: from director9.ghost.mail-out.ovh.net (unknown [10.109.156.29])
        by mo583.mail-out.ovh.net (Postfix) with ESMTP id 7403F240E5
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 11:00:22 +0000 (UTC)
Received: from ghost-submission-6684bf9d7b-d4dsh (unknown [10.108.16.12])
        by director9.ghost.mail-out.ovh.net (Postfix) with ESMTPS id 49AB51FE54;
        Fri, 10 Mar 2023 11:00:21 +0000 (UTC)
Received: from RCM-web6.webmail.mail.ovh.net ([151.80.29.20])
        by ghost-submission-6684bf9d7b-d4dsh with ESMTPSA
        id E+1UDsUNC2RhfgAAa+y8+A
        (envelope-from <rafal@milecki.pl>); Fri, 10 Mar 2023 11:00:21 +0000
MIME-Version: 1.0
Date:   Fri, 10 Mar 2023 12:00:20 +0100
From:   =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     Miquel Raynal <miquel.raynal@bootlin.com>,
        linux-kernel@vger.kernel.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Michael Walle <michael@walle.cc>,
        Robert Marko <robert.marko@sartura.hr>,
        Luka Perkov <luka.perkov@sartura.hr>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v3 09/20] nvmem: core: introduce NVMEM layouts
In-Reply-To: <2580b45b-5d66-d716-41f3-4050236e89c2@linaro.org>
References: <20230308153200.682248-1-miquel.raynal@bootlin.com>
 <20230308153200.682248-10-miquel.raynal@bootlin.com>
 <2580b45b-5d66-d716-41f3-4050236e89c2@linaro.org>
User-Agent: Roundcube Webmail/1.4.13
Message-ID: <a6762585dbd135a641a9bd2ff9f15697@milecki.pl>
X-Sender: rafal@milecki.pl
X-Originating-IP: 194.187.74.233
X-Webmail-UserID: rafal@milecki.pl
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-Ovh-Tracer-Id: 992480771284249377
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvhedrvddukedgvdduucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepggffhffvvefujghffgfkgihitgfgsehtjehjtddtredvnecuhfhrohhmpeftrghfrghlucfoihhlvggtkhhiuceorhgrfhgrlhesmhhilhgvtghkihdrphhlqeenucggtffrrghtthgvrhhnpeetheelfefgjedutdeivdduvdethffhhedulefggeeitdejudfhkeetjeekieejgfenucfkphepuddvjedrtddrtddruddpudelgedrudekjedrjeegrddvfeefpdduhedurdektddrvdelrddvtdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomhepoehrrghfrghlsehmihhlvggtkhhirdhplheqpdhnsggprhgtphhtthhopedupdhrtghpthhtohepuggvvhhitggvthhrvggvsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehkeefpdhmohguvgepshhmthhpohhuth
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2023-03-10 11:55, Srinivas Kandagatla wrote:
> On 08/03/2023 15:31, Miquel Raynal wrote:
>> +const void *nvmem_layout_get_match_data(struct nvmem_device *nvmem,
>> +					struct nvmem_layout *layout)
>> +{
>> +	struct device_node __maybe_unused *layout_np;
>> +	const struct of_device_id *match;
>> +
>> +	layout_np = of_nvmem_layout_get_container(nvmem);
>> +	match = of_match_node(layout->of_match_table, layout_np);
>> +
>> +	return match ? match->data : NULL;
>> +}
>> +EXPORT_SYMBOL_GPL(nvmem_layout_get_match_data);
> 
> who is the user of this function, in the current patchset I see none?

This will be required for the U-Boot env layout, see:
[PATCH V3 4/6] nvmem: u-boot-env: convert to layout driver


> On the other hand interpretation of match data is pretty much driver
> specific i see no reason for this to be in core.

Interpretation: yes. It's driver specific.

Getting that struct however belongs to the core. We have all kind of
helpers for getting driver private data. Those helpers live in some core
code of subsystems.
