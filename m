Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DC0A164EB2D
	for <lists+devicetree@lfdr.de>; Fri, 16 Dec 2022 13:05:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229770AbiLPMFN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Dec 2022 07:05:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229469AbiLPMFN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Dec 2022 07:05:13 -0500
Received: from muru.com (muru.com [72.249.23.125])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 90C2BB0F
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 04:05:12 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
        by muru.com (Postfix) with ESMTPS id DBC7B80A7;
        Fri, 16 Dec 2022 12:05:11 +0000 (UTC)
Date:   Fri, 16 Dec 2022 14:05:10 +0200
From:   Tony Lindgren <tony@atomide.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: dt binding check error with hash and comma
Message-ID: <Y5xe9gp1VB3t5JcY@atomide.com>
References: <Y5xcE5Qoyf5Zg6fV@atomide.com>
 <018a8db2-166b-ccbf-5ca5-c75c07fec3b7@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <018a8db2-166b-ccbf-5ca5-c75c07fec3b7@linaro.org>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

* Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> [221216 11:59]:
> On 16/12/2022 12:52, Tony Lindgren wrote:
> > This is with dt-doc-validate 2022.11 and:
> 
> You have old dtschema, update. This error was fixed.

Oh OK thanks will update.

Tony
