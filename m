Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 89DE32848C
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2019 19:09:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731119AbfEWRJn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 May 2019 13:09:43 -0400
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]:51170 "EHLO
        foss.arm.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1731111AbfEWRJm (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 23 May 2019 13:09:42 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 78FFE374;
        Thu, 23 May 2019 10:09:42 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 223273F5AF;
        Thu, 23 May 2019 10:09:40 -0700 (PDT)
Date:   Thu, 23 May 2019 18:09:38 +0100
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Volodymyr Babchuk <Volodymyr_Babchuk@epam.com>
Cc:     "trivial@kernel.org" <trivial@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH] dt-bindings: arm: fix the document ID for SCMI protocol
 documentation
Message-ID: <20190523170938.GC4224@e107155-lin>
References: <20190523112312.24529-1-volodymyr_babchuk@epam.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190523112312.24529-1-volodymyr_babchuk@epam.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 23, 2019 at 11:23:35AM +0000, Volodymyr Babchuk wrote:
> From: Volodymyr Babchuk <volodymyr_babchuk@epam.com
>
> arm,scmi.txt used the wrong document identifier. "ARM DUI 0922B" is
> the "ARM Compute Subsystem SCP, Message Interface Protocols". What we
> need is the ARM DEN 0056A - "ARM System Control and Management
> Interface Platform Design Document".
>

Indeed, it's most stupid copy-paste mistake. Thanks for fixing this.
Applied now.

---
Regards,
Sudeep
