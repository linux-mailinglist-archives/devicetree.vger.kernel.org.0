Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3034C6AC515
	for <lists+devicetree@lfdr.de>; Mon,  6 Mar 2023 16:32:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229681AbjCFPcp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Mar 2023 10:32:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57324 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230079AbjCFPcd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Mar 2023 10:32:33 -0500
X-Greylist: delayed 806 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 06 Mar 2023 07:32:03 PST
Received: from 13.mo584.mail-out.ovh.net (13.mo584.mail-out.ovh.net [178.33.251.8])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43DB9AD38
        for <devicetree@vger.kernel.org>; Mon,  6 Mar 2023 07:32:03 -0800 (PST)
Received: from director7.ghost.mail-out.ovh.net (unknown [10.108.20.212])
        by mo584.mail-out.ovh.net (Postfix) with ESMTP id 3C99426FD6
        for <devicetree@vger.kernel.org>; Mon,  6 Mar 2023 13:54:11 +0000 (UTC)
Received: from ghost-submission-6684bf9d7b-smxjb (unknown [10.110.103.53])
        by director7.ghost.mail-out.ovh.net (Postfix) with ESMTPS id ADA691FE09;
        Mon,  6 Mar 2023 13:54:10 +0000 (UTC)
Received: from RCM-web1.webmail.mail.ovh.net ([176.31.238.120])
        by ghost-submission-6684bf9d7b-smxjb with ESMTPSA
        id S5nvKILwBWTX2QAA7mgTHA
        (envelope-from <rafal@milecki.pl>); Mon, 06 Mar 2023 13:54:10 +0000
MIME-Version: 1.0
Date:   Mon, 06 Mar 2023 14:54:10 +0100
From:   =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        linux-kernel@vger.kernel.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Michael Walle <michael@walle.cc>, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Robert Marko <robert.marko@sartura.hr>,
        Luka Perkov <luka.perkov@sartura.hr>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH 0/8] nvmem: Let layout drivers be modules
In-Reply-To: <20230301152239.531194-1-miquel.raynal@bootlin.com>
References: <20230301152239.531194-1-miquel.raynal@bootlin.com>
User-Agent: Roundcube Webmail/1.4.13
Message-ID: <88b8ed4babd8c2d00ff4a4d8876378ba@milecki.pl>
X-Sender: rafal@milecki.pl
X-Originating-IP: 194.187.74.233
X-Webmail-UserID: rafal@milecki.pl
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-Ovh-Tracer-Id: 17330695793049316336
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvhedrvddtkedgvdelucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepggffhffvvefujghffgfkgihitgfgsehtjehjtddtredvnecuhfhrohhmpeftrghfrghlucfoihhlvggtkhhiuceorhgrfhgrlhesmhhilhgvtghkihdrphhlqeenucggtffrrghtthgvrhhnpeeivddvleejhedvjeeugffhudetfedugfefueduvdeuveetvdfhtdeugffhteeiteenucffohhmrghinhepghhithhhuhgsrdgtohhmnecukfhppeduvdejrddtrddtrddupdduleegrddukeejrdejgedrvdeffedpudejiedrfedurddvfeekrdduvddtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpeeorhgrfhgrlhesmhhilhgvtghkihdrphhlqedpnhgspghrtghpthhtohepuddprhgtphhtthhopeguvghvihgtvghtrhgvvgesvhhgvghrrdhkvghrnhgvlhdrohhrghdpoffvtefjohhsthepmhhoheekgedpmhhouggvpehsmhhtphhouhht
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2023-03-01 16:22, Miquel Raynal wrote:
> The base series on which these changes apply is still contained in [1],
> I would prefer to keep it as it was and apply this series on top of it.
> 
> (...)
> 
> [1] https://github.com/miquelraynal/linux/tree/nvmem-next/layouts

My experience with kernel development over all subsystems I touched is
that patches should be improved until being clean & acceptable. I never
sent a series with more recent patches fixing issues in earlier patches
of the same seriee.

So my preference would be to get a new, clean & complete set of patches.
