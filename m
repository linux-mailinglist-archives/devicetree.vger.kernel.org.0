Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C6726409A94
	for <lists+devicetree@lfdr.de>; Mon, 13 Sep 2021 19:22:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241419AbhIMRXY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Sep 2021 13:23:24 -0400
Received: from foss.arm.com ([217.140.110.172]:34492 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S240913AbhIMRXY (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 13 Sep 2021 13:23:24 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 42EAD6D;
        Mon, 13 Sep 2021 10:22:08 -0700 (PDT)
Received: from bogus (unknown [10.57.23.241])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9001F3F719;
        Mon, 13 Sep 2021 10:22:06 -0700 (PDT)
Date:   Mon, 13 Sep 2021 18:21:46 +0100
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Rob Herring <robh@kernel.org>
Cc:     Andre Przywara <andre.przywara@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 0/5] Arm VExpress/Juno motherboard bus clean-ups
Message-ID: <20210913172146.4r7sljg2byvehxmx@bogus>
References: <20210819184239.1192395-1-robh@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210819184239.1192395-1-robh@kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 19, 2021 at 01:42:34PM -0500, Rob Herring wrote:
> I noticed we once again have warnings on VExpress/Juno bus nodes as the
> simple-bus schema now expects child nodes to have a unit-address.
> Digging into this I noticed the arm,vexpress-juno.yaml schema is out of
> date and missing some properties (some of which are unused). I found the
> 'ranges' handling to be odd as well. This series fixes all those issues.
>

Sorry for the late response. I assume you can apply the dt-bindings fixes
in your tree, and I can send the dts changes via Arm SoC tree. Let me know
if you have any other plans for this.

For the bindings,

Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>

-- 
Regards,
Sudeep
