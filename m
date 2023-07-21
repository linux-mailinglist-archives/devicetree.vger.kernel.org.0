Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 749D475C048
	for <lists+devicetree@lfdr.de>; Fri, 21 Jul 2023 09:45:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231318AbjGUHpR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Jul 2023 03:45:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231224AbjGUHpP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Jul 2023 03:45:15 -0400
Received: from muru.com (muru.com [72.249.23.125])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 28BB630CD
        for <devicetree@vger.kernel.org>; Fri, 21 Jul 2023 00:45:12 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
        by muru.com (Postfix) with ESMTPS id BB96F807E;
        Fri, 21 Jul 2023 07:45:11 +0000 (UTC)
Date:   Fri, 21 Jul 2023 10:45:10 +0300
From:   Tony Lindgren <tony@atomide.com>
To:     David Lechner <david@lechnology.com>
Cc:     Bartosz Golaszewski <brgl@bgdev.pl>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: Unify pinctrl-single pin group nodes for
 davinci
Message-ID: <20230721074510.GT5194@atomide.com>
References: <20230523090406.59632-1-tony@atomide.com>
 <be50a724-280e-7827-91f4-88d16e1e295f@lechnology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <be50a724-280e-7827-91f4-88d16e1e295f@lechnology.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

* David Lechner <david@lechnology.com> [230523 14:00]:
> On 5/23/23 4:04 AM, Tony Lindgren wrote:
> > We want to unify the pinctrl-single pin group nodes to use naming "pins".
> > Otherwise non-standad pin group names will add make dtbs checks errors
> > when the pinctrl-single yaml binding gets merged.
> > 
> > Cc: Conor Dooley <conor+dt@kernel.org>
> > Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Signed-off-by: Tony Lindgren <tony@atomide.com>
> > ---
> 
> Reviewed-by: David Lechner <david@lechnology.com>

Looks like this got missed, I'll pick this into a branch for v6.6 merge
window.

Regards,

Tony
