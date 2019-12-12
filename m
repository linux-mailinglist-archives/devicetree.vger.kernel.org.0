Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 846CA11D05E
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2019 15:59:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728598AbfLLO7s convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Thu, 12 Dec 2019 09:59:48 -0500
Received: from mail.fuzziesquirrel.com ([173.167.31.197]:54096 "EHLO
        bajor.fuzziesquirrel.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1728611AbfLLO7s (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 12 Dec 2019 09:59:48 -0500
X-Greylist: delayed 468 seconds by postgrey-1.27 at vger.kernel.org; Thu, 12 Dec 2019 09:59:48 EST
X-Virus-Scanned: amavisd-new at fuzziesquirrel.com
Content-Type: text/plain;
        charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3601.0.10\))
Subject: Re: [PATCH v2 2/2] reset: simple: Add AST2600 compatibility string
From:   Brad Bishop <bradleyb@fuzziesquirrel.com>
In-Reply-To: <2498da189d5e21ae70fb6884df6fc16ecfee2087.camel@pengutronix.de>
Date:   Thu, 12 Dec 2019 09:51:58 -0500
Cc:     Joel Stanley <joel@jms.id.au>, Lee Jones <lee.jones@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Andrew Jeffery <andrew@aj.id.au>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org
Content-Transfer-Encoding: 8BIT
Message-Id: <EFF7E049-08C0-40A0-946A-18822C7AEEE3@fuzziesquirrel.com>
References: <20191129000827.650566-1-joel@jms.id.au>
 <20191129000827.650566-3-joel@jms.id.au>
 <2498da189d5e21ae70fb6884df6fc16ecfee2087.camel@pengutronix.de>
To:     Philipp Zabel <p.zabel@pengutronix.de>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Philipp.  Thanks for your time.

> On Dec 2, 2019, at 7:53 AM, Philipp Zabel <p.zabel@pengutronix.de> wrote:
> 
> On Fri, 2019-11-29 at 10:38 +1030, Joel Stanley wrote:
>> From: Brad Bishop <bradleyb@fuzziesquirrel.com>
>> 
>> The AST2600 SoC contains the same LPC register set as the AST2500.
> 
> If the LPC register set is exactly the same, shouldn't AST2600 reuse the
> AST2500 compatible, i.e.:
> 	compatible = "aspeed,ast2600-lpc-reset", "aspeed,ast2500-lpc-reset";
> ?

I’m not sure.  I let what was already there be my guide - the ast2500 LPC registers are the same as the ast2400 as well and those got their own compatibles.  Is there a guideline written down somewhere that backs your thinking up?

thanks - brad
