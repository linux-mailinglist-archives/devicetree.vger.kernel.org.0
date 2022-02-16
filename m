Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C78BC4B8E96
	for <lists+devicetree@lfdr.de>; Wed, 16 Feb 2022 17:54:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236702AbiBPQyL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Feb 2022 11:54:11 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:35708 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234159AbiBPQyK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Feb 2022 11:54:10 -0500
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id CE534293B72
        for <devicetree@vger.kernel.org>; Wed, 16 Feb 2022 08:53:57 -0800 (PST)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4ECEBD6E;
        Wed, 16 Feb 2022 08:53:57 -0800 (PST)
Received: from bogus (unknown [10.57.3.200])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 38FD33F718;
        Wed, 16 Feb 2022 08:53:56 -0800 (PST)
Date:   Wed, 16 Feb 2022 16:53:07 +0000
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Geert Uytterhoeven <geert@linux-m68k.org>
Cc:     Cristian Marussi <cristian.marussi@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Subject: Re: [PATCH] dt-bindings: firmware: arm,scpi: Add missing maxItems to
 shmem property
Message-ID: <20220216165307.4z6muko6b2kq437c@bogus>
References: <f6d1ea27e8b8dc47fbe849661cc5a843bc2f1ba5.1645017656.git.geert+renesas@glider.be>
 <20220216143926.t3dadlsjtkotkv6o@bogus>
 <CAMuHMdV6yWSAx3uNcjqmq-p90sVykZAzSHPt5EONzVkdTj1vvQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMuHMdV6yWSAx3uNcjqmq-p90sVykZAzSHPt5EONzVkdTj1vvQ@mail.gmail.com>
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Geert,

On Wed, Feb 16, 2022 at 03:55:35PM +0100, Geert Uytterhoeven wrote:
> 
> In the absence of maxItems, the validator assumes it is equal to minItems,
> so we do need a sensible maxItems value here.

Ah OK, makes sense.

> Any suggestions? 16? 64?
>

I did a quick look and only 2 platforms use it(juno/amlogic meson).
Juno can go upto max of 62 theoretically but I don't think we we go beyond 4
due to associated shmem limitation. So maxitem of 4 should work just fine
for now. Since it is obsolete spec, I don't see any new extensions or users.

So you can add my ACK for the value of 4. 2 must work too but since I have
tested juno with 4, I would like to keep that possibility.

--
Regards,
Sudeep
