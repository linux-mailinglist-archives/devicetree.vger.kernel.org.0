Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DAE141EE046
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2020 10:56:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728213AbgFDI4o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Jun 2020 04:56:44 -0400
Received: from foss.arm.com ([217.140.110.172]:41730 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728089AbgFDI4o (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 4 Jun 2020 04:56:44 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5404055D;
        Thu,  4 Jun 2020 01:56:44 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 1261C3F6CF;
        Thu,  4 Jun 2020 01:56:42 -0700 (PDT)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Andre Przywara <andre.przywara@arm.com>,
        Liviu Dudau <liviu.dudau@arm.com>,
        Rob Herring <robh@kernel.org>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc:     Sudeep Holla <sudeep.holla@arm.com>, devicetree@vger.kernel.org,
        Guenter Roeck <linux@roeck-us.net>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm: dts: vexpress: Move mcc node back into motherboard node
Date:   Thu,  4 Jun 2020 09:56:31 +0100
Message-Id: <159126075826.16785.4183160239670270692.b4-ty@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200603162237.16319-1-andre.przywara@arm.com>
References: <20200603162237.16319-1-andre.przywara@arm.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 3 Jun 2020 17:22:37 +0100, Andre Przywara wrote:
> Commit 	d9258898ad49 ("arm64: dts: arm: vexpress: Move fixed devices
> out of bus node") moved the "mcc" DT node into the root node, because
> it does not have any children using "reg" properties, so does violate
> some dtc checks about "simple-bus" nodes.
> However this broke the vexpress config-bus code, which walks up the
> device tree to find the first node with an "arm,vexpress,site" property.
> This gave the wrong result (matching the root node instead of the
> motherboard node), so broke the clocks and some other devices for
> VExpress boards.
> 
> [...]

Applied to sudeep.holla/linux (for-next/juno), thanks!

[1/1] arm: dts: vexpress: Move mcc node back into motherboard node
      https://git.kernel.org/sudeep.holla/c/8a8cd9a910

--
Regards,
Sudeep

