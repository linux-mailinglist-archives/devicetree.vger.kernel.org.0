Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 040E43A1E55
	for <lists+devicetree@lfdr.de>; Wed,  9 Jun 2021 22:52:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229931AbhFIUyJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Jun 2021 16:54:09 -0400
Received: from foss.arm.com ([217.140.110.172]:42552 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229935AbhFIUyJ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 9 Jun 2021 16:54:09 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D3EEAED1;
        Wed,  9 Jun 2021 13:52:13 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 23C213F719;
        Wed,  9 Jun 2021 13:52:13 -0700 (PDT)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Sudeep Holla <sudeep.holla@arm.com>,
        linux-arm-kernel@lists.infradead.org
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH] arm64: dts: juno: Update SCPI nodes as per the YAML schema
Date:   Wed,  9 Jun 2021 21:52:11 +0100
Message-Id: <162327190790.2648876.7127287633712984502.b4-ty@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210608145133.2088631-1-sudeep.holla@arm.com>
References: <20210608145133.2088631-1-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 8 Jun 2021 15:51:33 +0100, Sudeep Holla wrote:
> The SCPI YAML schema expects standard node names for clocks and
> power domain controllers. Fix those as per the schema for Juno
> platforms.

Applied to sudeep.holla/linux (master), thanks!

[1/1] arm64: dts: juno: Update SCPI nodes as per the YAML schema
      https://git.kernel.org/sudeep.holla/c/5806942f39

--
Regards,
Sudeep

